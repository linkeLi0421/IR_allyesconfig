; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qlcnic_dcb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.qlcnic_dcb = type { ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i32 }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct._cdrp_cmd = type { i32, ptr }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_dcb_cfg = type { [3 x %struct.qlcnic_dcb_cee], %struct.qlcnic_dcb_capability, i32 }
%struct.qlcnic_dcb_cee = type { [8 x %struct.qlcnic_dcb_tc_cfg], [8 x %struct.qlcnic_dcb_pg_cfg], [8 x %struct.qlcnic_dcb_app], i8, i8 }
%struct.qlcnic_dcb_tc_cfg = type { i8, [8 x %struct.qlcnic_dcb_prio_cfg], i32, i8, i8, i8, i8 }
%struct.qlcnic_dcb_prio_cfg = type { i8, i32 }
%struct.qlcnic_dcb_pg_cfg = type { i8, i8, i8, i8 }
%struct.qlcnic_dcb_app = type { i8, i32, i16, i8 }
%struct.qlcnic_dcb_capability = type { i8, i8, i8, i8, i8, i8 }
%struct.qlcnic_82xx_dcb_param_mbx_le = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [8 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qlcnic_dcb_param = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [8 x i32] }
%struct.qlcnic_dcb_mbx_params = type { [3 x %struct.qlcnic_dcb_param], i32 }
%struct.dcb_app = type { i8, i8, i16 }
%struct.cee_pg = type { i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cee_pfc = type { i8, i8, i8, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qlcnic_82xx_dcb_ops = internal constant { %struct.qlcnic_dcb_ops, [60 x i8] } { %struct.qlcnic_dcb_ops { ptr @__qlcnic_dcb_query_hw_capability, ptr @qlcnic_82xx_dcb_get_hw_capability, ptr @qlcnic_82xx_dcb_query_cee_param, ptr @__qlcnic_init_dcbnl_ops, ptr @qlcnic_82xx_dcb_aen_handler, ptr @qlcnic_82xx_dcb_get_cee_cfg, ptr @__qlcnic_dcb_get_info, ptr @__qlcnic_dcb_attach, ptr @__qlcnic_dcb_free }, [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dcb_ops = internal constant { %struct.qlcnic_dcb_ops, [60 x i8] } { %struct.qlcnic_dcb_ops { ptr @__qlcnic_dcb_query_hw_capability, ptr @qlcnic_83xx_dcb_get_hw_capability, ptr @qlcnic_83xx_dcb_query_cee_param, ptr @__qlcnic_init_dcbnl_ops, ptr @qlcnic_83xx_dcb_aen_handler, ptr @qlcnic_83xx_dcb_get_cee_cfg, ptr @__qlcnic_dcb_get_info, ptr @__qlcnic_dcb_attach, ptr @__qlcnic_dcb_free }, [60 x i8] zeroinitializer }, align 32
@__qlcnic_dcb_query_hw_capability._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 358, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to query DCBX capability, err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"__qlcnic_dcb_query_hw_capability\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__qlcnic_dcb_query_hw_capability._entry_ptr = internal global ptr @__qlcnic_dcb_query_hw_capability._entry, section ".printk_index", align 4
@__qlcnic_dcb_get_capability._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 396, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid DCB configuration\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__qlcnic_dcb_get_capability\00", [36 x i8] zeroinitializer }, align 32
@__qlcnic_dcb_get_capability._entry_ptr = internal global ptr @__qlcnic_dcb_get_capability._entry, section ".printk_index", align 4
@qlcnic_82xx_dcb_query_cee_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid parameter type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qlcnic_82xx_dcb_query_cee_param\00", [32 x i8] zeroinitializer }, align 32
@qlcnic_82xx_dcb_query_cee_param._entry_ptr = internal global ptr @qlcnic_82xx_dcb_query_cee_param._entry, section ".printk_index", align 4
@qlcnic_82xx_dcb_query_cee_param._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 464, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to query DCBX parameter, err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_82xx_dcb_query_cee_param._entry_ptr.11 = internal global ptr @qlcnic_82xx_dcb_query_cee_param._entry.9, section ".printk_index", align 4
@qlcnic_dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_dcb_get_state, ptr null, ptr @qlcnic_dcb_get_perm_hw_addr, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_dcb_get_pg_tc_cfg_tx, ptr @qlcnic_dcb_get_pg_bwg_cfg_tx, ptr @qlcnic_dcb_get_pg_tc_cfg_rx, ptr @qlcnic_dcb_get_pg_bwg_cfg_rx, ptr null, ptr @qlcnic_dcb_get_pfc_cfg, ptr null, ptr @qlcnic_dcb_get_capability, ptr @qlcnic_dcb_get_num_tcs, ptr null, ptr @qlcnic_dcb_get_pfc_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_dcb_get_app, ptr @qlcnic_dcb_get_feat_cfg, ptr null, ptr @qlcnic_dcb_get_dcbx, ptr null, ptr @qlcnic_dcb_peer_app_info, ptr @qlcnic_dcb_peer_app_table, ptr @qlcnic_dcb_cee_peer_get_pg, ptr @qlcnic_dcb_cee_peer_get_pfc, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid Feature ID %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__qlcnic_dcb_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dcb->aen_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@__qlcnic_dcb_attach.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dcb->aen_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qlcnic-dcb\00", [21 x i8] zeroinitializer }, align 32
@__qlcnic_dcb_attach._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 316, ptr @.str.3, ptr @.str.4 }, align 1
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DCB workqueue allocation failed. DCB will be disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__qlcnic_dcb_attach\00", [44 x i8] zeroinitializer }, align 32
@__qlcnic_dcb_attach._entry_ptr = internal global ptr @__qlcnic_dcb_attach._entry, section ".printk_index", align 4
@qlcnic_83xx_dcb_query_cee_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 587, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to query DCBX param, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qlcnic_83xx_dcb_query_cee_param\00", [32 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dcb_query_cee_param._entry_ptr = internal global ptr @qlcnic_83xx_dcb_query_cee_param._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.22 = internal global [9 x i64] [i64 7, i64 16, i64 32800, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"qlcnic_82xx_dcb_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 182, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"qlcnic_83xx_dcb_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 169, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 357, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 396, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 443, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 464, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"qlcnic_dcbnl_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1126, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 994, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 311, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 313, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 315, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [51 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 586, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__qlcnic_dcb_attach._entry, ptr @__qlcnic_dcb_attach._entry_ptr, ptr @__qlcnic_dcb_get_capability._entry, ptr @__qlcnic_dcb_get_capability._entry_ptr, ptr @__qlcnic_dcb_query_hw_capability._entry, ptr @__qlcnic_dcb_query_hw_capability._entry_ptr, ptr @qlcnic_82xx_dcb_query_cee_param._entry, ptr @qlcnic_82xx_dcb_query_cee_param._entry.9, ptr @qlcnic_82xx_dcb_query_cee_param._entry_ptr, ptr @qlcnic_82xx_dcb_query_cee_param._entry_ptr.11, ptr @qlcnic_83xx_dcb_query_cee_param._entry, ptr @qlcnic_83xx_dcb_query_cee_param._entry_ptr, ptr @qlcnic_82xx_dcb_ops, ptr @qlcnic_83xx_dcb_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @qlcnic_dcbnl_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_dcb_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dcb_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_dcb_query_cee_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_dcb_query_cee_param._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dcb_query_cee_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_register_dcb(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end [
    i16 -31696, label %entry.cleanup_crit_edge
    i16 -31680, label %entry.cleanup_crit_edge12
    i16 -29648, label %entry.cleanup_crit_edge13
  ]

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 124) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dcb4 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 55
  %6 = ptrtoint ptr %dcb4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %dcb4, align 4
  %adapter5 = getelementptr inbounds %struct.qlcnic_dcb, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %adapter5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %adapter, ptr %adapter5, align 4
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device1.i.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %11, label %if.end3.qlcnic_set_dcb_ops.exit_crit_edge [
    i16 -32736, label %if.end3.if.end5.sink.split.i_crit_edge
    i16 -32720, label %if.end3.if.then2.i_crit_edge
    i16 -30672, label %if.end3.if.then2.i_crit_edge14
    i16 -32704, label %if.end3.if.then2.i_crit_edge15
    i16 -31680, label %if.end3.if.then2.i_crit_edge16
    i16 -31696, label %if.end3.if.then2.i_crit_edge17
    i16 -29648, label %if.end3.if.then2.i_crit_edge18
  ]

if.end3.if.then2.i_crit_edge18:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end3.if.then2.i_crit_edge17:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end3.if.then2.i_crit_edge16:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end3.if.then2.i_crit_edge15:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end3.if.then2.i_crit_edge14:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end3.if.then2.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end3.if.end5.sink.split.i_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i

if.end3.qlcnic_set_dcb_ops.exit_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_set_dcb_ops.exit

if.then2.i:                                       ; preds = %if.end3.if.then2.i_crit_edge, %if.end3.if.then2.i_crit_edge14, %if.end3.if.then2.i_crit_edge15, %if.end3.if.then2.i_crit_edge16, %if.end3.if.then2.i_crit_edge17, %if.end3.if.then2.i_crit_edge18
  br label %if.end5.sink.split.i

if.end5.sink.split.i:                             ; preds = %if.then2.i, %if.end3.if.end5.sink.split.i_crit_edge
  %qlcnic_83xx_dcb_ops.sink.i = phi ptr [ @qlcnic_83xx_dcb_ops, %if.then2.i ], [ @qlcnic_82xx_dcb_ops, %if.end3.if.end5.sink.split.i_crit_edge ]
  %ops4.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %ops4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %qlcnic_83xx_dcb_ops.sink.i, ptr %ops4.i, align 8
  br label %qlcnic_set_dcb_ops.exit

qlcnic_set_dcb_ops.exit:                          ; preds = %if.end5.sink.split.i, %if.end3.qlcnic_set_dcb_ops.exit_crit_edge
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_set_dcb_ops.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge12, %entry.cleanup_crit_edge13
  %retval.0 = phi i32 [ 0, %qlcnic_set_dcb_ops.exit ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge12 ], [ 0, %entry.cleanup_crit_edge13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__qlcnic_dcb_query_hw_capability(ptr nocapture noundef readonly %dcb, ptr noundef writeonly %buf) #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %8(ptr noundef nonnull %cmd, ptr noundef %1, i32 noundef 52) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %hw_ops.i19 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %hw_ops.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_ops.i19, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i20 = call i32 %14(ptr noundef %1, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool3.not = icmp eq i32 %call.i20, 0
  br i1 %tobool3.not, label %if.else, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i24 = phi i32 [ %call.i20, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %retval.0.i24) #16
  br label %if.end8

if.else:                                          ; preds = %qlcnic_issue_cmd.exit
  %tobool5.not = icmp eq ptr %buf, null
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.then6

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %buf, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge, %do.end
  %retval.0.i23 = phi i32 [ 0, %if.else.if.end8_crit_edge ], [ 0, %if.then6 ], [ %retval.0.i24, %do.end ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i23, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_82xx_dcb_get_hw_capability(ptr noundef %dcb) #0 align 64 {
entry:
  %mbx_out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 5
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbx_out) #12
  %2 = ptrtoint ptr %mbx_out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mbx_out, align 4, !annotation !57
  %capability.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1
  %3 = call ptr @memset(ptr %capability.i, i32 0, i32 6)
  %tobool.not.i.i = icmp eq ptr %dcb, null
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %qlcnic_dcb_query_hw_capability.exit.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

qlcnic_dcb_query_hw_capability.exit.i:            ; preds = %land.lhs.true.i.i
  %call.i.i = call i32 %7(ptr noundef nonnull %dcb, ptr noundef nonnull %mbx_out) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %qlcnic_dcb_query_hw_capability.exit.i.if.end.i_crit_edge, label %qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge

qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge: ; preds = %qlcnic_dcb_query_hw_capability.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qlcnic_dcb_query_hw_capability.exit.i.if.end.i_crit_edge: ; preds = %qlcnic_dcb_query_hw_capability.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %qlcnic_dcb_query_hw_capability.exit.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %mbx_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbx_out, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %capability.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %capability.i, align 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %11 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then6.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %ets_capability.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %ets_capability.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ets_capability.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end7.i_crit_edge
  %shr8.i = lshr i32 %9, 20
  %13 = trunc i32 %shr8.i to i8
  %conv.i = and i8 %13, 15
  %max_num_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %max_num_tc.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %max_num_tc.i, align 1
  %shr10.i = lshr i32 %9, 24
  %15 = trunc i32 %shr10.i to i8
  %conv12.i = and i8 %15, 15
  %max_ets_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %max_ets_tc.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12.i, ptr %max_ets_tc.i, align 1
  %shr13.i = lshr i32 %9, 28
  %conv15.i = trunc i32 %shr13.i to i8
  %max_pfc_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %max_pfc_tc.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv15.i, ptr %max_pfc_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i)
  %cmp.i = icmp ugt i8 %conv.i, 8
  br i1 %cmp.i, label %if.end7.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end7.i.do.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %conv17.i = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %conv12.i, i8 %conv.i)
  %cmp23.i = icmp ugt i8 %conv12.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr13.i, i32 %conv17.i)
  %cmp30.i = icmp ugt i32 %shr13.i, %conv17.i
  %or.cond.i = select i1 %cmp23.i, i1 true, i1 %cmp30.i
  br i1 %or.cond.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end7.i.do.end.i_crit_edge
  %adapter.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %dcb_capability = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %dcb_capability to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %dcb_capability, align 1
  %23 = ptrtoint ptr %capability.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %capability.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not = icmp eq i8 %24, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true6:                                   ; preds = %if.end
  %ets_capability = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %ets_capability to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ets_capability, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool7.not = icmp eq i8 %26, 0
  br i1 %tobool7.not, label %land.lhs.true6.cleanup_crit_edge, label %if.then9

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %state) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i, %qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge
  %retval.0.i23 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call.i.i, %qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbx_out) #12
  ret i32 %retval.0.i23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_82xx_dcb_query_cee_param(ptr nocapture noundef readonly %dcb, ptr noundef writeonly %buf, i8 noundef zeroext %type) #0 align 64 {
