; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_macsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.macsec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.macsec_context = type { %union.anon, i32, ptr, ptr, %struct.anon.122, %union.anon.124, i8 }
%union.anon = type { ptr }
%struct.anon.122 = type { i8, [128 x i8], %union.anon.123 }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
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
%struct.aq_macsec_cfg = type { i32, i32, [32 x %struct.aq_macsec_txsc], i32, [32 x %struct.aq_macsec_rxsc], %struct.aq_macsec_common_stats }
%struct.aq_macsec_txsc = type { i32, i32, ptr, [4 x [128 x i8]], %struct.aq_macsec_tx_sc_stats, [4 x %struct.aq_macsec_tx_sa_stats] }
%struct.aq_macsec_tx_sc_stats = type { i64, i64, i64, i64 }
%struct.aq_macsec_tx_sa_stats = type { i64, i64, i64, i64 }
%struct.aq_macsec_rxsc = type { i32, i32, ptr, ptr, [4 x [128 x i8]], [4 x %struct.aq_macsec_rx_sa_stats] }
%struct.aq_macsec_rx_sa_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.aq_macsec_common_stats = type { %struct.anon.136, %struct.anon.137 }
%struct.anon.136 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.137 = type { i64, i64, i64, i64, i64, i64 }
%struct.macsec_secy = type { ptr, i32, i64, i16, i16, i32, i8, i8, i8, i8, i32, %struct.macsec_tx_sc, ptr }
%struct.macsec_tx_sc = type { i8, i8, i8, i8, i8, i8, [4 x ptr], ptr }
%struct.macsec_rx_sc = type { ptr, i64, i8, [4 x ptr], ptr, %struct.refcount_struct, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.macsec_rx_sa = type { %struct.macsec_key, i32, %struct.spinlock, %union.anon.121, %struct.refcount_struct, i8, ptr, ptr, %struct.callback_head }
%struct.macsec_key = type { [16 x i8], ptr, %union.salt }
%union.salt = type { %struct.anon.118 }
%struct.anon.118 = type <{ i32, i64 }>
%union.anon.121 = type { %union.pn }
%union.pn = type { i64 }
%struct.aq_mss_ingress_sa_record = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.120 = type { i32, i32 }
%struct.aq_mss_ingress_sakey_record = type { [8 x i32], i32 }
%struct.aq_mss_egress_sa_record = type { i32, i32, i32, i32, i32, i32 }
%struct.macsec_tx_sa = type { %struct.macsec_key, i32, %struct.spinlock, %union.anon.119, %struct.refcount_struct, i8, ptr, %struct.callback_head }
%union.anon.119 = type { %union.pn }
%struct.aq_mss_egress_sakey_record = type { [8 x i32] }
%struct.macsec_dev_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.aq_mss_egress_sc_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.macsec_tx_sc_stats = type { i64, i64, i64, i64 }
%struct.aq_mss_egress_sa_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.macsec_tx_sa_stats = type { i32, i32 }
%struct.macsec_rx_sc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.macsec_rx_sa_stats = type { i32, i32, i32, i32, i32 }
%struct.aq_nic_s = type { %struct.atomic_t, i32, [8 x ptr], [32 x ptr], ptr, ptr, i32, i32, i32, i8, ptr, ptr, %struct.aq_nic_cfg_s, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.aq_hw_link_status_s, %struct.anon.134, [128 x i32], ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.aq_hw_rx_fltrs_s }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.anon.134 = type { i32, [32 x [6 x i8]] }
%struct.aq_hw_rx_fltrs_s = type { %struct.hlist_head, i16, %struct.aq_hw_rx_fl2, %struct.aq_hw_rx_fl3l4, i8 }
%struct.aq_hw_rx_fl2 = type { [16 x %struct.aq_rx_filter_vlan] }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }
%struct.aq_hw_rx_fl3l4 = type { i8, i8, i8, i8 }
%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.macsec_msg_fw_response = type { i32 }
%struct.macsec_msg_fw_request = type { i32, i32, %struct.macsec_cfg_request }
%struct.macsec_cfg_request = type { i32, i32, i32, i32 }
%struct.aq_mss_ingress_prectlf_record = type { [2 x i32], i32, i32, i32, i32 }
%struct.aq_mss_egress_ctlf_record = type { [2 x i32], i32, i32, i32, i32 }
%struct.aq_mss_egress_class_record = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_egress_sc_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_ingress_preclass_record = type { [2 x i32], i32, i32, i32, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_ingress_sc_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_ingress_common_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.aq_mss_egress_common_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.aq_mss_ingress_sa_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }

@aq_macsec_ops = dso_local constant { %struct.macsec_ops, [52 x i8] } { %struct.macsec_ops { ptr @aq_mdo_dev_open, ptr @aq_mdo_dev_stop, ptr @aq_mdo_add_secy, ptr @aq_mdo_upd_secy, ptr @aq_mdo_del_secy, ptr @aq_mdo_add_rxsc, ptr @aq_mdo_upd_rxsc, ptr @aq_mdo_del_rxsc, ptr @aq_mdo_add_rxsa, ptr @aq_mdo_upd_rxsa, ptr @aq_mdo_del_rxsa, ptr @aq_mdo_add_txsa, ptr @aq_mdo_upd_txsa, ptr @aq_mdo_del_txsa, ptr @aq_mdo_get_dev_stats, ptr @aq_mdo_get_tx_sc_stats, ptr @aq_mdo_get_tx_sa_stats, ptr @aq_mdo_get_rx_sc_stats, ptr @aq_mdo_get_rx_sa_stats }, [52 x i8] zeroinitializer }, align 32
@aq_apply_secy_cfg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/aquantia/atlantic/aq_macsec.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@aq_apply_secy_cfg.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@apply_txsc_cfg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@aq_set_txsc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid sc_sa\00", [18 x i8] zeroinitializer }, align 32
@aq_rotate_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014Rotate_keys: invalid key_len\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aq_rotate_keys\00", [17 x i8] zeroinitializer }, align 32
@aq_rotate_keys._entry_ptr = internal global ptr @aq_rotate_keys._entry, section ".printk_index", align 4
@apply_rxsc_cfg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@aq_rxsc_validate_frames.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid validation type\00", [40 x i8] zeroinitializer }, align 32
@aq_clear_secy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@aq_clear_secy.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@aq_to_hw_sc_idx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@aq_mdo_get_tx_sa_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@aq_mdo_get_rx_sa_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PN threshold expired on invalid TX SC\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PN threshold expired on down TX SC\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PN threshold expired on invalid TX SA\00", [58 x i8] zeroinitializer }, align 32
@aq_check_txsa_expiration.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@aq_sa_from_sa_idx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@aq_sc_idx_from_sa_idx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@aq_get_txsc_idx_from_sc_idx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.aq_mdo_add_rxsc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 0, i32 16, i32 32], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 16, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 16, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 16, i64 16, i64 24, i64 32]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"aq_macsec_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1454, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1323, i32 15 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 377, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 126, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 703, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1426, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1433, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [54 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1439, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [29 x i8] c"switch.table.aq_mdo_add_rxsc\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @aq_rotate_keys._entry, ptr @aq_rotate_keys._entry_ptr, ptr @aq_macsec_ops, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @switch.table.aq_mdo_add_rxsc], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_macsec_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_rotate_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aq_mdo_add_rxsc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_dev_open(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndev = getelementptr i8, ptr %1, i32 2476
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %secy = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %secy, align 4
  %macsec_cfg.i = getelementptr i8, ptr %1, i32 3768
  %10 = ptrtoint ptr %macsec_cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macsec_cfg.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then2.if.end.i_crit_edge, label %if.then2.for.body.i.i_crit_edge, !prof !56

if.then2.for.body.i.i_crit_edge:                  ; preds = %if.then2
  br label %for.body.i.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then2.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then2.for.body.i.i_crit_edge ]
  %sw_secy.i.i = getelementptr %struct.aq_macsec_cfg, ptr %11, i32 0, i32 2, i32 %i.011.i.i, i32 2
  %12 = ptrtoint ptr %sw_secy.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw_secy.i.i, align 8
  %cmp4.i.i = icmp eq ptr %13, %9
  br i1 %cmp4.i.i, label %if.then.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call fastcc i32 @apply_txsc_cfg(ptr noundef %add.ptr.i, i32 noundef %i.011.i.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.inc.i.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %rx_sc2.i = getelementptr inbounds %struct.macsec_secy, ptr %9, i32 0, i32 12
  %14 = ptrtoint ptr %rx_sc2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %rx_sc2.i, align 4
  %call4.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i9 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b60.i = load i1, ptr @aq_apply_secy_cfg.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_apply_secy_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1323, ptr noundef nonnull @.str.1) #6
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %if.end.i.do.end12.i_crit_edge
  %tobool14.not75.i = icmp eq ptr %15, null
  br i1 %tobool14.not75.i, label %do.end12.i.cleanup_crit_edge, label %do.end12.i.land.rhs.i_crit_edge

do.end12.i.land.rhs.i_crit_edge:                  ; preds = %do.end12.i
  br label %land.rhs.i

do.end12.i.cleanup_crit_edge:                     ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.i:                                       ; preds = %do.end42.i.land.rhs.i_crit_edge, %do.end12.i.land.rhs.i_crit_edge
  %rx_sc.076.i = phi ptr [ %23, %do.end42.i.land.rhs.i_crit_edge ], [ %15, %do.end12.i.land.rhs.i_crit_edge ]
  %active.i = getelementptr inbounds %struct.macsec_rx_sc, ptr %rx_sc.076.i, i32 0, i32 2
  %16 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active.i, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not.i = icmp eq i8 %17, 0
  br i1 %tobool15.not.i, label %land.rhs.i.cleanup_crit_edge, label %for.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %land.rhs.i
  %18 = ptrtoint ptr %macsec_cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %macsec_cfg.i, align 8
  br label %for.body.i64.i

for.body.i64.i:                                   ; preds = %for.inc.i67.i.for.body.i64.i_crit_edge, %for.body.i
  %i.011.i62.i = phi i32 [ %inc.i65.i, %for.inc.i67.i.for.body.i64.i_crit_edge ], [ 0, %for.body.i ]
  %sw_rxsc.i.i = getelementptr %struct.aq_macsec_cfg, ptr %19, i32 0, i32 4, i32 %i.011.i62.i, i32 3
  %20 = ptrtoint ptr %sw_rxsc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw_rxsc.i.i, align 4
  %cmp4.i63.i = icmp eq ptr %21, %rx_sc.076.i
  br i1 %cmp4.i63.i, label %if.end22.i, label %for.inc.i67.i

for.inc.i67.i:                                    ; preds = %for.body.i64.i
  %inc.i65.i = add nuw nsw i32 %i.011.i62.i, 1
  %exitcond.not.i66.i = icmp eq i32 %inc.i65.i, 32
  br i1 %exitcond.not.i66.i, label %for.inc.i67.i.for.inc.i_crit_edge, label %for.inc.i67.i.for.body.i64.i_crit_edge

for.inc.i67.i.for.body.i64.i_crit_edge:           ; preds = %for.inc.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i64.i

for.inc.i67.i.for.inc.i_crit_edge:                ; preds = %for.inc.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end22.i:                                       ; preds = %for.body.i64.i
  %call23.i = tail call fastcc i32 @apply_rxsc_cfg(ptr noundef %add.ptr.i, i32 noundef %i.011.i62.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.for.inc.i_crit_edge, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i.for.inc.i_crit_edge, %for.inc.i67.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %rx_sc.076.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %rx_sc.076.i, align 8
  %call32.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true34.i, label %for.inc.i.do.end42.i_crit_edge

for.inc.i.do.end42.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

land.lhs.true34.i:                                ; preds = %for.inc.i
  %call35.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true34.i.do.end42.i_crit_edge, label %land.lhs.true37.i

land.lhs.true34.i.do.end42.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

land.lhs.true37.i:                                ; preds = %land.lhs.true34.i
  %.b5859.i = load i1, ptr @aq_apply_secy_cfg.__warned.2, align 1
  br i1 %.b5859.i, label %land.lhs.true37.i.do.end42.i_crit_edge, label %if.then39.i

land.lhs.true37.i.do.end42.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

if.then39.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_apply_secy_cfg.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1324, ptr noundef nonnull @.str.1) #6
  br label %do.end42.i

do.end42.i:                                       ; preds = %if.then39.i, %land.lhs.true37.i.do.end42.i_crit_edge, %land.lhs.true34.i.do.end42.i_crit_edge, %for.inc.i.do.end42.i_crit_edge
  %tobool14.not.i = icmp eq ptr %23, null
  br i1 %tobool14.not.i, label %do.end42.i.cleanup_crit_edge, label %do.end42.i.land.rhs.i_crit_edge

do.end42.i.land.rhs.i_crit_edge:                  ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