entry:
  %cardrsp_phys_addr = alloca i32, align 4
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cardrsp_phys_addr) #12
  %4 = ptrtoint ptr %cardrsp_phys_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cardrsp_phys_addr, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %5 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %conv = zext i8 %type to i32
  %type.off = add i8 %type, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %type.off)
  %switch = icmp ult i8 %type.off, 3
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %conv) #16
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 64, ptr noundef nonnull %cardrsp_phys_addr, i32 noundef 3264, i32 noundef 0) #12
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i104 = call i32 %11(ptr noundef nonnull %cmd, ptr noundef %1, i32 noundef 53) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not = icmp eq i32 %call.i104, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_free_rsp_crit_edge

if.end.out_free_rsp_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_rsp

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %cardrsp_phys_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cardrsp_phys_addr, align 4
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, 64
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %arrayidx, align 4
  %17 = load ptr, ptr %arg, align 4
  %arrayidx16 = getelementptr i32, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx16, align 4
  %19 = load ptr, ptr %arg, align 4
  %arrayidx20 = getelementptr i32, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %arrayidx20, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %hw_ops.i105 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %hw_ops.i105 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_ops.i105, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end8.do.end26_crit_edge, label %qlcnic_issue_cmd.exit

if.end8.do.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

qlcnic_issue_cmd.exit:                            ; preds = %if.end8
  %call.i106 = call i32 %26(ptr noundef %1, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool22.not = icmp eq i32 %call.i106, 0
  br i1 %tobool22.not, label %if.end27, label %qlcnic_issue_cmd.exit.do.end26_crit_edge

qlcnic_issue_cmd.exit.do.end26_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

do.end26:                                         ; preds = %qlcnic_issue_cmd.exit.do.end26_crit_edge, %if.end8.do.end26_crit_edge
  %retval.0.i109 = phi i32 [ %call.i106, %qlcnic_issue_cmd.exit.do.end26_crit_edge ], [ -5, %if.end8.do.end26_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i109) #16
  br label %out

if.end27:                                         ; preds = %qlcnic_issue_cmd.exit
  %tobool61.not = icmp eq ptr %buf, null
  br i1 %tobool61.not, label %if.end27.out_crit_edge, label %if.then62

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then62:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx58.7 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 7
  %27 = ptrtoint ptr %arrayidx58.7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx58.7, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %arrayidx58.6 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx58.6, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %arrayidx58.5 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx58.5, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %arrayidx58.4 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx58.4, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %arrayidx58.3 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx58.3, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %arrayidx58.2 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx58.2, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %arrayidx58.1 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx58.1, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %arrayidx58 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 4, i32 0
  %48 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx58, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %arrayidx53 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx53, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %pg_tsa_map = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 3
  %54 = ptrtoint ptr %pg_tsa_map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pg_tsa_map, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %arrayidx46 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx46, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %pg_bw_map = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 2
  %60 = ptrtoint ptr %pg_bw_map to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pg_bw_map, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %arrayidx39 = getelementptr %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx39, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  %prio_pg_map = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, ptr %call.i, i32 0, i32 1
  %66 = ptrtoint ptr %prio_pg_map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %prio_pg_map, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %arrayidx32 = getelementptr [2 x i32], ptr %call.i, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx32, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %buf, align 1
  %rsp.sroa.6.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %76 = ptrtoint ptr %rsp.sroa.6.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %71, ptr %rsp.sroa.6.0.buf.sroa_idx, align 1
  %rsp.sroa.7.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %77 = ptrtoint ptr %rsp.sroa.7.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %68, ptr %rsp.sroa.7.0.buf.sroa_idx, align 1
  %rsp.sroa.8.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 12
  %78 = ptrtoint ptr %rsp.sroa.8.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %65, ptr %rsp.sroa.8.0.buf.sroa_idx, align 1
  %rsp.sroa.9.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 16
  %79 = ptrtoint ptr %rsp.sroa.9.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %62, ptr %rsp.sroa.9.0.buf.sroa_idx, align 1
  %rsp.sroa.10.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 20
  %80 = ptrtoint ptr %rsp.sroa.10.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %59, ptr %rsp.sroa.10.0.buf.sroa_idx, align 1
  %rsp.sroa.11.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 24
  %81 = ptrtoint ptr %rsp.sroa.11.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %56, ptr %rsp.sroa.11.0.buf.sroa_idx, align 1
  %rsp.sroa.12.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 28
  %82 = ptrtoint ptr %rsp.sroa.12.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %53, ptr %rsp.sroa.12.0.buf.sroa_idx, align 1
  %rsp.sroa.13.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 32
  %83 = ptrtoint ptr %rsp.sroa.13.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %50, ptr %rsp.sroa.13.0.buf.sroa_idx, align 1
  %rsp.sroa.14.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 36
  %84 = ptrtoint ptr %rsp.sroa.14.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %47, ptr %rsp.sroa.14.0.buf.sroa_idx, align 1
  %rsp.sroa.15.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 40
  %85 = ptrtoint ptr %rsp.sroa.15.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %44, ptr %rsp.sroa.15.0.buf.sroa_idx, align 1
  %rsp.sroa.16.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 44
  %86 = ptrtoint ptr %rsp.sroa.16.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %41, ptr %rsp.sroa.16.0.buf.sroa_idx, align 1
  %rsp.sroa.17.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 48
  %87 = ptrtoint ptr %rsp.sroa.17.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %38, ptr %rsp.sroa.17.0.buf.sroa_idx, align 1
  %rsp.sroa.18.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 52
  %88 = ptrtoint ptr %rsp.sroa.18.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %35, ptr %rsp.sroa.18.0.buf.sroa_idx, align 1
  %rsp.sroa.19.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 56
  %89 = ptrtoint ptr %rsp.sroa.19.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %32, ptr %rsp.sroa.19.0.buf.sroa_idx, align 1
  %rsp.sroa.20.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 60
  %90 = ptrtoint ptr %rsp.sroa.20.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %29, ptr %rsp.sroa.20.0.buf.sroa_idx, align 1
  br label %out

out:                                              ; preds = %if.then62, %if.end27.out_crit_edge, %do.end26
  %retval.0.i110 = phi i32 [ 0, %if.end27.out_crit_edge ], [ 0, %if.then62 ], [ %retval.0.i109, %do.end26 ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %out_free_rsp

out_free_rsp:                                     ; preds = %out, %if.end.out_free_rsp_crit_edge
  %err.0 = phi i32 [ %call.i104, %if.end.out_free_rsp_crit_edge ], [ %retval.0.i110, %out ]
  %91 = ptrtoint ptr %cardrsp_phys_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cardrsp_phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 64, ptr noundef nonnull %call.i, i32 noundef %92, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_rsp, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %out_free_rsp ], [ -12, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cardrsp_phys_addr) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__qlcnic_init_dcbnl_ops(ptr noundef %dcb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adapter = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 139
  %6 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @qlcnic_dcbnl_ops, ptr %dcbnl_ops, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_82xx_dcb_aen_handler(ptr noundef %dcb, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wq = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %aen_work = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %aen_work, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_82xx_dcb_get_cee_cfg(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %dcb, null
  br i1 %tobool.not.i, label %if.end.if.end15_crit_edge, label %land.lhs.true.i

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true.i:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %query_cee_param.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %query_cee_param.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %query_cee_param.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true.i35_crit_edge, label %qlcnic_dcb_query_cee_param.exit

land.lhs.true.i.land.lhs.true.i35_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i35

qlcnic_dcb_query_cee_param.exit:                  ; preds = %land.lhs.true.i
  %call.i = tail call i32 %5(ptr noundef nonnull %dcb, ptr noundef nonnull %1, i8 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %qlcnic_dcb_query_cee_param.exit.land.lhs.true.i35_crit_edge, label %qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge

qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qlcnic_dcb_query_cee_param.exit.land.lhs.true.i35_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i35

land.lhs.true.i35:                                ; preds = %qlcnic_dcb_query_cee_param.exit.land.lhs.true.i35_crit_edge, %land.lhs.true.i.land.lhs.true.i35_crit_edge
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %query_cee_param.i33 = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %query_cee_param.i33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %query_cee_param.i33, align 4
  %tobool1.not.i34 = icmp eq ptr %9, null
  br i1 %tobool1.not.i34, label %land.lhs.true.i35.land.lhs.true.i44_crit_edge, label %qlcnic_dcb_query_cee_param.exit39

land.lhs.true.i35.land.lhs.true.i44_crit_edge:    ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i44

qlcnic_dcb_query_cee_param.exit39:                ; preds = %land.lhs.true.i35
  %arrayidx552 = getelementptr [3 x %struct.qlcnic_dcb_param], ptr %1, i32 0, i32 1
  %call.i36 = tail call i32 %9(ptr noundef nonnull %dcb, ptr noundef %arrayidx552, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool7.not = icmp eq i32 %call.i36, 0
  br i1 %tobool7.not, label %qlcnic_dcb_query_cee_param.exit39.land.lhs.true.i44_crit_edge, label %qlcnic_dcb_query_cee_param.exit39.cleanup_crit_edge

qlcnic_dcb_query_cee_param.exit39.cleanup_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qlcnic_dcb_query_cee_param.exit39.land.lhs.true.i44_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit39
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i44

land.lhs.true.i44:                                ; preds = %qlcnic_dcb_query_cee_param.exit39.land.lhs.true.i44_crit_edge, %land.lhs.true.i35.land.lhs.true.i44_crit_edge
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %query_cee_param.i42 = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %query_cee_param.i42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %query_cee_param.i42, align 4
  %tobool1.not.i43 = icmp eq ptr %13, null
  br i1 %tobool1.not.i43, label %land.lhs.true.i44.if.end15_crit_edge, label %qlcnic_dcb_query_cee_param.exit48

land.lhs.true.i44.if.end15_crit_edge:             ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

qlcnic_dcb_query_cee_param.exit48:                ; preds = %land.lhs.true.i44
  %arrayidx1158 = getelementptr [3 x %struct.qlcnic_dcb_param], ptr %1, i32 0, i32 2
  %call.i45 = tail call i32 %13(ptr noundef nonnull %dcb, ptr noundef %arrayidx1158, i8 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool13.not = icmp eq i32 %call.i45, 0
  br i1 %tobool13.not, label %qlcnic_dcb_query_cee_param.exit48.if.end15_crit_edge, label %qlcnic_dcb_query_cee_param.exit48.cleanup_crit_edge

qlcnic_dcb_query_cee_param.exit48.cleanup_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qlcnic_dcb_query_cee_param.exit48.if.end15_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %qlcnic_dcb_query_cee_param.exit48.if.end15_crit_edge, %land.lhs.true.i44.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %prio_tc_map = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prio_tc_map to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1985229328, ptr %prio_tc_map, align 4
  %adapter = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 4
  tail call fastcc void @qlcnic_dcb_data_cee_param_map(ptr noundef %16)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %qlcnic_dcb_query_cee_param.exit48.cleanup_crit_edge, %qlcnic_dcb_query_cee_param.exit39.cleanup_crit_edge, %qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge ], [ %call.i36, %qlcnic_dcb_query_cee_param.exit39.cleanup_crit_edge ], [ %call.i45, %qlcnic_dcb_query_cee_param.exit48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__qlcnic_dcb_get_info(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dcb, null
  br i1 %tobool.not.i, label %entry.qlcnic_dcb_get_cee_cfg.exit_crit_edge, label %land.lhs.true.i

entry.qlcnic_dcb_get_cee_cfg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_get_cee_cfg.exit

land.lhs.true.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %get_hw_capability.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %get_hw_capability.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_hw_capability.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true.i6_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i6_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i6

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %3(ptr noundef nonnull %dcb) #12
  br label %land.lhs.true.i6

land.lhs.true.i6:                                 ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i6_crit_edge
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_cee_cfg.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %get_cee_cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_cee_cfg.i, align 4
  %tobool1.not.i5 = icmp eq ptr %7, null
  br i1 %tobool1.not.i5, label %land.lhs.true.i6.qlcnic_dcb_get_cee_cfg.exit_crit_edge, label %if.then.i8

land.lhs.true.i6.qlcnic_dcb_get_cee_cfg.exit_crit_edge: ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_get_cee_cfg.exit

if.then.i8:                                       ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  %call.i7 = tail call i32 %7(ptr noundef nonnull %dcb) #12
  br label %qlcnic_dcb_get_cee_cfg.exit

qlcnic_dcb_get_cee_cfg.exit:                      ; preds = %if.then.i8, %land.lhs.true.i6.qlcnic_dcb_get_cee_cfg.exit_crit_edge, %entry.qlcnic_dcb_get_cee_cfg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__qlcnic_dcb_attach(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aen_work = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2
  tail call void @__init_work(ptr noundef %aen_work, i32 noundef 0) #12
  %0 = ptrtoint ptr %aen_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %aen_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @__qlcnic_dcb_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8 = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @qlcnic_dcb_aen_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @__qlcnic_dcb_attach.__key.14) #12
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.16, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.17) #12
  %wq = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 3
  %4 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end20, label %if.end

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adapter = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 4
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 2232) #15
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 5
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %cfg, align 4
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.end.out_free_wq_crit_edge, label %if.end25

if.end.out_free_wq_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_wq

if.end25:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2848, i32 noundef 196) #15
  %12 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i51, ptr %dcb, align 4
  %tobool28.not = icmp eq ptr %call7.i.i51, null
  br i1 %tobool28.not, label %if.then29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 4
  tail call void @kfree(ptr noundef %14) #12
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cfg, align 4
  br label %out_free_wq

out_free_wq:                                      ; preds = %if.then29, %if.end.out_free_wq_crit_edge
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %17) #12
  %18 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %wq, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_free_wq, %if.end25.cleanup_crit_edge, %do.end20
  %retval.0 = phi i32 [ -12, %out_free_wq ], [ -1, %do.end20 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__qlcnic_dcb_free(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dcb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not23 = icmp eq i32 %4, 0
  br i1 %tobool2.not23, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 2
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %aen_work = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %aen_work) #12
  %wq = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 3
  %8 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wq, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %while.end.if.end8_crit_edge, label %if.then5

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %9) #12
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %wq, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %while.end.if.end8_crit_edge
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 5
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 4
  tail call void @kfree(ptr noundef %12) #12
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cfg, align 4
  %14 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcb, align 4
  tail call void @kfree(ptr noundef %15) #12
  %16 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dcb, align 4
  tail call void @kfree(ptr noundef nonnull %dcb) #12
  %dcb11 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 55
  %17 = ptrtoint ptr %dcb11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dcb11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_mbx_args(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @qlcnic_dcb_get_state(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 1
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qlcnic_dcb_get_perm_hw_addr(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 54
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %1 to i32
  %2 = call ptr @memcpy(ptr %addr, ptr %perm_addr, i32 %conv)
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_dcb_get_pg_tc_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %tc, ptr nocapture noundef writeonly %prio, ptr nocapture noundef %pgid, ptr nocapture noundef writeonly %bw_per, ptr nocapture noundef writeonly %up_tc_map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %arrayidx = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %up_tc_map to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %up_tc_map, align 1
  %5 = ptrtoint ptr %bw_per to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bw_per, align 1
  %6 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pgid, align 1
  %7 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prio, align 1
  %8 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tc_param_valid = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %tc_param_valid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tc_param_valid, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tc)
  %13 = icmp ugt i32 %tc, 7
  %or.cond = or i1 %13, %tobool4.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %tc
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %pgid14 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %tc, i32 6
  %16 = ptrtoint ptr %pgid14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pgid14, align 1
  %18 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %pgid, align 1
  %prio_type = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %tc, i32 2
  %19 = ptrtoint ptr %prio_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prio_type, align 4
  %conv = trunc i32 %20 to i8
  %21 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %prio, align 1
  %up_tc_map15 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %tc, i32 5
  %22 = ptrtoint ptr %up_tc_map15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %up_tc_map15, align 2
  %24 = ptrtoint ptr %up_tc_map to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %up_tc_map, align 1
  %25 = load i8, ptr %pgid, align 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not = icmp eq i8 %27, 0
  br i1 %tobool22.not, label %if.end13.for.inc_crit_edge, label %land.lhs.true

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 0, i32 6
  %28 = ptrtoint ptr %pgid25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pgid25, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %29)
  %cmp27 = icmp eq i8 %25, %29
  %inc = zext i1 %cmp27 to i8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end13.for.inc_crit_edge
  %cnt.1 = phi i8 [ 0, %if.end13.for.inc_crit_edge ], [ %inc, %land.lhs.true ]
  %arrayidx20.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx20.1, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool22.not.1 = icmp eq i8 %31, 0
  br i1 %tobool22.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %pgid25.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pgid25.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %33)
  %cmp27.1 = icmp eq i8 %25, %33
  %inc.1 = zext i1 %cmp27.1 to i8
  %spec.select.1 = add nuw nsw i8 %cnt.1, %inc.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc.for.inc.1_crit_edge
  %cnt.1.1 = phi i8 [ %cnt.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select.1, %land.lhs.true.1 ]
  %arrayidx20.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx20.2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool22.not.2 = icmp eq i8 %35, 0
  br i1 %tobool22.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 2, i32 6
  %36 = ptrtoint ptr %pgid25.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pgid25.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %37)
  %cmp27.2 = icmp eq i8 %25, %37
  %inc.2 = zext i1 %cmp27.2 to i8
  %spec.select.2 = add nuw nsw i8 %cnt.1.1, %inc.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2, %for.inc.1.for.inc.2_crit_edge
  %cnt.1.2 = phi i8 [ %cnt.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select.2, %land.lhs.true.2 ]
  %arrayidx20.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx20.3, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool22.not.3 = icmp eq i8 %39, 0
  br i1 %tobool22.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %pgid25.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pgid25.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %41)
  %cmp27.3 = icmp eq i8 %25, %41
  %inc.3 = zext i1 %cmp27.3 to i8
  %spec.select.3 = add nuw nsw i8 %cnt.1.2, %inc.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3, %for.inc.2.for.inc.3_crit_edge
  %cnt.1.3 = phi i8 [ %cnt.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %spec.select.3, %land.lhs.true.3 ]
  %arrayidx20.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx20.4, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool22.not.4 = icmp eq i8 %43, 0
  br i1 %tobool22.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %pgid25.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pgid25.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %45)
  %cmp27.4 = icmp eq i8 %25, %45
  %inc.4 = zext i1 %cmp27.4 to i8
  %spec.select.4 = add nuw nsw i8 %cnt.1.3, %inc.4
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4, %for.inc.3.for.inc.4_crit_edge
  %cnt.1.4 = phi i8 [ %cnt.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %spec.select.4, %land.lhs.true.4 ]
  %arrayidx20.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 5
  %46 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx20.5, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not.5 = icmp eq i8 %47, 0
  br i1 %tobool22.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 5, i32 6
  %48 = ptrtoint ptr %pgid25.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pgid25.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %49)
  %cmp27.5 = icmp eq i8 %25, %49
  %inc.5 = zext i1 %cmp27.5 to i8
  %spec.select.5 = add nuw nsw i8 %cnt.1.4, %inc.5
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5, %for.inc.4.for.inc.5_crit_edge
  %cnt.1.5 = phi i8 [ %cnt.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %spec.select.5, %land.lhs.true.5 ]
  %arrayidx20.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 6
  %50 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx20.6, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool22.not.6 = icmp eq i8 %51, 0
  br i1 %tobool22.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 6, i32 6
  %52 = ptrtoint ptr %pgid25.6 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pgid25.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %53)
  %cmp27.6 = icmp eq i8 %25, %53
  %inc.6 = zext i1 %cmp27.6 to i8
  %spec.select.6 = add nuw nsw i8 %cnt.1.5, %inc.6
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6, %for.inc.5.for.inc.6_crit_edge
  %cnt.1.6 = phi i8 [ %cnt.1.5, %for.inc.5.for.inc.6_crit_edge ], [ %spec.select.6, %land.lhs.true.6 ]
  %arrayidx20.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 7
  %54 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx20.7, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool22.not.7 = icmp eq i8 %55, 0
  br i1 %tobool22.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %pgid25.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 1, i32 0, i32 7, i32 6
  %56 = ptrtoint ptr %pgid25.7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pgid25.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %57)
  %cmp27.7 = icmp eq i8 %25, %57
  %inc.7 = zext i1 %cmp27.7 to i8
  %spec.select.7 = add nuw nsw i8 %cnt.1.6, %inc.7
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7, %for.inc.6.for.inc.7_crit_edge
  %cnt.1.7 = phi i8 [ %cnt.1.6, %for.inc.6.for.inc.7_crit_edge ], [ %spec.select.7, %land.lhs.true.7 ]
  %58 = udiv i8 100, %cnt.1.7
  %bwg_percent = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %tc, i32 4
  %59 = ptrtoint ptr %bwg_percent to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %bwg_percent, align 1
  %60 = ptrtoint ptr %bw_per to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %58, ptr %bw_per, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qlcnic_dcb_get_pg_bwg_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_pct) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bw_pct, align 1
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %1 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dcb, align 4
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tc_param_valid = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %tc_param_valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tc_param_valid, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %9 = icmp ugt i32 %pgid, 7
  %or.cond = or i1 %9, %tobool4.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %arrayidx9 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 1, i32 %pgid
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %total_bw_percent = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 1, i32 %pgid, i32 1
  %12 = ptrtoint ptr %total_bw_percent to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %total_bw_percent, align 1
  %14 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %bw_pct, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qlcnic_dcb_get_pg_tc_cfg_rx(ptr nocapture noundef readnone %netdev, i32 noundef %prio, ptr nocapture noundef writeonly %prio_type, ptr nocapture noundef writeonly %pgid, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %up_map, align 1
  %1 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bw_pct, align 1
  %2 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pgid, align 1
  %3 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %prio_type, align 1
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qlcnic_dcb_get_pg_bwg_cfg_rx(ptr nocapture noundef readnone %netdev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_pct) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bw_pct, align 1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_dcb_get_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef writeonly %setting) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %prio
  %0 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %setting, align 1
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %1 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dcb, align 4
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %arrayidx = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pfc_mode_enable = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %pfc_mode_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfc_mode_enable, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %for.body.preheader.for.inc_crit_edge, label %if.end11

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end11:                                         ; preds = %for.body.preheader
  %up_tc_map = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 0, i32 5
  %11 = ptrtoint ptr %up_tc_map to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %up_tc_map, align 2
  %conv13 = zext i8 %12 to i32
  %and = and i32 %shl, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end11.for.inc_crit_edge, label %land.lhs.true

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end11
  %arrayidx15 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 0, i32 1, i32 %prio
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then19

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 0, i32 1, i32 %prio, i32 1
  %15 = ptrtoint ptr %pfc_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pfc_type, align 4
  %conv22 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv22, ptr %setting, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %land.lhs.true.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx8.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.1, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not.1 = icmp eq i8 %19, 0
  br i1 %tobool9.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end11.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end11.1:                                       ; preds = %for.inc
  %up_tc_map.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %up_tc_map.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %up_tc_map.1, align 2
  %conv13.1 = zext i8 %21 to i32
  %and.1 = and i32 %shl, %conv13.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool14.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool14.not.1, label %if.end11.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end11.1.for.inc.1_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end11.1
  %arrayidx15.1 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 1, i32 1, i32 %prio
  %22 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15.1, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not.1 = icmp eq i8 %23, 0
  br i1 %tobool17.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then19.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then19.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type.1 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 1, i32 1, i32 %prio, i32 1
  %24 = ptrtoint ptr %pfc_type.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pfc_type.1, align 4
  %conv22.1 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv22.1, ptr %setting, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1, %land.lhs.true.1.for.inc.1_crit_edge, %if.end11.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx8.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx8.2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool9.not.2 = icmp eq i8 %28, 0
  br i1 %tobool9.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end11.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end11.2:                                       ; preds = %for.inc.1
  %up_tc_map.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %up_tc_map.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %up_tc_map.2, align 2
  %conv13.2 = zext i8 %30 to i32
  %and.2 = and i32 %shl, %conv13.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool14.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool14.not.2, label %if.end11.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end11.2.for.inc.2_crit_edge:                   ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end11.2
  %arrayidx15.2 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 2, i32 1, i32 %prio
  %31 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx15.2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool17.not.2 = icmp eq i8 %32, 0
  br i1 %tobool17.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then19.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then19.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type.2 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 2, i32 1, i32 %prio, i32 1
  %33 = ptrtoint ptr %pfc_type.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pfc_type.2, align 4
  %conv22.2 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv22.2, ptr %setting, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then19.2, %land.lhs.true.2.for.inc.2_crit_edge, %if.end11.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx8.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx8.3, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool9.not.3 = icmp eq i8 %37, 0
  br i1 %tobool9.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end11.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end11.3:                                       ; preds = %for.inc.2
  %up_tc_map.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %up_tc_map.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %up_tc_map.3, align 2
  %conv13.3 = zext i8 %39 to i32
  %and.3 = and i32 %shl, %conv13.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool14.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool14.not.3, label %if.end11.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end11.3.for.inc.3_crit_edge:                   ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end11.3
  %arrayidx15.3 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 3, i32 1, i32 %prio
  %40 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx15.3, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool17.not.3 = icmp eq i8 %41, 0
  br i1 %tobool17.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then19.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then19.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type.3 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 3, i32 1, i32 %prio, i32 1
  %42 = ptrtoint ptr %pfc_type.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pfc_type.3, align 4
  %conv22.3 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv22.3, ptr %setting, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then19.3, %land.lhs.true.3.for.inc.3_crit_edge, %if.end11.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx8.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8.4, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool9.not.4 = icmp eq i8 %46, 0
  br i1 %tobool9.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end11.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end11.4:                                       ; preds = %for.inc.3
  %up_tc_map.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 4, i32 5
  %47 = ptrtoint ptr %up_tc_map.4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %up_tc_map.4, align 2
  %conv13.4 = zext i8 %48 to i32
  %and.4 = and i32 %shl, %conv13.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool14.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool14.not.4, label %if.end11.4.for.inc.4_crit_edge, label %land.lhs.true.4

if.end11.4.for.inc.4_crit_edge:                   ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end11.4
  %arrayidx15.4 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 4, i32 1, i32 %prio
  %49 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx15.4, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool17.not.4 = icmp eq i8 %50, 0
  br i1 %tobool17.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then19.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then19.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type.4 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 4, i32 1, i32 %prio, i32 1
  %51 = ptrtoint ptr %pfc_type.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pfc_type.4, align 4
  %conv22.4 = trunc i32 %52 to i8
  %53 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv22.4, ptr %setting, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then19.4, %land.lhs.true.4.for.inc.4_crit_edge, %if.end11.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx8.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.5, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool9.not.5 = icmp eq i8 %55, 0
  br i1 %tobool9.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end11.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end11.5:                                       ; preds = %for.inc.4
  %up_tc_map.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 5, i32 5
  %56 = ptrtoint ptr %up_tc_map.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %up_tc_map.5, align 2
  %conv13.5 = zext i8 %57 to i32
  %and.5 = and i32 %shl, %conv13.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool14.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool14.not.5, label %if.end11.5.for.inc.5_crit_edge, label %land.lhs.true.5

if.end11.5.for.inc.5_crit_edge:                   ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end11.5
  %arrayidx15.5 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 5, i32 1, i32 %prio
  %58 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx15.5, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool17.not.5 = icmp eq i8 %59, 0
  br i1 %tobool17.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %if.then19.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then19.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type.5 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 5, i32 1, i32 %prio, i32 1
  %60 = ptrtoint ptr %pfc_type.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pfc_type.5, align 4
  %conv22.5 = trunc i32 %61 to i8
  %62 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv22.5, ptr %setting, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then19.5, %land.lhs.true.5.for.inc.5_crit_edge, %if.end11.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx8.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 6
  %63 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx8.6, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool9.not.6 = icmp eq i8 %64, 0
  br i1 %tobool9.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end11.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.end11.6:                                       ; preds = %for.inc.5
  %up_tc_map.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 6, i32 5
  %65 = ptrtoint ptr %up_tc_map.6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %up_tc_map.6, align 2
  %conv13.6 = zext i8 %66 to i32
  %and.6 = and i32 %shl, %conv13.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool14.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool14.not.6, label %if.end11.6.for.inc.6_crit_edge, label %land.lhs.true.6