do.end42.i.cleanup_crit_edge:                     ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %do.end12.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end12.i.cleanup_crit_edge ], [ %call23.i, %if.end22.i.cleanup_crit_edge ], [ 0, %do.end42.i.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_dev_stop(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.013 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %macsec_cfg, align 8
  %txsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %txsc_idx_busy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txsc_idx_busy, align 4
  %shl = shl nuw i32 1, %i.013
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %4, i32 0, i32 2, i32 %i.013, i32 2
  %7 = ptrtoint ptr %sw_secy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sw_secy, align 8
  %call4 = tail call fastcc i32 @aq_clear_secy(ptr noundef %add.ptr.i, ptr noundef %8, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_add_secy(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %secy1 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %secy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %secy1, align 4
  %xpn = getelementptr inbounds %struct.macsec_secy, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %xpn to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xpn, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %txsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %txsc_idx_busy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txsc_idx_busy, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp320.not = icmp ult i32 %call.i, 8
  br i1 %cmp320.not, label %if.end323, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end323:                                        ; preds = %if.end
  %10 = ptrtoint ptr %txsc_idx_busy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txsc_idx_busy, align 4
  %neg = xor i32 %11, -1
  %12 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #6, !range !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp326 = icmp eq i32 %11, -1
  br i1 %cmp326, label %if.end323.cleanup_crit_edge, label %if.end329

if.end323.cleanup_crit_edge:                      ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end329:                                        ; preds = %if.end323
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %13 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool330.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool330.not, label %if.end332, label %if.end329.cleanup_crit_edge

if.end329.cleanup_crit_edge:                      ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end332:                                        ; preds = %if.end329
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %3, align 8
  %shl.i = shl nuw nsw i32 %12, 2
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl.i, ptr %arrayidx, align 8
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %12, i32 2
  %16 = ptrtoint ptr %sw_secy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %5, ptr %sw_secy, align 8
  %ndev = getelementptr i8, ptr %1, i32 2476
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %if.end332.if.end343_crit_edge

if.end332.if.end343_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end343

land.lhs.true:                                    ; preds = %if.end332
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 8
  %state.i405 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %state.i405 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i405, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end343_crit_edge, label %if.then341

land.lhs.true.if.end343_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end343

if.then341:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call342 = tail call fastcc i32 @aq_set_txsc(ptr noundef %add.ptr.i, i32 noundef %12)
  br label %if.end343

if.end343:                                        ; preds = %if.then341, %land.lhs.true.if.end343_crit_edge, %if.end332.if.end343_crit_edge
  %ret.0 = phi i32 [ %call342, %if.then341 ], [ 0, %land.lhs.true.if.end343_crit_edge ], [ 0, %if.end332.if.end343_crit_edge ]
  tail call void @_set_bit(i32 noundef %12, ptr noundef %txsc_idx_busy) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end343, %if.end329.cleanup_crit_edge, %if.end323.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end343 ], [ -95, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -28, %if.end323.cleanup_crit_edge ], [ 0, %if.end329.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_upd_secy(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %secy1 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %secy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %secy1, align 4
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %4 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 2
  %6 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_secy.i, align 8
  %cmp4.i = icmp eq ptr %7, %3
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ndev = getelementptr i8, ptr %1, i32 2476
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i19 = icmp eq i32 %13, 0
  br i1 %tobool.not.i19, label %land.lhs.true, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %state.i20 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i20, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @aq_set_txsc(ptr noundef %add.ptr.i, i32 noundef %i.011.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.then7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_del_secy(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %3 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %macsec_cfg, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %secy = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %secy, align 4
  %call4 = tail call fastcc i32 @aq_clear_secy(ptr noundef %add.ptr.i, ptr noundef %6, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_add_rxsc(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %entry.aq_sc_idx_max.exit_crit_edge

entry.aq_sc_idx_max.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_sc_idx_max.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.aq_mdo_add_rxsc, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %aq_sc_idx_max.exit

aq_sc_idx_max.exit:                               ; preds = %switch.lookup, %entry.aq_sc_idx_max.exit_crit_edge
  %result.0.i = phi i32 [ 0, %entry.aq_sc_idx_max.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %rxsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %rxsc_idx_busy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxsc_idx_busy, align 8
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %9) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %result.0.i)
  %cmp.not = icmp ult i32 %call.i, %result.0.i
  br i1 %cmp.not, label %if.end, label %aq_sc_idx_max.exit.cleanup_crit_edge

aq_sc_idx_max.exit.cleanup_crit_edge:             ; preds = %aq_sc_idx_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %aq_sc_idx_max.exit
  %10 = ptrtoint ptr %rxsc_idx_busy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxsc_idx_busy, align 8
  %neg = xor i32 %11, -1
  %12 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #6, !range !58
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %result.0.i)
  %cmp318.not = icmp ult i32 %12, %result.0.i
  br i1 %cmp318.not, label %if.end321, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end321:                                        ; preds = %if.end
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %13 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool322.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool322.not, label %if.end324, label %if.end321.cleanup_crit_edge

if.end321.cleanup_crit_edge:                      ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end324:                                        ; preds = %if.end321
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %land.end.i [
    i32 0, label %sw.bb.i405
    i32 2, label %sw.bb1.i406
    i32 3, label %if.end324.aq_to_hw_sc_idx.exit_crit_edge
  ]

if.end324.aq_to_hw_sc_idx.exit_crit_edge:         ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_to_hw_sc_idx.exit

sw.bb.i405:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 %12, 2
  br label %aq_to_hw_sc_idx.exit

sw.bb1.i406:                                      ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  %shl2.i = shl nuw nsw i32 %12, 1
  br label %aq_to_hw_sc_idx.exit

land.end.i:                                       ; preds = %if.end324
  %.b41.i = load i1, ptr @aq_to_hw_sc_idx.__already_done, align 1
  br i1 %.b41.i, label %land.end.i.aq_to_hw_sc_idx.exit_crit_edge, label %if.then.i, !prof !59

land.end.i.aq_to_hw_sc_idx.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_to_hw_sc_idx.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_to_hw_sc_idx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 419, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %aq_to_hw_sc_idx.exit

aq_to_hw_sc_idx.exit:                             ; preds = %if.then.i, %land.end.i.aq_to_hw_sc_idx.exit_crit_edge, %sw.bb1.i406, %sw.bb.i405, %if.end324.aq_to_hw_sc_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %shl2.i, %sw.bb1.i406 ], [ %shl.i, %sw.bb.i405 ], [ %12, %if.end324.aq_to_hw_sc_idx.exit_crit_edge ], [ %12, %if.then.i ], [ %12, %land.end.i.aq_to_hw_sc_idx.exit_crit_edge ]
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %arrayidx, align 8
  %secy = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %18 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %secy, align 4
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %12, i32 2
  %20 = ptrtoint ptr %sw_secy to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %sw_secy, align 8
  %rx_sc = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 3
  %21 = ptrtoint ptr %rx_sc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_sc, align 4
  %sw_rxsc = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %12, i32 3
  %23 = ptrtoint ptr %sw_rxsc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %sw_rxsc, align 4
  %ndev = getelementptr i8, ptr %1, i32 2476
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %aq_to_hw_sc_idx.exit.if.end342_crit_edge

aq_to_hw_sc_idx.exit.if.end342_crit_edge:         ; preds = %aq_to_hw_sc_idx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

land.lhs.true:                                    ; preds = %aq_to_hw_sc_idx.exit
  %29 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %secy, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %state.i407 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %state.i407 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i407, align 4
  %and1.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end342_crit_edge, label %if.end338

land.lhs.true.if.end342_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

if.end338:                                        ; preds = %land.lhs.true
  %call337 = tail call fastcc i32 @aq_set_rxsc(ptr noundef %add.ptr.i, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %cmp339 = icmp slt i32 %call337, 0
  br i1 %cmp339, label %if.end338.cleanup_crit_edge, label %if.end338.if.end342_crit_edge

if.end338.if.end342_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

if.end338.cleanup_crit_edge:                      ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end342:                                        ; preds = %if.end338.if.end342_crit_edge, %land.lhs.true.if.end342_crit_edge, %aq_to_hw_sc_idx.exit.if.end342_crit_edge
  tail call void @_set_bit(i32 noundef %12, ptr noundef %rxsc_idx_busy) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end342, %if.end338.cleanup_crit_edge, %if.end321.cleanup_crit_edge, %if.end.cleanup_crit_edge, %aq_sc_idx_max.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end342 ], [ -28, %aq_sc_idx_max.exit.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ 0, %if.end321.cleanup_crit_edge ], [ %call337, %if.end338.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_upd_rxsc(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %rx_sc = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %rx_sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_sc, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 3
  %6 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i = icmp eq ptr %7, %5
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ndev = getelementptr i8, ptr %1, i32 2476
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i17 = icmp eq i32 %13, 0
  br i1 %tobool.not.i17, label %land.lhs.true, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %secy = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %14 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %secy, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %state.i18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i18, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call fastcc i32 @aq_set_rxsc(ptr noundef %add.ptr.i, i32 noundef %i.011.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call7, %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_del_rxsc(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %rx_sc = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %rx_sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_sc, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 3
  %6 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i = icmp eq ptr %7, %5
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ndev = getelementptr i8, ptr %1, i32 2476
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i16 = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool.not.i16, i32 3, i32 2
  %call7 = tail call fastcc i32 @aq_clear_rxsc(ptr noundef %add.ptr.i, i32 noundef %i.011.i, i32 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ 0, %if.end.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_add_rxsa(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %0 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sc = getelementptr inbounds %struct.macsec_rx_sa, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2304
  %secy1 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %secy1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %secy1, align 4
  %macsec_cfg = getelementptr i8, ptr %6, i32 3768
  %9 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %10, i32 0, i32 4, i32 %i.011.i, i32 3
  %11 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i = icmp eq ptr %12, %4
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %13 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %10, i32 0, i32 4, i32 %i.011.i
  %14 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sa, align 4
  %conv = zext i8 %15 to i32
  %rx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %10, i32 0, i32 4, i32 %i.011.i, i32 1
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %rx_sa_idx_busy) #6
  %16 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sa, align 4
  %idxprom = zext i8 %17 to i32
  %arrayidx10 = getelementptr %struct.aq_macsec_cfg, ptr %10, i32 0, i32 4, i32 %i.011.i, i32 4, i32 %idxprom
  %key = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 1
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %8, i32 0, i32 3
  %18 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %key_len, align 8
  %conv13 = zext i16 %19 to i32
  %20 = call ptr @memcpy(ptr %arrayidx10, ptr %key, i32 %conv13)
  %ndev = getelementptr i8, ptr %6, i32 2476
  %21 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i49 = icmp eq i32 %25, 0
  br i1 %tobool.not.i49, label %land.lhs.true, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %8, align 8
  %state.i50 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i50, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 8
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %34 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sa, align 4
  %call25 = tail call fastcc i32 @aq_update_rxsa(ptr noundef %add.ptr.i, i32 noundef %31, ptr noundef %8, ptr noundef %33, ptr noundef %key, i8 noundef zeroext %35)
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call25, %if.then18 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_upd_rxsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %sa_record.i = alloca %struct.aq_mss_ingress_sa_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %0 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sc = getelementptr inbounds %struct.macsec_rx_sa, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %macsec_cfg = getelementptr i8, ptr %6, i32 3768
  %7 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %macsec_cfg, align 8
  %secy1 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %secy1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %secy1, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %8, i32 0, i32 4, i32 %i.011.i, i32 3
  %11 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i = icmp eq ptr %12, %4
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %13 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ndev = getelementptr i8, ptr %6, i32 2476
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i27 = icmp eq i32 %18, 0
  br i1 %tobool.not.i27, label %land.lhs.true, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 8
  %state.i28 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %state.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i28, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %8, i32 0, i32 4, i32 %i.011.i
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 8
  %25 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sa, align 4
  %27 = getelementptr inbounds %struct.macsec_rx_sa, ptr %2, i32 0, i32 3
  %lower.i = getelementptr inbounds %struct.anon.120, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sa_record.i) #6
  %30 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record.i, i32 0, i32 5
  %32 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record.i, i32 0, i32 7
  %aq_hw.i = getelementptr i8, ptr %6, i32 2472
  %33 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aq_hw.i, align 8
  %conv.i = zext i8 %26 to i32
  %or.i = or i32 %24, %conv.i
  %35 = call ptr @memset(ptr %sa_record.i, i32 0, i32 28)
  %active.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %2, i32 0, i32 5
  %36 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %active.i, align 4, !range !57
  %38 = zext i8 %37 to i32
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %32, align 4
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %31, align 4
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %29, ptr %30, align 4
  %conv3.i = trunc i32 %or.i to i16
  %call.i = call i32 @aq_mss_set_ingress_sa_record(ptr noundef %34, ptr noundef nonnull %sa_record.i, i16 noundef zeroext %conv3.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sa_record.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.then7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_del_rxsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %sa_key_record.i = alloca %struct.aq_mss_ingress_sakey_record, align 4
  %sa_record.i = alloca %struct.aq_mss_ingress_sa_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %0 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sc = getelementptr inbounds %struct.macsec_rx_sa, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %macsec_cfg = getelementptr i8, ptr %6, i32 3768
  %7 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %8, i32 0, i32 4, i32 %i.011.i, i32 3
  %9 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i = icmp eq ptr %10, %4
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %11 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %8, i32 0, i32 4, i32 %i.011.i
  %12 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sa, align 4
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  %aq_hw.i = getelementptr i8, ptr %6, i32 2472
  %16 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw.i, align 8
  %rx_sa_idx_busy.i = getelementptr %struct.aq_macsec_cfg, ptr %8, i32 0, i32 4, i32 %i.011.i, i32 1
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %rx_sa_idx_busy.i) #6
  %ndev.i = getelementptr i8, ptr %6, i32 2476
  %18 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.then3.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end3
  %or.i = or i32 %15, %conv
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %sa_key_record.i) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sa_record.i) #6
  %23 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record.i, i32 0, i32 5
  %24 = call ptr @memset(ptr %sa_key_record.i, i32 0, i32 36)
  %25 = call ptr @memset(ptr %sa_record.i, i32 0, i32 32)
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %23, align 4
  %conv.i = trunc i32 %or.i to i16
  %call4.i = call i32 @aq_mss_set_ingress_sa_record(ptr noundef %17, ptr noundef nonnull %sa_record.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then3.i.cleanup.i_crit_edge

if.then3.i.cleanup.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end7.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 @aq_mss_set_ingress_sakey_record(ptr noundef %17, ptr noundef nonnull %sa_key_record.i, i16 noundef zeroext %conv.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end7.i, %if.then3.i.cleanup.i_crit_edge
  %retval.0.i16 = phi i32 [ %call9.i, %if.end7.i ], [ %call4.i, %if.then3.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sa_record.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sa_key_record.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i16, %cleanup.i ], [ 0, %if.end3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_add_txsa(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %secy1 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %secy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %secy1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 2
  %6 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_secy.i, align 8
  %cmp4.i = icmp eq ptr %7, %5
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %9 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sa, align 4
  %conv = zext i8 %10 to i32
  %tx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 1
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %tx_sa_idx_busy) #6
  %11 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sa, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx8 = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 3, i32 %idxprom
  %key = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 1
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len, align 8
  %conv11 = zext i16 %14 to i32
  %15 = call ptr @memcpy(ptr %arrayidx8, ptr %key, i32 %conv11)
  %ndev = getelementptr i8, ptr %1, i32 2476
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i47 = icmp eq i32 %20, 0
  br i1 %tobool.not.i47, label %land.lhs.true, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  %state.i48 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i48, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 8
  %27 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sa, align 4
  %call23 = tail call fastcc i32 @aq_update_txsa(ptr noundef %add.ptr.i, i32 noundef %26, ptr noundef nonnull %5, ptr noundef %29, ptr noundef %key, i8 noundef zeroext %31)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call23, %if.then16 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_upd_txsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %sa_rec.i = alloca %struct.aq_mss_egress_sa_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %secy1 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %secy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %secy1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 2
  %6 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_secy.i, align 8
  %cmp4.i = icmp eq ptr %7, %5
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i
  %ndev = getelementptr i8, ptr %1, i32 2476
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i27 = icmp eq i32 %13, 0
  br i1 %tobool.not.i27, label %land.lhs.true, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %state.i28 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i28, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 8
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %20 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sa, align 4
  %25 = getelementptr inbounds %struct.macsec_tx_sa, ptr %22, i32 0, i32 3
  %lower.i = getelementptr inbounds %struct.anon.120, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lower.i, align 4
  %conv.i = zext i8 %24 to i32
  %or.i = or i32 %19, %conv.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sa_rec.i) #6
  %28 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec.i, i32 0, i32 4
  %30 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec.i, i32 0, i32 5
  %aq_hw.i = getelementptr i8, ptr %1, i32 2472
  %31 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aq_hw.i, align 8
  %33 = call ptr @memset(ptr %sa_rec.i, i32 0, i32 16)
  %active.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %22, i32 0, i32 5
  %34 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %active.i, align 4, !range !57
  %36 = zext i8 %35 to i32
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %30, align 4
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %29, align 4
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %27, ptr %28, align 4
  %conv3.i = trunc i32 %or.i to i16
  %call.i = call i32 @aq_mss_set_egress_sa_record(ptr noundef %32, ptr noundef nonnull %sa_rec.i, i16 noundef zeroext %conv3.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sa_rec.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.then8 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_del_txsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %key_rec.i = alloca %struct.aq_mss_egress_sakey_record, align 4
  %sa_rec.i = alloca %struct.aq_mss_egress_sa_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %secy = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %secy, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 2
  %6 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_secy.i, align 8
  %cmp4.i = icmp eq ptr %7, %5
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %9 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sa, align 4
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %aq_hw.i = getelementptr i8, ptr %1, i32 2472
  %13 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aq_hw.i, align 8
  %tx_sa_idx_busy.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 1
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %tx_sa_idx_busy.i) #6
  %ndev.i = getelementptr i8, ptr %1, i32 2476
  %15 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.then3.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end3
  %or.i = or i32 %12, %conv
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_rec.i) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sa_rec.i) #6
  %20 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec.i, i32 0, i32 4
  %21 = call ptr @memset(ptr %sa_rec.i, i32 0, i32 24)
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %20, align 4
  %conv.i = trunc i32 %or.i to i16
  %call4.i = call i32 @aq_mss_set_egress_sa_record(ptr noundef %14, ptr noundef nonnull %sa_rec.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then3.i.cleanup.i_crit_edge

if.then3.i.cleanup.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end7.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memset(ptr %key_rec.i, i32 0, i32 32)
  %call9.i = call i32 @aq_mss_set_egress_sakey_record(ptr noundef %14, ptr noundef nonnull %key_rec.i, i16 noundef zeroext %conv.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end7.i, %if.then3.i.cleanup.i_crit_edge
  %retval.0.i14 = phi i32 [ %call9.i, %if.end7.i ], [ %call4.i, %if.then3.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sa_rec.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_rec.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i14, %cleanup.i ], [ 0, %if.end3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_get_dev_stats(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %aq_hw = getelementptr i8, ptr %2, i32 2472
  %3 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_hw, align 8
  %macsec_cfg = getelementptr i8, ptr %2, i32 3768
  %5 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %macsec_cfg, align 8
  %stats1 = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5
  tail call fastcc void @aq_get_macsec_common_stats(ptr noundef %4, ptr noundef %stats1)
  %untagged_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5, i32 1, i32 2
  %7 = ptrtoint ptr %untagged_pkts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %untagged_pkts, align 8
  %stats3 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 5
  %9 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %8, ptr %10, align 8
  %untagged_pkts4 = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5, i32 0, i32 4
  %12 = ptrtoint ptr %untagged_pkts4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %untagged_pkts4, align 8
  %14 = load ptr, ptr %stats3, align 4
  %InPktsUntagged = getelementptr inbounds %struct.macsec_dev_stats, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %InPktsUntagged to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %13, ptr %InPktsUntagged, align 8
  %too_long = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5, i32 1, i32 3
  %16 = ptrtoint ptr %too_long to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %too_long, align 8
  %18 = load ptr, ptr %stats3, align 4
  %OutPktsTooLong = getelementptr inbounds %struct.macsec_dev_stats, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %OutPktsTooLong to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %17, ptr %OutPktsTooLong, align 8
  %notag_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5, i32 0, i32 3
  %20 = ptrtoint ptr %notag_pkts to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %notag_pkts, align 8
  %22 = load ptr, ptr %stats3, align 4
  %InPktsNoTag = getelementptr inbounds %struct.macsec_dev_stats, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %InPktsNoTag to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %21, ptr %InPktsNoTag, align 8
  %bad_tag_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5, i32 0, i32 5
  %24 = ptrtoint ptr %bad_tag_pkts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bad_tag_pkts, align 8
  %26 = load ptr, ptr %stats3, align 4
  %InPktsBadTag = getelementptr inbounds %struct.macsec_dev_stats, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %InPktsBadTag to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %25, ptr %InPktsBadTag, align 8
  %unknown_sci_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5, i32 0, i32 7
  %28 = ptrtoint ptr %unknown_sci_pkts to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %unknown_sci_pkts, align 8
  %30 = load ptr, ptr %stats3, align 4
  %InPktsUnknownSCI = getelementptr inbounds %struct.macsec_dev_stats, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %InPktsUnknownSCI to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %29, ptr %InPktsUnknownSCI, align 8
  %no_sci_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %6, i32 0, i32 5, i32 0, i32 6
  %32 = ptrtoint ptr %no_sci_pkts to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %no_sci_pkts, align 8
  %34 = load ptr, ptr %stats3, align 4
  %InPktsNoSCI = getelementptr inbounds %struct.macsec_dev_stats, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %InPktsNoSCI to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %33, ptr %InPktsNoSCI, align 8
  %36 = load ptr, ptr %stats3, align 4
  %InPktsOverrun = getelementptr inbounds %struct.macsec_dev_stats, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %InPktsOverrun to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %InPktsOverrun, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_get_tx_sc_stats(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %e_sc_counters.i = alloca %struct.aq_mss_egress_sc_counters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %aq_hw = getelementptr i8, ptr %1, i32 2472
  %2 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw, align 8
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %4 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_cfg, align 8
  %secy = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %secy, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 2
  %8 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_secy.i, align 8
  %cmp4.i = icmp eq ptr %9, %7
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %10 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i
  %stats6 = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e_sc_counters.i) #6
  %conv.i = trunc i32 %12 to i16
  %13 = call ptr @memset(ptr %e_sc_counters.i, i32 255, i32 32)
  %call.i = call i32 @aq_mss_get_egress_sc_counters(ptr noundef %3, ptr noundef nonnull %e_sc_counters.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i30, label %if.end.i, label %if.end3.aq_get_txsc_stats.exit_crit_edge, !prof !59

if.end3.aq_get_txsc_stats.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_get_txsc_stats.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %14 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i, i32 0, i32 3, i32 1
  %15 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i, i32 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i, i32 0, i32 2
  %18 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i, i32 0, i32 1, i32 1
  %19 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i, i32 0, i32 1
  %20 = getelementptr inbounds [2 x i32], ptr %e_sc_counters.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %conv3.i = zext i32 %22 to i64
  %shl.i = shl nuw i64 %conv3.i, 32
  %23 = ptrtoint ptr %e_sc_counters.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %e_sc_counters.i, align 4
  %conv6.i = zext i32 %24 to i64
  %or.i = or i64 %shl.i, %conv6.i
  %25 = ptrtoint ptr %stats6 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or.i, ptr %stats6, align 8
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %18, align 4
  %conv9.i = zext i32 %27 to i64
  %shl10.i = shl nuw i64 %conv9.i, 32
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %19, align 4
  %conv13.i = zext i32 %29 to i64
  %or14.i = or i64 %shl10.i, %conv13.i
  %sc_encrypted_pkts15.i = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 4, i32 1
  %30 = ptrtoint ptr %sc_encrypted_pkts15.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %or14.i, ptr %sc_encrypted_pkts15.i, align 8
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %16, align 4
  %conv17.i = zext i32 %32 to i64
  %shl18.i = shl nuw i64 %conv17.i, 32
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %17, align 4
  %conv21.i = zext i32 %34 to i64
  %or22.i = or i64 %shl18.i, %conv21.i
  %sc_protected_octets23.i = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 4, i32 2
  %35 = ptrtoint ptr %sc_protected_octets23.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or22.i, ptr %sc_protected_octets23.i, align 8
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %14, align 4
  %conv25.i = zext i32 %37 to i64
  %shl26.i = shl nuw i64 %conv25.i, 32
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %15, align 4
  %conv29.i = zext i32 %39 to i64
  %or30.i = or i64 %shl26.i, %conv29.i
  %sc_encrypted_octets31.i = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 4, i32 3
  %40 = ptrtoint ptr %sc_encrypted_octets31.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %or30.i, ptr %sc_encrypted_octets31.i, align 8
  br label %aq_get_txsc_stats.exit

aq_get_txsc_stats.exit:                           ; preds = %if.end.i, %if.end3.aq_get_txsc_stats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e_sc_counters.i) #6
  %41 = ptrtoint ptr %stats6 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %stats6, align 8
  %stats8 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 5
  %43 = ptrtoint ptr %stats8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stats8, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %42, ptr %44, align 8
  %sc_encrypted_pkts = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 4, i32 1
  %46 = ptrtoint ptr %sc_encrypted_pkts to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sc_encrypted_pkts, align 8
  %48 = load ptr, ptr %stats8, align 4
  %OutPktsEncrypted = getelementptr inbounds %struct.macsec_tx_sc_stats, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %OutPktsEncrypted to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %47, ptr %OutPktsEncrypted, align 8
  %sc_protected_octets = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 4, i32 2
  %50 = ptrtoint ptr %sc_protected_octets to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sc_protected_octets, align 8
  %52 = load ptr, ptr %stats8, align 4
  %OutOctetsProtected = getelementptr inbounds %struct.macsec_tx_sc_stats, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %OutOctetsProtected to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %51, ptr %OutOctetsProtected, align 8
  %sc_encrypted_octets = getelementptr %struct.aq_macsec_cfg, ptr %5, i32 0, i32 2, i32 %i.011.i, i32 4, i32 3
  %54 = ptrtoint ptr %sc_encrypted_octets to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %sc_encrypted_octets, align 8
  %56 = load ptr, ptr %stats8, align 4
  %OutOctetsEncrypted = getelementptr inbounds %struct.macsec_tx_sc_stats, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %OutOctetsEncrypted to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %55, ptr %OutOctetsEncrypted, align 8
  br label %cleanup

cleanup:                                          ; preds = %aq_get_txsc_stats.exit, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aq_get_txsc_stats.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_get_tx_sa_stats(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %sa_rec.i = alloca %struct.aq_mss_egress_sa_record, align 4
  %e_sa_counters.i = alloca %struct.aq_mss_egress_sa_counters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %aq_hw = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %secy1 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %secy1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %secy1, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 2
  %8 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_secy.i, align 8
  %cmp4.i = icmp eq ptr %9, %7
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %10 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %13 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sa, align 4
  %conv = zext i8 %14 to i32
  %or = or i32 %12, %conv
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e_sa_counters.i) #6
  %conv.i = trunc i32 %or to i16
  %15 = call ptr @memset(ptr %e_sa_counters.i, i32 255, i32 32)
  %call.i = call i32 @aq_mss_get_egress_sa_counters(ptr noundef %5, ptr noundef nonnull %e_sa_counters.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i73 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i73, label %if.end12, label %aq_get_txsa_stats.exit, !prof !59

aq_get_txsa_stats.exit:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e_sa_counters.i) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %arrayidx8 = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 5, i32 %conv
  %16 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i, i32 0, i32 3, i32 1
  %17 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i, i32 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i, i32 0, i32 1, i32 1
  %21 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i, i32 0, i32 1
  %22 = getelementptr inbounds [2 x i32], ptr %e_sa_counters.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %conv3.i = zext i32 %24 to i64
  %shl.i = shl nuw i64 %conv3.i, 32
  %25 = ptrtoint ptr %e_sa_counters.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %e_sa_counters.i, align 4
  %conv6.i = zext i32 %26 to i64
  %or.i = or i64 %shl.i, %conv6.i
  %27 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %or.i, ptr %arrayidx8, align 8
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 4
  %conv9.i = zext i32 %29 to i64
  %shl10.i = shl nuw i64 %conv9.i, 32
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %21, align 4
  %conv13.i = zext i32 %31 to i64
  %or14.i = or i64 %shl10.i, %conv13.i
  %sa_protected2_pkts15.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 5, i32 %conv, i32 1
  %32 = ptrtoint ptr %sa_protected2_pkts15.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or14.i, ptr %sa_protected2_pkts15.i, align 8
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %18, align 4
  %conv17.i = zext i32 %34 to i64
  %shl18.i = shl nuw i64 %conv17.i, 32
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %19, align 4
  %conv21.i = zext i32 %36 to i64
  %or22.i = or i64 %shl18.i, %conv21.i
  %sa_protected_pkts23.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 5, i32 %conv, i32 2
  %37 = ptrtoint ptr %sa_protected_pkts23.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or22.i, ptr %sa_protected_pkts23.i, align 8
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %16, align 4
  %conv25.i = zext i32 %39 to i64
  %shl26.i = shl nuw i64 %conv25.i, 32
  %40 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %17, align 4
  %conv29.i = zext i32 %41 to i64
  %or30.i = or i64 %shl26.i, %conv29.i
  %sa_encrypted_pkts31.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 2, i32 %i.011.i, i32 5, i32 %conv, i32 3
  %42 = ptrtoint ptr %sa_encrypted_pkts31.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %or30.i, ptr %sa_encrypted_pkts31.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e_sa_counters.i) #6
  %43 = ptrtoint ptr %sa_protected_pkts23.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sa_protected_pkts23.i, align 8
  %conv13 = trunc i64 %44 to i32
  %stats14 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 5
  %45 = ptrtoint ptr %stats14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stats14, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv13, ptr %46, align 4
  %48 = ptrtoint ptr %sa_encrypted_pkts31.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sa_encrypted_pkts31.i, align 8
  %conv15 = trunc i64 %49 to i32
  %50 = load ptr, ptr %stats14, align 4
  %OutPktsEncrypted = getelementptr inbounds %struct.macsec_tx_sa_stats, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %OutPktsEncrypted to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv15, ptr %OutPktsEncrypted, align 4
  %52 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sw_secy.i, align 8
  %54 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sa, align 4
  %idxprom20 = zext i8 %55 to i32
  %arrayidx21 = getelementptr %struct.macsec_secy, ptr %53, i32 0, i32 11, i32 6, i32 %idxprom20
  %56 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx21, align 4
  %call23 = call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end12.do.end32_crit_edge

if.end12.do.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

land.lhs.true:                                    ; preds = %if.end12
  %call25 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true.do.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @aq_mdo_get_tx_sa_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_mdo_get_tx_sa_stats.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1123, ptr noundef nonnull @.str.1) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true.do.end32_crit_edge, %if.end12.do.end32_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sa_rec.i) #6
  %58 = call ptr @memset(ptr %sa_rec.i, i32 255, i32 24)
  %call.i75 = call i32 @aq_mss_get_egress_sa_record(ptr noundef %5, ptr noundef nonnull %sa_rec.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.then37, label %aq_get_txsa_next_pn.exit, !prof !59

aq_get_txsa_next_pn.exit:                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sa_rec.i) #6
  br label %cleanup

if.then37:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  %59 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec.i, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sa_rec.i) #6
  %lock = getelementptr inbounds %struct.macsec_tx_sa, ptr %57, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %conv38 = zext i32 %61 to i64
  %62 = getelementptr inbounds %struct.macsec_tx_sa, ptr %57, i32 0, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv38, ptr %62, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %aq_get_txsa_next_pn.exit, %aq_get_txsa_stats.exit, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %aq_get_txsa_stats.exit ], [ 0, %if.then37 ], [ %call.i75, %aq_get_txsa_next_pn.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_get_rx_sc_stats(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %aq_hw = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %rx_sc = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %rx_sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_sc, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 3
  %8 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i = icmp eq ptr %9, %7
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %10 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i
  %rx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 1
  %stats15 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3
  %i.078 = phi i32 [ 0, %if.end3 ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.078, 5
  %arrayidx.i = getelementptr i32, ptr %rx_sa_idx_busy, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %13 = shl nuw i32 1, %i.078
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %arrayidx10 = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 8
  %or = or i32 %16, %i.078
  %call11 = tail call fastcc i32 @aq_get_rxsa_stats(ptr noundef %5, i32 noundef %or, ptr noundef %arrayidx10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %validated_octets = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 10
  %17 = ptrtoint ptr %validated_octets to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %validated_octets, align 8
  %19 = ptrtoint ptr %stats15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats15, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %add = add i64 %22, %18
  store i64 %add, ptr %20, align 8
  %decrypted_octets = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 11
  %23 = ptrtoint ptr %decrypted_octets to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %decrypted_octets, align 8
  %25 = load ptr, ptr %stats15, align 4
  %InOctetsDecrypted = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %InOctetsDecrypted to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %InOctetsDecrypted, align 8
  %add17 = add i64 %27, %24
  store i64 %add17, ptr %InOctetsDecrypted, align 8
  %unchecked_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 9
  %28 = ptrtoint ptr %unchecked_pkts to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %unchecked_pkts, align 8
  %30 = load ptr, ptr %stats15, align 4
  %InPktsUnchecked = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %InPktsUnchecked to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %InPktsUnchecked, align 8
  %add19 = add i64 %32, %29
  store i64 %add19, ptr %InPktsUnchecked, align 8
  %delayed_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 8
  %33 = ptrtoint ptr %delayed_pkts to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %delayed_pkts, align 8
  %35 = load ptr, ptr %stats15, align 4
  %InPktsDelayed = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %InPktsDelayed to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %InPktsDelayed, align 8
  %add21 = add i64 %37, %34
  store i64 %add21, ptr %InPktsDelayed, align 8
  %ok_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 6
  %38 = ptrtoint ptr %ok_pkts to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ok_pkts, align 8
  %40 = load ptr, ptr %stats15, align 4
  %InPktsOK = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %InPktsOK to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %InPktsOK, align 8
  %add23 = add i64 %42, %39
  store i64 %add23, ptr %InPktsOK, align 8
  %invalid_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 5
  %43 = ptrtoint ptr %invalid_pkts to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %invalid_pkts, align 8
  %45 = load ptr, ptr %stats15, align 4
  %InPktsInvalid = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %InPktsInvalid to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %InPktsInvalid, align 8
  %add25 = add i64 %47, %44
  store i64 %add25, ptr %InPktsInvalid, align 8
  %late_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 7
  %48 = ptrtoint ptr %late_pkts to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %late_pkts, align 8
  %50 = load ptr, ptr %stats15, align 4
  %InPktsLate = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %InPktsLate to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %InPktsLate, align 8
  %add27 = add i64 %52, %49
  store i64 %add27, ptr %InPktsLate, align 8
  %not_valid_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 4
  %53 = ptrtoint ptr %not_valid_pkts to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %not_valid_pkts, align 8
  %55 = load ptr, ptr %stats15, align 4
  %InPktsNotValid = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %InPktsNotValid to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %InPktsNotValid, align 8
  %add29 = add i64 %57, %54
  store i64 %add29, ptr %InPktsNotValid, align 8
  %not_using_sa = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 2
  %58 = ptrtoint ptr %not_using_sa to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %not_using_sa, align 8
  %60 = load ptr, ptr %stats15, align 4
  %InPktsNotUsingSA = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %InPktsNotUsingSA to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %InPktsNotUsingSA, align 8
  %add31 = add i64 %62, %59
  store i64 %add31, ptr %InPktsNotUsingSA, align 8
  %unused_sa = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %i.078, i32 3
  %63 = ptrtoint ptr %unused_sa to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %unused_sa, align 8
  %65 = load ptr, ptr %stats15, align 4
  %InPktsUnusedSA = getelementptr inbounds %struct.macsec_rx_sc_stats, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %InPktsUnusedSA to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %InPktsUnusedSA, align 8
  %add33 = add i64 %67, %64
  store i64 %add33, ptr %InPktsUnusedSA, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_mdo_get_rx_sa_stats(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %sa_rec.i = alloca %struct.aq_mss_ingress_sa_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %macsec_cfg = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macsec_cfg, align 8
  %aq_hw = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %rx_sc = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %rx_sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_sc, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 3
  %8 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i = icmp eq ptr %9, %7
  br i1 %cmp4.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %10 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i
  %sa = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %11 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sa, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx5 = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 8
  %or = or i32 %14, %idxprom
  %call8 = tail call fastcc i32 @aq_get_rxsa_stats(ptr noundef %5, i32 noundef %or, ptr noundef %arrayidx5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %ok_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %idxprom, i32 6
  %15 = ptrtoint ptr %ok_pkts to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ok_pkts, align 8
  %conv12 = trunc i64 %16 to i32
  %stats13 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 5
  %17 = ptrtoint ptr %stats13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats13, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv12, ptr %18, align 4
  %invalid_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %idxprom, i32 5
  %20 = ptrtoint ptr %invalid_pkts to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %invalid_pkts, align 8
  %conv14 = trunc i64 %21 to i32
  %22 = load ptr, ptr %stats13, align 4
  %InPktsInvalid = getelementptr inbounds %struct.macsec_rx_sa_stats, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %InPktsInvalid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv14, ptr %InPktsInvalid, align 4
  %not_valid_pkts = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %idxprom, i32 4
  %24 = ptrtoint ptr %not_valid_pkts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %not_valid_pkts, align 8
  %conv16 = trunc i64 %25 to i32
  %26 = load ptr, ptr %stats13, align 4
  %InPktsNotValid = getelementptr inbounds %struct.macsec_rx_sa_stats, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %InPktsNotValid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv16, ptr %InPktsNotValid, align 4
  %not_using_sa = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %not_using_sa to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %not_using_sa, align 8
  %conv18 = trunc i64 %29 to i32
  %30 = load ptr, ptr %stats13, align 4
  %InPktsNotUsingSA = getelementptr inbounds %struct.macsec_rx_sa_stats, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %InPktsNotUsingSA to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv18, ptr %InPktsNotUsingSA, align 4
  %unused_sa = getelementptr %struct.aq_macsec_cfg, ptr %3, i32 0, i32 4, i32 %i.011.i, i32 5, i32 %idxprom, i32 3
  %32 = ptrtoint ptr %unused_sa to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %unused_sa, align 8
  %conv20 = trunc i64 %33 to i32
  %34 = load ptr, ptr %stats13, align 4
  %InPktsUnusedSA = getelementptr inbounds %struct.macsec_rx_sa_stats, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %InPktsUnusedSA to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv20, ptr %InPktsUnusedSA, align 4
  %36 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sw_rxsc.i, align 4
  %38 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sa, align 4
  %idxprom25 = zext i8 %39 to i32
  %arrayidx26 = getelementptr %struct.macsec_rx_sc, ptr %37, i32 0, i32 3, i32 %idxprom25
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx26, align 4
  %call28 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end11.do.end37_crit_edge

if.end11.do.end37_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

land.lhs.true:                                    ; preds = %if.end11
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b82 = load i1, ptr @aq_mdo_get_rx_sa_stats.__warned, align 1
  br i1 %.b82, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_mdo_get_rx_sa_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1215, ptr noundef nonnull @.str.1) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %if.end11.do.end37_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sa_rec.i) #6
  %42 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_rec.i, i32 0, i32 2
  %conv.i = trunc i32 %or to i16
  %43 = call ptr @memset(ptr %sa_rec.i, i32 255, i32 32)
  %call.i = call i32 @aq_mss_get_ingress_sa_record(ptr noundef %5, ptr noundef nonnull %sa_rec.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i83 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i83, label %if.then.i, label %aq_get_rxsa_next_pn.exit, !prof !59

if.then.i:                                        ; preds = %do.end37
  %44 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_rec.i, i32 0, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.not.i = icmp eq i32 %46, 0
  br i1 %tobool4.not.i, label %cond.true.i, label %if.then.i.if.then42_crit_edge

if.then.i.if.then42_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %42, align 4
  br label %if.then42

aq_get_rxsa_next_pn.exit:                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sa_rec.i) #6
  br label %cleanup

if.then42:                                        ; preds = %cond.true.i, %if.then.i.if.then42_crit_edge
  %next_pn.0.ph = phi i32 [ 0, %if.then.i.if.then42_crit_edge ], [ %48, %cond.true.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sa_rec.i) #6
  %lock = getelementptr inbounds %struct.macsec_rx_sa, ptr %41, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %conv43 = zext i32 %next_pn.0.ph to i64
  %49 = getelementptr inbounds %struct.macsec_rx_sa, ptr %41, i32 0, i32 3
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv43, ptr %49, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %aq_get_rxsa_next_pn.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end3.cleanup_crit_edge ], [ 0, %if.then42 ], [ %call.i, %aq_get_rxsa_next_pn.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_macsec_init(ptr nocapture noundef %nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 11
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %get_link_capabilities = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %get_link_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_link_capabilities, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %3(ptr noundef %5) #6
  %and = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 51392, i32 noundef 3520, i32 noundef 4) #9
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %6 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i.i.i, ptr %macsec_cfg, align 8
  %tobool8.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 5
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features, align 16
  %or = or i64 %10, 288230376151711744
  store i64 %or, ptr %features, align 16
  %11 = load ptr, ptr %ndev, align 4
  %macsec_ops = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 151
  %12 = ptrtoint ptr %macsec_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @aq_macsec_ops, ptr %macsec_ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_macsec_free(ptr nocapture noundef %nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %macsec_cfg, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_macsec_enable(ptr nocapture noundef readonly %nic) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.macsec_msg_fw_response, align 4
  %msg = alloca %struct.macsec_msg_fw_request, align 1
  %rx_prectlf_rec = alloca %struct.aq_mss_ingress_prectlf_record, align 8
  %tx_ctlf_rec = alloca %struct.aq_mss_egress_ctlf_record, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %1 = call ptr @memset(ptr %msg, i32 0, i32 24)
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw, align 8
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %4 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #6
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 11
  %6 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_fw_ops, align 4
  %send_macsec_req = getelementptr inbounds %struct.aq_fw_ops, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %send_macsec_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_macsec_req, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %msg_type = getelementptr inbounds %struct.macsec_msg_fw_request, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %msg_type to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %msg_type, align 1
  %cfg3 = getelementptr inbounds %struct.macsec_msg_fw_request, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %cfg3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 1, ptr %cfg3, align 1
  %cfg.sroa.5.0.cfg3.sroa_idx = getelementptr inbounds %struct.macsec_msg_fw_request, ptr %msg, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %cfg.sroa.5.0.cfg3.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 -1, ptr %cfg.sroa.5.0.cfg3.sroa_idx, align 1
  %cfg.sroa.6.0.cfg3.sroa_idx = getelementptr inbounds %struct.macsec_msg_fw_request, ptr %msg, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %cfg.sroa.6.0.cfg3.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 -1, ptr %cfg.sroa.6.0.cfg3.sroa_idx, align 1
  %cfg.sroa.7.0.cfg3.sroa_idx = getelementptr inbounds %struct.macsec_msg_fw_request, ptr %msg, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %cfg.sroa.7.0.cfg3.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1, ptr %cfg.sroa.7.0.cfg3.sroa_idx, align 1
  %call = call i32 %9(ptr noundef %3, ptr noundef nonnull %msg, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then2.if.end9_crit_edge, label %if.then2.unlock_crit_edge

if.then2.unlock_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %15 = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rx_prectlf_rec, i32 0, i32 1
  %16 = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rx_prectlf_rec, i32 0, i32 2
  %17 = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rx_prectlf_rec, i32 0, i32 3
  %18 = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rx_prectlf_rec, i32 0, i32 4
  %19 = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %tx_ctlf_rec, i32 0, i32 1
  %20 = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %tx_ctlf_rec, i32 0, i32 2
  %21 = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %tx_ctlf_rec, i32 0, i32 3
  %22 = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %tx_ctlf_rec, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_prectlf_rec) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tx_ctlf_rec) #6
  %23 = ptrtoint ptr %tx_ctlf_rec to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %tx_ctlf_rec, align 8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 34958, ptr %19, align 8
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %21, align 8
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 15, ptr %20, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %22, align 4
  %call15 = call i32 @aq_mss_set_egress_ctlf_record(ptr noundef %3, ptr noundef nonnull %tx_ctlf_rec, i16 noundef zeroext 23) #6
  %28 = ptrtoint ptr %rx_prectlf_rec to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %rx_prectlf_rec, align 8
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 34958, ptr %15, align 8
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %17, align 8
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 15, ptr %16, align 4
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %18, align 4
  %call24 = call i32 @aq_mss_set_ingress_prectlf_record(ptr noundef %3, ptr noundef nonnull %rx_prectlf_rec, i16 noundef zeroext 23) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tx_ctlf_rec) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_prectlf_rec) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9
  %i.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9 ]
  %33 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %macsec_cfg, align 8
  %txsc_idx_busy.i = getelementptr inbounds %struct.aq_macsec_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %txsc_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txsc_idx_busy.i, align 4
  %shl.i = shl nuw i32 1, %i.036.i
  %and.i = and i32 %36, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i = call fastcc i32 @apply_txsc_cfg(ptr noundef %nic, i32 noundef %i.036.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.unlock_crit_edge

if.then.i.unlock_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.for.body6.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc17.i.for.body6.i_crit_edge, %for.inc.i.for.body6.i_crit_edge
  %i.138.i = phi i32 [ %inc18.i, %for.inc17.i.for.body6.i_crit_edge ], [ 0, %for.inc.i.for.body6.i_crit_edge ]
  %37 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %macsec_cfg, align 8
  %rxsc_idx_busy.i = getelementptr inbounds %struct.aq_macsec_cfg, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %rxsc_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rxsc_idx_busy.i, align 8
  %shl8.i = shl nuw i32 1, %i.138.i
  %and9.i = and i32 %40, %shl8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %for.body6.i.for.inc17.i_crit_edge, label %if.then11.i

for.body6.i.for.inc17.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc17.i

if.then11.i:                                      ; preds = %for.body6.i
  %call12.i = call fastcc i32 @apply_rxsc_cfg(ptr noundef %nic, i32 noundef %i.138.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.for.inc17.i_crit_edge, label %if.then11.i.unlock_crit_edge

if.then11.i.unlock_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then11.i.for.inc17.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %if.then11.i.for.inc17.i_crit_edge, %for.body6.i.for.inc17.i_crit_edge
  %inc18.i = add nuw nsw i32 %i.138.i, 1
  %exitcond41.not.i = icmp eq i32 %inc18.i, 32
  br i1 %exitcond41.not.i, label %for.inc17.i.unlock_crit_edge, label %for.inc17.i.for.body6.i_crit_edge

for.inc17.i.for.body6.i_crit_edge:                ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

for.inc17.i.unlock_crit_edge:                     ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

unlock:                                           ; preds = %for.inc17.i.unlock_crit_edge, %if.then11.i.unlock_crit_edge, %if.then.i.unlock_crit_edge, %if.then2.unlock_crit_edge
  %ret.0 = phi i32 [ %call, %if.then2.unlock_crit_edge ], [ %call12.i, %if.then11.i.unlock_crit_edge ], [ 0, %for.inc17.i.unlock_crit_edge ], [ %call.i, %if.then.i.unlock_crit_edge ]
  call void @rtnl_unlock() #6
  br label %cleanup31

cleanup31:                                        ; preds = %unlock, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ 0, %entry.cleanup31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_egress_ctlf_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_ingress_prectlf_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_macsec_work(ptr nocapture noundef readonly %nic) local_unnamed_addr #0 align 64 {
entry:
  %egress_sa_expired.i = alloca i32, align 4
  %egress_sa_threshold_expired.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 5
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %if.end
  tail call void @rtnl_lock() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %egress_sa_expired.i) #6
  %7 = ptrtoint ptr %egress_sa_expired.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %egress_sa_expired.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %egress_sa_threshold_expired.i) #6
  %8 = ptrtoint ptr %egress_sa_threshold_expired.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %egress_sa_threshold_expired.i, align 4, !annotation !60
  %9 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %macsec_cfg, align 8
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %11 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_hw.i, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %call.i = call i32 @aq_mss_get_egress_sa_expired(ptr noundef %12, ptr noundef nonnull %egress_sa_expired.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i5 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i5, label %if.end.i, label %if.end2.aq_check_txsa_expiration.exit_crit_edge, !prof !59

if.end2.aq_check_txsa_expiration.exit_crit_edge:  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_check_txsa_expiration.exit

if.end.i:                                         ; preds = %if.end2
  %call4.i = call i32 @aq_mss_get_egress_sa_threshold_expired(ptr noundef %12, ptr noundef nonnull %egress_sa_threshold_expired.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cond.i = icmp eq i32 %14, 0
  %txsc_idx_busy.i = getelementptr inbounds %struct.aq_macsec_cfg, ptr %10, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.0139.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %egress_sa_expired.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %egress_sa_expired.i, align 4
  %shl.i = shl nuw i32 1, %i.0139.i
  %and.i = and i32 %16, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %17 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %14, label %land.end.i.i [
    i32 0, label %aq_sa_from_sa_idx.exit.thread.i
    i32 2, label %aq_sa_from_sa_idx.exit.thread117.i
    i32 3, label %if.then6.i.aq_get_txsc_idx_from_sc_idx.exit.i_crit_edge
  ]

if.then6.i.aq_get_txsc_idx_from_sc_idx.exit.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_get_txsc_idx_from_sc_idx.exit.i

aq_sa_from_sa_idx.exit.thread.i:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %i.0139.i, 3
  br label %aq_sc_idx_from_sa_idx.exit.thread125.i

aq_sa_from_sa_idx.exit.thread117.i:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i.i = and i32 %i.0139.i, 1
  %18 = lshr i32 %i.0139.i, 1
  br label %aq_get_txsc_idx_from_sc_idx.exit.i

land.end.i.i:                                     ; preds = %if.then6.i
  %.b39.i.i = load i1, ptr @aq_sa_from_sa_idx.__already_done, align 1
  br i1 %.b39.i.i, label %land.end.i.i.aq_sa_from_sa_idx.exit.i_crit_edge, label %if.then.i.i, !prof !59

land.end.i.i.aq_sa_from_sa_idx.exit.i_crit_edge:  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_sa_from_sa_idx.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_sa_from_sa_idx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1371, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %aq_sa_from_sa_idx.exit.i

aq_sa_from_sa_idx.exit.i:                         ; preds = %if.then.i.i, %land.end.i.i.aq_sa_from_sa_idx.exit.i_crit_edge
  br i1 %cond.i, label %aq_sa_from_sa_idx.exit.i.aq_sc_idx_from_sa_idx.exit.thread125.i_crit_edge, label %land.end.i105.i

aq_sa_from_sa_idx.exit.i.aq_sc_idx_from_sa_idx.exit.thread125.i_crit_edge: ; preds = %aq_sa_from_sa_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_sc_idx_from_sa_idx.exit.thread125.i

aq_sc_idx_from_sa_idx.exit.thread125.i:           ; preds = %aq_sa_from_sa_idx.exit.i.aq_sc_idx_from_sa_idx.exit.thread125.i_crit_edge, %aq_sa_from_sa_idx.exit.thread.i
  %retval.0.i116.i = phi i32 [ %and.i.i, %aq_sa_from_sa_idx.exit.thread.i ], [ -22, %aq_sa_from_sa_idx.exit.i.aq_sc_idx_from_sa_idx.exit.thread125.i_crit_edge ]
  %19 = lshr i32 %i.0139.i, 2
  br label %aq_get_txsc_idx_from_sc_idx.exit.i

land.end.i105.i:                                  ; preds = %aq_sa_from_sa_idx.exit.i
  %.b40.i.i = load i1, ptr @aq_sc_idx_from_sa_idx.__already_done, align 1
  br i1 %.b40.i.i, label %land.end.i105.i.land.end.i111.i_crit_edge, label %if.then.i106.i, !prof !59

land.end.i105.i.land.end.i111.i_crit_edge:        ; preds = %land.end.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i111.i

if.then.i106.i:                                   ; preds = %land.end.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_sc_idx_from_sa_idx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1387, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %land.end.i111.i

land.end.i111.i:                                  ; preds = %if.then.i106.i, %land.end.i105.i.land.end.i111.i_crit_edge
  %.b40.i110.i = load i1, ptr @aq_get_txsc_idx_from_sc_idx.__already_done, align 1
  br i1 %.b40.i110.i, label %land.end.i111.i.for.inc.i_crit_edge, label %if.then.i112.i, !prof !59

land.end.i111.i.for.inc.i_crit_edge:              ; preds = %land.end.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i112.i:                                   ; preds = %land.end.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_get_txsc_idx_from_sc_idx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %for.inc.i

aq_get_txsc_idx_from_sc_idx.exit.i:               ; preds = %aq_sc_idx_from_sa_idx.exit.thread125.i, %aq_sa_from_sa_idx.exit.thread117.i, %if.then6.i.aq_get_txsc_idx_from_sc_idx.exit.i_crit_edge
  %retval.0.i115124.i = phi i32 [ %and2.i.i, %aq_sa_from_sa_idx.exit.thread117.i ], [ %retval.0.i116.i, %aq_sc_idx_from_sa_idx.exit.thread125.i ], [ 0, %if.then6.i.aq_get_txsc_idx_from_sc_idx.exit.i_crit_edge ]
  %retval.0.i113.i = phi i32 [ %18, %aq_sa_from_sa_idx.exit.thread117.i ], [ %19, %aq_sc_idx_from_sa_idx.exit.thread125.i ], [ %i.0139.i, %if.then6.i.aq_get_txsc_idx_from_sc_idx.exit.i_crit_edge ]
  %20 = ptrtoint ptr %txsc_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txsc_idx_busy.i, align 4
  %shl15.i = shl nuw i32 1, %retval.0.i113.i
  %and16.i = and i32 %21, %shl15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %aq_get_txsc_idx_from_sc_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.8) #10
  br label %for.inc.i

if.end19.i:                                       ; preds = %aq_get_txsc_idx_from_sc_idx.exit.i
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %10, i32 0, i32 2, i32 %retval.0.i113.i, i32 2
  %24 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw_secy.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.9) #10
  br label %for.inc.i

if.end23.i:                                       ; preds = %if.end19.i
  %tx_sa_idx_busy.i = getelementptr %struct.aq_macsec_cfg, ptr %10, i32 0, i32 2, i32 %retval.0.i113.i, i32 1
  %32 = ptrtoint ptr %tx_sa_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_sa_idx_busy.i, align 4
  %conv24.i = and i32 %retval.0.i115124.i, 255
  %shl25.i = shl nuw i32 1, %conv24.i
  %and26.i = and i32 %33, %shl25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.then36.i, label %if.end38.i, !prof !56

if.then36.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.10) #10
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end23.i
  %arrayidx39.i = getelementptr %struct.macsec_secy, ptr %25, i32 0, i32 11, i32 6, i32 %conv24.i
  %36 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx39.i, align 4
  %call41.i = call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true.i, label %if.end38.i.do.end50.i_crit_edge

if.end38.i.do.end50.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50.i

land.lhs.true.i:                                  ; preds = %if.end38.i
  %call43.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true.i.do.end50.i_crit_edge, label %land.lhs.true45.i

land.lhs.true.i.do.end50.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50.i

land.lhs.true45.i:                                ; preds = %land.lhs.true.i
  %.b100.i = load i1, ptr @aq_check_txsa_expiration.__warned, align 1
  br i1 %.b100.i, label %land.lhs.true45.i.do.end50.i_crit_edge, label %if.then47.i

land.lhs.true45.i.do.end50.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50.i

if.then47.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_check_txsa_expiration.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1443, ptr noundef nonnull @.str.1) #6
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.then47.i, %land.lhs.true45.i.do.end50.i_crit_edge, %land.lhs.true.i.do.end50.i_crit_edge, %if.end38.i.do.end50.i_crit_edge
  call void @macsec_pn_wrapped(ptr noundef %25, ptr noundef %37) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end50.i, %if.then36.i, %if.then21.i, %if.then18.i, %if.then.i112.i, %land.end.i111.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0139.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %38 = ptrtoint ptr %egress_sa_expired.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %egress_sa_expired.i, align 4
  %call53.i = call i32 @aq_mss_set_egress_sa_expired(ptr noundef %12, i32 noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool54.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool54.not.i, label %if.then63.i, label %for.end.i.aq_check_txsa_expiration.exit_crit_edge, !prof !59

for.end.i.aq_check_txsa_expiration.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_check_txsa_expiration.exit

if.then63.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %egress_sa_threshold_expired.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %egress_sa_threshold_expired.i, align 4
  %call64.i = call i32 @aq_mss_set_egress_sa_threshold_expired(ptr noundef %12, i32 noundef %41) #6
  br label %aq_check_txsa_expiration.exit

aq_check_txsa_expiration.exit:                    ; preds = %if.then63.i, %for.end.i.aq_check_txsa_expiration.exit_crit_edge, %if.end2.aq_check_txsa_expiration.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %egress_sa_threshold_expired.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %egress_sa_expired.i) #6
  call void @rtnl_unlock() #6
  br label %return

return:                                           ; preds = %aq_check_txsa_expiration.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_macsec_rx_sa_cnt(ptr nocapture noundef readonly %nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rxsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %cnt.017 = phi i32 [ 0, %for.cond.preheader ], [ %cnt.1, %for.inc.for.body_crit_edge ]
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.015, 5
  %arrayidx.i = getelementptr i32, ptr %rxsc_idx_busy, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = shl nuw i32 1, %i.015
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %cond.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %rx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %i.015, i32 1
  %6 = ptrtoint ptr %rx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_sa_idx_busy, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %7) #6
  %add = add i32 %call.i.i, %cnt.017
  br label %for.inc

for.inc:                                          ; preds = %cond.false.i, %for.body.for.inc_crit_edge
  %cnt.1 = phi i32 [ %add, %cond.false.i ], [ %cnt.017, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %cnt.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_macsec_tx_sc_cnt(ptr nocapture noundef readonly %nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %cond.false.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %txsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %txsc_idx_busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txsc_idx_busy, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %3) #6
  br label %return

return:                                           ; preds = %cond.false.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %call.i.i, %cond.false.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_macsec_tx_sa_cnt(ptr nocapture noundef readonly %nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %txsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %cnt.017 = phi i32 [ 0, %for.cond.preheader ], [ %cnt.1, %for.inc.for.body_crit_edge ]
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.015, 5
  %arrayidx.i = getelementptr i32, ptr %txsc_idx_busy, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = shl nuw i32 1, %i.015
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %cond.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.015, i32 1
  %6 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_sa_idx_busy, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %7) #6
  %add = add i32 %call.i.i, %cnt.017
  br label %for.inc

for.inc:                                          ; preds = %cond.false.i, %for.body.for.inc_crit_edge
  %cnt.1 = phi i32 [ %add, %cond.false.i ], [ %cnt.017, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %cnt.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_macsec_get_stats(ptr nocapture noundef readonly %nic, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %e_sa_counters.i.i = alloca %struct.aq_mss_egress_sa_counters, align 4
  %e_sc_counters.i.i = alloca %struct.aq_mss_egress_sc_counters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw.i, align 8
  %stats.i = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5
  tail call fastcc void @aq_get_macsec_common_stats(ptr noundef %3, ptr noundef %stats.i) #6
  %txsc_idx_busy.i = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i.i, i32 0, i32 3, i32 1
  %5 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i.i, i32 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i.i, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %e_sc_counters.i.i, i32 0, i32 1
  %10 = getelementptr inbounds [2 x i32], ptr %e_sc_counters.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i.i, i32 0, i32 3, i32 1
  %12 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i.i, i32 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %e_sa_counters.i.i, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i32], ptr %e_sa_counters.i.i, i32 0, i32 1
  br label %for.body.i

for.cond23.preheader.i:                           ; preds = %for.inc20.i
  %rxsc_idx_busy.i = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 3
  br label %for.body25.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %if.end
  %i.034.i = phi i32 [ 0, %if.end ], [ %inc21.i, %for.inc20.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %txsc_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txsc_idx_busy.i, align 4
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i321 = and i32 %19, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i321)
  %tobool.not.i = icmp eq i32 %and.i321, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc20.i_crit_edge, label %if.end.i

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i322 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i
  %20 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i322, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e_sc_counters.i.i) #6
  %conv.i.i = trunc i32 %21 to i16
  %22 = call ptr @memset(ptr %e_sc_counters.i.i, i32 255, i32 32)
  %call.i.i = call i32 @aq_mss_get_egress_sc_counters(ptr noundef %3, ptr noundef nonnull %e_sc_counters.i.i, i16 noundef zeroext %conv.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %aq_get_txsc_stats.exit.i, label %aq_get_txsc_stats.exit.thread.i, !prof !59

aq_get_txsc_stats.exit.thread.i:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e_sc_counters.i.i) #6
  br label %aq_macsec_update_stats.exit

aq_get_txsc_stats.exit.i:                         ; preds = %if.end.i
  %stats2.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 4
  %conv3.i.i = zext i32 %24 to i64
  %shl.i.i = shl nuw i64 %conv3.i.i, 32
  %25 = ptrtoint ptr %e_sc_counters.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %e_sc_counters.i.i, align 4
  %conv6.i.i = zext i32 %26 to i64
  %or.i.i = or i64 %shl.i.i, %conv6.i.i
  %27 = ptrtoint ptr %stats2.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %or.i.i, ptr %stats2.i, align 8
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %8, align 4
  %conv9.i.i = zext i32 %29 to i64
  %shl10.i.i = shl nuw i64 %conv9.i.i, 32
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %9, align 4
  %conv13.i.i = zext i32 %31 to i64
  %or14.i.i = or i64 %shl10.i.i, %conv13.i.i
  %sc_encrypted_pkts15.i.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 4, i32 1
  %32 = ptrtoint ptr %sc_encrypted_pkts15.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or14.i.i, ptr %sc_encrypted_pkts15.i.i, align 8
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %6, align 4
  %conv17.i.i = zext i32 %34 to i64
  %shl18.i.i = shl nuw i64 %conv17.i.i, 32
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %7, align 4
  %conv21.i.i = zext i32 %36 to i64
  %or22.i.i = or i64 %shl18.i.i, %conv21.i.i
  %sc_protected_octets23.i.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 4, i32 2
  %37 = ptrtoint ptr %sc_protected_octets23.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or22.i.i, ptr %sc_protected_octets23.i.i, align 8
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %4, align 4
  %conv25.i.i = zext i32 %39 to i64
  %shl26.i.i = shl nuw i64 %conv25.i.i, 32
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  %conv29.i.i = zext i32 %41 to i64
  %or30.i.i = or i64 %shl26.i.i, %conv29.i.i
  %sc_encrypted_octets31.i.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 4, i32 3
  %42 = ptrtoint ptr %sc_encrypted_octets31.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %or30.i.i, ptr %sc_encrypted_octets31.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e_sc_counters.i.i) #6
  %tx_sa_idx_busy.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 1
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %aq_get_txsc_stats.exit.i
  %assoc_num.032.i = phi i32 [ 0, %aq_get_txsc_stats.exit.i ], [ %inc.i, %for.inc.i.for.body9.i_crit_edge ]
  %div3.i.i = lshr i32 %assoc_num.032.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %tx_sa_idx_busy.i, i32 %div3.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i, align 4
  %45 = shl nuw i32 1, %assoc_num.032.i
  %46 = and i32 %44, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not.i = icmp eq i32 %46, 0
  br i1 %tobool11.not.i, label %for.body9.i.for.inc.i_crit_edge, label %if.end13.i

for.body9.i.for.inc.i_crit_edge:                  ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body9.i
  %47 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i322, align 8
  %or.i = or i32 %48, %assoc_num.032.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e_sa_counters.i.i) #6
  %conv.i11.i = trunc i32 %or.i to i16
  %49 = call ptr @memset(ptr %e_sa_counters.i.i, i32 255, i32 32)
  %call.i12.i = call i32 @aq_mss_get_egress_sa_counters(ptr noundef %3, ptr noundef nonnull %e_sa_counters.i.i, i16 noundef zeroext %conv.i11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i13.i, label %aq_get_txsa_stats.exit.thread.i, label %aq_get_txsa_stats.exit.i, !prof !59

aq_get_txsa_stats.exit.thread.i:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 5, i32 %assoc_num.032.i
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %17, align 4
  %conv3.i14.i = zext i32 %51 to i64
  %shl.i15.i = shl nuw i64 %conv3.i14.i, 32
  %52 = ptrtoint ptr %e_sa_counters.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %e_sa_counters.i.i, align 4
  %conv6.i16.i = zext i32 %53 to i64
  %or.i17.i = or i64 %shl.i15.i, %conv6.i16.i
  %54 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %or.i17.i, ptr %arrayidx15.i, align 8
  %55 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %15, align 4
  %conv9.i18.i = zext i32 %56 to i64
  %shl10.i19.i = shl nuw i64 %conv9.i18.i, 32
  %57 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %16, align 4
  %conv13.i20.i = zext i32 %58 to i64
  %or14.i21.i = or i64 %shl10.i19.i, %conv13.i20.i
  %sa_protected2_pkts15.i.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 5, i32 %assoc_num.032.i, i32 1
  %59 = ptrtoint ptr %sa_protected2_pkts15.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %or14.i21.i, ptr %sa_protected2_pkts15.i.i, align 8
  %60 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %13, align 4
  %conv17.i22.i = zext i32 %61 to i64
  %shl18.i23.i = shl nuw i64 %conv17.i22.i, 32
  %62 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %14, align 4
  %conv21.i24.i = zext i32 %63 to i64
  %or22.i25.i = or i64 %shl18.i23.i, %conv21.i24.i
  %sa_protected_pkts23.i.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 5, i32 %assoc_num.032.i, i32 2
  %64 = ptrtoint ptr %sa_protected_pkts23.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %or22.i25.i, ptr %sa_protected_pkts23.i.i, align 8
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %11, align 4
  %conv25.i26.i = zext i32 %66 to i64
  %shl26.i27.i = shl nuw i64 %conv25.i26.i, 32
  %67 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %12, align 4
  %conv29.i28.i = zext i32 %68 to i64
  %or30.i29.i = or i64 %shl26.i27.i, %conv29.i28.i
  %sa_encrypted_pkts31.i.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.034.i, i32 5, i32 %assoc_num.032.i, i32 3
  %69 = ptrtoint ptr %sa_encrypted_pkts31.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %or30.i29.i, ptr %sa_encrypted_pkts31.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e_sa_counters.i.i) #6
  br label %for.inc.i

aq_get_txsa_stats.exit.i:                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e_sa_counters.i.i) #6
  br label %aq_macsec_update_stats.exit

for.inc.i:                                        ; preds = %aq_get_txsa_stats.exit.thread.i, %for.body9.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %assoc_num.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.for.inc20.i_crit_edge, label %for.inc.i.for.body9.i_crit_edge

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9.i

for.inc.i.for.inc20.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.inc.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.034.i, 1
  %exitcond41.not.i = icmp eq i32 %inc21.i, 32
  br i1 %exitcond41.not.i, label %for.cond23.preheader.i, label %for.inc20.i.for.body.i_crit_edge

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body25.i:                                     ; preds = %for.body25.i.backedge, %for.cond23.preheader.i
  %i.138.i = phi i32 [ 0, %for.cond23.preheader.i ], [ %i.138.i.be, %for.body25.i.backedge ]
  %div3.i1.i = lshr i32 %i.138.i, 5
  %arrayidx.i2.i = getelementptr i32, ptr %rxsc_idx_busy.i, i32 %div3.i1.i
  %70 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx.i2.i, align 4
  %72 = shl nuw i32 1, %i.138.i
  %73 = and i32 %71, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool27.not.i = icmp eq i32 %73, 0
  br i1 %tobool27.not.i, label %for.body25.i.for.inc49.i_crit_edge, label %if.end29.i

for.body25.i.for.inc49.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc49.i

if.end29.i:                                       ; preds = %for.body25.i
  %arrayidx31.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %i.138.i
  %rx_sa_idx_busy.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %i.138.i, i32 1
  %74 = ptrtoint ptr %rx_sa_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %rx_sa_idx_busy.i, align 4
  %76 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool36.not.i = icmp eq i32 %76, 0
  br i1 %tobool36.not.i, label %if.end29.i.for.inc46.i_crit_edge, label %if.end38.i

if.end29.i.for.inc46.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.i

if.end38.i:                                       ; preds = %if.end29.i
  %77 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx31.i, align 8
  %arrayidx41.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %i.138.i, i32 5, i32 0
  %call42.i = call fastcc i32 @aq_get_rxsa_stats(ptr noundef %3, i32 noundef %78, ptr noundef %arrayidx41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end38.i.for.inc46.i_crit_edge, label %if.end38.i.aq_macsec_update_stats.exit_crit_edge

if.end38.i.aq_macsec_update_stats.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_macsec_update_stats.exit

if.end38.i.for.inc46.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.i

for.inc46.i:                                      ; preds = %if.end38.i.for.inc46.i_crit_edge, %if.end29.i.for.inc46.i_crit_edge
  %79 = ptrtoint ptr %rx_sa_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %rx_sa_idx_busy.i, align 4
  %81 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool36.not.1.i = icmp eq i32 %81, 0
  br i1 %tobool36.not.1.i, label %for.inc46.i.for.inc46.1.i_crit_edge, label %if.end38.1.i

for.inc46.i.for.inc46.1.i_crit_edge:              ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.1.i

if.end38.1.i:                                     ; preds = %for.inc46.i
  %82 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx31.i, align 8
  %or40.1.i = or i32 %83, 1
  %arrayidx41.1.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %i.138.i, i32 5, i32 1
  %call42.1.i = call fastcc i32 @aq_get_rxsa_stats(ptr noundef %3, i32 noundef %or40.1.i, ptr noundef %arrayidx41.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.1.i)
  %tobool43.not.1.i = icmp eq i32 %call42.1.i, 0
  br i1 %tobool43.not.1.i, label %if.end38.1.i.for.inc46.1.i_crit_edge, label %if.end38.1.i.aq_macsec_update_stats.exit_crit_edge

if.end38.1.i.aq_macsec_update_stats.exit_crit_edge: ; preds = %if.end38.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_macsec_update_stats.exit

if.end38.1.i.for.inc46.1.i_crit_edge:             ; preds = %if.end38.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.1.i

for.inc46.1.i:                                    ; preds = %if.end38.1.i.for.inc46.1.i_crit_edge, %for.inc46.i.for.inc46.1.i_crit_edge
  %84 = ptrtoint ptr %rx_sa_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %rx_sa_idx_busy.i, align 4
  %86 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool36.not.2.i = icmp eq i32 %86, 0
  br i1 %tobool36.not.2.i, label %for.inc46.1.i.for.inc46.2.i_crit_edge, label %if.end38.2.i

for.inc46.1.i.for.inc46.2.i_crit_edge:            ; preds = %for.inc46.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.2.i

if.end38.2.i:                                     ; preds = %for.inc46.1.i
  %87 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx31.i, align 8
  %or40.2.i = or i32 %88, 2
  %arrayidx41.2.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %i.138.i, i32 5, i32 2
  %call42.2.i = call fastcc i32 @aq_get_rxsa_stats(ptr noundef %3, i32 noundef %or40.2.i, ptr noundef %arrayidx41.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.2.i)
  %tobool43.not.2.i = icmp eq i32 %call42.2.i, 0
  br i1 %tobool43.not.2.i, label %if.end38.2.i.for.inc46.2.i_crit_edge, label %if.end38.2.i.aq_macsec_update_stats.exit_crit_edge

if.end38.2.i.aq_macsec_update_stats.exit_crit_edge: ; preds = %if.end38.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_macsec_update_stats.exit

if.end38.2.i.for.inc46.2.i_crit_edge:             ; preds = %if.end38.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.2.i

for.inc46.2.i:                                    ; preds = %if.end38.2.i.for.inc46.2.i_crit_edge, %for.inc46.1.i.for.inc46.2.i_crit_edge
  %89 = ptrtoint ptr %rx_sa_idx_busy.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %rx_sa_idx_busy.i, align 4
  %91 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool36.not.3.i = icmp eq i32 %91, 0
  br i1 %tobool36.not.3.i, label %for.inc46.2.i.for.inc49.i_crit_edge, label %if.end38.3.i

for.inc46.2.i.for.inc49.i_crit_edge:              ; preds = %for.inc46.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc49.i

if.end38.3.i:                                     ; preds = %for.inc46.2.i
  %92 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx31.i, align 8
  %or40.3.i = or i32 %93, 3
  %arrayidx41.3.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %i.138.i, i32 5, i32 3
  %call42.3.i = call fastcc i32 @aq_get_rxsa_stats(ptr noundef %3, i32 noundef %or40.3.i, ptr noundef %arrayidx41.3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.3.i)
  %tobool43.not.3.i = icmp ne i32 %call42.3.i, 0
  %inc50.i = add nuw nsw i32 %i.138.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc50.i)
  %exitcond43.not.i = icmp eq i32 %inc50.i, 32
  %or.cond.i = select i1 %tobool43.not.3.i, i1 true, i1 %exitcond43.not.i
  br i1 %or.cond.i, label %if.end38.3.i.aq_macsec_update_stats.exit_crit_edge, label %if.end38.3.i.for.body25.i.backedge_crit_edge

if.end38.3.i.for.body25.i.backedge_crit_edge:     ; preds = %if.end38.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i.backedge

if.end38.3.i.aq_macsec_update_stats.exit_crit_edge: ; preds = %if.end38.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_macsec_update_stats.exit

for.body25.i.backedge:                            ; preds = %for.inc49.i.for.body25.i.backedge_crit_edge, %if.end38.3.i.for.body25.i.backedge_crit_edge
  %i.138.i.be = phi i32 [ %inc50.old.i, %for.inc49.i.for.body25.i.backedge_crit_edge ], [ %inc50.i, %if.end38.3.i.for.body25.i.backedge_crit_edge ]
  br label %for.body25.i

for.inc49.i:                                      ; preds = %for.inc46.2.i.for.inc49.i_crit_edge, %for.body25.i.for.inc49.i_crit_edge
  %inc50.old.i = add nuw nsw i32 %i.138.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc50.old.i)
  %exitcond43.not.old.i = icmp eq i32 %inc50.old.i, 32
  br i1 %exitcond43.not.old.i, label %for.inc49.i.aq_macsec_update_stats.exit_crit_edge, label %for.inc49.i.for.body25.i.backedge_crit_edge

for.inc49.i.for.body25.i.backedge_crit_edge:      ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i.backedge

for.inc49.i.aq_macsec_update_stats.exit_crit_edge: ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_macsec_update_stats.exit

aq_macsec_update_stats.exit:                      ; preds = %for.inc49.i.aq_macsec_update_stats.exit_crit_edge, %if.end38.3.i.aq_macsec_update_stats.exit_crit_edge, %if.end38.2.i.aq_macsec_update_stats.exit_crit_edge, %if.end38.1.i.aq_macsec_update_stats.exit_crit_edge, %if.end38.i.aq_macsec_update_stats.exit_crit_edge, %aq_get_txsa_stats.exit.i, %aq_get_txsc_stats.exit.thread.i
  %94 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %stats.i, align 8
  %96 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %data, align 8
  %tagged_miss_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 1
  %97 = ptrtoint ptr %tagged_miss_pkts to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %tagged_miss_pkts, align 8
  %arrayidx2 = getelementptr i64, ptr %data, i32 1
  %99 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %arrayidx2, align 8
  %untagged_miss_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 2
  %100 = ptrtoint ptr %untagged_miss_pkts to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %untagged_miss_pkts, align 8
  %arrayidx5 = getelementptr i64, ptr %data, i32 2
  %102 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %arrayidx5, align 8
  %notag_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 3
  %103 = ptrtoint ptr %notag_pkts to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %notag_pkts, align 8
  %arrayidx8 = getelementptr i64, ptr %data, i32 3
  %105 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %arrayidx8, align 8
  %untagged_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 4
  %106 = ptrtoint ptr %untagged_pkts to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %untagged_pkts, align 8
  %arrayidx11 = getelementptr i64, ptr %data, i32 4
  %108 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %arrayidx11, align 8
  %bad_tag_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 5
  %109 = ptrtoint ptr %bad_tag_pkts to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %bad_tag_pkts, align 8
  %arrayidx14 = getelementptr i64, ptr %data, i32 5
  %111 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %arrayidx14, align 8
  %no_sci_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 6
  %112 = ptrtoint ptr %no_sci_pkts to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %no_sci_pkts, align 8
  %arrayidx17 = getelementptr i64, ptr %data, i32 6
  %114 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %arrayidx17, align 8
  %unknown_sci_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 7
  %115 = ptrtoint ptr %unknown_sci_pkts to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %unknown_sci_pkts, align 8
  %arrayidx20 = getelementptr i64, ptr %data, i32 7
  %117 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %arrayidx20, align 8
  %ctrl_prt_pass_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 8
  %118 = ptrtoint ptr %ctrl_prt_pass_pkts to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ctrl_prt_pass_pkts, align 8
  %arrayidx23 = getelementptr i64, ptr %data, i32 8
  %120 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %arrayidx23, align 8
  %unctrl_prt_pass_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 9
  %121 = ptrtoint ptr %unctrl_prt_pass_pkts to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %unctrl_prt_pass_pkts, align 8
  %arrayidx26 = getelementptr i64, ptr %data, i32 9
  %123 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %arrayidx26, align 8
  %ctrl_prt_fail_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 10
  %124 = ptrtoint ptr %ctrl_prt_fail_pkts to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %ctrl_prt_fail_pkts, align 8
  %arrayidx29 = getelementptr i64, ptr %data, i32 10
  %126 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %arrayidx29, align 8
  %unctrl_prt_fail_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 11
  %127 = ptrtoint ptr %unctrl_prt_fail_pkts to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %unctrl_prt_fail_pkts, align 8
  %arrayidx32 = getelementptr i64, ptr %data, i32 11
  %129 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %arrayidx32, align 8
  %too_long_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 12
  %130 = ptrtoint ptr %too_long_pkts to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %too_long_pkts, align 8
  %arrayidx35 = getelementptr i64, ptr %data, i32 12
  %132 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %arrayidx35, align 8
  %igpoc_ctl_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 13
  %133 = ptrtoint ptr %igpoc_ctl_pkts to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %igpoc_ctl_pkts, align 8
  %arrayidx38 = getelementptr i64, ptr %data, i32 13
  %135 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %arrayidx38, align 8
  %ecc_error_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 14
  %136 = ptrtoint ptr %ecc_error_pkts to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %ecc_error_pkts, align 8
  %arrayidx41 = getelementptr i64, ptr %data, i32 14
  %138 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %arrayidx41, align 8
  %unctrl_hit_drop_redir = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 0, i32 15
  %139 = ptrtoint ptr %unctrl_hit_drop_redir to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %unctrl_hit_drop_redir, align 8
  %arrayidx44 = getelementptr i64, ptr %data, i32 15
  %141 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %arrayidx44, align 8
  %out = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 1
  %142 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %out, align 8
  %arrayidx47 = getelementptr i64, ptr %data, i32 16
  %144 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %arrayidx47, align 8
  %unknown_sa_pkts = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 1, i32 1
  %145 = ptrtoint ptr %unknown_sa_pkts to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %unknown_sa_pkts, align 8
  %arrayidx50 = getelementptr i64, ptr %data, i32 17
  %147 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %arrayidx50, align 8
  %untagged_pkts52 = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 1, i32 2
  %148 = ptrtoint ptr %untagged_pkts52 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %untagged_pkts52, align 8
  %arrayidx54 = getelementptr i64, ptr %data, i32 18
  %150 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %arrayidx54, align 8
  %too_long = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 1, i32 3
  %151 = ptrtoint ptr %too_long to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %too_long, align 8
  %arrayidx57 = getelementptr i64, ptr %data, i32 19
  %153 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %arrayidx57, align 8
  %ecc_error_pkts59 = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 1, i32 4
  %154 = ptrtoint ptr %ecc_error_pkts59 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %ecc_error_pkts59, align 8
  %arrayidx61 = getelementptr i64, ptr %data, i32 20
  %156 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %arrayidx61, align 8
  %unctrl_hit_drop_redir63 = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 5, i32 1, i32 5
  %157 = ptrtoint ptr %unctrl_hit_drop_redir63 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %unctrl_hit_drop_redir63, align 8
  %arrayidx65 = getelementptr i64, ptr %data, i32 21
  %159 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %arrayidx65, align 8
  br label %for.body

for.cond101.preheader:                            ; preds = %for.inc98
  %rxsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %1, i32 0, i32 3
  br label %for.body103

for.body:                                         ; preds = %for.inc98.for.body_crit_edge, %aq_macsec_update_stats.exit
  %i.0328 = phi i32 [ 21, %aq_macsec_update_stats.exit ], [ %i.3, %for.inc98.for.body_crit_edge ]
  %sc_num.0326 = phi i32 [ 0, %aq_macsec_update_stats.exit ], [ %inc99, %for.inc98.for.body_crit_edge ]
  %div3.i = lshr i32 %sc_num.0326, 5
  %arrayidx.i = getelementptr i32, ptr %txsc_idx_busy.i, i32 %div3.i
  %160 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %arrayidx.i, align 4
  %162 = shl nuw i32 1, %sc_num.0326
  %163 = and i32 %161, %162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool67.not = icmp eq i32 %163, 0
  br i1 %tobool67.not, label %for.body.for.inc98_crit_edge, label %if.end69

for.body.for.inc98_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98

if.end69:                                         ; preds = %for.body
  %stats72 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 4
  %164 = ptrtoint ptr %stats72 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %stats72, align 8
  %inc73 = add i32 %i.0328, 1
  %arrayidx74 = getelementptr i64, ptr %data, i32 %inc73
  %166 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %arrayidx74, align 8
  %sc_encrypted_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 4, i32 1
  %167 = ptrtoint ptr %sc_encrypted_pkts to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %sc_encrypted_pkts, align 8
  %inc75 = add i32 %i.0328, 2
  %arrayidx76 = getelementptr i64, ptr %data, i32 %inc75
  %169 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %arrayidx76, align 8
  %sc_protected_octets = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 4, i32 2
  %170 = ptrtoint ptr %sc_protected_octets to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %sc_protected_octets, align 8
  %inc77 = add i32 %i.0328, 3
  %arrayidx78 = getelementptr i64, ptr %data, i32 %inc77
  %172 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %171, ptr %arrayidx78, align 8
  %sc_encrypted_octets = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 4, i32 3
  %173 = ptrtoint ptr %sc_encrypted_octets to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %sc_encrypted_octets, align 8
  %inc79 = add i32 %i.0328, 4
  %arrayidx80 = getelementptr i64, ptr %data, i32 %inc79
  %175 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %arrayidx80, align 8
  %tx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 1
  %176 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %178 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool85.not = icmp eq i32 %178, 0
  br i1 %tobool85.not, label %if.end69.for.inc_crit_edge, label %if.end87

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end87:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx88 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 0
  %179 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx88, align 8
  %inc89 = add i32 %i.0328, 5
  %arrayidx90 = getelementptr i64, ptr %data, i32 %inc89
  %181 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %arrayidx90, align 8
  %sa_protected2_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 0, i32 1
  %182 = ptrtoint ptr %sa_protected2_pkts to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %sa_protected2_pkts, align 8
  %inc91 = add i32 %i.0328, 6
  %arrayidx92 = getelementptr i64, ptr %data, i32 %inc91
  %184 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %183, ptr %arrayidx92, align 8
  %sa_protected_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 0, i32 2
  %185 = ptrtoint ptr %sa_protected_pkts to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %sa_protected_pkts, align 8
  %inc93 = add i32 %i.0328, 7
  %arrayidx94 = getelementptr i64, ptr %data, i32 %inc93
  %187 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %arrayidx94, align 8
  %sa_encrypted_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 0, i32 3
  %188 = ptrtoint ptr %sa_encrypted_pkts to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %sa_encrypted_pkts, align 8
  %inc95 = add i32 %i.0328, 8
  %arrayidx96 = getelementptr i64, ptr %data, i32 %inc95
  %190 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %arrayidx96, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end87, %if.end69.for.inc_crit_edge
  %i.2 = phi i32 [ %inc95, %if.end87 ], [ %inc79, %if.end69.for.inc_crit_edge ]
  %191 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %193 = and i32 %192, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool85.not.1 = icmp eq i32 %193, 0
  br i1 %tobool85.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end87.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end87.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx88.1 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 1
  %194 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %arrayidx88.1, align 8
  %inc89.1 = add i32 %i.2, 1
  %arrayidx90.1 = getelementptr i64, ptr %data, i32 %inc89.1
  %196 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %195, ptr %arrayidx90.1, align 8
  %sa_protected2_pkts.1 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 1, i32 1
  %197 = ptrtoint ptr %sa_protected2_pkts.1 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %sa_protected2_pkts.1, align 8
  %inc91.1 = add i32 %i.2, 2
  %arrayidx92.1 = getelementptr i64, ptr %data, i32 %inc91.1
  %199 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %198, ptr %arrayidx92.1, align 8
  %sa_protected_pkts.1 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 1, i32 2
  %200 = ptrtoint ptr %sa_protected_pkts.1 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %sa_protected_pkts.1, align 8
  %inc93.1 = add i32 %i.2, 3
  %arrayidx94.1 = getelementptr i64, ptr %data, i32 %inc93.1
  %202 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %201, ptr %arrayidx94.1, align 8
  %sa_encrypted_pkts.1 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 1, i32 3
  %203 = ptrtoint ptr %sa_encrypted_pkts.1 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %sa_encrypted_pkts.1, align 8
  %inc95.1 = add i32 %i.2, 4
  %arrayidx96.1 = getelementptr i64, ptr %data, i32 %inc95.1
  %205 = ptrtoint ptr %arrayidx96.1 to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %arrayidx96.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end87.1, %for.inc.for.inc.1_crit_edge
  %i.2.1 = phi i32 [ %inc95.1, %if.end87.1 ], [ %i.2, %for.inc.for.inc.1_crit_edge ]
  %206 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %208 = and i32 %207, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool85.not.2 = icmp eq i32 %208, 0
  br i1 %tobool85.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end87.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end87.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx88.2 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 2
  %209 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %arrayidx88.2, align 8
  %inc89.2 = add i32 %i.2.1, 1
  %arrayidx90.2 = getelementptr i64, ptr %data, i32 %inc89.2
  %211 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %210, ptr %arrayidx90.2, align 8
  %sa_protected2_pkts.2 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 2, i32 1
  %212 = ptrtoint ptr %sa_protected2_pkts.2 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %sa_protected2_pkts.2, align 8
  %inc91.2 = add i32 %i.2.1, 2
  %arrayidx92.2 = getelementptr i64, ptr %data, i32 %inc91.2
  %214 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %213, ptr %arrayidx92.2, align 8
  %sa_protected_pkts.2 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 2, i32 2
  %215 = ptrtoint ptr %sa_protected_pkts.2 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %sa_protected_pkts.2, align 8
  %inc93.2 = add i32 %i.2.1, 3
  %arrayidx94.2 = getelementptr i64, ptr %data, i32 %inc93.2
  %217 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %216, ptr %arrayidx94.2, align 8
  %sa_encrypted_pkts.2 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 2, i32 3
  %218 = ptrtoint ptr %sa_encrypted_pkts.2 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %sa_encrypted_pkts.2, align 8
  %inc95.2 = add i32 %i.2.1, 4
  %arrayidx96.2 = getelementptr i64, ptr %data, i32 %inc95.2
  %220 = ptrtoint ptr %arrayidx96.2 to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %219, ptr %arrayidx96.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end87.2, %for.inc.1.for.inc.2_crit_edge
  %i.2.2 = phi i32 [ %inc95.2, %if.end87.2 ], [ %i.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %221 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %223 = and i32 %222, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool85.not.3 = icmp eq i32 %223, 0
  br i1 %tobool85.not.3, label %for.inc.2.for.inc98_crit_edge, label %if.end87.3

for.inc.2.for.inc98_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98

if.end87.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx88.3 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 3
  %224 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %arrayidx88.3, align 8
  %inc89.3 = add i32 %i.2.2, 1
  %arrayidx90.3 = getelementptr i64, ptr %data, i32 %inc89.3
  %226 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %225, ptr %arrayidx90.3, align 8
  %sa_protected2_pkts.3 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 3, i32 1
  %227 = ptrtoint ptr %sa_protected2_pkts.3 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %sa_protected2_pkts.3, align 8
  %inc91.3 = add i32 %i.2.2, 2
  %arrayidx92.3 = getelementptr i64, ptr %data, i32 %inc91.3
  %229 = ptrtoint ptr %arrayidx92.3 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %228, ptr %arrayidx92.3, align 8
  %sa_protected_pkts.3 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 3, i32 2
  %230 = ptrtoint ptr %sa_protected_pkts.3 to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %sa_protected_pkts.3, align 8
  %inc93.3 = add i32 %i.2.2, 3
  %arrayidx94.3 = getelementptr i64, ptr %data, i32 %inc93.3
  %232 = ptrtoint ptr %arrayidx94.3 to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %231, ptr %arrayidx94.3, align 8
  %sa_encrypted_pkts.3 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %sc_num.0326, i32 5, i32 3, i32 3
  %233 = ptrtoint ptr %sa_encrypted_pkts.3 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %sa_encrypted_pkts.3, align 8
  %inc95.3 = add i32 %i.2.2, 4
  %arrayidx96.3 = getelementptr i64, ptr %data, i32 %inc95.3
  %235 = ptrtoint ptr %arrayidx96.3 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %234, ptr %arrayidx96.3, align 8
  br label %for.inc98

for.inc98:                                        ; preds = %if.end87.3, %for.inc.2.for.inc98_crit_edge, %for.body.for.inc98_crit_edge
  %i.3 = phi i32 [ %i.0328, %for.body.for.inc98_crit_edge ], [ %inc95.3, %if.end87.3 ], [ %i.2.2, %for.inc.2.for.inc98_crit_edge ]
  %inc99 = add nuw nsw i32 %sc_num.0326, 1
  %exitcond.not = icmp eq i32 %inc99, 32
  br i1 %exitcond.not, label %for.cond101.preheader, label %for.inc98.for.body_crit_edge

for.inc98.for.body_crit_edge:                     ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body103:                                      ; preds = %for.inc145.for.body103_crit_edge, %for.cond101.preheader
  %i.4334 = phi i32 [ %i.3, %for.cond101.preheader ], [ %i.7, %for.inc145.for.body103_crit_edge ]
  %sc_num.1332 = phi i32 [ 0, %for.cond101.preheader ], [ %inc146, %for.inc145.for.body103_crit_edge ]
  %div3.i311 = lshr i32 %sc_num.1332, 5
  %arrayidx.i312 = getelementptr i32, ptr %rxsc_idx_busy, i32 %div3.i311
  %236 = ptrtoint ptr %arrayidx.i312 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %arrayidx.i312, align 4
  %238 = shl nuw i32 1, %sc_num.1332
  %239 = and i32 %237, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool105.not = icmp eq i32 %239, 0
  br i1 %tobool105.not, label %for.body103.for.inc145_crit_edge, label %for.cond110.preheader

for.body103.for.inc145_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc145

for.cond110.preheader:                            ; preds = %for.body103
  %rx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 1
  br label %for.body112

for.body112:                                      ; preds = %for.inc142.for.body112_crit_edge, %for.cond110.preheader
  %i.5331 = phi i32 [ %i.4334, %for.cond110.preheader ], [ %i.6, %for.inc142.for.body112_crit_edge ]
  %assoc_num.1329 = phi i32 [ 0, %for.cond110.preheader ], [ %inc143, %for.inc142.for.body112_crit_edge ]
  %div3.i316 = lshr i32 %assoc_num.1329, 5
  %arrayidx.i317 = getelementptr i32, ptr %rx_sa_idx_busy, i32 %div3.i316
  %240 = ptrtoint ptr %arrayidx.i317 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %arrayidx.i317, align 4
  %242 = shl nuw i32 1, %assoc_num.1329
  %243 = and i32 %241, %242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool114.not = icmp eq i32 %243, 0
  br i1 %tobool114.not, label %for.body112.for.inc142_crit_edge, label %if.end116

for.body112.for.inc142_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

if.end116:                                        ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx117 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329
  %244 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %arrayidx117, align 8
  %inc118 = add i32 %i.5331, 1
  %arrayidx119 = getelementptr i64, ptr %data, i32 %inc118
  %246 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %arrayidx119, align 8
  %ctrl_hit_drop_redir_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 1
  %247 = ptrtoint ptr %ctrl_hit_drop_redir_pkts to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %ctrl_hit_drop_redir_pkts, align 8
  %inc120 = add i32 %i.5331, 2
  %arrayidx121 = getelementptr i64, ptr %data, i32 %inc120
  %249 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %248, ptr %arrayidx121, align 8
  %not_using_sa = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 2
  %250 = ptrtoint ptr %not_using_sa to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %not_using_sa, align 8
  %inc122 = add i32 %i.5331, 3
  %arrayidx123 = getelementptr i64, ptr %data, i32 %inc122
  %252 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %251, ptr %arrayidx123, align 8
  %unused_sa = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 3
  %253 = ptrtoint ptr %unused_sa to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %unused_sa, align 8
  %inc124 = add i32 %i.5331, 4
  %arrayidx125 = getelementptr i64, ptr %data, i32 %inc124
  %255 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %254, ptr %arrayidx125, align 8
  %not_valid_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 4
  %256 = ptrtoint ptr %not_valid_pkts to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %not_valid_pkts, align 8
  %inc126 = add i32 %i.5331, 5
  %arrayidx127 = getelementptr i64, ptr %data, i32 %inc126
  %258 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store8_noabort(i32 %258)
  store i64 %257, ptr %arrayidx127, align 8
  %invalid_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 5
  %259 = ptrtoint ptr %invalid_pkts to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %invalid_pkts, align 8
  %inc128 = add i32 %i.5331, 6
  %arrayidx129 = getelementptr i64, ptr %data, i32 %inc128
  %261 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %260, ptr %arrayidx129, align 8
  %ok_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 6
  %262 = ptrtoint ptr %ok_pkts to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %ok_pkts, align 8
  %inc130 = add i32 %i.5331, 7
  %arrayidx131 = getelementptr i64, ptr %data, i32 %inc130
  %264 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %arrayidx131, align 8
  %late_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 7
  %265 = ptrtoint ptr %late_pkts to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %late_pkts, align 8
  %inc132 = add i32 %i.5331, 8
  %arrayidx133 = getelementptr i64, ptr %data, i32 %inc132
  %267 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %266, ptr %arrayidx133, align 8
  %delayed_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 8
  %268 = ptrtoint ptr %delayed_pkts to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %delayed_pkts, align 8
  %inc134 = add i32 %i.5331, 9
  %arrayidx135 = getelementptr i64, ptr %data, i32 %inc134
  %270 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %269, ptr %arrayidx135, align 8
  %unchecked_pkts = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 9
  %271 = ptrtoint ptr %unchecked_pkts to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %unchecked_pkts, align 8
  %inc136 = add i32 %i.5331, 10
  %arrayidx137 = getelementptr i64, ptr %data, i32 %inc136
  %273 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %272, ptr %arrayidx137, align 8
  %validated_octets = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 10
  %274 = ptrtoint ptr %validated_octets to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %validated_octets, align 8
  %inc138 = add i32 %i.5331, 11
  %arrayidx139 = getelementptr i64, ptr %data, i32 %inc138
  %276 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 %275, ptr %arrayidx139, align 8
  %decrypted_octets = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %sc_num.1332, i32 5, i32 %assoc_num.1329, i32 11
  %277 = ptrtoint ptr %decrypted_octets to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %decrypted_octets, align 8
  %inc140 = add i32 %i.5331, 12
  %arrayidx141 = getelementptr i64, ptr %data, i32 %inc140
  %279 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store8_noabort(i32 %279)
  store i64 %278, ptr %arrayidx141, align 8
  br label %for.inc142

for.inc142:                                       ; preds = %if.end116, %for.body112.for.inc142_crit_edge
  %i.6 = phi i32 [ %inc140, %if.end116 ], [ %i.5331, %for.body112.for.inc142_crit_edge ]
  %inc143 = add nuw nsw i32 %assoc_num.1329, 1
  %exitcond335.not = icmp eq i32 %inc143, 4
  br i1 %exitcond335.not, label %for.inc142.for.inc145_crit_edge, label %for.inc142.for.body112_crit_edge

for.inc142.for.body112_crit_edge:                 ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body112

for.inc142.for.inc145_crit_edge:                  ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc145

for.inc145:                                       ; preds = %for.inc142.for.inc145_crit_edge, %for.body103.for.inc145_crit_edge
  %i.7 = phi i32 [ %i.4334, %for.body103.for.inc145_crit_edge ], [ %i.6, %for.inc142.for.inc145_crit_edge ]
  %inc146 = add nuw nsw i32 %sc_num.1332, 1
  %exitcond336.not = icmp eq i32 %inc146, 32
  br i1 %exitcond336.not, label %for.end147, label %for.inc145.for.body103_crit_edge

for.inc145.for.body103_crit_edge:                 ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body103

for.end147:                                       ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #8
  %inc148 = add i32 %i.7, 1
  %add.ptr = getelementptr i64, ptr %data, i32 %inc148
  br label %cleanup

cleanup:                                          ; preds = %for.end147, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %for.end147 ], [ %data, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apply_txsc_cfg(ptr nocapture noundef readonly %nic, i32 noundef %txsc_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx, i32 2
  %2 = ptrtoint ptr %sw_secy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_secy, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @aq_set_txsc(ptr noundef %nic, i32 noundef %txsc_idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %arrayidx5 = getelementptr %struct.macsec_secy, ptr %3, i32 0, i32 11, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx5, align 4
  %call7 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %for.body.preheader.do.end16_crit_edge

for.body.preheader.do.end16_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

land.lhs.true:                                    ; preds = %for.body.preheader
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b47 = load i1, ptr @apply_txsc_cfg.__warned, align 1
  br i1 %.b47, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_txsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1242, ptr noundef nonnull @.str.1) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %for.body.preheader.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %do.end16.for.inc_crit_edge, label %if.then19

do.end16.for.inc_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %do.end16
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %arrayidx20 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx, i32 3, i32 0
  %call21 = tail call fastcc i32 @aq_update_txsa(ptr noundef %nic, i32 noundef %11, ptr noundef %3, ptr noundef nonnull %9, ptr noundef %arrayidx20, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.for.inc_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then19.for.inc_crit_edge, %do.end16.for.inc_crit_edge
  %arrayidx5.1 = getelementptr %struct.macsec_secy, ptr %3, i32 0, i32 11, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx5.1, align 4
  %call7.1 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool8.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool8.not.1, label %land.lhs.true.1, label %for.inc.do.end16.1_crit_edge

for.inc.do.end16.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.1

land.lhs.true.1:                                  ; preds = %for.inc
  %call9.1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %land.lhs.true.1.do.end16.1_crit_edge, label %land.lhs.true11.1

land.lhs.true.1.do.end16.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.1

land.lhs.true11.1:                                ; preds = %land.lhs.true.1
  %.b47.1 = load i1, ptr @apply_txsc_cfg.__warned, align 1
  br i1 %.b47.1, label %land.lhs.true11.1.do.end16.1_crit_edge, label %if.then13.1

land.lhs.true11.1.do.end16.1_crit_edge:           ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.1

if.then13.1:                                      ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_txsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1242, ptr noundef nonnull @.str.1) #6
  br label %do.end16.1

do.end16.1:                                       ; preds = %if.then13.1, %land.lhs.true11.1.do.end16.1_crit_edge, %land.lhs.true.1.do.end16.1_crit_edge, %for.inc.do.end16.1_crit_edge
  %tobool18.not.1 = icmp eq ptr %13, null
  br i1 %tobool18.not.1, label %do.end16.1.for.inc.1_crit_edge, label %if.then19.1

do.end16.1.for.inc.1_crit_edge:                   ; preds = %do.end16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then19.1:                                      ; preds = %do.end16.1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  %arrayidx20.1 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx, i32 3, i32 1
  %call21.1 = tail call fastcc i32 @aq_update_txsa(ptr noundef %nic, i32 noundef %15, ptr noundef %3, ptr noundef nonnull %13, ptr noundef %arrayidx20.1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool22.not.1, label %if.then19.1.for.inc.1_crit_edge, label %if.then19.1.cleanup_crit_edge

if.then19.1.cleanup_crit_edge:                    ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.1.for.inc.1_crit_edge:                  ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1.for.inc.1_crit_edge, %do.end16.1.for.inc.1_crit_edge
  %arrayidx5.2 = getelementptr %struct.macsec_secy, ptr %3, i32 0, i32 11, i32 6, i32 2
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx5.2, align 4
  %call7.2 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %tobool8.not.2 = icmp eq i32 %call7.2, 0
  br i1 %tobool8.not.2, label %land.lhs.true.2, label %for.inc.1.do.end16.2_crit_edge

for.inc.1.do.end16.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %call9.2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %tobool10.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool10.not.2, label %land.lhs.true.2.do.end16.2_crit_edge, label %land.lhs.true11.2

land.lhs.true.2.do.end16.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.2

land.lhs.true11.2:                                ; preds = %land.lhs.true.2
  %.b47.2 = load i1, ptr @apply_txsc_cfg.__warned, align 1
  br i1 %.b47.2, label %land.lhs.true11.2.do.end16.2_crit_edge, label %if.then13.2

land.lhs.true11.2.do.end16.2_crit_edge:           ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.2

if.then13.2:                                      ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_txsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1242, ptr noundef nonnull @.str.1) #6
  br label %do.end16.2

do.end16.2:                                       ; preds = %if.then13.2, %land.lhs.true11.2.do.end16.2_crit_edge, %land.lhs.true.2.do.end16.2_crit_edge, %for.inc.1.do.end16.2_crit_edge
  %tobool18.not.2 = icmp eq ptr %17, null
  br i1 %tobool18.not.2, label %do.end16.2.for.inc.2_crit_edge, label %if.then19.2

do.end16.2.for.inc.2_crit_edge:                   ; preds = %do.end16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then19.2:                                      ; preds = %do.end16.2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 8
  %arrayidx20.2 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx, i32 3, i32 2
  %call21.2 = tail call fastcc i32 @aq_update_txsa(ptr noundef %nic, i32 noundef %19, ptr noundef %3, ptr noundef nonnull %17, ptr noundef %arrayidx20.2, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %tobool22.not.2 = icmp eq i32 %call21.2, 0
  br i1 %tobool22.not.2, label %if.then19.2.for.inc.2_crit_edge, label %if.then19.2.cleanup_crit_edge

if.then19.2.cleanup_crit_edge:                    ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.2.for.inc.2_crit_edge:                  ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then19.2.for.inc.2_crit_edge, %do.end16.2.for.inc.2_crit_edge
  %arrayidx5.3 = getelementptr %struct.macsec_secy, ptr %3, i32 0, i32 11, i32 6, i32 3
  %20 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx5.3, align 4
  %call7.3 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %tobool8.not.3 = icmp eq i32 %call7.3, 0
  br i1 %tobool8.not.3, label %land.lhs.true.3, label %for.inc.2.do.end16.3_crit_edge

for.inc.2.do.end16.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %call9.3 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %tobool10.not.3 = icmp eq i32 %call9.3, 0
  br i1 %tobool10.not.3, label %land.lhs.true.3.do.end16.3_crit_edge, label %land.lhs.true11.3

land.lhs.true.3.do.end16.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.3

land.lhs.true11.3:                                ; preds = %land.lhs.true.3
  %.b47.3 = load i1, ptr @apply_txsc_cfg.__warned, align 1
  br i1 %.b47.3, label %land.lhs.true11.3.do.end16.3_crit_edge, label %if.then13.3

land.lhs.true11.3.do.end16.3_crit_edge:           ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.3

if.then13.3:                                      ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_txsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1242, ptr noundef nonnull @.str.1) #6
  br label %do.end16.3

do.end16.3:                                       ; preds = %if.then13.3, %land.lhs.true11.3.do.end16.3_crit_edge, %land.lhs.true.3.do.end16.3_crit_edge, %for.inc.2.do.end16.3_crit_edge
  %tobool18.not.3 = icmp eq ptr %21, null
  br i1 %tobool18.not.3, label %do.end16.3.for.inc.3_crit_edge, label %if.then19.3

do.end16.3.for.inc.3_crit_edge:                   ; preds = %do.end16.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then19.3:                                      ; preds = %do.end16.3
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 8
  %arrayidx20.3 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx, i32 3, i32 3
  %call21.3 = tail call fastcc i32 @aq_update_txsa(ptr noundef %nic, i32 noundef %23, ptr noundef %3, ptr noundef nonnull %21, ptr noundef %arrayidx20.3, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.3)
  %tobool22.not.3 = icmp eq i32 %call21.3, 0
  br i1 %tobool22.not.3, label %if.then19.3.for.inc.3_crit_edge, label %if.then19.3.cleanup_crit_edge

if.then19.3.cleanup_crit_edge:                    ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.3.for.inc.3_crit_edge:                  ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then19.3.for.inc.3_crit_edge, %do.end16.3.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then19.3.cleanup_crit_edge, %if.then19.2.cleanup_crit_edge, %if.then19.1.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call21, %if.then19.cleanup_crit_edge ], [ %call21.1, %if.then19.1.cleanup_crit_edge ], [ %call21.2, %if.then19.2.cleanup_crit_edge ], [ %call21.3, %if.then19.3.cleanup_crit_edge ], [ 0, %for.inc.3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apply_rxsc_cfg(ptr nocapture noundef readonly %nic, i32 noundef %rxsc_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 2
  %2 = ptrtoint ptr %sw_secy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_secy, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @aq_set_rxsc(ptr noundef %nic, i32 noundef %rxsc_idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %sw_rxsc = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 3
  %8 = ptrtoint ptr %sw_rxsc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_rxsc, align 4
  %arrayidx5 = getelementptr %struct.macsec_rx_sc, ptr %9, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx5, align 4
  %call7 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %for.cond.preheader.do.end16_crit_edge

for.cond.preheader.do.end16_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

land.lhs.true:                                    ; preds = %for.cond.preheader
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b47 = load i1, ptr @apply_rxsc_cfg.__warned, align 1
  br i1 %.b47, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_rxsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.1) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %for.cond.preheader.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %do.end16.for.inc_crit_edge, label %if.then19

do.end16.for.inc_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %do.end16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  %arrayidx20 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 4, i32 0
  %call21 = tail call fastcc i32 @aq_update_rxsa(ptr noundef %nic, i32 noundef %13, ptr noundef %3, ptr noundef nonnull %11, ptr noundef %arrayidx20, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.for.inc_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then19.for.inc_crit_edge, %do.end16.for.inc_crit_edge
  %14 = ptrtoint ptr %sw_rxsc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sw_rxsc, align 4
  %arrayidx5.1 = getelementptr %struct.macsec_rx_sc, ptr %15, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx5.1, align 4
  %call7.1 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool8.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool8.not.1, label %land.lhs.true.1, label %for.inc.do.end16.1_crit_edge

for.inc.do.end16.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.1

land.lhs.true.1:                                  ; preds = %for.inc
  %call9.1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %land.lhs.true.1.do.end16.1_crit_edge, label %land.lhs.true11.1

land.lhs.true.1.do.end16.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.1

land.lhs.true11.1:                                ; preds = %land.lhs.true.1
  %.b47.1 = load i1, ptr @apply_rxsc_cfg.__warned, align 1
  br i1 %.b47.1, label %land.lhs.true11.1.do.end16.1_crit_edge, label %if.then13.1

land.lhs.true11.1.do.end16.1_crit_edge:           ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.1

if.then13.1:                                      ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_rxsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.1) #6
  br label %do.end16.1

do.end16.1:                                       ; preds = %if.then13.1, %land.lhs.true11.1.do.end16.1_crit_edge, %land.lhs.true.1.do.end16.1_crit_edge, %for.inc.do.end16.1_crit_edge
  %tobool18.not.1 = icmp eq ptr %17, null
  br i1 %tobool18.not.1, label %do.end16.1.for.inc.1_crit_edge, label %if.then19.1

do.end16.1.for.inc.1_crit_edge:                   ; preds = %do.end16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then19.1:                                      ; preds = %do.end16.1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 8
  %arrayidx20.1 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 4, i32 1
  %call21.1 = tail call fastcc i32 @aq_update_rxsa(ptr noundef %nic, i32 noundef %19, ptr noundef %3, ptr noundef nonnull %17, ptr noundef %arrayidx20.1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool22.not.1, label %if.then19.1.for.inc.1_crit_edge, label %if.then19.1.cleanup_crit_edge

if.then19.1.cleanup_crit_edge:                    ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.1.for.inc.1_crit_edge:                  ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1.for.inc.1_crit_edge, %do.end16.1.for.inc.1_crit_edge
  %20 = ptrtoint ptr %sw_rxsc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw_rxsc, align 4
  %arrayidx5.2 = getelementptr %struct.macsec_rx_sc, ptr %21, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx5.2, align 4
  %call7.2 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %tobool8.not.2 = icmp eq i32 %call7.2, 0
  br i1 %tobool8.not.2, label %land.lhs.true.2, label %for.inc.1.do.end16.2_crit_edge

for.inc.1.do.end16.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %call9.2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %tobool10.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool10.not.2, label %land.lhs.true.2.do.end16.2_crit_edge, label %land.lhs.true11.2

land.lhs.true.2.do.end16.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.2

land.lhs.true11.2:                                ; preds = %land.lhs.true.2
  %.b47.2 = load i1, ptr @apply_rxsc_cfg.__warned, align 1
  br i1 %.b47.2, label %land.lhs.true11.2.do.end16.2_crit_edge, label %if.then13.2

land.lhs.true11.2.do.end16.2_crit_edge:           ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.2

if.then13.2:                                      ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_rxsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.1) #6
  br label %do.end16.2

do.end16.2:                                       ; preds = %if.then13.2, %land.lhs.true11.2.do.end16.2_crit_edge, %land.lhs.true.2.do.end16.2_crit_edge, %for.inc.1.do.end16.2_crit_edge
  %tobool18.not.2 = icmp eq ptr %23, null
  br i1 %tobool18.not.2, label %do.end16.2.for.inc.2_crit_edge, label %if.then19.2

do.end16.2.for.inc.2_crit_edge:                   ; preds = %do.end16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then19.2:                                      ; preds = %do.end16.2
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 8
  %arrayidx20.2 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 4, i32 2
  %call21.2 = tail call fastcc i32 @aq_update_rxsa(ptr noundef %nic, i32 noundef %25, ptr noundef %3, ptr noundef nonnull %23, ptr noundef %arrayidx20.2, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %tobool22.not.2 = icmp eq i32 %call21.2, 0
  br i1 %tobool22.not.2, label %if.then19.2.for.inc.2_crit_edge, label %if.then19.2.cleanup_crit_edge

if.then19.2.cleanup_crit_edge:                    ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.2.for.inc.2_crit_edge:                  ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then19.2.for.inc.2_crit_edge, %do.end16.2.for.inc.2_crit_edge
  %26 = ptrtoint ptr %sw_rxsc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sw_rxsc, align 4
  %arrayidx5.3 = getelementptr %struct.macsec_rx_sc, ptr %27, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx5.3, align 4
  %call7.3 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %tobool8.not.3 = icmp eq i32 %call7.3, 0
  br i1 %tobool8.not.3, label %land.lhs.true.3, label %for.inc.2.do.end16.3_crit_edge

for.inc.2.do.end16.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %call9.3 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %tobool10.not.3 = icmp eq i32 %call9.3, 0
  br i1 %tobool10.not.3, label %land.lhs.true.3.do.end16.3_crit_edge, label %land.lhs.true11.3

land.lhs.true.3.do.end16.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.3

land.lhs.true11.3:                                ; preds = %land.lhs.true.3
  %.b47.3 = load i1, ptr @apply_rxsc_cfg.__warned, align 1
  br i1 %.b47.3, label %land.lhs.true11.3.do.end16.3_crit_edge, label %if.then13.3

land.lhs.true11.3.do.end16.3_crit_edge:           ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.3

if.then13.3:                                      ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @apply_rxsc_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.1) #6
  br label %do.end16.3

do.end16.3:                                       ; preds = %if.then13.3, %land.lhs.true11.3.do.end16.3_crit_edge, %land.lhs.true.3.do.end16.3_crit_edge, %for.inc.2.do.end16.3_crit_edge
  %tobool18.not.3 = icmp eq ptr %29, null
  br i1 %tobool18.not.3, label %do.end16.3.for.inc.3_crit_edge, label %if.then19.3

do.end16.3.for.inc.3_crit_edge:                   ; preds = %do.end16.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then19.3:                                      ; preds = %do.end16.3
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 8
  %arrayidx20.3 = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 4, i32 3
  %call21.3 = tail call fastcc i32 @aq_update_rxsa(ptr noundef %nic, i32 noundef %31, ptr noundef %3, ptr noundef nonnull %29, ptr noundef %arrayidx20.3, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.3)
  %tobool22.not.3 = icmp eq i32 %call21.3, 0
  br i1 %tobool22.not.3, label %if.then19.3.for.inc.3_crit_edge, label %if.then19.3.cleanup_crit_edge

if.then19.3.cleanup_crit_edge:                    ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.3.for.inc.3_crit_edge:                  ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then19.3.for.inc.3_crit_edge, %do.end16.3.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then19.3.cleanup_crit_edge, %if.then19.2.cleanup_crit_edge, %if.then19.1.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call21, %if.then19.cleanup_crit_edge ], [ %call21.1, %if.then19.1.cleanup_crit_edge ], [ %call21.2, %if.then19.2.cleanup_crit_edge ], [ %call21.3, %if.then19.3.cleanup_crit_edge ], [ 0, %for.inc.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_set_txsc(ptr nocapture noundef readonly %nic, i32 noundef %txsc_idx) unnamed_addr #0 align 64 {
entry:
  %tx_class_rec = alloca %struct.aq_mss_egress_class_record, align 4
  %sc_rec = alloca %struct.aq_mss_egress_sc_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx
  call void @llvm.lifetime.start.p0(i64 188, ptr nonnull %tx_class_rec) #6
  %2 = call ptr @memset(ptr %tx_class_rec, i32 0, i32 180)
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %txsc_idx, i32 2
  %3 = ptrtoint ptr %sw_secy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw_secy, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %sc_rec) #6
  %5 = call ptr @memset(ptr %sc_rec, i32 0, i32 44)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %8 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw, align 8
  %mac_sa = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 12
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %tmp.sroa.0.2.copyload.i = load i16, ptr %13, align 1
  %tmp.sroa.0.2.insert.ext.i = zext i16 %tmp.sroa.0.2.copyload.i to i32
  %tmp.sroa.5.2..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 2
  %15 = ptrtoint ptr %tmp.sroa.5.2..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %tmp.sroa.5.2.copyload.i = load i32, ptr %tmp.sroa.5.2..sroa_idx.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %tmp.sroa.5.2.copyload.i) #6
  %17 = ptrtoint ptr %mac_sa to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mac_sa, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %tmp.sroa.0.2.insert.ext.i) #6
  %arrayidx3.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx3.i, align 4
  %sci = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %sci to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sci, align 8
  %sci2 = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 8
  %22 = ptrtoint ptr %sci2 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %sci2, align 4
  %sci_mask = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 27
  %23 = ptrtoint ptr %sci_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sci_mask, align 4
  %sa_mask = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 31
  %24 = ptrtoint ptr %sa_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 63, ptr %sa_mask, align 4
  %action = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 41
  %25 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %action, align 4
  %valid = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 42
  %26 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %valid, align 4
  %sc_idx4 = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 38
  %27 = ptrtoint ptr %sc_idx4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %7, ptr %sc_idx4, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 8
  %sc_sa6 = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %tx_class_rec, i32 0, i32 39
  %30 = ptrtoint ptr %sc_sa6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sc_sa6, align 4
  %conv = trunc i32 %txsc_idx to i16
  %call = call i32 @aq_mss_set_egress_class_record(ptr noundef %9, ptr noundef nonnull %tx_class_rec, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %protect_frames = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 8
  %31 = ptrtoint ptr %protect_frames to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protect_frames, align 2, !range !57
  %33 = zext i8 %32 to i32
  %protect = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 6
  %34 = ptrtoint ptr %protect to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %protect, align 4
  %encrypt = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %encrypt, align 2, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool9.not = icmp eq i8 %36, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tci = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 4
  %37 = ptrtoint ptr %tci to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tci, align 4
  %or = or i32 %38, 2
  store i32 %or, ptr %tci, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %scb = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 11, i32 5
  %39 = ptrtoint ptr %scb to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %scb, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool13.not = icmp eq i8 %40, 0
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %tci15 = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 4
  %41 = ptrtoint ptr %tci15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tci15, align 4
  %or16 = or i32 %42, 4
  store i32 %or16, ptr %tci15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %send_sci = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 11, i32 3
  %43 = ptrtoint ptr %send_sci to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %send_sci, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool19.not = icmp eq i8 %44, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %tci21 = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 4
  %45 = ptrtoint ptr %tci21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tci21, align 4
  %or22 = or i32 %46, 8
  store i32 %or22, ptr %tci21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %end_station = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 11, i32 4
  %47 = ptrtoint ptr %end_station to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %end_station, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool25.not = icmp eq i8 %48, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %tci27 = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 4
  %49 = ptrtoint ptr %tci27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tci27, align 4
  %or28 = or i32 %50, 16
  store i32 %or28, ptr %tci27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %icv_len = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 4
  %51 = ptrtoint ptr %icv_len to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %icv_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %52)
  %cmp = icmp eq i16 %52, 16
  br i1 %cmp, label %land.lhs.true, label %if.end29.if.then35_crit_edge

if.end29.if.then35_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

land.lhs.true:                                    ; preds = %if.end29
  %53 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %encrypt, align 2, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool34.not = icmp eq i8 %54, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true.if.then35_crit_edge, %if.end29.if.then35_crit_edge
  %tci36 = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 4
  %55 = ptrtoint ptr %tci36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tci36, align 4
  %or37 = or i32 %56, 1
  store i32 %or37, ptr %tci36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true.if.end38_crit_edge
  %an_roll = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 3
  %57 = ptrtoint ptr %an_roll to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %an_roll, align 4
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 3
  %58 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %key_len, align 8
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %59, label %land.end [
    i16 16, label %if.end38.sw.epilog_crit_edge
    i16 24, label %sw.bb40
    i16 32, label %sw.bb42
  ]

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.end:                                         ; preds = %if.end38
  %.b110 = load i1, ptr @aq_set_txsc.__already_done, align 1
  br i1 %.b110, label %land.end.cleanup_crit_edge, label %if.then50, !prof !59

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_set_txsc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 377, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb40, %if.end38.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb42 ], [ 1, %sw.bb40 ], [ 0, %if.end38.sw.epilog_crit_edge ]
  %sak_len43 = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 9
  %61 = ptrtoint ptr %sak_len43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %sak_len43, align 4
  %encoding_sa = getelementptr inbounds %struct.macsec_secy, ptr %4, i32 0, i32 11, i32 1
  %62 = ptrtoint ptr %encoding_sa to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %encoding_sa, align 1
  %conv81 = zext i8 %63 to i32
  %curr_an = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 2
  %64 = ptrtoint ptr %curr_an to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv81, ptr %curr_an, align 4
  %valid82 = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 10
  %65 = ptrtoint ptr %valid82 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %valid82, align 4
  %fresh = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec, i32 0, i32 8
  %66 = ptrtoint ptr %fresh to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %fresh, align 4
  %conv83 = trunc i32 %7 to i16
  %call84 = call i32 @aq_mss_set_egress_sc_record(ptr noundef %9, ptr noundef nonnull %sc_rec, i16 noundef zeroext %conv83) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then50, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call84, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then50 ], [ -22, %land.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sc_rec) #6
  call void @llvm.lifetime.end.p0(i64 188, ptr nonnull %tx_class_rec) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_update_txsa(ptr nocapture noundef readonly %nic, i32 noundef %sc_idx, ptr nocapture noundef readonly %secy, ptr nocapture noundef readonly %tx_sa, ptr noundef readonly %key, i8 noundef zeroext %an) unnamed_addr #0 align 64 {
entry:
  %key_rec = alloca %struct.aq_mss_egress_sakey_record, align 4
  %sa_rec = alloca %struct.aq_mss_egress_sa_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.macsec_tx_sa, ptr %tx_sa, i32 0, i32 3
  %lower = getelementptr inbounds %struct.anon.120, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lower, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_rec) #6
  %3 = getelementptr inbounds [8 x i32], ptr %key_rec, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i32], ptr %key_rec, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i32], ptr %key_rec, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i32], ptr %key_rec, i32 0, i32 4
  %7 = getelementptr inbounds [8 x i32], ptr %key_rec, i32 0, i32 5
  %8 = getelementptr inbounds [8 x i32], ptr %key_rec, i32 0, i32 6
  %9 = getelementptr inbounds [8 x i32], ptr %key_rec, i32 0, i32 7
  %conv = zext i8 %an to i32
  %or = or i32 %conv, %sc_idx
  %10 = call ptr @memset(ptr %key_rec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sa_rec) #6
  %11 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec, i32 0, i32 2
  %12 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec, i32 0, i32 4
  %13 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec, i32 0, i32 5
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %14 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw, align 8
  %16 = call ptr @memset(ptr %sa_rec, i32 0, i32 16)
  %active = getelementptr inbounds %struct.macsec_tx_sa, ptr %tx_sa, i32 0, i32 5
  %17 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %active, align 4, !range !57
  %19 = zext i8 %18 to i32
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %13, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %12, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %2, ptr %11, align 4
  %conv3 = trunc i32 %or to i16
  %call = call i32 @aq_mss_set_egress_sa_record(ptr noundef %15, ptr noundef nonnull %sa_rec, i16 noundef zeroext %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %key, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %secy, i32 0, i32 3
  %23 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %key_len, align 8
  %conv9 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %24)
  %25 = icmp ugt i16 %24, 31
  %26 = sub nsw i32 32, %conv9
  %27 = select i1 %25, i32 0, i32 %26
  %28 = getelementptr i8, ptr %key_rec, i32 %conv9
  %29 = call ptr @memset(ptr %28, i32 0, i32 %27)
  %30 = call ptr @memcpy(ptr %key_rec, ptr %key, i32 %conv9)
  %31 = ptrtoint ptr %key_rec to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp.sroa.0.0.copyload.i = load i32, ptr %key_rec, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.sroa.7.0.copyload.i = load i32, ptr %3, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %tmp.sroa.10.0.copyload.i = load i32, ptr %4, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %tmp.sroa.13.0.copyload.i = load i32, ptr %5, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.sroa.16.0.copyload.i = load i32, ptr %6, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp.sroa.18.0.copyload.i = load i32, ptr %7, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.sroa.20.0.copyload.i = load i32, ptr %8, align 4
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp.sroa.21.0.copyload.i = load i32, ptr %9, align 4
  %39 = call ptr @memset(ptr %key_rec, i32 0, i32 32)
  %40 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %24, label %do.end.i [
    i16 16, label %if.then.i
    i16 24, label %if.then9.i
    i16 32, label %if.then24.i
  ]

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %41 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.13.0.copyload.i) #6
  %42 = ptrtoint ptr %key_rec to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %key_rec, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.10.0.copyload.i) #6
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %3, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.7.0.copyload.i) #6
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %4, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.0.0.copyload.i) #6
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %5, align 4
  br label %aq_rotate_keys.exit