if.end11.6.for.inc.6_crit_edge:                   ; preds = %if.end11.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end11.6
  %arrayidx15.6 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 6, i32 1, i32 %prio
  %67 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx15.6, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool17.not.6 = icmp eq i8 %68, 0
  br i1 %tobool17.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %if.then19.6

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then19.6:                                      ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type.6 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 6, i32 1, i32 %prio, i32 1
  %69 = ptrtoint ptr %pfc_type.6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pfc_type.6, align 4
  %conv22.6 = trunc i32 %70 to i8
  %71 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv22.6, ptr %setting, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then19.6, %land.lhs.true.6.for.inc.6_crit_edge, %if.end11.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx8.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 7
  %72 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx8.7, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool9.not.7 = icmp eq i8 %73, 0
  br i1 %tobool9.not.7, label %for.inc.6.cleanup_crit_edge, label %if.end11.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.7:                                       ; preds = %for.inc.6
  %up_tc_map.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %4, i32 0, i32 1, i32 0, i32 7, i32 5
  %74 = ptrtoint ptr %up_tc_map.7 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %up_tc_map.7, align 2
  %conv13.7 = zext i8 %75 to i32
  %and.7 = and i32 %shl, %conv13.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool14.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool14.not.7, label %if.end11.7.cleanup_crit_edge, label %land.lhs.true.7

if.end11.7.cleanup_crit_edge:                     ; preds = %if.end11.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.7:                                  ; preds = %if.end11.7
  %arrayidx15.7 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 7, i32 1, i32 %prio
  %76 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx15.7, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool17.not.7 = icmp eq i8 %77, 0
  br i1 %tobool17.not.7, label %land.lhs.true.7.cleanup_crit_edge, label %if.then19.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19.7:                                      ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_type.7 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 7, i32 1, i32 %prio, i32 1
  %78 = ptrtoint ptr %pfc_type.7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pfc_type.7, align 4
  %conv22.7 = trunc i32 %79 to i8
  %80 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv22.7, ptr %setting, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then19.7, %land.lhs.true.7.cleanup_crit_edge, %if.end11.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @qlcnic_dcb_get_capability(ptr nocapture noundef readonly %netdev, i32 noundef %capid, ptr nocapture noundef writeonly %cap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %capid, label %sw.default [
    i32 2, label %if.end.cleanup.sink.split_crit_edge
    i32 4, label %if.end.cleanup.sink.split_crit_edge9
    i32 3, label %if.end.cleanup.sink.split_crit_edge10
    i32 7, label %if.end.cleanup.sink.split_crit_edge11
    i32 5, label %if.end.sw.bb2_crit_edge
    i32 6, label %if.end.sw.bb2_crit_edge12
    i32 9, label %sw.bb3
  ]

if.end.sw.bb2_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.cleanup.sink.split_crit_edge11:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.cleanup.sink.split_crit_edge10:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.cleanup.sink.split_crit_edge9:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge12
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 4
  %dcb_capability = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %6, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %dcb_capability to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dcb_capability, align 1
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default, %sw.bb3, %sw.bb2, %if.end.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge9, %if.end.cleanup.sink.split_crit_edge10, %if.end.cleanup.sink.split_crit_edge11
  %.sink = phi i8 [ -128, %sw.bb2 ], [ %8, %sw.bb3 ], [ 0, %sw.default ], [ 1, %if.end.cleanup.sink.split_crit_edge ], [ 1, %if.end.cleanup.sink.split_crit_edge9 ], [ 1, %if.end.cleanup.sink.split_crit_edge10 ], [ 1, %if.end.cleanup.sink.split_crit_edge11 ]
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %cap, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_dcb_get_num_tcs(ptr nocapture noundef readonly %netdev, i32 noundef %attr, ptr nocapture noundef writeonly %num) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %cfg1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_ets_tc = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %3, i32 0, i32 1, i32 3
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_pfc_tc = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %3, i32 0, i32 1, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %sw.bb
  %.sink.in = phi ptr [ %max_pfc_tc, %sw.bb4 ], [ %max_ets_tc, %sw.bb ]
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %7)
  %.sink = load i8, ptr %.sink.in, align 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %num, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @qlcnic_dcb_get_pfc_state(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb1, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %pfc_mode_enable = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %pfc_mode_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc_mode_enable, align 1, !range !58
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dcb_get_app(ptr noundef %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %id) #0 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #12
  %0 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %2 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %idtype, ptr %app, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %id, ptr %1, align 2
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %5 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = call zeroext i8 @dcb_getapp(ptr noundef %netdev, ptr noundef nonnull %app) #12
  %conv = zext i8 %call2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qlcnic_dcb_get_feat_cfg(ptr noundef %netdev, i32 noundef %fid, ptr nocapture noundef writeonly %flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %flag, align 1
  %7 = zext i32 %fid to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %fid, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb11
    i32 4, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end
  %tc_param_valid = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %tc_param_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tc_param_valid, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %flag, align 1
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %flag, align 1
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %pfc_mode_enable = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %pfc_mode_enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pfc_mode_enable, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.else22, label %if.then13

if.then13:                                        ; preds = %sw.bb11
  %pfc_type = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %pfc_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pfc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.then13.cleanup_crit_edge, label %if.then17

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %flag, align 1
  br label %cleanup

if.else22:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %flag, align 1
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %flag, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.12, i32 noundef %fid) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb27, %if.else22, %if.then17, %if.then13.cleanup_crit_edge, %if.else, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %sw.default ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.else22 ], [ 0, %if.then17 ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.else ], [ 0, %sw.bb27 ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @qlcnic_dcb_get_dcbx(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %cfg1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dcb_capability = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %3, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %dcb_capability to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcb_capability, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dcb_peer_app_info(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %info, ptr nocapture noundef %app_count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 0, ptr %info, align 1
  %1 = ptrtoint ptr %app_count to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %app_count, align 2
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %arrayidx3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %app_count, align 2
  %inc = add i16 %11, 1
  store i16 %inc, ptr %app_count, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge
  %arrayidx3.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.1, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.1 = icmp eq i8 %13, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %app_count, align 2
  %inc.1 = add i16 %15, 1
  store i16 %inc.1, ptr %app_count, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %arrayidx3.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3.2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.2 = icmp eq i8 %17, 0
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %app_count, align 2
  %inc.2 = add i16 %19, 1
  store i16 %inc.2, ptr %app_count, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx3.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.3, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.3 = icmp eq i8 %21, 0
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %app_count, align 2
  %inc.3 = add i16 %23, 1
  store i16 %inc.3, ptr %app_count, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx3.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 4
  %24 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx3.4, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool4.not.4 = icmp eq i8 %25, 0
  br i1 %tobool4.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then5.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %app_count, align 2
  %inc.4 = add i16 %27, 1
  store i16 %inc.4, ptr %app_count, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then5.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx3.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 5
  %28 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx3.5, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool4.not.5 = icmp eq i8 %29, 0
  br i1 %tobool4.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then5.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then5.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %app_count, align 2
  %inc.5 = add i16 %31, 1
  store i16 %inc.5, ptr %app_count, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then5.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx3.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 6
  %32 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx3.6, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool4.not.6 = icmp eq i8 %33, 0
  br i1 %tobool4.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then5.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then5.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %app_count, align 2
  %inc.6 = add i16 %35, 1
  store i16 %inc.6, ptr %app_count, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then5.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx3.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 2, i32 2, i32 7
  %36 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx3.7, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool4.not.7 = icmp eq i8 %37, 0
  br i1 %tobool4.not.7, label %for.inc.6.cleanup_crit_edge, label %if.then5.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %app_count, align 2
  %inc.7 = add i16 %39, 1
  store i16 %inc.7, ptr %app_count, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then5.7, %for.inc.6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dcb_peer_app_table(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %table) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %arrayidx4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.end7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %selector = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %selector, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %table to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %table, align 2
  %priority = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %priority, align 2
  %priority11 = getelementptr %struct.dcb_app, ptr %table, i32 0, i32 1
  %13 = ptrtoint ptr %priority11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %priority11, align 1
  %protocol = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol, align 4
  %protocol13 = getelementptr %struct.dcb_app, ptr %table, i32 0, i32 2
  %16 = ptrtoint ptr %protocol13 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %protocol13, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.end.for.inc_crit_edge
  %j.1 = phi i32 [ 1, %if.end7 ], [ 0, %if.end.for.inc_crit_edge ]
  %arrayidx4.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.1, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool5.not.1 = icmp eq i8 %18, 0
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end7.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %selector.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %selector.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %selector.1, align 4
  %conv.1 = trunc i32 %20 to i8
  %arrayidx8.1 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1
  %21 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.1, ptr %arrayidx8.1, align 2
  %priority.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 1, i32 3
  %22 = ptrtoint ptr %priority.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %priority.1, align 2
  %priority11.1 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1, i32 1
  %24 = ptrtoint ptr %priority11.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %priority11.1, align 1
  %protocol.1 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 1, i32 2
  %25 = ptrtoint ptr %protocol.1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %protocol.1, align 4
  %inc.1 = add nuw nsw i32 %j.1, 1
  %protocol13.1 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1, i32 2
  %27 = ptrtoint ptr %protocol13.1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %protocol13.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end7.1, %for.inc.for.inc.1_crit_edge
  %j.1.1 = phi i32 [ %inc.1, %if.end7.1 ], [ %j.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx4.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not.2 = icmp eq i8 %29, 0
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end7.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end7.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %selector.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 2, i32 1
  %30 = ptrtoint ptr %selector.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %selector.2, align 4
  %conv.2 = trunc i32 %31 to i8
  %arrayidx8.2 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.1
  %32 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.2, ptr %arrayidx8.2, align 2
  %priority.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 2, i32 3
  %33 = ptrtoint ptr %priority.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %priority.2, align 2
  %priority11.2 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.1, i32 1
  %35 = ptrtoint ptr %priority11.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %priority11.2, align 1
  %protocol.2 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 2, i32 2
  %36 = ptrtoint ptr %protocol.2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol.2, align 4
  %inc.2 = add nuw nsw i32 %j.1.1, 1
  %protocol13.2 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.1, i32 2
  %38 = ptrtoint ptr %protocol13.2 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %protocol13.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end7.2, %for.inc.1.for.inc.2_crit_edge
  %j.1.2 = phi i32 [ %inc.2, %if.end7.2 ], [ %j.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx4.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4.3, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.3 = icmp eq i8 %40, 0
  br i1 %tobool5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end7.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end7.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %selector.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 3, i32 1
  %41 = ptrtoint ptr %selector.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %selector.3, align 4
  %conv.3 = trunc i32 %42 to i8
  %arrayidx8.3 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.2
  %43 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.3, ptr %arrayidx8.3, align 2
  %priority.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 3, i32 3
  %44 = ptrtoint ptr %priority.3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %priority.3, align 2
  %priority11.3 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.2, i32 1
  %46 = ptrtoint ptr %priority11.3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %priority11.3, align 1
  %protocol.3 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 3, i32 2
  %47 = ptrtoint ptr %protocol.3 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %protocol.3, align 4
  %inc.3 = add nuw nsw i32 %j.1.2, 1
  %protocol13.3 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.2, i32 2
  %49 = ptrtoint ptr %protocol13.3 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %protocol13.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end7.3, %for.inc.2.for.inc.3_crit_edge
  %j.1.3 = phi i32 [ %inc.3, %if.end7.3 ], [ %j.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx4.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 4
  %50 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx4.4, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool5.not.4 = icmp eq i8 %51, 0
  br i1 %tobool5.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end7.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end7.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %selector.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 4, i32 1
  %52 = ptrtoint ptr %selector.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %selector.4, align 4
  %conv.4 = trunc i32 %53 to i8
  %arrayidx8.4 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.3
  %54 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.4, ptr %arrayidx8.4, align 2
  %priority.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 4, i32 3
  %55 = ptrtoint ptr %priority.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %priority.4, align 2
  %priority11.4 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.3, i32 1
  %57 = ptrtoint ptr %priority11.4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %priority11.4, align 1
  %protocol.4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 4, i32 2
  %58 = ptrtoint ptr %protocol.4 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %protocol.4, align 4
  %inc.4 = add nuw nsw i32 %j.1.3, 1
  %protocol13.4 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.3, i32 2
  %60 = ptrtoint ptr %protocol13.4 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %protocol13.4, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end7.4, %for.inc.3.for.inc.4_crit_edge
  %j.1.4 = phi i32 [ %inc.4, %if.end7.4 ], [ %j.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx4.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 5
  %61 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx4.5, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool5.not.5 = icmp eq i8 %62, 0
  br i1 %tobool5.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end7.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end7.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %selector.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 5, i32 1
  %63 = ptrtoint ptr %selector.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %selector.5, align 4
  %conv.5 = trunc i32 %64 to i8
  %arrayidx8.5 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.4
  %65 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.5, ptr %arrayidx8.5, align 2
  %priority.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 5, i32 3
  %66 = ptrtoint ptr %priority.5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %priority.5, align 2
  %priority11.5 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.4, i32 1
  %68 = ptrtoint ptr %priority11.5 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %priority11.5, align 1
  %protocol.5 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 5, i32 2
  %69 = ptrtoint ptr %protocol.5 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %protocol.5, align 4
  %inc.5 = add nuw nsw i32 %j.1.4, 1
  %protocol13.5 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.4, i32 2
  %71 = ptrtoint ptr %protocol13.5 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %protocol13.5, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end7.5, %for.inc.4.for.inc.5_crit_edge
  %j.1.5 = phi i32 [ %inc.5, %if.end7.5 ], [ %j.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx4.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 6
  %72 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx4.6, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool5.not.6 = icmp eq i8 %73, 0
  br i1 %tobool5.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end7.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.end7.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %selector.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 6, i32 1
  %74 = ptrtoint ptr %selector.6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %selector.6, align 4
  %conv.6 = trunc i32 %75 to i8
  %arrayidx8.6 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.5
  %76 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.6, ptr %arrayidx8.6, align 2
  %priority.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 6, i32 3
  %77 = ptrtoint ptr %priority.6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %priority.6, align 2
  %priority11.6 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.5, i32 1
  %79 = ptrtoint ptr %priority11.6 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %priority11.6, align 1
  %protocol.6 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 6, i32 2
  %80 = ptrtoint ptr %protocol.6 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %protocol.6, align 4
  %inc.6 = add nuw nsw i32 %j.1.5, 1
  %protocol13.6 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.5, i32 2
  %82 = ptrtoint ptr %protocol13.6 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %protocol13.6, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end7.6, %for.inc.5.for.inc.6_crit_edge
  %j.1.6 = phi i32 [ %inc.6, %if.end7.6 ], [ %j.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx4.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 7
  %83 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx4.7, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool5.not.7 = icmp eq i8 %84, 0
  br i1 %tobool5.not.7, label %for.inc.6.cleanup_crit_edge, label %if.end7.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %selector.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 7, i32 1
  %85 = ptrtoint ptr %selector.7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %selector.7, align 4
  %conv.7 = trunc i32 %86 to i8
  %arrayidx8.7 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.6
  %87 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.7, ptr %arrayidx8.7, align 2
  %priority.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 7, i32 3
  %88 = ptrtoint ptr %priority.7 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %priority.7, align 2
  %priority11.7 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.6, i32 1
  %90 = ptrtoint ptr %priority11.7 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %priority11.7, align 1
  %protocol.7 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 2, i32 7, i32 2
  %91 = ptrtoint ptr %protocol.7 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %protocol.7, align 4
  %protocol13.7 = getelementptr %struct.dcb_app, ptr %table, i32 %j.1.6, i32 2
  %93 = ptrtoint ptr %protocol13.7 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %protocol13.7, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7.7, %for.inc.6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dcb_cee_peer_get_pg(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %arrayidx = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.inc38.for.body_crit_edge ]
  %j.064 = phi i8 [ 0, %if.end ], [ %j.1, %for.inc38.for.body_crit_edge ]
  %arrayidx4 = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 1, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %for.body.for.inc38_crit_edge, label %if.end7

for.body.for.inc38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

if.end7:                                          ; preds = %for.body
  %total_bw_percent = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %5, i32 0, i32 2, i32 1, i32 %indvars.iv, i32 1
  %8 = ptrtoint ptr %total_bw_percent to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %total_bw_percent, align 1
  %idxprom11 = zext i8 %j.064 to i32
  %arrayidx12 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 %idxprom11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx12, align 1
  %arrayidx19 = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %indvars.iv
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx19, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  %pgid = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %indvars.iv, i32 6
  br i1 %tobool21.not, label %if.end7.for.inc38_crit_edge, label %land.lhs.true

if.end7.for.inc38_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

land.lhs.true:                                    ; preds = %if.end7
  %13 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pgid, align 1
  %15 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %15)
  %cmp28 = icmp eq i32 %indvars.iv, %15
  br i1 %cmp28, label %land.lhs.true.if.then30_crit_edge, label %land.lhs.true.1

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true.7.if.then30_crit_edge, %land.lhs.true.6.if.then30_crit_edge, %land.lhs.true.5.if.then30_crit_edge, %land.lhs.true.4.if.then30_crit_edge, %land.lhs.true.3.if.then30_crit_edge, %land.lhs.true.2.if.then30_crit_edge, %land.lhs.true.1.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge
  %up_tc_map = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %indvars.iv, i32 5
  %16 = ptrtoint ptr %up_tc_map to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %up_tc_map, align 2
  %inc = add i8 %j.064, 1
  %arrayidx35 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 %idxprom11
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx35, align 1
  br label %for.inc38

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %19 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pgid, align 1
  %21 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %21)
  %cmp28.1 = icmp eq i32 %indvars.iv, %21
  br i1 %cmp28.1, label %land.lhs.true.1.if.then30_crit_edge, label %land.lhs.true.2

land.lhs.true.1.if.then30_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  %22 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pgid, align 1
  %24 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %24)
  %cmp28.2 = icmp eq i32 %indvars.iv, %24
  br i1 %cmp28.2, label %land.lhs.true.2.if.then30_crit_edge, label %land.lhs.true.3

land.lhs.true.2.if.then30_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %25 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pgid, align 1
  %27 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %27)
  %cmp28.3 = icmp eq i32 %indvars.iv, %27
  br i1 %cmp28.3, label %land.lhs.true.3.if.then30_crit_edge, label %land.lhs.true.4

land.lhs.true.3.if.then30_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  %28 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pgid, align 1
  %30 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %30)
  %cmp28.4 = icmp eq i32 %indvars.iv, %30
  br i1 %cmp28.4, label %land.lhs.true.4.if.then30_crit_edge, label %land.lhs.true.5

land.lhs.true.4.if.then30_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  %31 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pgid, align 1
  %33 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %33)
  %cmp28.5 = icmp eq i32 %indvars.iv, %33
  br i1 %cmp28.5, label %land.lhs.true.5.if.then30_crit_edge, label %land.lhs.true.6

land.lhs.true.5.if.then30_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.lhs.true.6:                                  ; preds = %land.lhs.true.5
  %34 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pgid, align 1
  %36 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %36)
  %cmp28.6 = icmp eq i32 %indvars.iv, %36
  br i1 %cmp28.6, label %land.lhs.true.6.if.then30_crit_edge, label %land.lhs.true.7

land.lhs.true.6.if.then30_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.lhs.true.7:                                  ; preds = %land.lhs.true.6
  %37 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pgid, align 1
  %39 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %39)
  %cmp28.7 = icmp eq i32 %indvars.iv, %39
  br i1 %cmp28.7, label %land.lhs.true.7.if.then30_crit_edge, label %land.lhs.true.7.for.inc38_crit_edge

land.lhs.true.7.for.inc38_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

land.lhs.true.7.if.then30_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

for.inc38:                                        ; preds = %land.lhs.true.7.for.inc38_crit_edge, %if.then30, %if.end7.for.inc38_crit_edge, %for.body.for.inc38_crit_edge
  %j.1 = phi i8 [ %inc, %if.then30 ], [ %j.064, %for.body.for.inc38_crit_edge ], [ %j.064, %land.lhs.true.7.for.inc38_crit_edge ], [ %j.064, %if.end7.for.inc38_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc38.cleanup_crit_edge, label %for.inc38.for.body_crit_edge

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc38.cleanup_crit_edge:                      ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc38.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dcb_cee_peer_get_pfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %pfc) #11 align 64 {
entry:
  %setting = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %netdev, i32 3444
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %cfg1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %setting) #12
  %pfc_en = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 2
  %4 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pfc_en, align 1
  %5 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcb, align 4
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %up_tc_map = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx, i32 0, i32 %indvars.iv, i32 5
  %9 = ptrtoint ptr %up_tc_map to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %up_tc_map, align 2
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.qlcnic_dcb_prio_count.exit_crit_edge