if.then9.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %49 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.18.0.copyload.i) #6
  %50 = ptrtoint ptr %key_rec to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %key_rec, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.16.0.copyload.i) #6
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %3, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.13.0.copyload.i) #6
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %4, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.10.0.copyload.i) #6
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %5, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.7.0.copyload.i) #6
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %6, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.0.0.copyload.i) #6
  %60 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %7, align 4
  br label %aq_rotate_keys.exit

if.then24.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %61 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.21.0.copyload.i) #6
  %62 = ptrtoint ptr %key_rec to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %key_rec, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.20.0.copyload.i) #6
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %3, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.18.0.copyload.i) #6
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %4, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.16.0.copyload.i) #6
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %5, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.13.0.copyload.i) #6
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %6, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.10.0.copyload.i) #6
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %7, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.7.0.copyload.i) #6
  %74 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %8, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.0.0.copyload.i) #6
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %9, align 4
  br label %aq_rotate_keys.exit

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %aq_rotate_keys.exit

aq_rotate_keys.exit:                              ; preds = %do.end.i, %if.then24.i, %if.then9.i, %if.then.i
  %call14 = call i32 @aq_mss_set_egress_sakey_record(ptr noundef %15, ptr noundef nonnull %key_rec, i16 noundef zeroext %conv3) #6
  br label %cleanup

cleanup:                                          ; preds = %aq_rotate_keys.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %aq_rotate_keys.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sa_rec) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_rec) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_egress_class_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_egress_sc_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_egress_sa_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_egress_sakey_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_set_rxsc(ptr nocapture noundef readonly %nic, i32 noundef %rxsc_idx) unnamed_addr #0 align 64 {
entry:
  %pre_class_record = alloca %struct.aq_mss_ingress_preclass_record, align 8
  %sc_record = alloca %struct.aq_mss_ingress_sc_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %pre_class_record) #6
  %sw_rxsc = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 3
  %2 = ptrtoint ptr %sw_rxsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_rxsc, align 4
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 2
  %4 = ptrtoint ptr %sw_secy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw_secy, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sc_record) #6
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %8 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw, align 8
  %10 = getelementptr inbounds i8, ptr %pre_class_record, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 112)
  %sci = getelementptr inbounds %struct.macsec_rx_sc, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %sci to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sci, align 8
  %14 = ptrtoint ptr %pre_class_record to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %pre_class_record, align 8
  %sci_mask = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 11
  %15 = ptrtoint ptr %sci_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %sci_mask, align 4
  %eth_type = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 3
  %16 = ptrtoint ptr %eth_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 35045, ptr %eth_type, align 8
  %eth_type_mask = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 12
  %17 = ptrtoint ptr %eth_type_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %eth_type_mask, align 8
  %mac_sa = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 6
  %tmp.sroa.0.2.copyload.i = load i16, ptr %sci, align 1
  %tmp.sroa.0.2.insert.ext.i = zext i16 %tmp.sroa.0.2.copyload.i to i32
  %tmp.sroa.5.2..sroa_idx.i = getelementptr inbounds i8, ptr %sci, i32 2
  %18 = ptrtoint ptr %tmp.sroa.5.2..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %tmp.sroa.5.2.copyload.i = load i32, ptr %tmp.sroa.5.2..sroa_idx.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %tmp.sroa.5.2.copyload.i) #6
  %20 = ptrtoint ptr %mac_sa to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mac_sa, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %tmp.sroa.0.2.insert.ext.i) #6
  %arrayidx3.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx3.i, align 4
  %sa_mask = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 16
  %23 = ptrtoint ptr %sa_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 63, ptr %sa_mask, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 8
  %an_mask = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 9
  %26 = ptrtoint ptr %an_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %an_mask, align 4
  %sc_idx = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 19
  %27 = ptrtoint ptr %sc_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %7, ptr %sc_idx, align 4
  %valid = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 25
  %28 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %valid, align 4
  %rxsc_idx.tr = trunc i32 %rxsc_idx to i16
  %29 = shl i16 %rxsc_idx.tr, 1
  %conv = or i16 %29, 1
  %call = call i32 @aq_mss_set_ingress_preclass_record(ptr noundef %9, ptr noundef nonnull %pre_class_record, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = ptrtoint ptr %sci_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sci_mask, align 4
  %sci_from_table = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %pre_class_record, i32 0, i32 23
  %31 = ptrtoint ptr %sci_from_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %sci_from_table, align 4
  %call10 = call i32 @aq_mss_set_ingress_preclass_record(ptr noundef %9, ptr noundef nonnull %pre_class_record, i16 noundef zeroext %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %32 = call ptr @memset(ptr %sc_record, i32 0, i32 36)
  %validate_frames = getelementptr inbounds %struct.macsec_secy, ptr %5, i32 0, i32 5
  %33 = ptrtoint ptr %validate_frames to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %validate_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %if.end13
  %.b37.i = load i1, ptr @aq_rxsc_validate_frames.__already_done, align 1
  br i1 %.b37.i, label %land.end.i.aq_rxsc_validate_frames.exit_crit_edge, label %if.then.i, !prof !59

land.end.i.aq_rxsc_validate_frames.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_rxsc_validate_frames.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_rxsc_validate_frames.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 703, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %aq_rxsc_validate_frames.exit

switch.lookup:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %switch.offset = sub i32 2, %34
  br label %aq_rxsc_validate_frames.exit

aq_rxsc_validate_frames.exit:                     ; preds = %switch.lookup, %if.then.i, %land.end.i.aq_rxsc_validate_frames.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %land.end.i.aq_rxsc_validate_frames.exit_crit_edge ], [ %switch.offset, %switch.lookup ]
  %validate_frames15 = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %sc_record, i32 0, i32 2
  %36 = ptrtoint ptr %validate_frames15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %validate_frames15, align 4
  %replay_protect = getelementptr inbounds %struct.macsec_secy, ptr %5, i32 0, i32 9
  %37 = ptrtoint ptr %replay_protect to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %replay_protect, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool16.not = icmp eq i8 %38, 0
  br i1 %tobool16.not, label %aq_rxsc_validate_frames.exit.if.end19_crit_edge, label %if.then17

aq_rxsc_validate_frames.exit.if.end19_crit_edge:  ; preds = %aq_rxsc_validate_frames.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %aq_rxsc_validate_frames.exit
  call void @__sanitizer_cov_trace_pc() #8
  %replay_protect18 = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %sc_record, i32 0, i32 3
  %39 = ptrtoint ptr %replay_protect18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %replay_protect18, align 4
  %replay_window = getelementptr inbounds %struct.macsec_secy, ptr %5, i32 0, i32 10
  %40 = ptrtoint ptr %replay_window to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %replay_window, align 4
  %anti_replay_window = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %sc_record, i32 0, i32 4
  %42 = ptrtoint ptr %anti_replay_window to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %anti_replay_window, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %aq_rxsc_validate_frames.exit.if.end19_crit_edge
  %valid20 = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %sc_record, i32 0, i32 9
  %43 = ptrtoint ptr %valid20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %valid20, align 4
  %fresh = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %sc_record, i32 0, i32 6
  %44 = ptrtoint ptr %fresh to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %fresh, align 4
  %conv21 = trunc i32 %7 to i16
  %call22 = call i32 @aq_mss_set_ingress_sc_record(ptr noundef %9, ptr noundef nonnull %sc_record, i16 noundef zeroext %conv21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ %call22, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sc_record) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %pre_class_record) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_update_rxsa(ptr nocapture noundef readonly %nic, i32 noundef %sc_idx, ptr nocapture noundef readonly %secy, ptr nocapture noundef readonly %rx_sa, ptr noundef readonly %key, i8 noundef zeroext %an) unnamed_addr #0 align 64 {