for.body.qlcnic_dcb_prio_count.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit

for.inc.i:                                        ; preds = %for.body
  %and.1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.qlcnic_dcb_prio_count.exit_crit_edge

for.inc.i.qlcnic_dcb_prio_count.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.qlcnic_dcb_prio_count.exit_crit_edge

for.inc.1.i.qlcnic_dcb_prio_count.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.qlcnic_dcb_prio_count.exit_crit_edge

for.inc.2.i.qlcnic_dcb_prio_count.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.qlcnic_dcb_prio_count.exit_crit_edge

for.inc.3.i.qlcnic_dcb_prio_count.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.5.i, label %for.inc.4.i.qlcnic_dcb_prio_count.exit_crit_edge

for.inc.4.i.qlcnic_dcb_prio_count.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %and.6.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.6.i, label %for.inc.5.i.qlcnic_dcb_prio_count.exit_crit_edge

for.inc.5.i.qlcnic_dcb_prio_count.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.7.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  %spec.select.i = select i1 %tobool.not.7.i, i32 8, i32 7
  br label %qlcnic_dcb_prio_count.exit

qlcnic_dcb_prio_count.exit:                       ; preds = %for.inc.6.i, %for.inc.5.i.qlcnic_dcb_prio_count.exit_crit_edge, %for.inc.4.i.qlcnic_dcb_prio_count.exit_crit_edge, %for.inc.3.i.qlcnic_dcb_prio_count.exit_crit_edge, %for.inc.2.i.qlcnic_dcb_prio_count.exit_crit_edge, %for.inc.1.i.qlcnic_dcb_prio_count.exit_crit_edge, %for.inc.i.qlcnic_dcb_prio_count.exit_crit_edge, %for.body.qlcnic_dcb_prio_count.exit_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %for.body.qlcnic_dcb_prio_count.exit_crit_edge ], [ 1, %for.inc.i.qlcnic_dcb_prio_count.exit_crit_edge ], [ 2, %for.inc.1.i.qlcnic_dcb_prio_count.exit_crit_edge ], [ 3, %for.inc.2.i.qlcnic_dcb_prio_count.exit_crit_edge ], [ 4, %for.inc.3.i.qlcnic_dcb_prio_count.exit_crit_edge ], [ 5, %for.inc.4.i.qlcnic_dcb_prio_count.exit_crit_edge ], [ 6, %for.inc.5.i.qlcnic_dcb_prio_count.exit_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %11 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %setting, align 1
  call void @qlcnic_dcb_get_pfc_cfg(ptr noundef %netdev, i32 noundef %j.0.lcssa.i, ptr noundef nonnull %setting)
  %12 = ptrtoint ptr %setting to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %setting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %qlcnic_dcb_prio_count.exit.for.inc_crit_edge, label %if.then10

qlcnic_dcb_prio_count.exit.for.inc_crit_edge:     ; preds = %qlcnic_dcb_prio_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %qlcnic_dcb_prio_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw i32 1, %indvars.iv
  %14 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pfc_en, align 1
  %16 = trunc i32 %shl to i8
  %conv14 = or i8 %15, %16
  store i8 %conv14, ptr %pfc_en, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %qlcnic_dcb_prio_count.exit.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %max_pfc_tc = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %3, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %max_pfc_tc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_pfc_tc, align 4
  %tcs_supported = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 3
  %19 = ptrtoint ptr %tcs_supported to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tcs_supported, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %setting) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_dcb_data_cee_param_map(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  %new_app.i.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 55
  %pdev.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = getelementptr inbounds %struct.dcb_app, ptr %new_app.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %new_app.i.i, i32 0, i32 2
  %netdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %qlcnic_dcb_map_cee_params.exit.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %qlcnic_dcb_map_cee_params.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr [3 x %struct.qlcnic_dcb_param], ptr %5, i32 0, i32 %i.04
  %cfg2.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %cfg2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg2.i, align 4
  %arrayidx6.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04
  %tc_param_valid.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 3
  %8 = ptrtoint ptr %tc_param_valid.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tc_param_valid.i, align 4
  %pfc_mode_enable.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 4
  %9 = ptrtoint ptr %pfc_mode_enable.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pfc_mode_enable.i, align 1
  %pg_cfg.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1
  %10 = call ptr @memset(ptr %arrayidx6.i, i32 0, i32 640)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i.i.i, align 8
  %device1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %device1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %16)
  %cmp.i.i.i = icmp eq i16 %16, -32736
  %17 = trunc i32 %12 to i8
  %18 = select i1 %cmp.i.i.i, i8 32, i8 2
  %19 = and i8 %18, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.lhs.true.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %max_pfc_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %7, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %max_pfc_tc.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_pfc_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not.i = icmp eq i8 %21, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %pfc_mode_enable.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pfc_mode_enable.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i.i.i, align 8
  %device1.i.i46.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %device1.i.i46.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device1.i.i46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %28)
  %cmp.i.i47.i = icmp eq i16 %28, -32736
  %29 = trunc i32 %24 to i8
  %30 = lshr i8 %29, 4
  %retval.0.in.i48.i = select i1 %cmp.i.i47.i, i8 %30, i8 %29
  %retval.0.i49.i = and i8 %retval.0.in.i48.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i49.i)
  %tobool16.not.i = icmp eq i8 %retval.0.i49.i, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end23.i_crit_edge, label %land.lhs.true17.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