entry:
  %sa_key_record = alloca %struct.aq_mss_ingress_sakey_record, align 4
  %sa_record = alloca %struct.aq_mss_ingress_sa_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %sa_key_record) #6
  %0 = call ptr @memset(ptr %sa_key_record, i32 255, i32 36)
  %1 = getelementptr inbounds %struct.macsec_rx_sa, ptr %rx_sa, i32 0, i32 3
  %lower = getelementptr inbounds %struct.anon.120, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lower, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sa_record) #6
  %4 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record, i32 0, i32 2
  %5 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record, i32 0, i32 5
  %6 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record, i32 0, i32 7
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %7 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw, align 8
  %conv = zext i8 %an to i32
  %or = or i32 %conv, %sc_idx
  %9 = call ptr @memset(ptr %sa_record, i32 0, i32 28)
  %active = getelementptr inbounds %struct.macsec_rx_sa, ptr %rx_sa, i32 0, i32 5
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 4, !range !57
  %12 = zext i8 %11 to i32
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %6, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %5, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %3, ptr %4, align 4
  %conv3 = trunc i32 %or to i16
  %call = call i32 @aq_mss_set_ingress_sa_record(ptr noundef %8, ptr noundef nonnull %sa_record, i16 noundef zeroext %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %key, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %secy, i32 0, i32 3
  %16 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %key_len, align 8
  %conv9 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %17)
  %18 = icmp ugt i16 %17, 35
  %19 = sub nsw i32 36, %conv9
  %20 = select i1 %18, i32 0, i32 %19
  %21 = getelementptr i8, ptr %sa_key_record, i32 %conv9
  %22 = call ptr @memset(ptr %21, i32 0, i32 %20)
  %23 = call ptr @memcpy(ptr %sa_key_record, ptr %key, i32 %conv9)
  %24 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %17, label %if.end7.cleanup_crit_edge [
    i16 16, label %if.then.i
    i16 24, label %if.then9.i
    i16 32, label %if.then24.i
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %key_len12 = getelementptr inbounds %struct.aq_mss_ingress_sakey_record, ptr %sa_key_record, i32 0, i32 1
  %25 = ptrtoint ptr %key_len12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %key_len12, align 4
  %26 = ptrtoint ptr %sa_key_record to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.sroa.0.0.copyload.i36 = load i32, ptr %sa_key_record, align 4
  %tmp.sroa.7.0..sroa_idx.i37 = getelementptr inbounds i8, ptr %sa_key_record, i32 4
  %27 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp.sroa.7.0.copyload.i38 = load i32, ptr %tmp.sroa.7.0..sroa_idx.i37, align 4
  %tmp.sroa.10.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %sa_key_record, i32 8
  %28 = ptrtoint ptr %tmp.sroa.10.0..sroa_idx.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.sroa.10.0.copyload.i40 = load i32, ptr %tmp.sroa.10.0..sroa_idx.i39, align 4
  %tmp.sroa.13.0..sroa_idx.i41 = getelementptr inbounds i8, ptr %sa_key_record, i32 12
  %29 = ptrtoint ptr %tmp.sroa.13.0..sroa_idx.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %tmp.sroa.13.0.copyload.i42 = load i32, ptr %tmp.sroa.13.0..sroa_idx.i41, align 4
  %30 = getelementptr inbounds i8, ptr %sa_key_record, i32 16
  %31 = call ptr @memset(ptr %30, i32 0, i32 16)
  %32 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.13.0.copyload.i42) #6
  %33 = ptrtoint ptr %sa_key_record to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sa_key_record, align 4
  br label %aq_rotate_keys.exit

if.then9.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %key_len14 = getelementptr inbounds %struct.aq_mss_ingress_sakey_record, ptr %sa_key_record, i32 0, i32 1
  %34 = ptrtoint ptr %key_len14 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %key_len14, align 4
  %35 = ptrtoint ptr %sa_key_record to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.sroa.0.0.copyload.i59 = load i32, ptr %sa_key_record, align 4
  %tmp.sroa.7.0..sroa_idx.i60 = getelementptr inbounds i8, ptr %sa_key_record, i32 4
  %36 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp.sroa.7.0.copyload.i61 = load i32, ptr %tmp.sroa.7.0..sroa_idx.i60, align 4
  %tmp.sroa.10.0..sroa_idx.i62 = getelementptr inbounds i8, ptr %sa_key_record, i32 8
  %37 = ptrtoint ptr %tmp.sroa.10.0..sroa_idx.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.sroa.10.0.copyload.i63 = load i32, ptr %tmp.sroa.10.0..sroa_idx.i62, align 4
  %tmp.sroa.13.0..sroa_idx.i64 = getelementptr inbounds i8, ptr %sa_key_record, i32 12
  %38 = ptrtoint ptr %tmp.sroa.13.0..sroa_idx.i64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp.sroa.13.0.copyload.i65 = load i32, ptr %tmp.sroa.13.0..sroa_idx.i64, align 4
  %tmp.sroa.16.0..sroa_idx.i66 = getelementptr inbounds i8, ptr %sa_key_record, i32 16
  %39 = ptrtoint ptr %tmp.sroa.16.0..sroa_idx.i66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %tmp.sroa.16.0.copyload.i67 = load i32, ptr %tmp.sroa.16.0..sroa_idx.i66, align 4
  %tmp.sroa.18.0..sroa_idx.i68 = getelementptr inbounds i8, ptr %sa_key_record, i32 20
  %40 = ptrtoint ptr %tmp.sroa.18.0..sroa_idx.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %tmp.sroa.18.0.copyload.i69 = load i32, ptr %tmp.sroa.18.0..sroa_idx.i68, align 4
  %41 = getelementptr inbounds i8, ptr %sa_key_record, i32 24
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 0, ptr %41, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.18.0.copyload.i69) #6
  %44 = ptrtoint ptr %sa_key_record to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sa_key_record, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.16.0.copyload.i67) #6
  %46 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx.i60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.sroa.7.0..sroa_idx.i60, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.13.0.copyload.i65) #6
  %48 = ptrtoint ptr %tmp.sroa.10.0..sroa_idx.i62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tmp.sroa.10.0..sroa_idx.i62, align 4
  br label %aq_rotate_keys.exit