land.lhs.true17.i:                                ; preds = %if.end.i
  %max_ets_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %7, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %max_ets_tc.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_ets_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not.i = icmp eq i8 %32, 0
  br i1 %tobool20.not.i, label %land.lhs.true17.i.if.end23.i_crit_edge, label %if.then21.i

land.lhs.true17.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then21.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %tc_param_valid.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %tc_param_valid.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %land.lhs.true17.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  %prio_tc_map.i.i = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, ptr %5, i32 0, i32 1
  %arrayidx8.i.i = getelementptr [2 x i32], ptr %arrayidx.i, i32 0, i32 1
  %prio_pg_map.i.i = getelementptr [3 x %struct.qlcnic_dcb_param], ptr %5, i32 0, i32 %i.04, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end38.i.i.for.body.i.i_crit_edge, %if.end23.i
  %indvars.iv.i.i = phi i32 [ 0, %if.end23.i ], [ %indvars.iv.next.i.i, %if.end38.i.i.for.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %prio_tc_map.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prio_tc_map.i.i, align 4
  %mul.i.i = mul nuw nsw i32 %indvars.iv.i.i, 3
  %shr.i.i = lshr i32 %35, %mul.i.i
  %conv3.i.i = and i32 %shr.i.i, 7
  %arrayidx.i.i = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx6.i, i32 0, i32 %conv3.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx.i.i, align 4
  %shl.i.i = shl nuw i32 1, %indvars.iv.i.i
  %up_tc_map.i.i = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx6.i, i32 0, i32 %conv3.i.i, i32 5
  %37 = ptrtoint ptr %up_tc_map.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %up_tc_map.i.i, align 2
  %39 = trunc i32 %shl.i.i to i8
  %conv7.i.i = or i8 %38, %39
  store i8 %conv7.i.i, ptr %up_tc_map.i.i, align 2
  %40 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx8.i.i, align 4
  %shr9.i.i = lshr i32 %41, 24
  %42 = and i32 %shr9.i.i, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %43 = ptrtoint ptr %pfc_mode_enable.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pfc_mode_enable.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool13.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx16.i.i = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx6.i, i32 0, i32 %conv3.i.i, i32 1, i32 %indvars.iv.i.i
  %45 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx16.i.i, align 4
  %pfc_type.i.i = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx6.i, i32 0, i32 %conv3.i.i, i32 1, i32 %indvars.iv.i.i, i32 1
  %46 = ptrtoint ptr %pfc_type.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %pfc_type.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.i.i)
  %cmp22.i.i = icmp ult i32 %indvars.iv.i.i, 4
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.end.i.i.if.end38.i.i_crit_edge

if.end.i.i.if.end38.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i

if.then24.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %prio_pg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prio_pg_map.i.i, align 4
  %mul27.i.i = shl nuw nsw i32 %indvars.iv.i.i, 3
  %shr28.i.i = lshr i32 %48, %mul27.i.i
  %conv30.i.i = trunc i32 %shr28.i.i to i8
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then24.i.i, %if.end.i.i.if.end38.i.i_crit_edge
  %pgid.0.i.i = phi i8 [ %conv30.i.i, %if.then24.i.i ], [ 0, %if.end.i.i.if.end38.i.i_crit_edge ]
  %pgid39.i.i = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx6.i, i32 0, i32 %conv3.i.i, i32 6
  %49 = ptrtoint ptr %pgid39.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %pgid.0.i.i, ptr %pgid39.i.i, align 1
  %prio_type.i.i = getelementptr [8 x %struct.qlcnic_dcb_tc_cfg], ptr %arrayidx6.i, i32 0, i32 %conv3.i.i, i32 2
  %50 = ptrtoint ptr %prio_type.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %prio_type.i.i, align 4
  %idxprom41.i.i = zext i8 %pgid.0.i.i to i32
  %prio_count.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 %idxprom41.i.i, i32 2
  %51 = ptrtoint ptr %prio_count.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %prio_count.i.i, align 2
  %inc.i.i = add i8 %52, 1
  store i8 %inc.i.i, ptr %prio_count.i.i, align 2
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 8
  br i1 %exitcond.not.i.i, label %qlcnic_dcb_fill_cee_tc_params.exit.i, label %if.end38.i.i.for.body.i.i_crit_edge

if.end38.i.i.for.body.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

qlcnic_dcb_fill_cee_tc_params.exit.i:             ; preds = %if.end38.i.i
  %pg_bw_map.i.i = getelementptr [3 x %struct.qlcnic_dcb_param], ptr %5, i32 0, i32 %i.04, i32 2
  %pg_tsa_map.i.i = getelementptr [3 x %struct.qlcnic_dcb_param], ptr %5, i32 0, i32 %i.04, i32 3
  %53 = ptrtoint ptr %pg_cfg.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %pg_cfg.i, align 1
  %54 = ptrtoint ptr %pg_bw_map.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pg_bw_map.i.i, align 4
  %conv8.i.i = trunc i32 %55 to i8
  %56 = ptrtoint ptr %pg_tsa_map.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pg_tsa_map.i.i, align 4
  %conv14.i.i = trunc i32 %57 to i8
  %total_bw_percent.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %total_bw_percent.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv8.i.i, ptr %total_bw_percent.i.i, align 1
  %tsa_type.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 0, i32 3
  %59 = ptrtoint ptr %tsa_type.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv14.i.i, ptr %tsa_type.i.i, align 1
  %arrayidx.1.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %arrayidx.1.i.i, align 1
  %61 = load i32, ptr %pg_bw_map.i.i, align 4
  %shr.1.i.i = lshr i32 %61, 8
  %conv8.1.i.i = trunc i32 %shr.1.i.i to i8
  %62 = load i32, ptr %pg_tsa_map.i.i, align 4
  %shr12.1.i.i = lshr i32 %62, 8
  %conv14.1.i.i = trunc i32 %shr12.1.i.i to i8
  %total_bw_percent.1.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 1, i32 1
  %63 = ptrtoint ptr %total_bw_percent.1.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv8.1.i.i, ptr %total_bw_percent.1.i.i, align 1
  %tsa_type.1.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 1, i32 3
  %64 = ptrtoint ptr %tsa_type.1.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv14.1.i.i, ptr %tsa_type.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 2
  %65 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %arrayidx.2.i.i, align 1
  %66 = load i32, ptr %pg_bw_map.i.i, align 4
  %shr.2.i.i = lshr i32 %66, 16
  %conv8.2.i.i = trunc i32 %shr.2.i.i to i8
  %67 = load i32, ptr %pg_tsa_map.i.i, align 4
  %shr12.2.i.i = lshr i32 %67, 16
  %conv14.2.i.i = trunc i32 %shr12.2.i.i to i8
  %total_bw_percent.2.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 2, i32 1
  %68 = ptrtoint ptr %total_bw_percent.2.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv8.2.i.i, ptr %total_bw_percent.2.i.i, align 1
  %tsa_type.2.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 2, i32 3
  %69 = ptrtoint ptr %tsa_type.2.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv14.2.i.i, ptr %tsa_type.2.i.i, align 1
  %arrayidx.3.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 3
  %70 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %arrayidx.3.i.i, align 1
  %71 = load i32, ptr %pg_bw_map.i.i, align 4
  %shr.3.i.i = lshr i32 %71, 24
  %conv8.3.i.i = trunc i32 %shr.3.i.i to i8
  %72 = load i32, ptr %pg_tsa_map.i.i, align 4
  %shr12.3.i.i = lshr i32 %72, 24
  %conv14.3.i.i = trunc i32 %shr12.3.i.i to i8
  %total_bw_percent.3.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 3, i32 1
  %73 = ptrtoint ptr %total_bw_percent.3.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv8.3.i.i, ptr %total_bw_percent.3.i.i, align 1
  %tsa_type.3.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 3, i32 3
  %74 = ptrtoint ptr %tsa_type.3.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv14.3.i.i, ptr %tsa_type.3.i.i, align 1
  %arrayidx.4.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 4
  %75 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %arrayidx.4.i.i, align 1
  %total_bw_percent.4.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 4, i32 1
  %76 = ptrtoint ptr %total_bw_percent.4.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %total_bw_percent.4.i.i, align 1
  %tsa_type.4.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 4, i32 3
  %77 = ptrtoint ptr %tsa_type.4.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %tsa_type.4.i.i, align 1
  %arrayidx.5.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 5
  %78 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %arrayidx.5.i.i, align 1
  %total_bw_percent.5.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 5, i32 1
  %79 = ptrtoint ptr %total_bw_percent.5.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %total_bw_percent.5.i.i, align 1
  %tsa_type.5.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 5, i32 3
  %80 = ptrtoint ptr %tsa_type.5.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %tsa_type.5.i.i, align 1
  %arrayidx.6.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 6
  %81 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %arrayidx.6.i.i, align 1
  %total_bw_percent.6.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 6, i32 1
  %82 = ptrtoint ptr %total_bw_percent.6.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %total_bw_percent.6.i.i, align 1
  %tsa_type.6.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 6, i32 3
  %83 = ptrtoint ptr %tsa_type.6.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %tsa_type.6.i.i, align 1
  %arrayidx.7.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 7
  %84 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %arrayidx.7.i.i, align 1
  %total_bw_percent.7.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 7, i32 1
  %85 = ptrtoint ptr %total_bw_percent.7.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %total_bw_percent.7.i.i, align 1
  %tsa_type.7.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 1, i32 7, i32 3
  %86 = ptrtoint ptr %tsa_type.7.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %tsa_type.7.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_app.i.i) #12
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i, align 4
  %89 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev.i.i.i, align 8
  %device1.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %device1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %device1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %92)
  %cmp.i.i.i.i = icmp eq i16 %92, -32736
  %shr.i.i.i = lshr i32 %88, 12
  %93 = trunc i32 %shr.i.i.i to i8
  %94 = trunc i32 %88 to i8
  %95 = lshr i8 %94, 2
  %retval.0.in.i.i.i = select i1 %cmp.i.i.i.i, i8 %93, i8 %95
  %retval.0.i.i.i = and i8 %retval.0.in.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i.i)
  %cmp59.not.i.i = icmp eq i8 %retval.0.i.i.i, 0
  br i1 %cmp59.not.i.i, label %qlcnic_dcb_fill_cee_tc_params.exit.i.qlcnic_dcb_map_cee_params.exit_crit_edge, label %for.body.lr.ph.i.i

qlcnic_dcb_fill_cee_tc_params.exit.i.qlcnic_dcb_map_cee_params.exit_crit_edge: ; preds = %qlcnic_dcb_fill_cee_tc_params.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_map_cee_params.exit

for.body.lr.ph.i.i:                               ; preds = %qlcnic_dcb_fill_cee_tc_params.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.04)
  %96 = icmp eq i32 %i.04, 1
  %wide.trip.count.i.i = zext i8 %retval.0.i.i.i to i32
  br label %for.body.i53.i

for.body.i53.i:                                   ; preds = %for.inc.i.i.for.body.i53.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i51.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i56.i, %for.inc.i.i.for.body.i53.i_crit_edge ]
  %arrayidx4.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 2, i32 %indvars.iv.i51.i
  %97 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %arrayidx4.i.i, align 4
  %arrayidx7.i.i = getelementptr [3 x %struct.qlcnic_dcb_param], ptr %5, i32 0, i32 %i.04, i32 4, i32 %indvars.iv.i51.i
  %98 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx7.i.i, align 4
  %and.i.i = and i32 %99, 255
  %sub.i.i = add nsw i32 %and.i.i, -1
  %selector.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 2, i32 %indvars.iv.i51.i, i32 1
  %100 = ptrtoint ptr %selector.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub.i.i, ptr %selector.i.i, align 4
  %conv9.i.i = trunc i32 %sub.i.i to i8
  %101 = ptrtoint ptr %new_app.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv9.i.i, ptr %new_app.i.i, align 2
  %102 = load i32, ptr %arrayidx7.i.i, align 4
  %shr.i52.i = lshr i32 %102, 8
  %conv15.i.i = trunc i32 %shr.i52.i to i16
  %protocol.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 2, i32 %indvars.iv.i51.i, i32 2
  %103 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv15.i.i, ptr %protocol.i.i, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv15.i.i, ptr %1, align 2
  %105 = load i32, ptr %arrayidx7.i.i, align 4
  %106 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i.i.i, align 8
  %device1.i.i54.i.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %device1.i.i54.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %device1.i.i54.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %109)
  %cmp.i.i55.i.i = icmp eq i16 %109, -32736
  %shl.i.i.i = shl nuw i32 1, %105
  %shr.i56.i.i = lshr i32 %105, 24
  %retval.0.in.i57.i.i = select i1 %cmp.i.i55.i.i, i32 %shl.i.i.i, i32 %shr.i56.i.i
  %and.i.i.i = and i32 %retval.0.in.i57.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %for.body.i53.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge

for.body.i53.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge: ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i53.i
  %and.1.i.i.i = and i32 %retval.0.in.i57.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge

for.inc.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %and.2.i.i.i = and i32 %retval.0.in.i57.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i.i)
  %tobool.not.2.i.i.i = icmp eq i32 %and.2.i.i.i, 0
  br i1 %tobool.not.2.i.i.i, label %for.inc.2.i.i.i, label %for.inc.1.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge

for.inc.1.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %and.3.i.i.i = and i32 %retval.0.in.i57.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i.i)
  %tobool.not.3.i.i.i = icmp eq i32 %and.3.i.i.i, 0
  br i1 %tobool.not.3.i.i.i, label %for.inc.3.i.i.i, label %for.inc.2.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge

for.inc.2.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge: ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %and.4.i.i.i = and i32 %retval.0.in.i57.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i.i)
  %tobool.not.4.i.i.i = icmp eq i32 %and.4.i.i.i, 0
  br i1 %tobool.not.4.i.i.i, label %for.inc.4.i.i.i, label %for.inc.3.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge

for.inc.3.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %and.5.i.i.i = and i32 %retval.0.in.i57.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i.i)
  %tobool.not.5.i.i.i = icmp eq i32 %and.5.i.i.i, 0
  br i1 %tobool.not.5.i.i.i, label %for.inc.5.i.i.i, label %for.inc.4.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge

for.inc.4.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge: ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %and.6.i.i.i = and i32 %retval.0.in.i57.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i.i)
  %tobool.not.6.i.i.i = icmp eq i32 %and.6.i.i.i, 0
  br i1 %tobool.not.6.i.i.i, label %for.inc.6.i.i.i, label %for.inc.5.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge

for.inc.5.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge: ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_prio_count.exit.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.7.i.i.i = and i32 %retval.0.in.i57.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i.i)
  %tobool.not.7.i.i.i = icmp eq i32 %and.7.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.7.i.i.i, i32 8, i32 7
  br label %qlcnic_dcb_prio_count.exit.i.i

qlcnic_dcb_prio_count.exit.i.i:                   ; preds = %for.inc.6.i.i.i, %for.inc.5.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge, %for.inc.4.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge, %for.inc.3.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge, %for.inc.2.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge, %for.inc.1.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge, %for.inc.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge, %for.body.i53.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge
  %j.0.lcssa.i.i.i = phi i32 [ 0, %for.body.i53.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge ], [ 1, %for.inc.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i.qlcnic_dcb_prio_count.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc.6.i.i.i ]
  %conv23.i.i = trunc i32 %j.0.lcssa.i.i.i to i8
  %conv24.i.i = and i32 %j.0.lcssa.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24.i.i)
  %cmp25.not.i.i = icmp eq i32 %conv24.i.i, 0
  %spec.store.select.i.i = select i1 %cmp25.not.i.i, i8 %conv23.i.i, i8 0
  %priority.i.i = getelementptr [3 x %struct.qlcnic_dcb_cee], ptr %7, i32 0, i32 %i.04, i32 2, i32 %indvars.iv.i51.i, i32 3
  %110 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %spec.store.select.i.i, ptr %priority.i.i, align 2
  %111 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %spec.store.select.i.i, ptr %0, align 1
  br i1 %96, label %land.lhs.true.i55.i, label %qlcnic_dcb_prio_count.exit.i.i.for.inc.i.i_crit_edge

qlcnic_dcb_prio_count.exit.i.i.for.inc.i.i_crit_edge: ; preds = %qlcnic_dcb_prio_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i55.i:                              ; preds = %qlcnic_dcb_prio_count.exit.i.i
  %112 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %netdev.i.i, align 4
  %dcbnl_ops.i.i = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 139
  %114 = ptrtoint ptr %dcbnl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dcbnl_ops.i.i, align 16
  %tobool.not.i54.i = icmp eq ptr %115, null
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.for.inc.i.i_crit_edge, label %if.then31.i.i

land.lhs.true.i55.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  %call33.i.i = call i32 @dcb_setapp(ptr noundef %113, ptr noundef nonnull %new_app.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then31.i.i, %land.lhs.true.i55.i.for.inc.i.i_crit_edge, %qlcnic_dcb_prio_count.exit.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i56.i = add nuw nsw i32 %indvars.iv.i51.i, 1
  %exitcond.not.i57.i = icmp eq i32 %indvars.iv.next.i56.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i57.i, label %for.inc.i.i.qlcnic_dcb_map_cee_params.exit_crit_edge, label %for.inc.i.i.for.body.i53.i_crit_edge

for.inc.i.i.for.body.i53.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i53.i

for.inc.i.i.qlcnic_dcb_map_cee_params.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_map_cee_params.exit

qlcnic_dcb_map_cee_params.exit:                   ; preds = %for.inc.i.i.qlcnic_dcb_map_cee_params.exit_crit_edge, %qlcnic_dcb_fill_cee_tc_params.exit.i.qlcnic_dcb_map_cee_params.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_app.i.i) #12
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %qlcnic_dcb_map_cee_params.exit.for.body_crit_edge

qlcnic_dcb_map_cee_params.exit.for.body_crit_edge: ; preds = %qlcnic_dcb_map_cee_params.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %qlcnic_dcb_map_cee_params.exit
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %netdev.i.i, align 4
  %call = call i32 @dcbnl_cee_notify(ptr noundef %117, i32 noundef 78, i32 noundef 26, i32 noundef 0, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcbnl_cee_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_setapp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_dcb_aen_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.qlcnic_dcb_get_cee_cfg.exit_crit_edge, label %land.lhs.true.i

entry.qlcnic_dcb_get_cee_cfg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_get_cee_cfg.exit

land.lhs.true.i:                                  ; preds = %entry
  %ops.i = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %get_cee_cfg.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %get_cee_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_cee_cfg.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.qlcnic_dcb_get_cee_cfg.exit_crit_edge, label %if.then.i

land.lhs.true.i.qlcnic_dcb_get_cee_cfg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_dcb_get_cee_cfg.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %3(ptr noundef nonnull %add.ptr) #12
  br label %qlcnic_dcb_get_cee_cfg.exit

qlcnic_dcb_get_cee_cfg.exit:                      ; preds = %if.then.i, %land.lhs.true.i.qlcnic_dcb_get_cee_cfg.exit_crit_edge, %entry.qlcnic_dcb_get_cee_cfg.exit_crit_edge
  %state = getelementptr i8, ptr %work, i32 112
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_dcb_get_hw_capability(ptr noundef %dcb) #0 align 64 {
entry:
  %mbx_out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 5
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %capability = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbx_out) #12
  %2 = ptrtoint ptr %mbx_out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mbx_out, align 4, !annotation !57
  %3 = call ptr @memset(ptr %capability, i32 0, i32 6)
  %tobool.not.i.i = icmp eq ptr %dcb, null
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %qlcnic_dcb_query_hw_capability.exit.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

qlcnic_dcb_query_hw_capability.exit.i:            ; preds = %land.lhs.true.i.i
  %call.i.i = call i32 %7(ptr noundef nonnull %dcb, ptr noundef nonnull %mbx_out) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %qlcnic_dcb_query_hw_capability.exit.i.if.end.i_crit_edge, label %qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge

qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge: ; preds = %qlcnic_dcb_query_hw_capability.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qlcnic_dcb_query_hw_capability.exit.i.if.end.i_crit_edge: ; preds = %qlcnic_dcb_query_hw_capability.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %qlcnic_dcb_query_hw_capability.exit.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %mbx_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbx_out, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %capability, align 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %11 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then6.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %ets_capability.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %ets_capability.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ets_capability.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end7.i_crit_edge
  %shr8.i = lshr i32 %9, 20
  %13 = trunc i32 %shr8.i to i8
  %conv.i = and i8 %13, 15
  %max_num_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %max_num_tc.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %max_num_tc.i, align 1
  %shr10.i = lshr i32 %9, 24
  %15 = trunc i32 %shr10.i to i8
  %conv12.i = and i8 %15, 15
  %max_ets_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %max_ets_tc.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12.i, ptr %max_ets_tc.i, align 1
  %shr13.i = lshr i32 %9, 28
  %conv15.i = trunc i32 %shr13.i to i8
  %max_pfc_tc.i = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %max_pfc_tc.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv15.i, ptr %max_pfc_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i)
  %cmp.i = icmp ugt i8 %conv.i, 8
  br i1 %cmp.i, label %if.end7.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end7.i.do.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %conv17.i = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %conv12.i, i8 %conv.i)
  %cmp23.i = icmp ugt i8 %conv12.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr13.i, i32 %conv17.i)
  %cmp30.i = icmp ugt i32 %shr13.i, %conv17.i
  %or.cond.i = select i1 %cmp23.i, i1 true, i1 %cmp30.i
  br i1 %or.cond.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end7.i.do.end.i_crit_edge
  %adapter.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %mbx_out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbx_out, align 4
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dcb_capability = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %dcb_capability to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %dcb_capability, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %and4 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end9_crit_edge, label %if.then6

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %dcb_capability7 = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %dcb_capability7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dcb_capability7, align 1
  %27 = or i8 %26, 8
  store i8 %27, ptr %dcb_capability7, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end3.if.end9_crit_edge
  %dcb_capability10 = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %dcb_capability10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dcb_capability10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not = icmp eq i8 %29, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %30 = or i8 %29, 2
  %31 = ptrtoint ptr %dcb_capability10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dcb_capability10, align 1
  %32 = ptrtoint ptr %capability to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %capability, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool21.not = icmp eq i8 %33, 0
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %land.lhs.true23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end17
  %ets_capability = getelementptr inbounds %struct.qlcnic_dcb_cfg, ptr %1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %ets_capability to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ets_capability, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24.not = icmp eq i8 %35, 0
  br i1 %tobool24.not, label %land.lhs.true23.cleanup_crit_edge, label %if.then26

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %state) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.i, %qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge
  %retval.0.i42 = phi i32 [ 0, %if.end17.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %if.then26 ], [ %call.i.i, %qlcnic_dcb_query_hw_capability.exit.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbx_out) #12
  ret i32 %retval.0.i42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_dcb_query_cee_param(ptr nocapture noundef readonly %dcb, ptr nocapture noundef writeonly %buf, i8 noundef zeroext %idx) #0 align 64 {
entry:
  %mbx_out.sroa.14 = alloca [164 x i8], align 4
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %mbx_out.sroa.14)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %3 = call ptr @memset(ptr %mbx_out.sroa.14, i32 0, i32 164)
  %4 = call ptr @memset(ptr %buf, i32 0, i32 196)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %10(ptr noundef nonnull %cmd, ptr noundef %1, i32 noundef 53) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %or = or i32 %14, 1073741824
  store i32 %or, ptr %12, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %hw_ops.i120 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %hw_ops.i120 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i120, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i121 = call i32 %20(ptr noundef %1, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool3.not = icmp eq i32 %call.i121, 0
  br i1 %tobool3.not, label %if.end5, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i126 = phi i32 [ %call.i121, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i126) #16
  br label %out

if.end5:                                          ; preds = %qlcnic_issue_cmd.exit
  %arg6 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arg6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg6, align 4
  %arrayidx7 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx7, align 4
  %mbx_out.sroa.14.160.prio_tc_map.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 160
  %27 = ptrtoint ptr %mbx_out.sroa.14.160.prio_tc_map.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mbx_out.sroa.14.160.prio_tc_map.sroa_idx, align 4
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %buf, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %arrayidx11 = getelementptr i32, ptr %24, i32 2
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11, align 4
  %arrayidx16 = getelementptr i32, ptr %24, i32 3
  %31 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx16, align 4
  %arrayidx22 = getelementptr i32, ptr %24, i32 4
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx22, align 4
  %arrayidx27 = getelementptr i32, ptr %24, i32 5
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx27, align 4
  %arrayidx33 = getelementptr i32, ptr %24, i32 6
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx33, align 4
  %arrayidx38 = getelementptr i32, ptr %24, i32 7
  %39 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx38, align 4
  %arrayidx44 = getelementptr i32, ptr %24, i32 8
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx44, align 4
  %arrayidx49 = getelementptr i32, ptr %24, i32 9
  %43 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx49, align 4
  %45 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %device1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %48)
  %cmp.i.i = icmp eq i16 %48, -32736
  %shr.i = lshr i32 %30, 12
  %49 = trunc i32 %shr.i to i8
  %50 = trunc i32 %30 to i8
  %51 = lshr i8 %50, 2
  %retval.0.in.i = select i1 %cmp.i.i, i8 %49, i8 %51
  %retval.0.i122 = and i8 %retval.0.in.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i122)
  %cmp56127.not = icmp eq i8 %retval.0.i122, 0
  br i1 %cmp56127.not, label %if.end5.for.end_crit_edge, label %for.body58.preheader

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body58.preheader:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep133 = getelementptr i8, ptr %24, i32 40
  %52 = shl nuw nsw i8 %retval.0.i122, 2
  %53 = zext i8 %52 to i32
  %54 = call ptr @memcpy(ptr %mbx_out.sroa.14, ptr %uglygep133, i32 %53)
  br label %for.end