if.then24.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %key_len16 = getelementptr inbounds %struct.aq_mss_ingress_sakey_record, ptr %sa_key_record, i32 0, i32 1
  %49 = ptrtoint ptr %key_len16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %key_len16, align 4
  %50 = ptrtoint ptr %sa_key_record to i32
  call void @__asan_load4_noabort(i32 %50)
  %tmp.sroa.0.0.copyload.i = load i32, ptr %sa_key_record, align 4
  %tmp.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %sa_key_record, i32 4
  %51 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %tmp.sroa.7.0.copyload.i = load i32, ptr %tmp.sroa.7.0..sroa_idx.i, align 4
  %tmp.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %sa_key_record, i32 8
  %52 = ptrtoint ptr %tmp.sroa.10.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp.sroa.10.0.copyload.i = load i32, ptr %tmp.sroa.10.0..sroa_idx.i, align 4
  %tmp.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %sa_key_record, i32 12
  %53 = ptrtoint ptr %tmp.sroa.13.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %tmp.sroa.13.0.copyload.i = load i32, ptr %tmp.sroa.13.0..sroa_idx.i, align 4
  %tmp.sroa.16.0..sroa_idx.i = getelementptr inbounds i8, ptr %sa_key_record, i32 16
  %54 = ptrtoint ptr %tmp.sroa.16.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %tmp.sroa.16.0.copyload.i = load i32, ptr %tmp.sroa.16.0..sroa_idx.i, align 4
  %tmp.sroa.18.0..sroa_idx.i = getelementptr inbounds i8, ptr %sa_key_record, i32 20
  %55 = ptrtoint ptr %tmp.sroa.18.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %tmp.sroa.18.0.copyload.i = load i32, ptr %tmp.sroa.18.0..sroa_idx.i, align 4
  %tmp.sroa.20.0..sroa_idx.i = getelementptr inbounds i8, ptr %sa_key_record, i32 24
  %56 = ptrtoint ptr %tmp.sroa.20.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %tmp.sroa.20.0.copyload.i = load i32, ptr %tmp.sroa.20.0..sroa_idx.i, align 4
  %tmp.sroa.21.0..sroa_idx.i = getelementptr inbounds i8, ptr %sa_key_record, i32 28
  %57 = ptrtoint ptr %tmp.sroa.21.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %tmp.sroa.21.0.copyload.i = load i32, ptr %tmp.sroa.21.0..sroa_idx.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.21.0.copyload.i) #6
  %59 = ptrtoint ptr %sa_key_record to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sa_key_record, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.20.0.copyload.i) #6
  %61 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tmp.sroa.7.0..sroa_idx.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.18.0.copyload.i) #6
  %63 = ptrtoint ptr %tmp.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tmp.sroa.10.0..sroa_idx.i, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.16.0.copyload.i) #6
  %65 = ptrtoint ptr %tmp.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tmp.sroa.13.0..sroa_idx.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.13.0.copyload.i) #6
  %67 = ptrtoint ptr %tmp.sroa.16.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %tmp.sroa.16.0..sroa_idx.i, align 4
  br label %aq_rotate_keys.exit

aq_rotate_keys.exit:                              ; preds = %if.then24.i, %if.then9.i, %if.then.i
  %tmp.sroa.10.0.copyload.i40.sink = phi i32 [ %tmp.sroa.10.0.copyload.i40, %if.then.i ], [ %tmp.sroa.10.0.copyload.i63, %if.then9.i ], [ %tmp.sroa.10.0.copyload.i, %if.then24.i ]
  %tmp.sroa.7.0..sroa_idx.i37.sink = phi ptr [ %tmp.sroa.7.0..sroa_idx.i37, %if.then.i ], [ %tmp.sroa.13.0..sroa_idx.i64, %if.then9.i ], [ %tmp.sroa.18.0..sroa_idx.i, %if.then24.i ]
  %tmp.sroa.7.0.copyload.i38.sink = phi i32 [ %tmp.sroa.7.0.copyload.i38, %if.then.i ], [ %tmp.sroa.7.0.copyload.i61, %if.then9.i ], [ %tmp.sroa.7.0.copyload.i, %if.then24.i ]
  %tmp.sroa.10.0..sroa_idx.i39.sink = phi ptr [ %tmp.sroa.10.0..sroa_idx.i39, %if.then.i ], [ %tmp.sroa.16.0..sroa_idx.i66, %if.then9.i ], [ %tmp.sroa.20.0..sroa_idx.i, %if.then24.i ]
  %tmp.sroa.0.0.copyload.i36.sink = phi i32 [ %tmp.sroa.0.0.copyload.i36, %if.then.i ], [ %tmp.sroa.0.0.copyload.i59, %if.then9.i ], [ %tmp.sroa.0.0.copyload.i, %if.then24.i ]
  %tmp.sroa.13.0..sroa_idx.i41.sink = phi ptr [ %tmp.sroa.13.0..sroa_idx.i41, %if.then.i ], [ %tmp.sroa.18.0..sroa_idx.i68, %if.then9.i ], [ %tmp.sroa.21.0..sroa_idx.i, %if.then24.i ]
  %68 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.10.0.copyload.i40.sink) #6
  %69 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx.i37.sink to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %tmp.sroa.7.0..sroa_idx.i37.sink, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.7.0.copyload.i38.sink) #6
  %71 = ptrtoint ptr %tmp.sroa.10.0..sroa_idx.i39.sink to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %tmp.sroa.10.0..sroa_idx.i39.sink, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %tmp.sroa.0.0.copyload.i36.sink) #6
  %73 = ptrtoint ptr %tmp.sroa.13.0..sroa_idx.i41.sink to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %tmp.sroa.13.0..sroa_idx.i41.sink, align 4
  %call21 = call i32 @aq_mss_set_ingress_sakey_record(ptr noundef %8, ptr noundef nonnull %sa_key_record, i16 noundef zeroext %conv3) #6
  br label %cleanup

cleanup:                                          ; preds = %aq_rotate_keys.exit, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %aq_rotate_keys.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sa_record) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sa_key_record) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_ingress_preclass_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_ingress_sc_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_ingress_sa_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_ingress_sakey_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_clear_secy(ptr nocapture noundef readonly %nic, ptr noundef %secy, i32 noundef %clear_type) unnamed_addr #0 align 64 {
entry:
  %key_rec.i.i = alloca %struct.aq_mss_egress_sakey_record, align 4
  %sa_rec.i.i = alloca %struct.aq_mss_egress_sa_record, align 4
  %tx_class_rec.i = alloca %struct.aq_mss_egress_class_record, align 4
  %sc_rec.i = alloca %struct.aq_mss_egress_sc_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not.i = icmp eq ptr %secy, null
  br i1 %tobool.not.i, label %entry.if.end3_crit_edge, label %entry.for.body.i_crit_edge, !prof !56

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sw_secy.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.011.i, i32 2
  %2 = ptrtoint ptr %sw_secy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_secy.i, align 8
  %cmp4.i = icmp eq ptr %3, %secy
  br i1 %cmp4.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.if.end3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end3_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.011.i
  call void @llvm.lifetime.start.p0(i64 188, ptr nonnull %tx_class_rec.i) #6
  %4 = call ptr @memset(ptr %tx_class_rec.i, i32 0, i32 188)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %sc_rec.i) #6
  %5 = call ptr @memset(ptr %sc_rec.i, i32 0, i32 44)
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %6 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw.i, align 8
  %tx_sa_idx_busy.i = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 2, i32 %i.011.i, i32 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %tx_sa_idx_busy.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp56.i = icmp slt i32 %call.i, 32
  br i1 %cmp56.i, label %for.body.lr.ph.i, label %entry.for.end_crit_edge.i

entry.for.end_crit_edge.i:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i = and i32 %clear_type, 1
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %and.i.i = and i32 %clear_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and1.i.i = and i32 %clear_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %ndev.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 5
  %8 = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %sa_rec.i.i, i32 0, i32 4
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.inc.i65.for.body.i63_crit_edge, %for.body.lr.ph.i
  %sa_num.057.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call3.i, %for.inc.i65.for.body.i63_crit_edge ]
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  %or.i.i = or i32 %10, %sa_num.057.i
  %11 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_hw.i, align 8
  br i1 %tobool.not.i.i, label %for.body.i63.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i63.if.end.i.i_crit_edge:                ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef %sa_num.057.i, ptr noundef %tx_sa_idx_busy.i) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i63.if.end.i.i_crit_edge
  br i1 %tobool2.not.i.i, label %if.end.i.i.for.inc.i65_crit_edge, label %land.lhs.true.i.i

if.end.i.i.for.inc.i65_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i65

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %13 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.for.inc.i65_crit_edge

land.lhs.true.i.i.for.inc.i65_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i65

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_rec.i.i) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sa_rec.i.i) #6
  %18 = call ptr @memset(ptr %sa_rec.i.i, i32 0, i32 24)
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %8, align 4
  %conv.i.i = trunc i32 %or.i.i to i16
  %call4.i.i = call i32 @aq_mss_set_egress_sa_record(ptr noundef %12, ptr noundef nonnull %sa_rec.i.i, i16 noundef zeroext %conv.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %aq_clear_txsa.exit.i, label %aq_clear_txsa.exit.thread52.i

aq_clear_txsa.exit.thread52.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sa_rec.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_rec.i.i) #6
  br label %aq_clear_txsc.exit.thread

aq_clear_txsa.exit.i:                             ; preds = %if.then3.i.i
  %20 = call ptr @memset(ptr %key_rec.i.i, i32 0, i32 32)
  %call9.i.i = call i32 @aq_mss_set_egress_sakey_record(ptr noundef %12, ptr noundef nonnull %key_rec.i.i, i16 noundef zeroext %conv.i.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sa_rec.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_rec.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i64 = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i64, label %aq_clear_txsa.exit.i.for.inc.i65_crit_edge, label %aq_clear_txsa.exit.i.aq_clear_txsc.exit.thread_crit_edge

aq_clear_txsa.exit.i.aq_clear_txsc.exit.thread_crit_edge: ; preds = %aq_clear_txsa.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_clear_txsc.exit.thread

aq_clear_txsa.exit.i.for.inc.i65_crit_edge:       ; preds = %aq_clear_txsa.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i65

for.inc.i65:                                      ; preds = %aq_clear_txsa.exit.i.for.inc.i65_crit_edge, %land.lhs.true.i.i.for.inc.i65_crit_edge, %if.end.i.i.for.inc.i65_crit_edge
  %add.i = add nsw i32 %sa_num.057.i, 1
  %call3.i = call i32 @_find_next_bit_be(ptr noundef %tx_sa_idx_busy.i, i32 noundef 32, i32 noundef %add.i) #6
  %cmp.i = icmp slt i32 %call3.i, 32
  br i1 %cmp.i, label %for.inc.i65.for.body.i63_crit_edge, label %for.inc.i65.for.end.i_crit_edge

for.inc.i65.for.end.i_crit_edge:                  ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i65.for.body.i63_crit_edge:               ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i63

for.end.i:                                        ; preds = %for.inc.i65.for.end.i_crit_edge, %entry.for.end_crit_edge.i
  %and.pre-phi.i = phi i32 [ %.pre.i, %entry.for.end_crit_edge.i ], [ %and1.i.i, %for.inc.i65.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.pre-phi.i)
  %tobool4.not.i = icmp eq i32 %and.pre-phi.i, 0
  br i1 %tobool4.not.i, label %for.end.i.if.end15.i_crit_edge, label %if.then5.i

for.end.i.if.end15.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then5.i:                                       ; preds = %for.end.i
  %conv.i = trunc i32 %i.011.i to i16
  %call6.i = call i32 @aq_mss_set_egress_class_record(ptr noundef %7, ptr noundef nonnull %tx_class_rec.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then5.i.aq_clear_txsc.exit.thread_crit_edge

if.then5.i.aq_clear_txsc.exit.thread_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_clear_txsc.exit.thread

if.end9.i:                                        ; preds = %if.then5.i
  %fresh.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %sc_rec.i, i32 0, i32 8
  %21 = ptrtoint ptr %fresh.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %fresh.i, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 8
  %conv10.i = trunc i32 %23 to i16
  %call11.i = call i32 @aq_mss_set_egress_sc_record(ptr noundef %7, ptr noundef nonnull %sc_rec.i, i16 noundef zeroext %conv10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.end9.i.aq_clear_txsc.exit.thread_crit_edge

if.end9.i.aq_clear_txsc.exit.thread_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_clear_txsc.exit.thread

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end9.i.if.end15.i_crit_edge, %for.end.i.if.end15.i_crit_edge
  %and16.i = and i32 %clear_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.aq_clear_txsc.exit_crit_edge, label %if.then18.i

if.end15.i.aq_clear_txsc.exit_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_clear_txsc.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %macsec_cfg, align 8
  %txsc_idx_busy.i = getelementptr inbounds %struct.aq_macsec_cfg, ptr %25, i32 0, i32 1
  call void @_clear_bit(i32 noundef %i.011.i, ptr noundef %txsc_idx_busy.i) #6
  %26 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %macsec_cfg, align 8
  %sw_secy.i66 = getelementptr %struct.aq_macsec_cfg, ptr %27, i32 0, i32 2, i32 %i.011.i, i32 2
  %28 = ptrtoint ptr %sw_secy.i66 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %sw_secy.i66, align 8
  br label %aq_clear_txsc.exit

aq_clear_txsc.exit.thread:                        ; preds = %if.end9.i.aq_clear_txsc.exit.thread_crit_edge, %if.then5.i.aq_clear_txsc.exit.thread_crit_edge, %aq_clear_txsa.exit.i.aq_clear_txsc.exit.thread_crit_edge, %aq_clear_txsa.exit.thread52.i
  %retval.0.i67.ph = phi i32 [ %call4.i.i, %aq_clear_txsa.exit.thread52.i ], [ %call11.i, %if.end9.i.aq_clear_txsc.exit.thread_crit_edge ], [ %call6.i, %if.then5.i.aq_clear_txsc.exit.thread_crit_edge ], [ %call9.i.i, %aq_clear_txsa.exit.i.aq_clear_txsc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sc_rec.i) #6
  call void @llvm.lifetime.end.p0(i64 188, ptr nonnull %tx_class_rec.i) #6
  br label %cleanup

aq_clear_txsc.exit:                               ; preds = %if.then18.i, %if.end15.i.aq_clear_txsc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sc_rec.i) #6
  call void @llvm.lifetime.end.p0(i64 188, ptr nonnull %tx_class_rec.i) #6
  br label %if.end3

if.end3:                                          ; preds = %aq_clear_txsc.exit, %for.inc.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %rx_sc4 = getelementptr inbounds %struct.macsec_secy, ptr %secy, i32 0, i32 12
  %29 = ptrtoint ptr %rx_sc4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %rx_sc4, align 4
  %call6 = call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end3.do.end15_crit_edge

if.end3.do.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

land.lhs.true:                                    ; preds = %if.end3
  %call8 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b62 = load i1, ptr @aq_clear_secy.__warned, align 1
  br i1 %.b62, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_clear_secy.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1297, ptr noundef nonnull @.str.1) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %if.end3.do.end15_crit_edge
  %tobool17.not86 = icmp eq ptr %30, null
  br i1 %tobool17.not86, label %do.end15.cleanup_crit_edge, label %do.end15.for.body_crit_edge

do.end15.for.body_crit_edge:                      ; preds = %do.end15
  br label %for.body

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %do.end42.for.body_crit_edge, %do.end15.for.body_crit_edge
  %rx_sc.087 = phi ptr [ %36, %do.end42.for.body_crit_edge ], [ %30, %do.end15.for.body_crit_edge ]
  %31 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %macsec_cfg, align 8
  br label %for.body.i71

for.body.i71:                                     ; preds = %for.inc.i74.for.body.i71_crit_edge, %for.body
  %i.011.i69 = phi i32 [ %inc.i72, %for.inc.i74.for.body.i71_crit_edge ], [ 0, %for.body ]
  %sw_rxsc.i = getelementptr %struct.aq_macsec_cfg, ptr %32, i32 0, i32 4, i32 %i.011.i69, i32 3
  %33 = ptrtoint ptr %sw_rxsc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sw_rxsc.i, align 4
  %cmp4.i70 = icmp eq ptr %34, %rx_sc.087
  br i1 %cmp4.i70, label %if.end22, label %for.inc.i74

for.inc.i74:                                      ; preds = %for.body.i71
  %inc.i72 = add nuw nsw i32 %i.011.i69, 1
  %exitcond.not.i73 = icmp eq i32 %inc.i72, 32
  br i1 %exitcond.not.i73, label %for.inc.i74.for.inc_crit_edge, label %for.inc.i74.for.body.i71_crit_edge

for.inc.i74.for.body.i71_crit_edge:               ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i71

for.inc.i74.for.inc_crit_edge:                    ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end22:                                         ; preds = %for.body.i71
  %call23 = call fastcc i32 @aq_clear_rxsc(ptr noundef %nic, i32 noundef %i.011.i69, i32 noundef %clear_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.for.inc_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %for.inc.i74.for.inc_crit_edge
  %35 = ptrtoint ptr %rx_sc.087 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %rx_sc.087, align 8
  %call32 = call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %for.inc.do.end42_crit_edge

for.inc.do.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

land.lhs.true34:                                  ; preds = %for.inc
  %call35 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true34.do.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %.b6061 = load i1, ptr @aq_clear_secy.__warned.7, align 1
  br i1 %.b6061, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aq_clear_secy.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @.str.1) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true34.do.end42_crit_edge, %for.inc.do.end42_crit_edge
  %tobool17.not = icmp eq ptr %36, null
  br i1 %tobool17.not, label %do.end42.cleanup_crit_edge, label %do.end42.for.body_crit_edge

do.end42.for.body_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %aq_clear_txsc.exit.thread
  %retval.0 = phi i32 [ %retval.0.i67.ph, %aq_clear_txsc.exit.thread ], [ 0, %do.end15.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %do.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_clear_rxsc(ptr nocapture noundef readonly %nic, i32 noundef %rxsc_idx, i32 noundef %clear_type) unnamed_addr #0 align 64 {
entry:
  %sa_key_record.i = alloca %struct.aq_mss_ingress_sakey_record, align 4
  %sa_record.i = alloca %struct.aq_mss_ingress_sa_record, align 4
  %pre_class_record = alloca %struct.aq_mss_ingress_preclass_record, align 4
  %sc_record = alloca %struct.aq_mss_ingress_sc_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macsec_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macsec_cfg, align 8
  %arrayidx = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw, align 8
  %rx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 1
  %call = tail call i32 @_find_next_bit_be(ptr noundef %rx_sa_idx_busy, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp68 = icmp slt i32 %call, 32
  br i1 %cmp68, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = and i32 %clear_type, 1
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %and.i = and i32 %clear_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %clear_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %nic, i32 0, i32 5
  %4 = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %sa_record.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sa_num.069 = phi i32 [ %call, %for.body.lr.ph ], [ %call3, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %or.i = or i32 %6, %sa_num.069
  %7 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw, align 8
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef %sa_num.069, ptr noundef %rx_sa_idx_busy) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %land.lhs.true.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end.i
  %9 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.then3.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %sa_key_record.i) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sa_record.i) #6
  %14 = call ptr @memset(ptr %sa_key_record.i, i32 0, i32 36)
  %15 = call ptr @memset(ptr %sa_record.i, i32 0, i32 32)
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %4, align 4
  %conv.i = trunc i32 %or.i to i16
  %call4.i = call i32 @aq_mss_set_ingress_sa_record(ptr noundef %8, ptr noundef nonnull %sa_record.i, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %aq_clear_rxsa.exit, label %aq_clear_rxsa.exit.thread61

aq_clear_rxsa.exit.thread61:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sa_record.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sa_key_record.i) #6
  br label %cleanup29

aq_clear_rxsa.exit:                               ; preds = %if.then3.i
  %call9.i = call i32 @aq_mss_set_ingress_sakey_record(ptr noundef %8, ptr noundef nonnull %sa_key_record.i, i16 noundef zeroext %conv.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sa_record.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sa_key_record.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %aq_clear_rxsa.exit.for.inc_crit_edge, label %aq_clear_rxsa.exit.cleanup29_crit_edge

aq_clear_rxsa.exit.cleanup29_crit_edge:           ; preds = %aq_clear_rxsa.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

aq_clear_rxsa.exit.for.inc_crit_edge:             ; preds = %aq_clear_rxsa.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %aq_clear_rxsa.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %add = add nsw i32 %sa_num.069, 1
  %call3 = call i32 @_find_next_bit_be(ptr noundef %rx_sa_idx_busy, i32 noundef 32, i32 noundef %add) #6
  %cmp = icmp slt i32 %call3, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %and.pre-phi = phi i32 [ %.pre, %entry.for.end_crit_edge ], [ %and1.i, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.pre-phi)
  %tobool4.not = icmp eq i32 %and.pre-phi, 0
  br i1 %tobool4.not, label %for.end.if.end23_crit_edge, label %if.then5

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then5:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %pre_class_record) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sc_record) #6
  %17 = call ptr @memset(ptr %pre_class_record, i32 0, i32 120)
  %18 = call ptr @memset(ptr %sc_record, i32 0, i32 40)
  %rxsc_idx.tr = trunc i32 %rxsc_idx to i16
  %conv = shl i16 %rxsc_idx.tr, 1
  %call6 = call i32 @aq_mss_set_ingress_preclass_record(ptr noundef %3, ptr noundef nonnull %pre_class_record, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.cleanup.thread_crit_edge

if.then5.cleanup.thread_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end9:                                          ; preds = %if.then5
  %conv12 = or i16 %conv, 1
  %call13 = call i32 @aq_mss_set_ingress_preclass_record(ptr noundef %3, ptr noundef nonnull %pre_class_record, i16 noundef zeroext %conv12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end9.cleanup.thread_crit_edge

if.end9.cleanup.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end9.cleanup.thread_crit_edge, %if.then5.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call13, %if.end9.cleanup.thread_crit_edge ], [ %call6, %if.then5.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sc_record) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %pre_class_record) #6
  br label %cleanup29

cleanup:                                          ; preds = %if.end9
  %fresh = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %sc_record, i32 0, i32 6
  %19 = ptrtoint ptr %fresh to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %fresh, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 8
  %conv17 = trunc i32 %21 to i16
  %call18 = call i32 @aq_mss_set_ingress_sc_record(ptr noundef %3, ptr noundef nonnull %sc_record, i16 noundef zeroext %conv17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sc_record) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %pre_class_record) #6
  br i1 %tobool19.not, label %cleanup.if.end23_crit_edge, label %cleanup.cleanup29_crit_edge

cleanup.cleanup29_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end23:                                         ; preds = %cleanup.if.end23_crit_edge, %for.end.if.end23_crit_edge
  %and24 = and i32 %clear_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.cleanup29_crit_edge, label %if.then26

if.end23.cleanup29_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %macsec_cfg, align 8
  %rxsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %23, i32 0, i32 3
  call void @_clear_bit(i32 noundef %rxsc_idx, ptr noundef %rxsc_idx_busy) #6
  %sw_secy = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 2
  %24 = ptrtoint ptr %sw_secy to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sw_secy, align 8
  %sw_rxsc = getelementptr %struct.aq_macsec_cfg, ptr %1, i32 0, i32 4, i32 %rxsc_idx, i32 3
  %25 = ptrtoint ptr %sw_rxsc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sw_rxsc, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.then26, %if.end23.cleanup29_crit_edge, %cleanup.cleanup29_crit_edge, %cleanup.thread, %aq_clear_rxsa.exit.cleanup29_crit_edge, %aq_clear_rxsa.exit.thread61
  %retval.1 = phi i32 [ %call18, %cleanup.cleanup29_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end23.cleanup29_crit_edge ], [ %call4.i, %aq_clear_rxsa.exit.thread61 ], [ %retval.0.ph, %cleanup.thread ], [ %call9.i, %aq_clear_rxsa.exit.cleanup29_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aq_get_macsec_common_stats(ptr noundef %hw, ptr noundef writeonly %stats) unnamed_addr #0 align 64 {
entry:
  %ingress_counters = alloca %struct.aq_mss_ingress_common_counters, align 4
  %egress_counters = alloca %struct.aq_mss_egress_common_counters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ingress_counters) #6
  %0 = call ptr @memset(ptr %ingress_counters, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %egress_counters) #6
  %1 = call ptr @memset(ptr %egress_counters, i32 255, i32 48)
  %call = call i32 @aq_mss_get_ingress_common_counters(ptr noundef %hw, ptr noundef nonnull %ingress_counters) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !59

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x i32], ptr %ingress_counters, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %3 to i64
  %shl = shl nuw i64 %conv, 32
  %4 = ptrtoint ptr %ingress_counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ingress_counters, align 4
  %conv5 = zext i32 %5 to i64
  %or = or i64 %shl, %conv5
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %or, ptr %stats, align 8
  %tagged_miss_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %conv8 = zext i32 %8 to i64
  %shl9 = shl nuw i64 %conv8, 32
  %9 = ptrtoint ptr %tagged_miss_pkts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tagged_miss_pkts, align 4
  %conv12 = zext i32 %10 to i64
  %or13 = or i64 %shl9, %conv12
  %tagged_miss_pkts15 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %tagged_miss_pkts15 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %or13, ptr %tagged_miss_pkts15, align 8
  %untagged_miss_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %13 to i64
  %shl18 = shl nuw i64 %conv17, 32
  %14 = ptrtoint ptr %untagged_miss_pkts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %untagged_miss_pkts, align 4
  %conv21 = zext i32 %15 to i64
  %or22 = or i64 %shl18, %conv21
  %untagged_miss_pkts24 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 2
  %16 = ptrtoint ptr %untagged_miss_pkts24 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or22, ptr %untagged_miss_pkts24, align 8
  %notag_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 3
  %arrayidx25 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25, align 4
  %conv26 = zext i32 %18 to i64
  %shl27 = shl nuw i64 %conv26, 32
  %19 = ptrtoint ptr %notag_pkts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %notag_pkts, align 4
  %conv30 = zext i32 %20 to i64
  %or31 = or i64 %shl27, %conv30
  %notag_pkts33 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 3
  %21 = ptrtoint ptr %notag_pkts33 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or31, ptr %notag_pkts33, align 8
  %untagged_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx34, align 4
  %conv35 = zext i32 %23 to i64
  %shl36 = shl nuw i64 %conv35, 32
  %24 = ptrtoint ptr %untagged_pkts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %untagged_pkts, align 4
  %conv39 = zext i32 %25 to i64
  %or40 = or i64 %shl36, %conv39
  %untagged_pkts42 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 4
  %26 = ptrtoint ptr %untagged_pkts42 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %or40, ptr %untagged_pkts42, align 8
  %bad_tag_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 5
  %arrayidx43 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx43, align 4
  %conv44 = zext i32 %28 to i64
  %shl45 = shl nuw i64 %conv44, 32
  %29 = ptrtoint ptr %bad_tag_pkts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bad_tag_pkts, align 4
  %conv48 = zext i32 %30 to i64
  %or49 = or i64 %shl45, %conv48
  %bad_tag_pkts51 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 5
  %31 = ptrtoint ptr %bad_tag_pkts51 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %or49, ptr %bad_tag_pkts51, align 8
  %no_sci_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 6
  %arrayidx52 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx52, align 4
  %conv53 = zext i32 %33 to i64
  %shl54 = shl nuw i64 %conv53, 32
  %34 = ptrtoint ptr %no_sci_pkts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %no_sci_pkts, align 4
  %conv57 = zext i32 %35 to i64
  %or58 = or i64 %shl54, %conv57
  %no_sci_pkts60 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 6
  %36 = ptrtoint ptr %no_sci_pkts60 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %or58, ptr %no_sci_pkts60, align 8
  %unknown_sci_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 7
  %arrayidx61 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx61, align 4
  %conv62 = zext i32 %38 to i64
  %shl63 = shl nuw i64 %conv62, 32
  %39 = ptrtoint ptr %unknown_sci_pkts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %unknown_sci_pkts, align 4
  %conv66 = zext i32 %40 to i64
  %or67 = or i64 %shl63, %conv66
  %unknown_sci_pkts69 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 7
  %41 = ptrtoint ptr %unknown_sci_pkts69 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %or67, ptr %unknown_sci_pkts69, align 8
  %ctrl_prt_pass_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 8
  %arrayidx70 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx70, align 4
  %conv71 = zext i32 %43 to i64
  %shl72 = shl nuw i64 %conv71, 32
  %44 = ptrtoint ptr %ctrl_prt_pass_pkts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrl_prt_pass_pkts, align 4
  %conv75 = zext i32 %45 to i64
  %or76 = or i64 %shl72, %conv75
  %ctrl_prt_pass_pkts78 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 8
  %46 = ptrtoint ptr %ctrl_prt_pass_pkts78 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %or76, ptr %ctrl_prt_pass_pkts78, align 8
  %unctrl_prt_pass_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 9
  %arrayidx79 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx79, align 4
  %conv80 = zext i32 %48 to i64
  %shl81 = shl nuw i64 %conv80, 32
  %49 = ptrtoint ptr %unctrl_prt_pass_pkts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %unctrl_prt_pass_pkts, align 4
  %conv84 = zext i32 %50 to i64
  %or85 = or i64 %shl81, %conv84
  %unctrl_prt_pass_pkts87 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 9
  %51 = ptrtoint ptr %unctrl_prt_pass_pkts87 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %or85, ptr %unctrl_prt_pass_pkts87, align 8
  %ctrl_prt_fail_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 10
  %arrayidx88 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx88, align 4
  %conv89 = zext i32 %53 to i64
  %shl90 = shl nuw i64 %conv89, 32
  %54 = ptrtoint ptr %ctrl_prt_fail_pkts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ctrl_prt_fail_pkts, align 4
  %conv93 = zext i32 %55 to i64
  %or94 = or i64 %shl90, %conv93
  %ctrl_prt_fail_pkts96 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 10
  %56 = ptrtoint ptr %ctrl_prt_fail_pkts96 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %or94, ptr %ctrl_prt_fail_pkts96, align 8
  %unctrl_prt_fail_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 11
  %arrayidx97 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 11, i32 1
  %57 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx97, align 4
  %conv98 = zext i32 %58 to i64
  %shl99 = shl nuw i64 %conv98, 32
  %59 = ptrtoint ptr %unctrl_prt_fail_pkts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %unctrl_prt_fail_pkts, align 4
  %conv102 = zext i32 %60 to i64
  %or103 = or i64 %shl99, %conv102
  %unctrl_prt_fail_pkts105 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 11
  %61 = ptrtoint ptr %unctrl_prt_fail_pkts105 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %or103, ptr %unctrl_prt_fail_pkts105, align 8
  %too_long_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 12
  %arrayidx106 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 12, i32 1
  %62 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx106, align 4
  %conv107 = zext i32 %63 to i64
  %shl108 = shl nuw i64 %conv107, 32
  %64 = ptrtoint ptr %too_long_pkts to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %too_long_pkts, align 4
  %conv111 = zext i32 %65 to i64
  %or112 = or i64 %shl108, %conv111
  %too_long_pkts114 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 12
  %66 = ptrtoint ptr %too_long_pkts114 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %or112, ptr %too_long_pkts114, align 8
  %igpoc_ctl_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 13
  %arrayidx115 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx115, align 4
  %conv116 = zext i32 %68 to i64
  %shl117 = shl nuw i64 %conv116, 32
  %69 = ptrtoint ptr %igpoc_ctl_pkts to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %igpoc_ctl_pkts, align 4
  %conv120 = zext i32 %70 to i64
  %or121 = or i64 %shl117, %conv120
  %igpoc_ctl_pkts123 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 13
  %71 = ptrtoint ptr %igpoc_ctl_pkts123 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %or121, ptr %igpoc_ctl_pkts123, align 8
  %ecc_error_pkts = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 14
  %arrayidx124 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 14, i32 1
  %72 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx124, align 4
  %conv125 = zext i32 %73 to i64
  %shl126 = shl nuw i64 %conv125, 32
  %74 = ptrtoint ptr %ecc_error_pkts to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ecc_error_pkts, align 4
  %conv129 = zext i32 %75 to i64
  %or130 = or i64 %shl126, %conv129
  %ecc_error_pkts132 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 14
  %76 = ptrtoint ptr %ecc_error_pkts132 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %or130, ptr %ecc_error_pkts132, align 8
  %unctrl_hit_drop_redir = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 15
  %arrayidx133 = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %ingress_counters, i32 0, i32 15, i32 1
  %77 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx133, align 4
  %conv134 = zext i32 %78 to i64
  %shl135 = shl nuw i64 %conv134, 32
  %79 = ptrtoint ptr %unctrl_hit_drop_redir to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %unctrl_hit_drop_redir, align 4
  %conv138 = zext i32 %80 to i64
  %or139 = or i64 %shl135, %conv138
  %unctrl_hit_drop_redir141 = getelementptr inbounds %struct.anon.136, ptr %stats, i32 0, i32 15
  %81 = ptrtoint ptr %unctrl_hit_drop_redir141 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %or139, ptr %unctrl_hit_drop_redir141, align 8
  %call142 = call i32 @aq_mss_get_egress_common_counters(ptr noundef %hw, ptr noundef nonnull %egress_counters) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end151, label %if.end.cleanup_crit_edge, !prof !59

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end151:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx152 = getelementptr inbounds [2 x i32], ptr %egress_counters, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx152, align 4
  %conv153 = zext i32 %83 to i64
  %shl154 = shl nuw i64 %conv153, 32
  %84 = ptrtoint ptr %egress_counters to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %egress_counters, align 4
  %conv157 = zext i32 %85 to i64
  %or158 = or i64 %shl154, %conv157
  %out = getelementptr inbounds %struct.aq_macsec_common_stats, ptr %stats, i32 0, i32 1
  %86 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %or158, ptr %out, align 8
  %unknown_sa_pkts = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx160, align 4
  %conv161 = zext i32 %88 to i64
  %shl162 = shl nuw i64 %conv161, 32
  %89 = ptrtoint ptr %unknown_sa_pkts to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %unknown_sa_pkts, align 4
  %conv165 = zext i32 %90 to i64
  %or166 = or i64 %shl162, %conv165
  %unknown_sa_pkts168 = getelementptr inbounds %struct.aq_macsec_common_stats, ptr %stats, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %unknown_sa_pkts168 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %or166, ptr %unknown_sa_pkts168, align 8
  %untagged_pkts169 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 2
  %arrayidx170 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx170, align 4
  %conv171 = zext i32 %93 to i64
  %shl172 = shl nuw i64 %conv171, 32
  %94 = ptrtoint ptr %untagged_pkts169 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %untagged_pkts169, align 4
  %conv175 = zext i32 %95 to i64
  %or176 = or i64 %shl172, %conv175
  %untagged_pkts178 = getelementptr inbounds %struct.aq_macsec_common_stats, ptr %stats, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %untagged_pkts178 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %or176, ptr %untagged_pkts178, align 8
  %too_long = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 3
  %arrayidx179 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 3, i32 1
  %97 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx179, align 4
  %conv180 = zext i32 %98 to i64
  %shl181 = shl nuw i64 %conv180, 32
  %99 = ptrtoint ptr %too_long to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %too_long, align 4
  %conv184 = zext i32 %100 to i64
  %or185 = or i64 %shl181, %conv184
  %too_long187 = getelementptr inbounds %struct.aq_macsec_common_stats, ptr %stats, i32 0, i32 1, i32 3
  %101 = ptrtoint ptr %too_long187 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %or185, ptr %too_long187, align 8
  %ecc_error_pkts188 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 4
  %arrayidx189 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx189, align 4
  %conv190 = zext i32 %103 to i64
  %shl191 = shl nuw i64 %conv190, 32
  %104 = ptrtoint ptr %ecc_error_pkts188 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ecc_error_pkts188, align 4
  %conv194 = zext i32 %105 to i64
  %or195 = or i64 %shl191, %conv194
  %ecc_error_pkts197 = getelementptr inbounds %struct.aq_macsec_common_stats, ptr %stats, i32 0, i32 1, i32 4
  %106 = ptrtoint ptr %ecc_error_pkts197 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %or195, ptr %ecc_error_pkts197, align 8
  %unctrl_hit_drop_redir198 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 5
  %arrayidx199 = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %egress_counters, i32 0, i32 5, i32 1
  %107 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx199, align 4
  %conv200 = zext i32 %108 to i64
  %shl201 = shl nuw i64 %conv200, 32
  %109 = ptrtoint ptr %unctrl_hit_drop_redir198 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %unctrl_hit_drop_redir198, align 4
  %conv204 = zext i32 %110 to i64
  %or205 = or i64 %shl201, %conv204
  %unctrl_hit_drop_redir207 = getelementptr inbounds %struct.aq_macsec_common_stats, ptr %stats, i32 0, i32 1, i32 5
  %111 = ptrtoint ptr %unctrl_hit_drop_redir207 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %or205, ptr %unctrl_hit_drop_redir207, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %egress_counters) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ingress_counters) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_ingress_common_counters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_egress_common_counters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_egress_sc_counters(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_egress_sa_counters(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_egress_sa_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_get_rxsa_stats(ptr noundef %hw, i32 noundef %sa_idx, ptr nocapture noundef writeonly %stats) unnamed_addr #0 align 64 {
entry:
  %i_sa_counters = alloca %struct.aq_mss_ingress_sa_counters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %i_sa_counters) #6
  %0 = call ptr @memset(ptr %i_sa_counters, i32 255, i32 96)
  %conv = trunc i32 %sa_idx to i16
  %call = call i32 @aq_mss_get_ingress_sa_counters(ptr noundef %hw, ptr noundef nonnull %i_sa_counters, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !59

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr inbounds [2 x i32], ptr %i_sa_counters, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %conv3 = zext i32 %2 to i64
  %shl = shl nuw i64 %conv3, 32
  %3 = ptrtoint ptr %i_sa_counters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_sa_counters, align 4
  %conv6 = zext i32 %4 to i64
  %or = or i64 %shl, %conv6
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or, ptr %stats, align 8
  %ctrl_hit_drop_redir_pkts = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %conv9 = zext i32 %7 to i64
  %shl10 = shl nuw i64 %conv9, 32
  %8 = ptrtoint ptr %ctrl_hit_drop_redir_pkts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_hit_drop_redir_pkts, align 4
  %conv13 = zext i32 %9 to i64
  %or14 = or i64 %shl10, %conv13
  %ctrl_hit_drop_redir_pkts15 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 1
  %10 = ptrtoint ptr %ctrl_hit_drop_redir_pkts15 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or14, ptr %ctrl_hit_drop_redir_pkts15, align 8
  %not_using_sa = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %12 to i64
  %shl18 = shl nuw i64 %conv17, 32
  %13 = ptrtoint ptr %not_using_sa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %not_using_sa, align 4
  %conv21 = zext i32 %14 to i64
  %or22 = or i64 %shl18, %conv21
  %not_using_sa23 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 2
  %15 = ptrtoint ptr %not_using_sa23 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or22, ptr %not_using_sa23, align 8
  %unused_sa = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %conv25 = zext i32 %17 to i64
  %shl26 = shl nuw i64 %conv25, 32
  %18 = ptrtoint ptr %unused_sa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unused_sa, align 4
  %conv29 = zext i32 %19 to i64
  %or30 = or i64 %shl26, %conv29
  %unused_sa31 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 3
  %20 = ptrtoint ptr %unused_sa31 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or30, ptr %unused_sa31, align 8
  %not_valid_pkts = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32, align 4
  %conv33 = zext i32 %22 to i64
  %shl34 = shl nuw i64 %conv33, 32
  %23 = ptrtoint ptr %not_valid_pkts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %not_valid_pkts, align 4
  %conv37 = zext i32 %24 to i64
  %or38 = or i64 %shl34, %conv37
  %not_valid_pkts39 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 4
  %25 = ptrtoint ptr %not_valid_pkts39 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or38, ptr %not_valid_pkts39, align 8
  %invalid_pkts = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 5
  %arrayidx40 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx40, align 4
  %conv41 = zext i32 %27 to i64
  %shl42 = shl nuw i64 %conv41, 32
  %28 = ptrtoint ptr %invalid_pkts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %invalid_pkts, align 4
  %conv45 = zext i32 %29 to i64
  %or46 = or i64 %shl42, %conv45
  %invalid_pkts47 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 5
  %30 = ptrtoint ptr %invalid_pkts47 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %or46, ptr %invalid_pkts47, align 8
  %ok_pkts = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx48, align 4
  %conv49 = zext i32 %32 to i64
  %shl50 = shl nuw i64 %conv49, 32
  %33 = ptrtoint ptr %ok_pkts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ok_pkts, align 4
  %conv53 = zext i32 %34 to i64
  %or54 = or i64 %shl50, %conv53
  %ok_pkts55 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 6
  %35 = ptrtoint ptr %ok_pkts55 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or54, ptr %ok_pkts55, align 8
  %late_pkts = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 7
  %arrayidx56 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx56, align 4
  %conv57 = zext i32 %37 to i64
  %shl58 = shl nuw i64 %conv57, 32
  %38 = ptrtoint ptr %late_pkts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %late_pkts, align 4
  %conv61 = zext i32 %39 to i64
  %or62 = or i64 %shl58, %conv61
  %late_pkts63 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 7
  %40 = ptrtoint ptr %late_pkts63 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %or62, ptr %late_pkts63, align 8
  %delayed_pkts = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 8
  %arrayidx64 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx64, align 4
  %conv65 = zext i32 %42 to i64
  %shl66 = shl nuw i64 %conv65, 32
  %43 = ptrtoint ptr %delayed_pkts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delayed_pkts, align 4
  %conv69 = zext i32 %44 to i64
  %or70 = or i64 %shl66, %conv69
  %delayed_pkts71 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 8
  %45 = ptrtoint ptr %delayed_pkts71 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %or70, ptr %delayed_pkts71, align 8
  %unchecked_pkts = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 9
  %arrayidx72 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx72, align 4
  %conv73 = zext i32 %47 to i64
  %shl74 = shl nuw i64 %conv73, 32
  %48 = ptrtoint ptr %unchecked_pkts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %unchecked_pkts, align 4
  %conv77 = zext i32 %49 to i64
  %or78 = or i64 %shl74, %conv77
  %unchecked_pkts79 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 9
  %50 = ptrtoint ptr %unchecked_pkts79 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %or78, ptr %unchecked_pkts79, align 8
  %validated_octets = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 10
  %arrayidx80 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx80, align 4
  %conv81 = zext i32 %52 to i64
  %shl82 = shl nuw i64 %conv81, 32
  %53 = ptrtoint ptr %validated_octets to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %validated_octets, align 4
  %conv85 = zext i32 %54 to i64
  %or86 = or i64 %shl82, %conv85
  %validated_octets87 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 10
  %55 = ptrtoint ptr %validated_octets87 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %or86, ptr %validated_octets87, align 8
  %decrypted_octets = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 11
  %arrayidx88 = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %i_sa_counters, i32 0, i32 11, i32 1
  %56 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx88, align 4
  %conv89 = zext i32 %57 to i64
  %shl90 = shl nuw i64 %conv89, 32
  %58 = ptrtoint ptr %decrypted_octets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %decrypted_octets, align 4
  %conv93 = zext i32 %59 to i64
  %or94 = or i64 %shl90, %conv93
  %decrypted_octets95 = getelementptr inbounds %struct.aq_macsec_rx_sa_stats, ptr %stats, i32 0, i32 11
  %60 = ptrtoint ptr %decrypted_octets95 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %or94, ptr %decrypted_octets95, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %i_sa_counters) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_ingress_sa_counters(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_ingress_sa_record(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_egress_sa_expired(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_get_egress_sa_threshold_expired(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @macsec_pn_wrapped(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_egress_sa_expired(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_mss_set_egress_sa_threshold_expired(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !13, !15, !16, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @aq_macsec_ops, !1, !"aq_macsec_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1454, i32 25}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1323, i32 15}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1324, i32 15}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1242, i32 11}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 377, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 126, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @aq_rotate_keys._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @aq_rotate_keys._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1270, i32 11}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 703, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1297, i32 15}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1298, i32 15}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 419, i32 3}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1123, i32 10}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1215, i32 10}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1426, i32 6}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1433, i32 6}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1439, i32 6}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1443, i32 12}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1371, i32 3}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 1387, i32 3}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_macsec.c", i32 91, i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i8 0, i8 2}
!58 = !{i32 0, i32 33}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!"auto-init"}