for.end:                                          ; preds = %for.body58.preheader, %if.end5.for.end_crit_edge
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %30, ptr %add.ptr, align 1
  %mbx_out.sroa.7.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 8
  %56 = ptrtoint ptr %mbx_out.sroa.7.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %32, ptr %mbx_out.sroa.7.0.add.ptr.sroa_idx, align 1
  %mbx_out.sroa.8.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 12
  %57 = ptrtoint ptr %mbx_out.sroa.8.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %34, ptr %mbx_out.sroa.8.0.add.ptr.sroa_idx, align 1
  %mbx_out.sroa.9.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 16
  %58 = ptrtoint ptr %mbx_out.sroa.9.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %36, ptr %mbx_out.sroa.9.0.add.ptr.sroa_idx, align 1
  %mbx_out.sroa.10.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 20
  %59 = ptrtoint ptr %mbx_out.sroa.10.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %38, ptr %mbx_out.sroa.10.0.add.ptr.sroa_idx, align 1
  %mbx_out.sroa.11.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 24
  %60 = ptrtoint ptr %mbx_out.sroa.11.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %40, ptr %mbx_out.sroa.11.0.add.ptr.sroa_idx, align 1
  %mbx_out.sroa.12.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 28
  %61 = ptrtoint ptr %mbx_out.sroa.12.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %42, ptr %mbx_out.sroa.12.0.add.ptr.sroa_idx, align 1
  %mbx_out.sroa.13.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 32
  %62 = ptrtoint ptr %mbx_out.sroa.13.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %44, ptr %mbx_out.sroa.13.0.add.ptr.sroa_idx, align 1
  %mbx_out.sroa.14.0.add.ptr.sroa_idx = getelementptr i8, ptr %buf, i32 36
  %63 = call ptr @memcpy(ptr %mbx_out.sroa.14.0.add.ptr.sroa_idx, ptr %mbx_out.sroa.14, i32 32)
  %add.ptr66 = getelementptr i8, ptr %buf, i32 68
  %arrayidx11.1 = getelementptr i32, ptr %24, i32 18
  %64 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx11.1, align 4
  %mbx_out.sroa.14.32.arrayidx8.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 32
  %66 = ptrtoint ptr %mbx_out.sroa.14.32.arrayidx8.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %mbx_out.sroa.14.32.arrayidx8.1.sroa_idx, align 4
  %arrayidx16.1 = getelementptr i32, ptr %24, i32 19
  %67 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx16.1, align 4
  %mbx_out.sroa.14.36.arrayidx18.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 36
  %69 = ptrtoint ptr %mbx_out.sroa.14.36.arrayidx18.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %mbx_out.sroa.14.36.arrayidx18.1.sroa_idx, align 4
  %arrayidx22.1 = getelementptr i32, ptr %24, i32 20
  %70 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx22.1, align 4
  %mbx_out.sroa.14.40.prio_pg_map.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 40
  %72 = ptrtoint ptr %mbx_out.sroa.14.40.prio_pg_map.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %mbx_out.sroa.14.40.prio_pg_map.1.sroa_idx, align 4
  %arrayidx27.1 = getelementptr i32, ptr %24, i32 21
  %73 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx27.1, align 4
  %mbx_out.sroa.14.44.arrayidx29.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 44
  %75 = ptrtoint ptr %mbx_out.sroa.14.44.arrayidx29.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %mbx_out.sroa.14.44.arrayidx29.1.sroa_idx, align 4
  %arrayidx33.1 = getelementptr i32, ptr %24, i32 22
  %76 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx33.1, align 4
  %mbx_out.sroa.14.48.pg_bw_map.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 48
  %78 = ptrtoint ptr %mbx_out.sroa.14.48.pg_bw_map.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %mbx_out.sroa.14.48.pg_bw_map.1.sroa_idx, align 4
  %arrayidx38.1 = getelementptr i32, ptr %24, i32 23
  %79 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx38.1, align 4
  %mbx_out.sroa.14.52.arrayidx40.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 52
  %81 = ptrtoint ptr %mbx_out.sroa.14.52.arrayidx40.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %mbx_out.sroa.14.52.arrayidx40.1.sroa_idx, align 4
  %arrayidx44.1 = getelementptr i32, ptr %24, i32 24
  %82 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx44.1, align 4
  %mbx_out.sroa.14.56.pg_tsa_map.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 56
  %84 = ptrtoint ptr %mbx_out.sroa.14.56.pg_tsa_map.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %mbx_out.sroa.14.56.pg_tsa_map.1.sroa_idx, align 4
  %arrayidx49.1 = getelementptr i32, ptr %24, i32 25
  %85 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx49.1, align 4
  %mbx_out.sroa.14.60.arrayidx51.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 60
  %87 = ptrtoint ptr %mbx_out.sroa.14.60.arrayidx51.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %mbx_out.sroa.14.60.arrayidx51.1.sroa_idx, align 4
  %88 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i.1 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %device1.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %device1.i.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %91)
  %cmp.i.i.1 = icmp eq i16 %91, -32736
  %shr.i.1 = lshr i32 %65, 12
  %92 = trunc i32 %shr.i.1 to i8
  %93 = trunc i32 %65 to i8
  %94 = lshr i8 %93, 2
  %retval.0.in.i.1 = select i1 %cmp.i.i.1, i8 %92, i8 %94
  %retval.0.i122.1 = and i8 %retval.0.in.i.1, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i122.1)
  %cmp56127.not.1 = icmp eq i8 %retval.0.i122.1, 0
  br i1 %cmp56127.not.1, label %for.end.for.end.1_crit_edge, label %for.body58.preheader.1

for.end.for.end.1_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.1

for.body58.preheader.1:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep133.1 = getelementptr i8, ptr %24, i32 104
  %95 = shl nuw nsw i8 %retval.0.i122.1, 2
  %96 = zext i8 %95 to i32
  %mbx_out.sroa.14.64.uglygep.1.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 64
  %97 = call ptr @memcpy(ptr %mbx_out.sroa.14.64.uglygep.1.sroa_idx, ptr %uglygep133.1, i32 %96)
  br label %for.end.1

for.end.1:                                        ; preds = %for.body58.preheader.1, %for.end.for.end.1_crit_edge
  %98 = call ptr @memcpy(ptr %add.ptr66, ptr %mbx_out.sroa.14.32.arrayidx8.1.sroa_idx, i32 64)
  %add.ptr66.1 = getelementptr i8, ptr %buf, i32 132
  %arrayidx11.2 = getelementptr i32, ptr %24, i32 34
  %99 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx11.2, align 4
  %mbx_out.sroa.14.96.arrayidx8.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 96
  %101 = ptrtoint ptr %mbx_out.sroa.14.96.arrayidx8.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %mbx_out.sroa.14.96.arrayidx8.2.sroa_idx, align 4
  %arrayidx16.2 = getelementptr i32, ptr %24, i32 35
  %102 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx16.2, align 4
  %mbx_out.sroa.14.100.arrayidx18.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 100
  %104 = ptrtoint ptr %mbx_out.sroa.14.100.arrayidx18.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %mbx_out.sroa.14.100.arrayidx18.2.sroa_idx, align 4
  %arrayidx22.2 = getelementptr i32, ptr %24, i32 36
  %105 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx22.2, align 4
  %mbx_out.sroa.14.104.prio_pg_map.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 104
  %107 = ptrtoint ptr %mbx_out.sroa.14.104.prio_pg_map.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %mbx_out.sroa.14.104.prio_pg_map.2.sroa_idx, align 4
  %arrayidx27.2 = getelementptr i32, ptr %24, i32 37
  %108 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx27.2, align 4
  %mbx_out.sroa.14.108.arrayidx29.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 108
  %110 = ptrtoint ptr %mbx_out.sroa.14.108.arrayidx29.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %mbx_out.sroa.14.108.arrayidx29.2.sroa_idx, align 4
  %arrayidx33.2 = getelementptr i32, ptr %24, i32 38
  %111 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx33.2, align 4
  %mbx_out.sroa.14.112.pg_bw_map.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 112
  %113 = ptrtoint ptr %mbx_out.sroa.14.112.pg_bw_map.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %mbx_out.sroa.14.112.pg_bw_map.2.sroa_idx, align 4
  %arrayidx38.2 = getelementptr i32, ptr %24, i32 39
  %114 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx38.2, align 4
  %mbx_out.sroa.14.116.arrayidx40.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 116
  %116 = ptrtoint ptr %mbx_out.sroa.14.116.arrayidx40.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %mbx_out.sroa.14.116.arrayidx40.2.sroa_idx, align 4
  %arrayidx44.2 = getelementptr i32, ptr %24, i32 40
  %117 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx44.2, align 4
  %mbx_out.sroa.14.120.pg_tsa_map.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 120
  %119 = ptrtoint ptr %mbx_out.sroa.14.120.pg_tsa_map.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %mbx_out.sroa.14.120.pg_tsa_map.2.sroa_idx, align 4
  %arrayidx49.2 = getelementptr i32, ptr %24, i32 41
  %120 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx49.2, align 4
  %mbx_out.sroa.14.124.arrayidx51.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 124
  %122 = ptrtoint ptr %mbx_out.sroa.14.124.arrayidx51.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %mbx_out.sroa.14.124.arrayidx51.2.sroa_idx, align 4
  %123 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i.2 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %device1.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %device1.i.i.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %126)
  %cmp.i.i.2 = icmp eq i16 %126, -32736
  %shr.i.2 = lshr i32 %100, 12
  %127 = trunc i32 %shr.i.2 to i8
  %128 = trunc i32 %100 to i8
  %129 = lshr i8 %128, 2
  %retval.0.in.i.2 = select i1 %cmp.i.i.2, i8 %127, i8 %129
  %retval.0.i122.2 = and i8 %retval.0.in.i.2, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i122.2)
  %cmp56127.not.2 = icmp eq i8 %retval.0.i122.2, 0
  br i1 %cmp56127.not.2, label %for.end.1.for.end.2_crit_edge, label %for.body58.preheader.2

for.end.1.for.end.2_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.2

for.body58.preheader.2:                           ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep133.2 = getelementptr i8, ptr %24, i32 168
  %130 = shl nuw nsw i8 %retval.0.i122.2, 2
  %131 = zext i8 %130 to i32
  %mbx_out.sroa.14.128.uglygep.2.sroa_idx = getelementptr inbounds i8, ptr %mbx_out.sroa.14, i32 128
  %132 = call ptr @memcpy(ptr %mbx_out.sroa.14.128.uglygep.2.sroa_idx, ptr %uglygep133.2, i32 %131)
  br label %for.end.2

for.end.2:                                        ; preds = %for.body58.preheader.2, %for.end.1.for.end.2_crit_edge
  %133 = call ptr @memcpy(ptr %add.ptr66.1, ptr %mbx_out.sroa.14.96.arrayidx8.2.sroa_idx, i32 64)
  br label %out

out:                                              ; preds = %for.end.2, %do.end
  %retval.0.i125 = phi i32 [ %retval.0.i126, %do.end ], [ 0, %for.end.2 ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i125, %out ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %mbx_out.sroa.14)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_83xx_dcb_aen_handler(ptr noundef %dcb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #12
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #12
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %wq = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 3
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  %aen_work = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %aen_work, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_dcb_get_cee_cfg(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %tobool.not.i = icmp eq ptr %dcb, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %query_cee_param.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %query_cee_param.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %query_cee_param.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %qlcnic_dcb_query_cee_param.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

qlcnic_dcb_query_cee_param.exit:                  ; preds = %land.lhs.true.i
  %call.i = tail call i32 %5(ptr noundef nonnull %dcb, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %qlcnic_dcb_query_cee_param.exit.if.end_crit_edge, label %qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge

qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qlcnic_dcb_query_cee_param.exit.if.end_crit_edge: ; preds = %qlcnic_dcb_query_cee_param.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %qlcnic_dcb_query_cee_param.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %adapter = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  tail call fastcc void @qlcnic_dcb_data_cee_param_map(ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge
  %retval.0.i7 = phi i32 [ %call.i, %qlcnic_dcb_query_cee_param.exit.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @qlcnic_82xx_dcb_ops, !1, !"qlcnic_82xx_dcb_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 182, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 357, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__qlcnic_dcb_query_hw_capability._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @__qlcnic_dcb_query_hw_capability._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 396, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__qlcnic_dcb_get_capability._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @__qlcnic_dcb_get_capability._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 443, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qlcnic_82xx_dcb_query_cee_param._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @qlcnic_82xx_dcb_query_cee_param._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 464, i32 3}
!22 = !{ptr @qlcnic_82xx_dcb_query_cee_param._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @qlcnic_82xx_dcb_query_cee_param._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @qlcnic_dcbnl_ops, !25, !"qlcnic_dcbnl_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 1126, i32 36}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 994, i32 22}
!28 = !{ptr @__qlcnic_dcb_attach.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 311, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__qlcnic_dcb_attach.__key.14, !29, !"__key", i1 false, i1 false}
!32 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 313, i32 12}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 315, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__qlcnic_dcb_attach._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @__qlcnic_dcb_attach._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @qlcnic_83xx_dcb_ops, !42, !"qlcnic_83xx_dcb_ops", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 169, i32 36}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_dcb.c", i32 586, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qlcnic_83xx_dcb_query_cee_param._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qlcnic_83xx_dcb_query_cee_param._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
