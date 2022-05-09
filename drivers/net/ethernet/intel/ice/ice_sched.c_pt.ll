; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_sched.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ice_sched_node = type { ptr, ptr, ptr, %struct.ice_aqc_txsched_elem_data, i32, i16, i8, i8, i8, i8, i8 }
%struct.ice_aqc_txsched_elem_data = type { i32, i32, %struct.ice_aqc_txsched_elem }
%struct.ice_aqc_txsched_elem = type { i8, i8, i8, i8, %struct.ice_aqc_elem_info_bw, %struct.ice_aqc_elem_info_bw, i16, i16 }
%struct.ice_aqc_elem_info_bw = type { i16, i16 }
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.202 }
%union.anon.202 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
%struct.ice_aqc_sched_elem_cmd = type { i16, i16, i32, i32, i32 }
%struct.ice_port_info = type { ptr, ptr, i32, i16, i16, i8, i8, i16, i16, i16, i16, %struct.ice_fc_info, %struct.ice_mac_info, %struct.ice_phy_info, %struct.mutex, [8 x [9 x ptr]], [9 x %struct.list_head], %struct.ice_qos_cfg, i8 }
%struct.ice_fc_info = type { i32, i32 }
%struct.ice_mac_info = type { [6 x i8], [6 x i8] }
%struct.ice_phy_info = type { %struct.ice_link_status, %struct.ice_link_status, i64, i64, i32, i8, i16, i32, i32, %struct.ice_aqc_set_phy_cfg_data }
%struct.ice_link_status = type { i64, i64, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.ice_aqc_set_phy_cfg_data = type { i64, i64, i8, i8, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ice_qos_cfg = type { %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, i8 }
%struct.ice_dcbx_cfg = type { i32, i32, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_pfc_cfg, i8, [64 x %struct.ice_dcb_app_priority_table], [2 x i32], [64 x i8], i8, i8 }
%struct.ice_dcb_ets_cfg = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.ice_dcb_pfc_cfg = type { i8, i8, i8, i8 }
%struct.ice_dcb_app_priority_table = type { i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.204, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.204 = type { ptr }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_aqc_txsched_topo_grp_info_hdr = type { i32, i16, i16 }
%struct.ice_aqc_delete_elem = type { %struct.ice_aqc_txsched_topo_grp_info_hdr, [0 x i32] }
%struct.ice_aqc_get_topo = type { i8, i8, i16, i32, i32, i32 }
%struct.ice_aqc_get_topo_elem = type { %struct.ice_aqc_txsched_topo_grp_info_hdr, [9 x %struct.ice_aqc_txsched_elem_data] }
%struct.ice_aqc_generic_sched_props = type { i16, i16, i8, i8, i8, i8, i16, [22 x i8] }
%struct.ice_aqc_query_txsched_res_resp = type { %struct.ice_aqc_generic_sched_props, [9 x %struct.ice_aqc_layer_props] }
%struct.ice_aqc_layer_props = type { i8, i8, i16, i16, [4 x i8], i16, i16, i16, i16, [14 x i8] }
%struct.ice_vsi_ctx = type { i16, i16, i16, i16, %struct.ice_aqc_vsi_props, %struct.ice_sched_vsi_info, i8, i8, [8 x i16], [8 x ptr], [8 x i16], [8 x ptr] }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.ice_sched_vsi_info = type { [8 x ptr], [8 x ptr], %struct.list_head, [8 x i16], [8 x i16], [8 x %struct.ice_bw_type_info] }
%struct.ice_bw_type_info = type { [1 x i32], i8, %struct.ice_bw, %struct.ice_bw, i32 }
%struct.ice_bw = type { i32, i16 }
%struct.ice_sched_agg_vsi_info = type { %struct.list_head, [1 x i32], i16, [1 x i32] }
%struct.ice_sched_agg_info = type { %struct.list_head, %struct.list_head, [1 x i32], i32, i32, [8 x %struct.ice_bw_type_info], [1 x i32] }
%struct.ice_q_ctx = type { i16, i32, %struct.ice_bw_type_info }
%struct.ice_aqc_rl_profile_info = type { %struct.ice_aqc_rl_profile_elem, %struct.list_head, i32, i16 }
%struct.ice_aqc_rl_profile_elem = type { i8, i8, i16, i16, i16, i16, i16 }
%struct.ice_aqc_rl_profile = type { i16, i16, [4 x i8], i32, i32 }
%struct.ice_aqc_add_elem = type { %struct.ice_aqc_txsched_topo_grp_info_hdr, [0 x %struct.ice_aqc_txsched_elem_data] }
%struct.ice_aqc_txsched_move_grp_info_hdr = type { i32, i32, i16, i16 }
%struct.ice_aqc_move_elem = type { %struct.ice_aqc_txsched_move_grp_info_hdr, [0 x i32] }

@ice_sched_add_node.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_sched_add_node\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/ice/ice_sched.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Parent Node not found for parent_teid=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_sched_init_port.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_sched_init_port\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"num_branches unexpected %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_sched_init_port.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"num_elems unexpected %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_sched_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pi->sched_lock\00", [16 x i8] zeroinitializer }, align 32
@ice_sched_cfg_vsi.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_sched_cfg_vsi\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add/config VSI %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_sched_set_node_bw_lmt_per_tc.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 3, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ice_sched_set_node_bw_lmt_per_tc\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wrong id, agg type, or tc\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_sched_replay_agg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 4151, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Replay agg id[%d] failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_sched_replay_agg\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_sched_replay_agg._entry_ptr = internal global ptr @ice_sched_replay_agg._entry, section ".printk_index", align 4
@ice_sched_remove_elems.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_sched_remove_elems\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"remove node failed FW error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_sched_clear_rl_prof.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_sched_clear_rl_prof\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Remove rl profile failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_sched_suspend_resume_elems.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ice_sched_suspend_resume_elems\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"suspend/resume failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_sched_add_nodes_to_layer.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_sched_add_nodes_to_layer\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"added extra nodes %d %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_sched_add_elems.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_sched_add_elems\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"add node failed FW Error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_sched_add_elems.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"add nodes in SW DB failed status =%d\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_sched_add_elems.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Node is missing for teid =%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_sched_rm_vsi_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"removing VSI %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VSI has leaf nodes in TC %d\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_sched_set_q_bw_lmt.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 3, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_sched_set_q_bw_lmt\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Wrong q_teid\0A\00", [18 x i8] zeroinitializer }, align 32
@ice_sched_rm_unused_rl_prof.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 2, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ice_sched_rm_unused_rl_prof\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Removed rl profile\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_sched_update_elem.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 2, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_sched_update_elem\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Config sched elem error\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_sched_rm_rl_profile.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.21, i8 3, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_sched_rm_rl_profile\00", [40 x i8] zeroinitializer }, align 32
@switch.table.ice_sched_get_psm_clk_freq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 367647059, i32 416666667, i32 446428571, i32 390625000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 167, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1227, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1238, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1283, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1881, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 3898, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 4149, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 253, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 771, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 548, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1046, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 918, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 929, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 937, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2003, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2024, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 3748, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2836, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2874, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [46 x i8] c"../drivers/net/ethernet/intel/ice/ice_sched.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 3443, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant [40 x i8] c"switch.table.ice_sched_get_psm_clk_freq\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @ice_sched_replay_agg._entry, ptr @ice_sched_replay_agg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ice_sched_init_port.__key, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.ice_sched_get_psm_clk_freq], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_sched_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_sched_replay_agg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_sched_get_psm_clk_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ice_sched_find_node_by_teid(ptr noundef readonly %start_node, i32 noundef %teid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %start_node, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_teid, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %teid)
  %cmp = icmp eq i32 %2, %teid
  br i1 %cmp, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

if.end:                                           ; preds = %entry
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %start_node, i32 0, i32 8
  %3 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup40_crit_edge, label %lor.lhs.false

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

lor.lhs.false:                                    ; preds = %if.end
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %start_node, i32 0, i32 7
  %5 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx_sched_layer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp1 = icmp ugt i8 %6, 8
  br i1 %cmp1, label %lor.lhs.false.cleanup40_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.ice_sched_node, ptr %start_node, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp6 = icmp eq i8 %8, 5
  br i1 %cmp6, label %lor.lhs.false3.cleanup40_crit_edge, label %for.cond.preheader

lor.lhs.false3.cleanup40_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

for.cond.preheader:                               ; preds = %lor.lhs.false3
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %start_node, i32 0, i32 2
  %9 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %children, align 4
  %wide.trip.count = zext i8 %4 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond24.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond24.preheader:                             ; preds = %for.cond
  %11 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %children, align 4
  br label %for.body30

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %10, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %node_teid16 = getelementptr inbounds %struct.ice_sched_node, ptr %14, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %node_teid16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node_teid16, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %teid)
  %cmp17 = icmp eq i32 %17, %teid
  br i1 %cmp17, label %for.body.cleanup40_crit_edge, label %for.cond

for.body.cleanup40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

for.cond24:                                       ; preds = %for.body30
  %indvars.iv.next67 = add nuw nsw i32 %indvars.iv66, 1
  %exitcond69.not = icmp eq i32 %indvars.iv.next67, %wide.trip.count
  br i1 %exitcond69.not, label %for.cond24.cleanup40_crit_edge, label %for.cond24.for.body30_crit_edge

for.cond24.for.body30_crit_edge:                  ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

for.cond24.cleanup40_crit_edge:                   ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

for.body30:                                       ; preds = %for.cond24.for.body30_crit_edge, %for.cond24.preheader
  %indvars.iv66 = phi i32 [ 0, %for.cond24.preheader ], [ %indvars.iv.next67, %for.cond24.for.body30_crit_edge ]
  %arrayidx33 = getelementptr ptr, ptr %12, i32 %indvars.iv66
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx33, align 4
  %call = tail call ptr @ice_sched_find_node_by_teid(ptr noundef %19, i32 noundef %teid)
  %tobool34.not = icmp eq ptr %call, null
  br i1 %tobool34.not, label %for.cond24, label %for.body30.cleanup40_crit_edge

for.body30.cleanup40_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

cleanup40:                                        ; preds = %for.body30.cleanup40_crit_edge, %for.cond24.cleanup40_crit_edge, %for.body.cleanup40_crit_edge, %lor.lhs.false3.cleanup40_crit_edge, %lor.lhs.false.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi ptr [ %start_node, %entry.cleanup40_crit_edge ], [ null, %lor.lhs.false3.cleanup40_crit_edge ], [ null, %lor.lhs.false.cleanup40_crit_edge ], [ null, %if.end.cleanup40_crit_edge ], [ null, %for.cond24.cleanup40_crit_edge ], [ %call, %for.body30.cleanup40_crit_edge ], [ %14, %for.body.cleanup40_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_query_sched_elems(ptr noundef %hw, i16 noundef zeroext %elems_req, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef writeonly %elems_ret, ptr noundef %cd) local_unnamed_addr #3 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1028) #10
  %2 = call i16 @llvm.bswap.i16(i16 %elems_req) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc.i, align 4
  %6 = or i16 %5, 4
  store i16 %6, ptr %desc.i, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool3.not.i = icmp eq ptr %elems_ret, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.ice_aqc_send_sched_elem_cmd.exit_crit_edge, label %if.then.i

entry.ice_aqc_send_sched_elem_cmd.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_aqc_send_sched_elem_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num_elem_resp.i = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %0, i32 0, i32 1
  %7 = ptrtoint ptr %num_elem_resp.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_elem_resp.i, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %elems_ret to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %elems_ret, align 2
  br label %ice_aqc_send_sched_elem_cmd.exit

ice_aqc_send_sched_elem_cmd.exit:                 ; preds = %if.then.i, %entry.ice_aqc_send_sched_elem_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sched_add_node(ptr noundef readonly %pi, i8 noundef zeroext %layer, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %elem = alloca %struct.ice_aqc_txsched_elem_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %elem) #10
  %tobool.not = icmp eq ptr %pi, null
  %0 = call ptr @memset(ptr %elem, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %1 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw1, align 4
  %3 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi, align 8
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %call = tail call ptr @ice_sched_find_node_by_teid(ptr noundef %4, i32 noundef %7)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_add_node.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_add_node, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !92

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %2, i32 -2960
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_add_node.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %12) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %node_teid = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_teid, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %call13 = call i32 @ice_sched_query_elem(ptr noundef %2, i32 noundef %15, ptr noundef nonnull %elem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %add.ptr19 = getelementptr i8, ptr %2, i32 -2960
  %16 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr19, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev21, i32 noundef 48, i32 noundef 3520) #10
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %if.end16.cleanup_crit_edge, label %if.end25

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %idxprom = zext i8 %layer to i32
  %arrayidx = getelementptr %struct.ice_hw, ptr %2, i32 0, i32 20, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool26.not = icmp eq i16 %19, 0
  br i1 %tobool26.not, label %if.end25.if.end46_crit_edge, label %devm_kcalloc.exit

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

devm_kcalloc.exit:                                ; preds = %if.end25
  %conv = zext i16 %19 to i32
  %20 = mul nuw nsw i32 %conv, 48
  %21 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr19, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev32, i32 noundef %20, i32 noundef 3520) #10
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %children, align 4
  %tobool38.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool38.not, label %if.then39, label %devm_kcalloc.exit.if.end46_crit_edge

devm_kcalloc.exit.if.end46_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then39:                                        ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr19, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev44, ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end46:                                         ; preds = %devm_kcalloc.exit.if.end46_crit_edge, %if.end25.if.end46_crit_edge
  %in_use = getelementptr inbounds %struct.ice_sched_node, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %in_use, align 2
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %call.i, align 4
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %layer, ptr %tx_sched_layer, align 1
  %children48 = getelementptr inbounds %struct.ice_sched_node, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %children48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %children48, align 4
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %call, i32 0, i32 8
  %31 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_children, align 4
  %inc = add i8 %32, 1
  store i8 %inc, ptr %num_children, align 4
  %idxprom49 = zext i8 %32 to i32
  %arrayidx50 = getelementptr ptr, ptr %30, i32 %idxprom49
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %arrayidx50, align 4
  %info51 = getelementptr inbounds %struct.ice_sched_node, ptr %call.i, i32 0, i32 3
  %34 = call ptr @memcpy(ptr %info51, ptr %elem, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then39, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -12, %if.then39 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then8 ], [ %call13, %if.end12.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %elem) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_query_elem(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ice_sched_get_tc_node(ptr noundef readonly %pi, i8 noundef zeroext %tc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp23.not = icmp eq i8 %3, 0
  br i1 %cmp23.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %children, align 4
  %wide.trip.count = zext i8 %3 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tc_num = getelementptr inbounds %struct.ice_sched_node, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %tc_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tc_num, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %tc)
  %cmp8 = icmp eq i8 %9, %tc
  br i1 %cmp8, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %7, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_free_sched_node(ptr nocapture noundef %pi, ptr noundef %node) local_unnamed_addr #3 align 64 {
entry:
  %teid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 8
  %2 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not145 = icmp eq i8 %3, 0
  br i1 %tobool.not145, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %children, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @ice_free_sched_node(ptr noundef %pi, ptr noundef %7)
  %8 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_children, align 4
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 7
  %10 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_sched_layer, align 1
  %sw_entry_point_layer = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %sw_entry_point_layer to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sw_entry_point_layer, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.not = icmp ult i8 %11, %13
  br i1 %cmp.not, label %while.end.if.end_crit_edge, label %land.lhs.true

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %while.end
  %data = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.then [
    i8 2, label %land.lhs.true.if.end_crit_edge
    i8 1, label %land.lhs.true.if.end_crit_edge167
    i8 5, label %land.lhs.true.if.end_crit_edge168
  ]

land.lhs.true.if.end_crit_edge168:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge167:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %teid) #10
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node_teid, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %teid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %teid, align 4
  %21 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node, align 4
  %23 = call fastcc i32 @ice_sched_remove_elems(ptr noundef %1, ptr noundef %22, ptr noundef nonnull %teid)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %teid) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge167, %land.lhs.true.if.end_crit_edge168, %while.end.if.end_crit_edge
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.end.if.end86_crit_edge, label %for.cond.preheader

if.end.if.end86_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

for.cond.preheader:                               ; preds = %if.end
  %num_children27 = getelementptr inbounds %struct.ice_sched_node, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %num_children27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_children27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp29146.not = icmp eq i8 %27, 0
  br i1 %cmp29146.not, label %for.cond.preheader.for.end55_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end55_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end55

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children31 = getelementptr inbounds %struct.ice_sched_node, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %children31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %children31, align 4
  %wide.trip.count = zext i8 %27 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc53.for.body_crit_edge ]
  %arrayidx32 = getelementptr ptr, ptr %29, i32 %indvars.iv
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx32, align 4
  %cmp33 = icmp eq ptr %31, %node
  br i1 %cmp33, label %for.cond38.preheader, label %for.inc53

for.cond38.preheader:                             ; preds = %for.body
  %32 = trunc i32 %indvars.iv to i8
  %j.0148 = add i8 %32, 1
  %33 = ptrtoint ptr %num_children27 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_children27, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %j.0148, i8 %34)
  %cmp42149 = icmp ult i8 %j.0148, %34
  br i1 %cmp42149, label %for.cond38.preheader.for.body44_crit_edge, label %for.cond38.preheader.for.end_crit_edge

for.cond38.preheader.for.end_crit_edge:           ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond38.preheader.for.body44_crit_edge:        ; preds = %for.cond38.preheader
  br label %for.body44

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.cond38.preheader.for.body44_crit_edge
  %indvars.iv154.in = phi i32 [ %indvars.iv154, %for.body44.for.body44_crit_edge ], [ %indvars.iv, %for.cond38.preheader.for.body44_crit_edge ]
  %j.0150 = phi i8 [ %j.0, %for.body44.for.body44_crit_edge ], [ %j.0148, %for.cond38.preheader.for.body44_crit_edge ]
  %indvars.iv154 = add nuw nsw i32 %indvars.iv154.in, 1
  %35 = ptrtoint ptr %children31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %children31, align 4
  %arrayidx47 = getelementptr ptr, ptr %36, i32 %indvars.iv154
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx47, align 4
  %arrayidx50 = getelementptr ptr, ptr %36, i32 %indvars.iv154.in
  %39 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %arrayidx50, align 4
  %j.0 = add nuw i8 %j.0150, 1
  %40 = ptrtoint ptr %num_children27 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_children27, align 4
  %cmp42 = icmp ult i8 %j.0, %41
  br i1 %cmp42, label %for.body44.for.body44_crit_edge, label %for.body44.for.end_crit_edge

for.body44.for.end_crit_edge:                     ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44

for.end:                                          ; preds = %for.body44.for.end_crit_edge, %for.cond38.preheader.for.end_crit_edge
  %.lcssa = phi i8 [ %34, %for.cond38.preheader.for.end_crit_edge ], [ %41, %for.body44.for.end_crit_edge ]
  %dec = add i8 %.lcssa, -1
  %42 = ptrtoint ptr %num_children27 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %dec, ptr %num_children27, align 4
  br label %for.end55

for.inc53:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc53.for.end55_crit_edge, label %for.inc53.for.body_crit_edge

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc53.for.end55_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end55

for.end55:                                        ; preds = %for.inc53.for.end55_crit_edge, %for.end, %for.cond.preheader.for.end55_crit_edge
  %43 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_sched_layer, align 1
  %tc_num.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 9
  %45 = ptrtoint ptr %tc_num.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tc_num.i, align 1
  %idxprom.i = zext i8 %46 to i32
  %idxprom1.i = zext i8 %44 to i32
  %arrayidx2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i, i32 %idxprom1.i
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx2.i, align 4
  br label %while.cond58

while.cond58:                                     ; preds = %while.body60.while.cond58_crit_edge, %for.end55
  %p.0 = phi ptr [ %48, %for.end55 ], [ %50, %while.body60.while.cond58_crit_edge ]
  %tobool59.not = icmp eq ptr %p.0, null
  br i1 %tobool59.not, label %while.cond58.while.end68_crit_edge, label %while.body60

while.cond58.while.end68_crit_edge:               ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end68

while.body60:                                     ; preds = %while.cond58
  %sibling = getelementptr inbounds %struct.ice_sched_node, ptr %p.0, i32 0, i32 1
  %49 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sibling, align 4
  %cmp61 = icmp eq ptr %50, %node
  br i1 %cmp61, label %if.then63, label %while.body60.while.cond58_crit_edge

while.body60.while.cond58_crit_edge:              ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond58

if.then63:                                        ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #12
  %sibling.le = getelementptr inbounds %struct.ice_sched_node, ptr %p.0, i32 0, i32 1
  %sibling64 = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 1
  %51 = ptrtoint ptr %sibling64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sibling64, align 4
  %53 = ptrtoint ptr %sibling.le to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %sibling.le, align 4
  br label %while.end68

while.end68:                                      ; preds = %if.then63, %while.cond58.while.end68_crit_edge
  %54 = ptrtoint ptr %tc_num.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tc_num.i, align 1
  %idxprom69 = zext i8 %55 to i32
  %56 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tx_sched_layer, align 1
  %idxprom72 = zext i8 %57 to i32
  %arrayidx73 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom69, i32 %idxprom72
  %58 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx73, align 4
  %cmp74 = icmp eq ptr %59, %node
  br i1 %cmp74, label %if.then76, label %while.end68.if.end86_crit_edge

while.end68.if.end86_crit_edge:                   ; preds = %while.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then76:                                        ; preds = %while.end68
  call void @__sanitizer_cov_trace_pc() #12
  %sibling77 = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 1
  %60 = ptrtoint ptr %sibling77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sibling77, align 4
  %62 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %arrayidx73, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then76, %while.end68.if.end86_crit_edge, %if.end.if.end86_crit_edge
  %children87 = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 2
  %63 = ptrtoint ptr %children87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %children87, align 4
  %tobool88.not = icmp eq ptr %64, null
  br i1 %tobool88.not, label %if.end86.if.end91_crit_edge, label %if.then89

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %1, i32 -2960
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %64) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86.if.end91_crit_edge
  %add.ptr94 = getelementptr i8, ptr %1, i32 -2960
  %67 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr94, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev96, ptr noundef %node) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_remove_elems(ptr noundef %hw, ptr nocapture noundef readonly %parent, ptr nocapture noundef readonly %node_teids) unnamed_addr #3 align 64 {
entry:
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %parent, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_teid, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %num_elems = getelementptr inbounds %struct.ice_aqc_txsched_topo_grp_info_hdr, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %num_elems to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %num_elems, align 4
  %6 = ptrtoint ptr %node_teids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_teids, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %teid = getelementptr inbounds %struct.ice_aqc_delete_elem, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %teid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %teid, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %10 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %11 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 1039) #10
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %10, align 4
  %13 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %desc.i.i, align 4
  %15 = or i16 %14, 4
  store i16 %15, ptr %desc.i.i, align 4
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef nonnull %call.i, i16 noundef zeroext 12, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i.not, label %lor.lhs.false, label %ice_aq_delete_sched_elems.exit

ice_aq_delete_sched_elems.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %num_elem_resp.i.i = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %num_elem_resp.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_elem_resp.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %17)
  %cmp13.not = icmp eq i16 %17, 256
  br i1 %cmp13.not, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %ice_aq_delete_sched_elems.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_remove_elems.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_remove_elems, %if.then21)) #10
          to label %if.end28 [label %if.then21], !srcloc !92

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %20 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sq_last_status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_remove_elems.__UNIQUE_ID_ddebug614, ptr noundef %dev26, ptr noundef nonnull @.str.19, i32 noundef %21) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %do.body, %lor.lhs.false.if.end28_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev33, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_sched_clear_agg(ptr noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %agg_list = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 21
  %0 = ptrtoint ptr %agg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agg_list, align 4
  %cmp.not69 = icmp eq ptr %1, %agg_list
  br i1 %cmp.not69, label %entry.for.end43_crit_edge, label %for.body.lr.ph

entry.for.end43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr25 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %list_del.exit63.for.body_crit_edge, %for.body.lr.ph
  %.pn.in70 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn73, %list_del.exit63.for.body_crit_edge ]
  %agg_info.072 = getelementptr i8, ptr %.pn.in70, i32 -8
  %2 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn73 = load ptr, ptr %.pn.in70, align 4
  %3 = ptrtoint ptr %agg_info.072 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %agg_info.072, align 4
  %cmp19.not64 = icmp eq ptr %4, %agg_info.072
  br i1 %cmp19.not64, label %for.body.for.end_crit_edge, label %for.body.for.body21_crit_edge

for.body.for.body21_crit_edge:                    ; preds = %for.body
  br label %for.body21

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body21:                                       ; preds = %list_del.exit.for.body21_crit_edge, %for.body.for.body21_crit_edge
  %agg_vsi_info.065 = phi ptr [ %vtmp.0, %list_del.exit.for.body21_crit_edge ], [ %4, %for.body.for.body21_crit_edge ]
  %5 = ptrtoint ptr %agg_vsi_info.065 to i32
  call void @__asan_load4_noabort(i32 %5)
  %vtmp.0 = load ptr, ptr %agg_vsi_info.065, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %agg_vsi_info.065) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body21.list_del.exit_crit_edge

for.body21.list_del.exit_crit_edge:               ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %agg_vsi_info.065, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %agg_vsi_info.065 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %agg_vsi_info.065, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body21.list_del.exit_crit_edge
  %12 = ptrtoint ptr %agg_vsi_info.065 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %agg_vsi_info.065, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %agg_vsi_info.065, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr25, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %agg_vsi_info.065) #10
  %cmp19.not = icmp eq ptr %vtmp.0, %agg_info.072
  br i1 %cmp19.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body21_crit_edge

list_del.exit.for.body21_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %call.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in70) #10
  br i1 %call.i.i58, label %if.end.i.i61, label %for.end.list_del.exit63_crit_edge

for.end.list_del.exit63_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit63

if.end.i.i61:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i59 = getelementptr inbounds %struct.list_head, ptr %.pn.in70, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i59, align 4
  %18 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in70, align 4
  %prev1.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i60, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit63

list_del.exit63:                                  ; preds = %if.end.i.i61, %for.end.list_del.exit63_crit_edge
  %22 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in70, align 4
  %prev.i62 = getelementptr inbounds %struct.list_head, ptr %.pn.in70, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i62, align 4
  %24 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr25, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev36, ptr noundef %agg_info.072) #10
  %cmp.not = icmp eq ptr %.pn73, %agg_list
  br i1 %cmp.not, label %list_del.exit63.for.end43_crit_edge, label %list_del.exit63.for.body_crit_edge

list_del.exit63.for.body_crit_edge:               ; preds = %list_del.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit63.for.end43_crit_edge:              ; preds = %list_del.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43

for.end43:                                        ; preds = %list_del.exit63.for.end43_crit_edge, %entry.for.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_sched_clear_port(ptr noundef %pi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %port_state = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end.i, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %port_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %port_state, align 8
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  tail call fastcc void @ice_sched_clear_rl_prof(ptr noundef nonnull %pi) #10
  %3 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.end.i.ice_sched_clear_tx_topo.exit_crit_edge, label %if.then2.i

if.end.i.ice_sched_clear_tx_topo.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_clear_tx_topo.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_free_sched_node(ptr noundef nonnull %pi, ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pi, align 8
  br label %ice_sched_clear_tx_topo.exit

ice_sched_clear_tx_topo.exit:                     ; preds = %if.then2.i, %if.end.i.ice_sched_clear_tx_topo.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  tail call void @mutex_destroy(ptr noundef %sched_lock) #10
  br label %return

return:                                           ; preds = %ice_sched_clear_tx_topo.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_sched_cleanup_all(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %layer_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %layer_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layer_info, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %layer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %layer_info, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_info, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end5.ice_sched_clear_port.exit_crit_edge, label %lor.lhs.false.i

if.end5.ice_sched_clear_port.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_clear_port.exit

lor.lhs.false.i:                                  ; preds = %if.end5
  %port_state.i = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 1
  br i1 %cmp.not.i, label %if.end.i.i, label %lor.lhs.false.i.ice_sched_clear_port.exit_crit_edge

lor.lhs.false.i.ice_sched_clear_port.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_clear_port.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %port_state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %port_state.i, align 8
  %sched_lock.i = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock.i, i32 noundef 0) #10
  tail call fastcc void @ice_sched_clear_rl_prof(ptr noundef nonnull %6) #10
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 8
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.ice_sched_clear_tx_topo.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.ice_sched_clear_tx_topo.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_clear_tx_topo.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_free_sched_node(ptr noundef nonnull %6, ptr noundef nonnull %11) #10
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %6, align 8
  br label %ice_sched_clear_tx_topo.exit.i

ice_sched_clear_tx_topo.exit.i:                   ; preds = %if.then2.i.i, %if.end.i.i.ice_sched_clear_tx_topo.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sched_lock.i) #10
  tail call void @mutex_destroy(ptr noundef %sched_lock.i) #10
  br label %ice_sched_clear_port.exit

ice_sched_clear_port.exit:                        ; preds = %ice_sched_clear_tx_topo.exit.i, %lor.lhs.false.i.ice_sched_clear_port.exit_crit_edge, %if.end5.ice_sched_clear_port.exit_crit_edge
  %num_tx_sched_layers = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 15
  %13 = ptrtoint ptr %num_tx_sched_layers to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %num_tx_sched_layers, align 2
  br label %return

return:                                           ; preds = %ice_sched_clear_port.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sched_init_port(ptr noundef %pi) local_unnamed_addr #3 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4096, i32 noundef 3520) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 6
  %4 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lport, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %6 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %7 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1024) #10
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %6, align 4
  %call.i217 = call i32 @ice_aq_send_cmd(ptr noundef %1, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 4096, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not.i.not = icmp eq i32 %call.i217, 0
  br i1 %tobool.not.i.not, label %if.end8, label %ice_aq_get_dflt_topo.exit

ice_aq_get_dflt_topo.exit:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %land.lhs.true143

if.end8:                                          ; preds = %if.end4
  %num_branches2.i = getelementptr inbounds %struct.ice_aqc_get_topo, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %num_branches2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_branches2.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %11 = add i8 %10, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %11)
  %12 = icmp ult i8 %11, -8
  br i1 %12, label %do.body, label %if.end27

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_init_port.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_init_port, %if.then19)) #10
          to label %land.lhs.true143 [label %if.then19], !srcloc !92

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conv25 = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_init_port.__UNIQUE_ID_ddebug621, ptr noundef %dev24, ptr noundef nonnull @.str.5, i32 noundef %conv25) #10
  br label %land.lhs.true143

if.end27:                                         ; preds = %if.end8
  %num_elems28 = getelementptr inbounds %struct.ice_aqc_txsched_topo_grp_info_hdr, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %num_elems28 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_elems28, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv29 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp30 = icmp eq i16 %16, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %17)
  %cmp34 = icmp ugt i16 %17, 9
  %or.cond213 = select i1 %cmp30, i1 true, i1 %cmp34
  br i1 %or.cond213, label %do.body37, label %if.end59

do.body37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_init_port.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_init_port, %if.then49)) #10
          to label %land.lhs.true143 [label %if.then49], !srcloc !92

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_init_port.__UNIQUE_ID_ddebug622, ptr noundef %dev54, ptr noundef nonnull @.str.6, i32 noundef %conv29) #10
  br label %land.lhs.true143

if.end59:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp61 = icmp ugt i16 %17, 2
  %sub = add nsw i32 %conv29, -1
  br i1 %cmp61, label %land.lhs.true, label %if.end59.if.end.i_crit_edge

if.end59.if.end.i_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr %struct.ice_aqc_get_topo_elem, ptr %call.i, i32 0, i32 1, i32 %sub, i32 2
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp67 = icmp eq i8 %21, 5
  %sub73 = add nsw i32 %conv29, -2
  %spec.select = select i1 %cmp67, i32 %sub73, i32 %sub
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true, %if.end59.if.end.i_crit_edge
  %sub73.sink = phi i32 [ %sub, %if.end59.if.end.i_crit_edge ], [ %spec.select, %land.lhs.true ]
  %node_teid = getelementptr %struct.ice_aqc_get_topo_elem, ptr %call.i, i32 0, i32 1, i32 %sub73.sink, i32 1
  %22 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_teid, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %last_node_teid = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 2
  %25 = ptrtoint ptr %last_node_teid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_node_teid, align 8
  %generic84 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 -2960
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 48, i32 noundef 3520) #10
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.land.lhs.true143_crit_edge, label %devm_kcalloc.exit.i

if.end.i.land.lhs.true143_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true143

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %max_children.i = getelementptr inbounds %struct.ice_hw, ptr %27, i32 0, i32 20
  %30 = ptrtoint ptr %max_children.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_children.i, align 8
  %conv.i = zext i16 %31 to i32
  %32 = mul nuw nsw i32 %conv.i, 48
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev9.i, i32 noundef %32, i32 noundef 3520) #10
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %call.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i.i, ptr %children.i, align 4
  %tobool12.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %for.body.lr.ph

if.then13.i:                                      ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev18.i, ptr noundef nonnull %call.i.i) #10
  br label %land.lhs.true143

for.body.lr.ph:                                   ; preds = %devm_kcalloc.exit.i
  %info20.i = getelementptr inbounds %struct.ice_sched_node, ptr %call.i.i, i32 0, i32 3
  %38 = call ptr @memcpy(ptr %info20.i, ptr %generic84, i32 24)
  %39 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %pi, align 8
  %sw_entry_point_layer = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 19
  %wide.trip.count = zext i8 %10 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc123.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc123.for.body_crit_edge ]
  %num_elems96 = getelementptr %struct.ice_aqc_get_topo_elem, ptr %call.i, i32 %indvars.iv, i32 0, i32 1
  %40 = ptrtoint ptr %num_elems96 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_elems96, align 4
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %42)
  %cmp100236 = icmp ugt i16 %42, 1
  br i1 %cmp100236, label %for.body.for.body102_crit_edge, label %for.body.for.inc123_crit_edge

for.body.for.inc123_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123

for.body.for.body102_crit_edge:                   ; preds = %for.body
  br label %for.body102

for.cond97:                                       ; preds = %if.end113
  %inc = add i8 %j.0237, 1
  %conv98 = zext i8 %inc to i32
  %43 = zext i8 %inc to i16
  %cmp100 = icmp ugt i16 %42, %43
  br i1 %cmp100, label %for.cond97.for.body102_crit_edge, label %for.cond97.for.inc123_crit_edge

for.cond97.for.inc123_crit_edge:                  ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123

for.cond97.for.body102_crit_edge:                 ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body102

for.body102:                                      ; preds = %for.cond97.for.body102_crit_edge, %for.body.for.body102_crit_edge
  %conv98238 = phi i32 [ %conv98, %for.cond97.for.body102_crit_edge ], [ 1, %for.body.for.body102_crit_edge ]
  %j.0237 = phi i8 [ %inc, %for.cond97.for.body102_crit_edge ], [ 1, %for.body.for.body102_crit_edge ]
  %data107 = getelementptr %struct.ice_aqc_get_topo_elem, ptr %call.i, i32 0, i32 1, i32 %conv98238, i32 2
  %44 = ptrtoint ptr %data107 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data107, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %45)
  %cmp110 = icmp eq i8 %45, 4
  br i1 %cmp110, label %if.then112, label %for.body102.if.end113_crit_edge

for.body102.if.end113_crit_edge:                  ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then112:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %sw_entry_point_layer to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %j.0237, ptr %sw_entry_point_layer, align 2
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %for.body102.if.end113_crit_edge
  %arrayidx118 = getelementptr %struct.ice_aqc_get_topo_elem, ptr %call.i, i32 %indvars.iv, i32 1, i32 %conv98238
  %call119 = call i32 @ice_sched_add_node(ptr noundef nonnull %pi, i8 noundef zeroext %j.0237, ptr noundef %arrayidx118)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %for.cond97, label %if.end113.land.lhs.true143_crit_edge

if.end113.land.lhs.true143_crit_edge:             ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true143

for.inc123:                                       ; preds = %for.cond97.for.inc123_crit_edge, %for.body.for.inc123_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end125, label %for.inc123.for.body_crit_edge

for.inc123.for.body_crit_edge:                    ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end125:                                       ; preds = %for.inc123
  %47 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pi, align 8
  %tobool126.not = icmp eq ptr %48, null
  br i1 %tobool126.not, label %for.end125.if.end128_crit_edge, label %if.then127

for.end125.if.end128_crit_edge:                   ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then127:                                       ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ice_sched_rm_dflt_nodes(ptr noundef nonnull %pi)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %for.end125.if.end128_crit_edge
  %port_state = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 5
  %49 = ptrtoint ptr %port_state to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %port_state, align 8
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  call void @__mutex_init(ptr noundef %sched_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ice_sched_init_port.__key) #10
  %arrayidx138 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 0
  %50 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx138, ptr %arrayidx138, align 4
  %prev.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx138, ptr %prev.i, align 4
  %arrayidx138.1 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 1
  %52 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %arrayidx138.1, ptr %arrayidx138.1, align 4
  %prev.i.1 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx138.1, ptr %prev.i.1, align 4
  %arrayidx138.2 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 2
  %54 = ptrtoint ptr %arrayidx138.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %arrayidx138.2, ptr %arrayidx138.2, align 4
  %prev.i.2 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 2, i32 1
  %55 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx138.2, ptr %prev.i.2, align 4
  %arrayidx138.3 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 3
  %56 = ptrtoint ptr %arrayidx138.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx138.3, ptr %arrayidx138.3, align 4
  %prev.i.3 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 3, i32 1
  %57 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx138.3, ptr %prev.i.3, align 4
  %arrayidx138.4 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 4
  %58 = ptrtoint ptr %arrayidx138.4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx138.4, ptr %arrayidx138.4, align 4
  %prev.i.4 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx138.4, ptr %prev.i.4, align 4
  %arrayidx138.5 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 5
  %60 = ptrtoint ptr %arrayidx138.5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %arrayidx138.5, ptr %arrayidx138.5, align 4
  %prev.i.5 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 5, i32 1
  %61 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx138.5, ptr %prev.i.5, align 4
  %arrayidx138.6 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 6
  %62 = ptrtoint ptr %arrayidx138.6 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %arrayidx138.6, ptr %arrayidx138.6, align 4
  %prev.i.6 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 6, i32 1
  %63 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx138.6, ptr %prev.i.6, align 4
  %arrayidx138.7 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 7
  %64 = ptrtoint ptr %arrayidx138.7 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx138.7, ptr %arrayidx138.7, align 4
  %prev.i.7 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 7, i32 1
  %65 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx138.7, ptr %prev.i.7, align 4
  %arrayidx138.8 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 8
  %66 = ptrtoint ptr %arrayidx138.8 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx138.8, ptr %arrayidx138.8, align 4
  %prev.i.8 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 8, i32 1
  %67 = ptrtoint ptr %prev.i.8 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx138.8, ptr %prev.i.8, align 4
  br label %if.end149

land.lhs.true143:                                 ; preds = %if.end113.land.lhs.true143_crit_edge, %if.then13.i, %if.end.i.land.lhs.true143_crit_edge, %if.then49, %do.body37, %if.then19, %do.body, %ice_aq_get_dflt_topo.exit
  %status.2231 = phi i32 [ -22, %do.body ], [ -22, %do.body37 ], [ -22, %if.then49 ], [ -22, %if.then19 ], [ %call.i217, %ice_aq_get_dflt_topo.exit ], [ -12, %if.then13.i ], [ -12, %if.end.i.land.lhs.true143_crit_edge ], [ %call119, %if.end113.land.lhs.true143_crit_edge ]
  %68 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pi, align 8
  %tobool145.not = icmp eq ptr %69, null
  br i1 %tobool145.not, label %land.lhs.true143.if.end149_crit_edge, label %if.then146

land.lhs.true143.if.end149_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then146:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  call void @ice_free_sched_node(ptr noundef nonnull %pi, ptr noundef nonnull %69)
  %70 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %pi, align 8
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %land.lhs.true143.if.end149_crit_edge, %if.end128
  %status.2232 = phi i32 [ %status.2231, %if.then146 ], [ %status.2231, %land.lhs.true143.if.end149_crit_edge ], [ 0, %if.end128 ]
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 8
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev154, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2232, %if.end149 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_sched_rm_dflt_nodes(ptr nocapture noundef %pi) unnamed_addr #3 align 64 {
entry:
  %teid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.020.i = load ptr, ptr %pi, align 4
  %tobool.not21.i = icmp eq ptr %node.020.i, null
  br i1 %tobool.not21.i, label %entry.while.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.022.i = phi ptr [ %node.0.i, %if.end.i.while.body.i_crit_edge ], [ %node.020.i, %entry.while.body.i_crit_edge ]
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.022.i, i32 0, i32 8
  %1 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_children.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not.i = icmp eq i8 %2, 0
  br i1 %tobool1.not.i, label %land.lhs.true.critedge.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.022.i, i32 0, i32 2
  %3 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %children.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end.i.ice_rm_dflt_leaf_node.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.ice_rm_dflt_leaf_node.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_rm_dflt_leaf_node.exit

land.lhs.true.critedge.i:                         ; preds = %while.body.i
  %data.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.022.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp.i = icmp eq i8 %7, 5
  br i1 %cmp.i, label %if.then4.i, label %land.lhs.true.critedge.i.ice_rm_dflt_leaf_node.exit_crit_edge

land.lhs.true.critedge.i.ice_rm_dflt_leaf_node.exit_crit_edge: ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_rm_dflt_leaf_node.exit

if.then4.i:                                       ; preds = %land.lhs.true.critedge.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %teid.i) #10
  %node_teid.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.022.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %node_teid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_teid.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  %11 = ptrtoint ptr %teid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %teid.i, align 4
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %14 = ptrtoint ptr %node.022.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node.022.i, align 4
  %call.i = call fastcc i32 @ice_sched_remove_elems(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %teid.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then4.i.if.end8.i_crit_edge

if.then4.i.if.end8.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_free_sched_node(ptr noundef %pi, ptr noundef nonnull %node.022.i) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.then4.i.if.end8.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %teid.i) #10
  br label %ice_rm_dflt_leaf_node.exit

ice_rm_dflt_leaf_node.exit:                       ; preds = %if.end8.i, %land.lhs.true.critedge.i.ice_rm_dflt_leaf_node.exit_crit_edge, %if.end.i.ice_rm_dflt_leaf_node.exit_crit_edge
  %16 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.027.pr = load ptr, ptr %pi, align 4
  %tobool.not28 = icmp eq ptr %node.027.pr, null
  br i1 %tobool.not28, label %ice_rm_dflt_leaf_node.exit.while.end_crit_edge, label %while.body.lr.ph

ice_rm_dflt_leaf_node.exit.while.end_crit_edge:   ; preds = %ice_rm_dflt_leaf_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %ice_rm_dflt_leaf_node.exit
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %sw_entry_point_layer = getelementptr inbounds %struct.ice_hw, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %sw_entry_point_layer to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sw_entry_point_layer, align 2
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %node.029 = phi ptr [ %node.027.pr, %while.body.lr.ph ], [ %node.0, %if.end15.while.body_crit_edge ]
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %node.029, i32 0, i32 7
  %21 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_sched_layer, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %20)
  %cmp.not = icmp ult i8 %22, %20
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %data = getelementptr inbounds %struct.ice_sched_node, ptr %node.029, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 4
  %.off = add i8 %24, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_free_sched_node(ptr noundef %pi, ptr noundef nonnull %node.029)
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %node.029, i32 0, i32 8
  %25 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not = icmp eq i8 %26, 0
  br i1 %tobool13.not, label %if.end.while.end_crit_edge, label %if.end15

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end15:                                         ; preds = %if.end
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %node.029, i32 0, i32 2
  %27 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %children, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.0 = load ptr, ptr %28, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %if.end.while.end_crit_edge, %if.then, %ice_rm_dflt_leaf_node.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sched_query_res_alloc(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %layer_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %layer_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layer_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 320, i32 noundef 3520) #10
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %4 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1042) #10
  %call.i66 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 320, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool5.not = icmp eq i32 %call.i66, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.sched_query_out_crit_edge

if.end3.sched_query_out_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sched_query_out

if.end7:                                          ; preds = %if.end3
  %logical_levels = getelementptr inbounds %struct.ice_aqc_generic_sched_props, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %logical_levels to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %logical_levels, align 2
  %7 = lshr i16 %6, 8
  %conv = trunc i16 %7 to i8
  %num_tx_sched_layers = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 15
  %8 = ptrtoint ptr %num_tx_sched_layers to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %num_tx_sched_layers, align 2
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call.i, align 2
  %11 = lshr i16 %10, 8
  %conv9 = trunc i16 %11 to i8
  %num_tx_sched_phys_layers = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 16
  %12 = ptrtoint ptr %num_tx_sched_phys_layers to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %num_tx_sched_phys_layers, align 1
  %flattening_bitmap = getelementptr inbounds %struct.ice_aqc_generic_sched_props, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %flattening_bitmap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flattening_bitmap, align 2
  %flattened_layers = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 17
  %15 = ptrtoint ptr %flattened_layers to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %flattened_layers, align 4
  %max_pf_cgds = getelementptr inbounds %struct.ice_aqc_generic_sched_props, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %max_pf_cgds to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_pf_cgds, align 2
  %max_cgds = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 18
  %18 = ptrtoint ptr %max_cgds to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %max_cgds, align 1
  %conv14 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %6)
  %cmp67 = icmp ugt i16 %6, 511
  br i1 %cmp67, label %for.body.preheader, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end7
  %19 = call i32 @llvm.smax.i32(i32 %conv14, i32 2)
  %20 = add nsw i32 %19, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %indvars.iv, 1
  %max_sibl_grp_sz = getelementptr %struct.ice_aqc_query_txsched_res_resp, ptr %call.i, i32 0, i32 1, i32 %add, i32 5
  %21 = ptrtoint ptr %max_sibl_grp_sz to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_sibl_grp_sz, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %arrayidx17 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 20, i32 %indvars.iv
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx17, align 2
  %exitcond.not = icmp eq i32 %indvars.iv, %20
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %layer_props23 = getelementptr inbounds %struct.ice_aqc_query_txsched_res_resp, ptr %call.i, i32 0, i32 1
  %mul = shl nuw nsw i32 %conv14, 5
  %call26 = call ptr @devm_kmemdup(ptr noundef %dev22, ptr noundef %layer_props23, i32 noundef %mul, i32 noundef 3264) #10
  %27 = ptrtoint ptr %layer_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call26, ptr %layer_info, align 8
  %tobool29.not = icmp eq ptr %call26, null
  %spec.select = select i1 %tobool29.not, i32 -12, i32 0
  br label %sched_query_out

sched_query_out:                                  ; preds = %for.end, %if.end3.sched_query_out_crit_edge
  %status.0 = phi i32 [ %call.i66, %if.end3.sched_query_out_crit_edge ], [ %spec.select, %for.end ]
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev36, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %sched_query_out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %sched_query_out ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_sched_get_psm_clk_freq(ptr nocapture noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 754284
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !93
  %3 = lshr i32 %2, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and = and i32 %3, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ice_sched_get_psm_clk_freq, i32 0, i32 %and
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %psm_clk_freq7 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %psm_clk_freq7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.load, ptr %psm_clk_freq7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ice_sched_get_free_qparent(ptr nocapture noundef readonly %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i8 noundef zeroext %owner) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %num_tx_sched_layers.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %num_tx_sched_layers.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tx_sched_layers.i, align 2
  %sub.i = add i8 %3, -2
  %idxprom = zext i8 %sub.i to i32
  %arrayidx = getelementptr %struct.ice_hw, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %call4 = tail call ptr @ice_get_vsi_ctx(ptr noundef %1, i16 noundef zeroext %vsi_handle) #10
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sched = getelementptr inbounds %struct.ice_vsi_ctx, ptr %call4, i32 0, i32 5
  %idxprom6 = zext i8 %tc to i32
  %arrayidx7 = getelementptr [8 x ptr], ptr %sched, i32 0, i32 %idxprom6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %tc_num.i = getelementptr inbounds %struct.ice_sched_node, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %tc_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tc_num.i, align 1
  %idxprom.i = zext i8 %9 to i32
  %arrayidx2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %qgrp_node.049 = load ptr, ptr %arrayidx2.i, align 4
  %tobool12.not50 = icmp eq ptr %qgrp_node.049, null
  br i1 %tobool12.not50, label %if.end10.cleanup_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  br label %while.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %if.end10.while.body_crit_edge
  %qgrp_node.051 = phi ptr [ %qgrp_node.0, %if.end25.while.body_crit_edge ], [ %qgrp_node.049, %if.end10.while.body_crit_edge ]
  %call14 = tail call fastcc zeroext i1 @ice_sched_find_node_in_subtree(ptr noundef nonnull %7, ptr noundef nonnull %qgrp_node.051)
  br i1 %call14, label %if.then15, label %while.body.if.end25_crit_edge

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then15:                                        ; preds = %while.body
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %qgrp_node.051, i32 0, i32 8
  %11 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_children, align 4
  %13 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %13)
  %cmp = icmp ugt i16 %5, %13
  br i1 %cmp, label %land.lhs.true, label %if.then15.if.end25_crit_edge

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then15
  %owner18 = getelementptr inbounds %struct.ice_sched_node, ptr %qgrp_node.051, i32 0, i32 10
  %14 = ptrtoint ptr %owner18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %owner18, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %owner)
  %cmp21 = icmp eq i8 %15, %owner
  br i1 %cmp21, label %if.end.i, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.then15.if.end25_crit_edge, %while.body.if.end25_crit_edge
  %sibling = getelementptr inbounds %struct.ice_sched_node, ptr %qgrp_node.051, i32 0, i32 1
  %16 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %16)
  %qgrp_node.0 = load ptr, ptr %sibling, align 4
  %tobool12.not = icmp eq ptr %qgrp_node.0, null
  br i1 %tobool12.not, label %if.end25.cleanup_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %num_children.le = getelementptr inbounds %struct.ice_sched_node, ptr %qgrp_node.051, i32 0, i32 8
  %17 = ptrtoint ptr %num_children.le to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_children.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %min_children.040.i = phi i8 [ %min_children.1.i, %if.end20.i.while.body.i_crit_edge ], [ %18, %if.end.i.while.body.i_crit_edge ]
  %min_qgrp.039.i = phi ptr [ %min_qgrp.1.i, %if.end20.i.while.body.i_crit_edge ], [ %qgrp_node.051, %if.end.i.while.body.i_crit_edge ]
  %qgrp_node.addr.037.i = phi ptr [ %24, %if.end20.i.while.body.i_crit_edge ], [ %qgrp_node.051, %if.end.i.while.body.i_crit_edge ]
  %call.i = tail call fastcc zeroext i1 @ice_sched_find_node_in_subtree(ptr noundef nonnull %7, ptr noundef nonnull %qgrp_node.addr.037.i) #10
  br i1 %call.i, label %if.then5.i, label %while.body.i.if.end20.i_crit_edge

while.body.i.if.end20.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then5.i:                                       ; preds = %while.body.i
  %num_children6.i = getelementptr inbounds %struct.ice_sched_node, ptr %qgrp_node.addr.037.i, i32 0, i32 8
  %19 = ptrtoint ptr %num_children6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_children6.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %min_children.040.i)
  %cmp.i = icmp ult i8 %20, %min_children.040.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then5.i.if.end20.i_crit_edge

if.then5.i.if.end20.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.then5.i
  %owner9.i = getelementptr inbounds %struct.ice_sched_node, ptr %qgrp_node.addr.037.i, i32 0, i32 10
  %21 = ptrtoint ptr %owner9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %owner9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %owner)
  %cmp12.i = icmp eq i8 %22, %owner
  br i1 %cmp12.i, label %if.then14.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not.i = icmp eq i8 %20, 0
  br i1 %tobool16.not.i, label %if.then14.i.cleanup_crit_edge, label %if.then14.i.if.end20.i_crit_edge

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %if.then5.i.if.end20.i_crit_edge, %while.body.i.if.end20.i_crit_edge
  %min_qgrp.1.i = phi ptr [ %qgrp_node.addr.037.i, %if.then14.i.if.end20.i_crit_edge ], [ %min_qgrp.039.i, %land.lhs.true.i.if.end20.i_crit_edge ], [ %min_qgrp.039.i, %if.then5.i.if.end20.i_crit_edge ], [ %min_qgrp.039.i, %while.body.i.if.end20.i_crit_edge ]
  %min_children.1.i = phi i8 [ %20, %if.then14.i.if.end20.i_crit_edge ], [ %min_children.040.i, %land.lhs.true.i.if.end20.i_crit_edge ], [ %min_children.040.i, %if.then5.i.if.end20.i_crit_edge ], [ %min_children.040.i, %while.body.i.if.end20.i_crit_edge ]
  %sibling.i = getelementptr inbounds %struct.ice_sched_node, ptr %qgrp_node.addr.037.i, i32 0, i32 1
  %23 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sibling.i, align 4
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %if.end20.i.cleanup_crit_edge, label %if.end20.i.while.body.i_crit_edge

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i.cleanup_crit_edge, %if.then14.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %qgrp_node.051, %if.end.i.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ], [ %min_qgrp.1.i, %if.end20.i.cleanup_crit_edge ], [ %qgrp_node.addr.037.i, %if.then14.i.cleanup_crit_edge ], [ null, %if.end25.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_get_vsi_ctx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ice_sched_find_node_in_subtree(ptr nocapture noundef readonly %base, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %base, i32 0, i32 8
  %0 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4.not = icmp eq i8 %1, 0
  br i1 %cmp4.not, label %entry.cleanup14_crit_edge, label %for.body.lr.ph

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

for.body.lr.ph:                                   ; preds = %entry
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %base, i32 0, i32 2
  %2 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %children, align 4
  %tx_sched_layer6 = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 7
  %wide.trip.count = zext i8 %1 to i32
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup14_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup14_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %5, %node
  br i1 %cmp3, label %for.body.cleanup14_crit_edge, label %if.end

for.body.cleanup14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end:                                           ; preds = %for.body
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_sched_layer, align 1
  %8 = ptrtoint ptr %tx_sched_layer6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_sched_layer6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp8 = icmp ugt i8 %7, %9
  br i1 %cmp8, label %if.end.cleanup14_crit_edge, label %cleanup

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

cleanup:                                          ; preds = %if.end
  %call = tail call fastcc zeroext i1 @ice_sched_find_node_in_subtree(ptr noundef %5, ptr noundef %node)
  br i1 %call, label %cleanup.cleanup14_crit_edge, label %for.cond

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %for.body.cleanup14_crit_edge, %for.cond.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.2 = phi i1 [ false, %entry.cleanup14_crit_edge ], [ false, %if.end.cleanup14_crit_edge ], [ true, %for.body.cleanup14_crit_edge ], [ false, %for.cond.cleanup14_crit_edge ], [ true, %cleanup.cleanup14_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sched_cfg_vsi(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %maxqs, i8 noundef zeroext %owner, i1 noundef zeroext %enable) local_unnamed_addr #3 align 64 {
entry:
  %first_node_teid.i.i141 = alloca i32, align 4
  %num_added.i.i142 = alloca i16, align 2
  %new_num_nodes.i = alloca [9 x i16], align 2
  %first_node_teid.i.i = alloca i32, align 4
  %num_added.i.i = alloca i16, align 2
  %num_nodes.i = alloca [9 x i16], align 2
  %teid = alloca i32, align 4
  %teid55 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_cfg_vsi.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_cfg_vsi, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -2960
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv = zext i16 %vsi_handle to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_cfg_vsi.__UNIQUE_ID_ddebug624, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool.not.i = icmp eq ptr %pi, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %lor.lhs.false.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %do.end
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_children.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp23.not.i = icmp eq i8 %9, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %children.i, align 4
  %wide.trip.count.i = zext i8 %9 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %indvars.iv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tc_num.i = getelementptr inbounds %struct.ice_sched_node, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %tc_num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tc_num.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %tc)
  %cmp8.i = icmp eq i8 %15, %tc
  br i1 %cmp8.i, label %ice_sched_get_tc_node.exit, label %for.cond.i

ice_sched_get_tc_node.exit:                       ; preds = %for.body.i
  %tc_num.i.le = getelementptr inbounds %struct.ice_sched_node, ptr %13, i32 0, i32 9
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %ice_sched_get_tc_node.exit.cleanup_crit_edge, label %if.end10

ice_sched_get_tc_node.exit.cleanup_crit_edge:     ; preds = %ice_sched_get_tc_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %ice_sched_get_tc_node.exit
  %call11 = tail call ptr @ice_get_vsi_ctx(ptr noundef %1, i16 noundef zeroext %vsi_handle) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %num_tx_sched_layers.i.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %num_tx_sched_layers.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_tx_sched_layers.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp.i.i = icmp ugt i8 %19, 5
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end14.if.end10.i.i_crit_edge

if.end14.if.end10.i.i_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end14
  %sub.i.i = add i8 %19, -4
  %sw_entry_point_layer.i.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 19
  %20 = ptrtoint ptr %sw_entry_point_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sw_entry_point_layer.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i, i8 %21)
  %cmp7.not.i.i = icmp ugt i8 %sub.i.i, %21
  br i1 %cmp7.not.i.i, label %if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge, label %if.then.i.i.if.end10.i.i_crit_edge

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i

if.end10.i.i:                                     ; preds = %if.then.i.i.if.end10.i.i_crit_edge, %if.end14.if.end10.i.i_crit_edge
  %sw_entry_point_layer11.i.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 19
  %22 = ptrtoint ptr %sw_entry_point_layer11.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sw_entry_point_layer11.i.i, align 2
  br label %ice_sched_get_vsi_layer.exit.i

ice_sched_get_vsi_layer.exit.i:                   ; preds = %if.end10.i.i, %if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge
  %retval.1.i.i = phi i8 [ %sub.i.i, %if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge ], [ %23, %if.end10.i.i ]
  %24 = ptrtoint ptr %tc_num.i.le to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tc_num.i.le, align 1
  %idxprom.i.i = zext i8 %25 to i32
  %idxprom1.i.i = zext i8 %retval.1.i.i to i32
  %arrayidx2.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i, i32 %idxprom1.i.i
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %node.011.i = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not12.i = icmp eq ptr %node.011.i, null
  br i1 %tobool.not12.i, label %ice_sched_get_vsi_layer.exit.i.ice_sched_get_vsi_node.exit_crit_edge, label %ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge

ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i
  br label %while.body.i

ice_sched_get_vsi_layer.exit.i.ice_sched_get_vsi_node.exit_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_node.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge
  %node.013.i = phi ptr [ %node.0.i, %if.end.i.while.body.i_crit_edge ], [ %node.011.i, %ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge ]
  %vsi_handle2.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 5
  %27 = ptrtoint ptr %vsi_handle2.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vsi_handle2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %vsi_handle)
  %cmp.i = icmp eq i16 %28, %vsi_handle
  br i1 %cmp.i, label %while.body.i.ice_sched_get_vsi_node.exit_crit_edge, label %if.end.i

while.body.i.ice_sched_get_vsi_node.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_node.exit

if.end.i:                                         ; preds = %while.body.i
  %sibling.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 1
  %29 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.0.i = load ptr, ptr %sibling.i, align 4
  %tobool.not.i109 = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i109, label %if.end.i.ice_sched_get_vsi_node.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.ice_sched_get_vsi_node.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_node.exit

ice_sched_get_vsi_node.exit:                      ; preds = %if.end.i.ice_sched_get_vsi_node.exit_crit_edge, %while.body.i.ice_sched_get_vsi_node.exit_crit_edge, %ice_sched_get_vsi_layer.exit.i.ice_sched_get_vsi_node.exit_crit_edge
  %node.0.lcssa.i = phi ptr [ null, %ice_sched_get_vsi_layer.exit.i.ice_sched_get_vsi_node.exit_crit_edge ], [ %node.013.i, %while.body.i.ice_sched_get_vsi_node.exit_crit_edge ], [ null, %if.end.i.ice_sched_get_vsi_node.exit_crit_edge ]
  %tobool29.not = icmp eq ptr %node.0.lcssa.i, null
  br i1 %enable, label %if.end28, label %if.then17

if.then17:                                        ; preds = %ice_sched_get_vsi_node.exit
  br i1 %tobool29.not, label %if.then17.cleanup_crit_edge, label %land.lhs.true

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then17
  %in_use = getelementptr inbounds %struct.ice_sched_node, ptr %node.0.lcssa.i, i32 0, i32 6
  %30 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %in_use, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not = icmp eq i8 %31, 0
  br i1 %tobool20.not, label %land.lhs.true.cleanup_crit_edge, label %if.then21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %teid) #10
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %node.0.lcssa.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %node_teid, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %teid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %teid, align 4
  %call22 = call fastcc i32 @ice_sched_suspend_resume_elems(ptr noundef %1, ptr noundef nonnull %teid, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %in_use, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then21.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %teid) #10
  br label %cleanup

if.end28:                                         ; preds = %ice_sched_get_vsi_node.exit
  br i1 %tobool29.not, label %lor.lhs.false.i.i, label %if.end28.lor.lhs.false.i.i145_crit_edge

if.end28.lor.lhs.false.i.i145_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i145

lor.lhs.false.i.i:                                ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %num_nodes.i) #10
  %37 = call ptr @memset(ptr %num_nodes.i, i32 0, i32 18)
  %38 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pi, align 8
  %tobool1.not.i.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge, label %for.cond.preheader.i.i

lor.lhs.false.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_to_topo.exit.thread

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %num_children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_children.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp23.not.i.i = icmp eq i8 %41, 0
  br i1 %cmp23.not.i.i, label %for.cond.preheader.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_to_topo.exit.thread

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %children.i.i, align 4
  %wide.trip.count.i.i = zext i8 %41 to i32
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_to_topo.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %43, i32 %indvars.iv.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %tc_num.i.i110 = getelementptr inbounds %struct.ice_sched_node, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %tc_num.i.i110 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tc_num.i.i110, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %tc)
  %cmp8.i.i = icmp eq i8 %47, %tc
  br i1 %cmp8.i.i, label %ice_sched_get_tc_node.exit.i, label %for.cond.i.i

ice_sched_get_tc_node.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i111 = icmp eq ptr %45, null
  br i1 %tobool.not.i111, label %ice_sched_get_tc_node.exit.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge, label %if.end.i112

ice_sched_get_tc_node.exit.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge: ; preds = %ice_sched_get_tc_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_to_topo.exit.thread

if.end.i112:                                      ; preds = %ice_sched_get_tc_node.exit.i
  br i1 %cmp.i.i, label %if.then.i.i.i, label %if.end.i112.if.end10.i.i.i_crit_edge

if.end.i112.if.end10.i.i.i_crit_edge:             ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i112
  %sub.i.i.i = add i8 %19, -4
  %sw_entry_point_layer.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 19
  %48 = ptrtoint ptr %sw_entry_point_layer.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sw_entry_point_layer.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i.i, i8 %49)
  %cmp7.not.i.i.i = icmp ugt i8 %sub.i.i.i, %49
  br i1 %cmp7.not.i.i.i, label %if.then.i.i.i.ice_sched_get_vsi_layer.exit.i.i_crit_edge, label %if.then.i.i.i.if.end10.i.i.i_crit_edge

if.then.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i

if.then.i.i.i.ice_sched_get_vsi_layer.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i.i

if.end10.i.i.i:                                   ; preds = %if.then.i.i.i.if.end10.i.i.i_crit_edge, %if.end.i112.if.end10.i.i.i_crit_edge
  %sw_entry_point_layer11.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 19
  %50 = ptrtoint ptr %sw_entry_point_layer11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sw_entry_point_layer11.i.i.i, align 2
  br label %ice_sched_get_vsi_layer.exit.i.i

ice_sched_get_vsi_layer.exit.i.i:                 ; preds = %if.end10.i.i.i, %if.then.i.i.i.ice_sched_get_vsi_layer.exit.i.i_crit_edge
  %retval.1.i.i.i = phi i8 [ %sub.i.i.i, %if.then.i.i.i.ice_sched_get_vsi_layer.exit.i.i_crit_edge ], [ %51, %if.end10.i.i.i ]
  %conv.i.i = zext i8 %retval.1.i.i.i to i32
  %sw_entry_point_layer43.i.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 19
  %52 = ptrtoint ptr %sw_entry_point_layer43.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sw_entry_point_layer43.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.1.i.i.i, i8 %53)
  %cmp.not45.i.i = icmp ult i8 %retval.1.i.i.i, %53
  br i1 %cmp.not45.i.i, label %ice_sched_get_vsi_layer.exit.i.i.if.end.i.i_crit_edge, label %for.body.lr.ph.i9.i

ice_sched_get_vsi_layer.exit.i.i.if.end.i.i_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.lr.ph.i9.i:                              ; preds = %ice_sched_get_vsi_layer.exit.i.i
  %num_children.i8.i = getelementptr inbounds %struct.ice_sched_node, ptr %45, i32 0, i32 8
  %54 = ptrtoint ptr %num_children.i8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_children.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i10.i = icmp eq i8 %55, 0
  %conv2.i.i = zext i8 %53 to i32
  %idxprom.i.i.i = zext i8 %tc to i32
  br label %for.body.i11.i

for.body.i11.i:                                   ; preds = %for.inc.i.i.for.body.i11.i_crit_edge, %for.body.lr.ph.i9.i
  %i.046.i.i = phi i32 [ %conv.i.i, %for.body.lr.ph.i9.i ], [ %dec.i.i, %for.inc.i.i.for.body.i11.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.046.i.i, i32 %conv.i.i)
  %cmp5.i.i = icmp eq i32 %i.046.i.i, %conv.i.i
  %or.cond.i.i = select i1 %tobool.not.i10.i, i1 true, i1 %cmp5.i.i
  br i1 %or.cond.i.i, label %for.body.i11.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i11.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i11.i
  %idxprom1.i.i.i = and i32 %i.046.i.i, 255
  %arrayidx2.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i.i, i32 %idxprom1.i.i.i
  %56 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %node.040.i.i = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool9.not41.i.i = icmp eq ptr %node.040.i.i, null
  br i1 %tobool9.not41.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %while.body.lr.ph.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %arrayidx13.i.i = getelementptr %struct.ice_hw, ptr %17, i32 0, i32 20, i32 %i.046.i.i
  %57 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx13.i.i, align 2
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %sibling.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.042.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %sibling.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %node.0.i.i = load ptr, ptr %sibling.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool9.not.i.i, label %while.cond.i.i.for.inc.i.i_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.cond.i.i.for.inc.i.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %node.042.i.i = phi ptr [ %node.040.i.i, %while.body.lr.ph.i.i ], [ %node.0.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %num_children10.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.042.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %num_children10.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_children10.i.i, align 4
  %62 = zext i8 %61 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %62)
  %cmp15.i.i = icmp ugt i16 %58, %62
  br i1 %cmp15.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %while.cond.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.inc.i.i:                                      ; preds = %while.cond.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge, %for.body.i11.i.for.inc.i.i_crit_edge
  %arrayidx.i12.i = getelementptr i16, ptr %num_nodes.i, i32 %i.046.i.i
  %63 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i12.i, align 2
  %inc.i.i = add i16 %64, 1
  store i16 %inc.i.i, ptr %arrayidx.i12.i, align 2
  %dec.i.i = add nsw i32 %i.046.i.i, -1
  %cmp.not.i.not.i = icmp sgt i32 %i.046.i.i, %conv2.i.i
  br i1 %cmp.not.i.not.i, label %for.inc.i.i.for.body.i11.i_crit_edge, label %for.inc.i.i.if.end.i.i_crit_edge

for.inc.i.i.if.end.i.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.inc.i.i.for.body.i11.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i11.i

if.end.i.i:                                       ; preds = %for.inc.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge, %ice_sched_get_vsi_layer.exit.i.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_node_teid.i.i) #10
  %65 = ptrtoint ptr %first_node_teid.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %first_node_teid.i.i, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_added.i.i) #10
  %66 = ptrtoint ptr %num_added.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %num_added.i.i, align 2
  %sub.i.i17.i = add i8 %19, -4
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i17.i, i8 %53)
  %cmp7.not.i.i19.i = icmp ugt i8 %sub.i.i17.i, %53
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp7.not.i.i19.i, i1 false
  %retval.1.i.i23.i = select i1 %or.cond.i, i8 %sub.i.i17.i, i8 %53
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %retval.1.i.i23.i)
  %cmp.not49.i.i = icmp ugt i8 %53, %retval.1.i.i23.i
  br i1 %cmp.not49.i.i, label %if.end.i.i.if.end34_crit_edge, label %if.end.i.i.for.body.i28.i_crit_edge

if.end.i.i.for.body.i28.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i28.i

if.end.i.i.if.end34_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

for.body.i28.i:                                   ; preds = %for.inc.i34.i.for.body.i28.i_crit_edge, %if.end.i.i.for.body.i28.i_crit_edge
  %i.051.i.i = phi i8 [ %inc.i32.i, %for.inc.i34.i.for.body.i28.i_crit_edge ], [ %53, %if.end.i.i.for.body.i28.i_crit_edge ]
  %parent.050.i.i = phi ptr [ %parent.1.i.i, %for.inc.i34.i.for.body.i28.i_crit_edge ], [ %45, %if.end.i.i.for.body.i28.i_crit_edge ]
  %conv.i26.i = zext i8 %i.051.i.i to i32
  %arrayidx.i27.i = getelementptr i16, ptr %num_nodes.i, i32 %conv.i26.i
  %67 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i27.i, align 2
  %call4.i.i = call fastcc i32 @ice_sched_add_nodes_to_layer(ptr noundef nonnull %pi, ptr noundef nonnull %45, ptr noundef nonnull %parent.050.i.i, i8 noundef zeroext %i.051.i.i, i16 noundef zeroext %68, ptr noundef nonnull %first_node_teid.i.i, ptr noundef nonnull %num_added.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i29.i, label %for.body.i28.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge

for.body.i28.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge: ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_to_topo.exit.thread198

lor.lhs.false.i29.i:                              ; preds = %for.body.i28.i
  %69 = ptrtoint ptr %num_added.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_added.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp10.not.i.i = icmp eq i16 %68, %70
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %lor.lhs.false.i29.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge

lor.lhs.false.i29.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge: ; preds = %lor.lhs.false.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_to_topo.exit.thread198

if.end13.i.i:                                     ; preds = %lor.lhs.false.i29.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool14.not.i.i = icmp eq i16 %68, 0
  br i1 %tobool14.not.i.i, label %if.else.i31.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %first_node_teid.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %first_node_teid.i.i, align 4
  %call16.i.i = tail call ptr @ice_sched_find_node_by_teid(ptr noundef nonnull %45, i32 noundef %72) #10
  br label %if.end18.i.i

if.else.i31.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %children.i30.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.050.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %children.i30.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %children.i30.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else.i31.i, %if.then15.i.i
  %parent.1.i.i = phi ptr [ %call16.i.i, %if.then15.i.i ], [ %76, %if.else.i31.i ]
  %tobool19.not.i.i = icmp eq ptr %parent.1.i.i, null
  br i1 %tobool19.not.i.i, label %if.end18.i.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge, label %if.end21.i.i

if.end18.i.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_to_topo.exit.thread198

if.end21.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %i.051.i.i, i8 %retval.1.i.i23.i)
  %cmp24.i.i = icmp eq i8 %i.051.i.i, %retval.1.i.i23.i
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.end21.i.i.for.inc.i34.i_crit_edge

if.end21.i.i.for.inc.i34.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i34.i

if.then26.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %vsi_handle27.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.1.i.i, i32 0, i32 5
  %77 = ptrtoint ptr %vsi_handle27.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %vsi_handle, ptr %vsi_handle27.i.i, align 4
  br label %for.inc.i34.i

for.inc.i34.i:                                    ; preds = %if.then26.i.i, %if.end21.i.i.for.inc.i34.i_crit_edge
  %inc.i32.i = add i8 %i.051.i.i, 1
  %cmp.not.i33.i = icmp ugt i8 %inc.i32.i, %retval.1.i.i23.i
  br i1 %cmp.not.i33.i, label %for.inc.i34.i.if.end34_crit_edge, label %for.inc.i34.i.for.body.i28.i_crit_edge

for.inc.i34.i.for.body.i28.i_crit_edge:           ; preds = %for.inc.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i28.i

for.inc.i34.i.if.end34_crit_edge:                 ; preds = %for.inc.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

ice_sched_add_vsi_to_topo.exit.thread:            ; preds = %ice_sched_get_tc_node.exit.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge, %for.cond.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge, %for.cond.preheader.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge, %lor.lhs.false.i.i.ice_sched_add_vsi_to_topo.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %num_nodes.i) #10
  br label %cleanup

ice_sched_add_vsi_to_topo.exit.thread198:         ; preds = %if.end18.i.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge, %lor.lhs.false.i29.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge, %for.body.i28.i.ice_sched_add_vsi_to_topo.exit.thread198_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_added.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_node_teid.i.i) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %num_nodes.i) #10
  br label %cleanup

if.end34:                                         ; preds = %for.inc.i34.i.if.end34_crit_edge, %if.end.i.i.if.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_added.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_node_teid.i.i) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %num_nodes.i) #10
  %78 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw1, align 4
  %num_tx_sched_layers.i.i115 = getelementptr inbounds %struct.ice_hw, ptr %79, i32 0, i32 15
  %80 = ptrtoint ptr %num_tx_sched_layers.i.i115 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_tx_sched_layers.i.i115, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %81)
  %cmp.i.i116 = icmp ugt i8 %81, 5
  br i1 %cmp.i.i116, label %if.then.i.i120, label %if.end34.if.end10.i.i122_crit_edge

if.end34.if.end10.i.i122_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i122

if.then.i.i120:                                   ; preds = %if.end34
  %sub.i.i117 = add i8 %81, -4
  %sw_entry_point_layer.i.i118 = getelementptr inbounds %struct.ice_hw, ptr %79, i32 0, i32 19
  %82 = ptrtoint ptr %sw_entry_point_layer.i.i118 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sw_entry_point_layer.i.i118, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i117, i8 %83)
  %cmp7.not.i.i119 = icmp ugt i8 %sub.i.i117, %83
  br i1 %cmp7.not.i.i119, label %if.then.i.i120.ice_sched_get_vsi_layer.exit.i130_crit_edge, label %if.then.i.i120.if.end10.i.i122_crit_edge

if.then.i.i120.if.end10.i.i122_crit_edge:         ; preds = %if.then.i.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i122

if.then.i.i120.ice_sched_get_vsi_layer.exit.i130_crit_edge: ; preds = %if.then.i.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i130

if.end10.i.i122:                                  ; preds = %if.then.i.i120.if.end10.i.i122_crit_edge, %if.end34.if.end10.i.i122_crit_edge
  %sw_entry_point_layer11.i.i121 = getelementptr inbounds %struct.ice_hw, ptr %79, i32 0, i32 19
  %84 = ptrtoint ptr %sw_entry_point_layer11.i.i121 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sw_entry_point_layer11.i.i121, align 2
  br label %ice_sched_get_vsi_layer.exit.i130

ice_sched_get_vsi_layer.exit.i130:                ; preds = %if.end10.i.i122, %if.then.i.i120.ice_sched_get_vsi_layer.exit.i130_crit_edge
  %retval.1.i.i123 = phi i8 [ %sub.i.i117, %if.then.i.i120.ice_sched_get_vsi_layer.exit.i130_crit_edge ], [ %85, %if.end10.i.i122 ]
  %86 = ptrtoint ptr %tc_num.i.le to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tc_num.i.le, align 1
  %idxprom.i.i125 = zext i8 %87 to i32
  %idxprom1.i.i126 = zext i8 %retval.1.i.i123 to i32
  %arrayidx2.i.i127 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i125, i32 %idxprom1.i.i126
  %88 = ptrtoint ptr %arrayidx2.i.i127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %node.011.i128 = load ptr, ptr %arrayidx2.i.i127, align 4
  %tobool.not12.i129 = icmp eq ptr %node.011.i128, null
  br i1 %tobool.not12.i129, label %ice_sched_get_vsi_layer.exit.i130.cleanup_crit_edge, label %ice_sched_get_vsi_layer.exit.i130.while.body.i134_crit_edge

ice_sched_get_vsi_layer.exit.i130.while.body.i134_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i130
  br label %while.body.i134

ice_sched_get_vsi_layer.exit.i130.cleanup_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i134:                                  ; preds = %if.end.i138.while.body.i134_crit_edge, %ice_sched_get_vsi_layer.exit.i130.while.body.i134_crit_edge
  %node.013.i131 = phi ptr [ %node.0.i136, %if.end.i138.while.body.i134_crit_edge ], [ %node.011.i128, %ice_sched_get_vsi_layer.exit.i130.while.body.i134_crit_edge ]
  %vsi_handle2.i132 = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i131, i32 0, i32 5
  %89 = ptrtoint ptr %vsi_handle2.i132 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vsi_handle2.i132, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %vsi_handle)
  %cmp.i133 = icmp eq i16 %90, %vsi_handle
  br i1 %cmp.i133, label %if.end38, label %if.end.i138

if.end.i138:                                      ; preds = %while.body.i134
  %sibling.i135 = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i131, i32 0, i32 1
  %91 = ptrtoint ptr %sibling.i135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %node.0.i136 = load ptr, ptr %sibling.i135, align 4
  %tobool.not.i137 = icmp eq ptr %node.0.i136, null
  br i1 %tobool.not.i137, label %if.end.i138.cleanup_crit_edge, label %if.end.i138.while.body.i134_crit_edge

if.end.i138.while.body.i134_crit_edge:            ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i134

if.end.i138.cleanup_crit_edge:                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %while.body.i134
  call void @__sanitizer_cov_trace_pc() #12
  %sched = getelementptr inbounds %struct.ice_vsi_ctx, ptr %call11, i32 0, i32 5
  %idxprom = zext i8 %tc to i32
  %arrayidx = getelementptr [8 x ptr], ptr %sched, i32 0, i32 %idxprom
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %node.013.i131, ptr %arrayidx, align 4
  %in_use40 = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i131, i32 0, i32 6
  %93 = ptrtoint ptr %in_use40 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %in_use40, align 2
  %arrayidx43 = getelementptr %struct.ice_vsi_ctx, ptr %call11, i32 0, i32 5, i32 3, i32 %idxprom
  %94 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %arrayidx43, align 2
  %arrayidx46 = getelementptr %struct.ice_vsi_ctx, ptr %call11, i32 0, i32 5, i32 4, i32 %idxprom
  %95 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %arrayidx46, align 2
  br label %lor.lhs.false.i.i145

lor.lhs.false.i.i145:                             ; preds = %if.end38, %if.end28.lor.lhs.false.i.i145_crit_edge
  %vsi_node.0 = phi ptr [ %node.0.lcssa.i, %if.end28.lor.lhs.false.i.i145_crit_edge ], [ %node.013.i131, %if.end38 ]
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %new_num_nodes.i) #10
  %96 = call ptr @memset(ptr %new_num_nodes.i, i32 0, i32 18)
  %97 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw1, align 4
  %99 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pi, align 8
  %tobool1.not.i.i144 = icmp eq ptr %100, null
  br i1 %tobool1.not.i.i144, label %lor.lhs.false.i.i145.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %for.cond.preheader.i.i148

lor.lhs.false.i.i145.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

for.cond.preheader.i.i148:                        ; preds = %lor.lhs.false.i.i145
  %num_children.i.i146 = getelementptr inbounds %struct.ice_sched_node, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %num_children.i.i146 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_children.i.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp23.not.i.i147 = icmp eq i8 %102, 0
  br i1 %cmp23.not.i.i147, label %for.cond.preheader.i.i148.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %for.body.lr.ph.i.i151

for.cond.preheader.i.i148.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %for.cond.preheader.i.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

for.body.lr.ph.i.i151:                            ; preds = %for.cond.preheader.i.i148
  %children.i.i149 = getelementptr inbounds %struct.ice_sched_node, ptr %100, i32 0, i32 2
  %103 = ptrtoint ptr %children.i.i149 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %children.i.i149, align 4
  %wide.trip.count.i.i150 = zext i8 %102 to i32
  br label %for.body.i.i159

for.cond.i.i154:                                  ; preds = %for.body.i.i159
  %indvars.iv.next.i.i152 = add nuw nsw i32 %indvars.iv.i.i155, 1
  %exitcond.not.i.i153 = icmp eq i32 %indvars.iv.next.i.i152, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i153, label %for.cond.i.i154.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %for.cond.i.i154.for.body.i.i159_crit_edge

for.cond.i.i154.for.body.i.i159_crit_edge:        ; preds = %for.cond.i.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i159

for.cond.i.i154.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %for.cond.i.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

for.body.i.i159:                                  ; preds = %for.cond.i.i154.for.body.i.i159_crit_edge, %for.body.lr.ph.i.i151
  %indvars.iv.i.i155 = phi i32 [ 0, %for.body.lr.ph.i.i151 ], [ %indvars.iv.next.i.i152, %for.cond.i.i154.for.body.i.i159_crit_edge ]
  %arrayidx.i.i156 = getelementptr ptr, ptr %104, i32 %indvars.iv.i.i155
  %105 = ptrtoint ptr %arrayidx.i.i156 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i156, align 4
  %tc_num.i.i157 = getelementptr inbounds %struct.ice_sched_node, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %tc_num.i.i157 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %tc_num.i.i157, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %tc)
  %cmp8.i.i158 = icmp eq i8 %108, %tc
  br i1 %cmp8.i.i158, label %ice_sched_get_tc_node.exit.i162, label %for.cond.i.i154

ice_sched_get_tc_node.exit.i162:                  ; preds = %for.body.i.i159
  %tc_num.i.i157.le = getelementptr inbounds %struct.ice_sched_node, ptr %106, i32 0, i32 9
  %tobool.not.i161 = icmp eq ptr %106, null
  br i1 %tobool.not.i161, label %ice_sched_get_tc_node.exit.i162.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end.i165

ice_sched_get_tc_node.exit.i162.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %ice_sched_get_tc_node.exit.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end.i165:                                      ; preds = %ice_sched_get_tc_node.exit.i162
  %num_tx_sched_layers.i.i.i163 = getelementptr inbounds %struct.ice_hw, ptr %98, i32 0, i32 15
  %109 = ptrtoint ptr %num_tx_sched_layers.i.i.i163 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_tx_sched_layers.i.i.i163, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %110)
  %cmp.i.i.i164 = icmp ugt i8 %110, 5
  br i1 %cmp.i.i.i164, label %if.then.i.i.i169, label %if.end.i165.if.end10.i.i.i171_crit_edge

if.end.i165.if.end10.i.i.i171_crit_edge:          ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i171

if.then.i.i.i169:                                 ; preds = %if.end.i165
  %sub.i.i.i166 = add i8 %110, -4
  %sw_entry_point_layer.i.i.i167 = getelementptr inbounds %struct.ice_hw, ptr %98, i32 0, i32 19
  %111 = ptrtoint ptr %sw_entry_point_layer.i.i.i167 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sw_entry_point_layer.i.i.i167, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i.i166, i8 %112)
  %cmp7.not.i.i.i168 = icmp ugt i8 %sub.i.i.i166, %112
  br i1 %cmp7.not.i.i.i168, label %if.then.i.i.i169.ice_sched_get_vsi_layer.exit.i.i176_crit_edge, label %if.then.i.i.i169.if.end10.i.i.i171_crit_edge

if.then.i.i.i169.if.end10.i.i.i171_crit_edge:     ; preds = %if.then.i.i.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i171

if.then.i.i.i169.ice_sched_get_vsi_layer.exit.i.i176_crit_edge: ; preds = %if.then.i.i.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i.i176

if.end10.i.i.i171:                                ; preds = %if.then.i.i.i169.if.end10.i.i.i171_crit_edge, %if.end.i165.if.end10.i.i.i171_crit_edge
  %sw_entry_point_layer11.i.i.i170 = getelementptr inbounds %struct.ice_hw, ptr %98, i32 0, i32 19
  %113 = ptrtoint ptr %sw_entry_point_layer11.i.i.i170 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sw_entry_point_layer11.i.i.i170, align 2
  br label %ice_sched_get_vsi_layer.exit.i.i176

ice_sched_get_vsi_layer.exit.i.i176:              ; preds = %if.end10.i.i.i171, %if.then.i.i.i169.ice_sched_get_vsi_layer.exit.i.i176_crit_edge
  %retval.1.i.i.i172 = phi i8 [ %sub.i.i.i166, %if.then.i.i.i169.ice_sched_get_vsi_layer.exit.i.i176_crit_edge ], [ %114, %if.end10.i.i.i171 ]
  %idxprom.i.i.i173 = zext i8 %tc to i32
  %idxprom1.i.i.i174 = zext i8 %retval.1.i.i.i172 to i32
  %arrayidx2.i.i.i175 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i.i173, i32 %idxprom1.i.i.i174
  %115 = ptrtoint ptr %arrayidx2.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %115)
  %node.011.i.i = load ptr, ptr %arrayidx2.i.i.i175, align 4
  %tobool.not12.i.i = icmp eq ptr %node.011.i.i, null
  br i1 %tobool.not12.i.i, label %ice_sched_get_vsi_layer.exit.i.i176.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %ice_sched_get_vsi_layer.exit.i.i176.while.body.i.i178_crit_edge

ice_sched_get_vsi_layer.exit.i.i176.while.body.i.i178_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i.i176
  br label %while.body.i.i178

ice_sched_get_vsi_layer.exit.i.i176.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

while.body.i.i178:                                ; preds = %if.end.i.i181.while.body.i.i178_crit_edge, %ice_sched_get_vsi_layer.exit.i.i176.while.body.i.i178_crit_edge
  %node.013.i.i = phi ptr [ %node.0.i.i180, %if.end.i.i181.while.body.i.i178_crit_edge ], [ %node.011.i.i, %ice_sched_get_vsi_layer.exit.i.i176.while.body.i.i178_crit_edge ]
  %vsi_handle2.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i.i, i32 0, i32 5
  %116 = ptrtoint ptr %vsi_handle2.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vsi_handle2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %vsi_handle)
  %cmp.i.i177 = icmp eq i16 %117, %vsi_handle
  br i1 %cmp.i.i177, label %if.end5.i, label %if.end.i.i181

if.end.i.i181:                                    ; preds = %while.body.i.i178
  %sibling.i.i179 = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %sibling.i.i179 to i32
  call void @__asan_load4_noabort(i32 %118)
  %node.0.i.i180 = load ptr, ptr %sibling.i.i179, align 4
  %tobool.not.i101.i = icmp eq ptr %node.0.i.i180, null
  br i1 %tobool.not.i101.i, label %if.end.i.i181.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end.i.i181.while.body.i.i178_crit_edge

if.end.i.i181.while.body.i.i178_crit_edge:        ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i178

if.end.i.i181.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end5.i:                                        ; preds = %while.body.i.i178
  %call6.i = tail call ptr @ice_get_vsi_ctx(ptr noundef %98, i16 noundef zeroext %vsi_handle) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end9.i

if.end5.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %owner)
  %cmp.i182 = icmp eq i8 %owner, 0
  %arrayidx.i183 = getelementptr %struct.ice_vsi_ctx, ptr %call6.i, i32 0, i32 5, i32 3, i32 %idxprom.i.i.i173
  %arrayidx14.i = getelementptr %struct.ice_vsi_ctx, ptr %call6.i, i32 0, i32 5, i32 4, i32 %idxprom.i.i.i173
  %prev_numqs.0.in.i = select i1 %cmp.i182, ptr %arrayidx.i183, ptr %arrayidx14.i
  %119 = ptrtoint ptr %prev_numqs.0.in.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %prev_numqs.0.i = load i16, ptr %prev_numqs.0.in.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %prev_numqs.0.i, i16 %maxqs)
  %cmp18.not.i = icmp ult i16 %prev_numqs.0.i, %maxqs
  br i1 %cmp18.not.i, label %if.end21.i, label %if.end9.i.if.end51_crit_edge

if.end9.i.if.end51_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end21.i:                                       ; preds = %if.end9.i
  %call.i.i = tail call ptr @ice_get_vsi_ctx(ptr noundef %98, i16 noundef zeroext %vsi_handle) #10
  %tobool.not.i102.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i182, label %if.then25.i, label %if.else30.i

if.then25.i:                                      ; preds = %if.end21.i
  br i1 %tobool.not.i102.i, label %if.then25.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end.i105.i

if.then25.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end.i105.i:                                    ; preds = %if.then25.i
  %arrayidx.i103.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i.i, i32 0, i32 9, i32 %idxprom.i.i.i173
  %120 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i103.i, align 4
  %tobool1.not.i104.i = icmp eq ptr %121, null
  br i1 %tobool1.not.i104.i, label %devm_kcalloc.exit.i.i, label %if.end15.i.i

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i105.i
  %conv.i.i184 = zext i16 %maxqs to i32
  %122 = mul nuw nsw i32 %conv.i.i184, 36
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 -2960
  %123 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef %122, i32 noundef 3520) #10
  %125 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call5.i.i.i.i, ptr %arrayidx.i103.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool10.not.i.i, label %devm_kcalloc.exit.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end12.i.i

devm_kcalloc.exit.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end12.i.i:                                     ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.i.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i.i, i32 0, i32 8, i32 %idxprom.i.i.i173
  br label %if.then37.sink.split.i

if.end15.i.i:                                     ; preds = %if.end.i105.i
  %arrayidx19.i.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i.i, i32 0, i32 8, i32 %idxprom.i.i.i173
  %126 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx19.i.i, align 2
  %conv20.i.i = zext i16 %127 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %127, i16 %maxqs)
  %cmp.i106.i = icmp ult i16 %127, %maxqs
  br i1 %cmp.i106.i, label %if.then22.i.i, label %if.end15.i.i.if.then37.i_crit_edge

if.end15.i.i.if.then37.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

if.then22.i.i:                                    ; preds = %if.end15.i.i
  %add.ptr28.i.i = getelementptr i8, ptr %98, i32 -2960
  %conv16.i.i = zext i16 %maxqs to i32
  %128 = mul nuw nsw i32 %conv16.i.i, 36
  %129 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr28.i.i, align 8
  %dev30.i.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  %call5.i.i85.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev30.i.i, i32 noundef %128, i32 noundef 3520) #10
  %tobool33.not.i.i = icmp eq ptr %call5.i.i85.i.i, null
  br i1 %tobool33.not.i.i, label %if.then22.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end35.i.i

if.then22.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end35.i.i:                                     ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i103.i, align 4
  %mul.i.i = mul nuw nsw i32 %conv20.i.i, 36
  %133 = call ptr @memcpy(ptr %call5.i.i85.i.i, ptr %132, i32 %mul.i.i)
  %134 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr28.i.i, align 8
  %dev44.i.i = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %136 = load ptr, ptr %arrayidx.i103.i, align 4
  tail call void @devm_kfree(ptr noundef %dev44.i.i, ptr noundef %136) #10
  %137 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call5.i.i85.i.i, ptr %arrayidx.i103.i, align 4
  br label %if.then37.sink.split.i

if.else30.i:                                      ; preds = %if.end21.i
  br i1 %tobool.not.i102.i, label %if.else30.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end.i112.i

if.else30.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end.i112.i:                                    ; preds = %if.else30.i
  %arrayidx.i110.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i.i, i32 0, i32 11, i32 %idxprom.i.i.i173
  %138 = ptrtoint ptr %arrayidx.i110.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i110.i, align 4
  %tobool1.not.i111.i = icmp eq ptr %139, null
  br i1 %tobool1.not.i111.i, label %devm_kcalloc.exit.i118.i, label %if.end15.i124.i

devm_kcalloc.exit.i118.i:                         ; preds = %if.end.i112.i
  %conv.i113.i = zext i16 %maxqs to i32
  %140 = mul nuw nsw i32 %conv.i113.i, 36
  %add.ptr.i114.i = getelementptr i8, ptr %98, i32 -2960
  %141 = ptrtoint ptr %add.ptr.i114.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr.i114.i, align 8
  %dev.i115.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %call5.i.i.i116.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i115.i, i32 noundef %140, i32 noundef 3520) #10
  %143 = ptrtoint ptr %arrayidx.i110.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call5.i.i.i116.i, ptr %arrayidx.i110.i, align 4
  %tobool10.not.i117.i = icmp eq ptr %call5.i.i.i116.i, null
  br i1 %tobool10.not.i117.i, label %devm_kcalloc.exit.i118.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end12.i120.i

devm_kcalloc.exit.i118.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end12.i120.i:                                  ; preds = %devm_kcalloc.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.i119.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i.i, i32 0, i32 10, i32 %idxprom.i.i.i173
  br label %if.then37.sink.split.i

if.end15.i124.i:                                  ; preds = %if.end.i112.i
  %arrayidx19.i121.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i.i, i32 0, i32 10, i32 %idxprom.i.i.i173
  %144 = ptrtoint ptr %arrayidx19.i121.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx19.i121.i, align 2
  %conv20.i122.i = zext i16 %145 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %145, i16 %maxqs)
  %cmp.i123.i = icmp ult i16 %145, %maxqs
  br i1 %cmp.i123.i, label %if.then22.i130.i, label %if.end15.i124.i.if.then37.i_crit_edge

if.end15.i124.i.if.then37.i_crit_edge:            ; preds = %if.end15.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

if.then22.i130.i:                                 ; preds = %if.end15.i124.i
  %add.ptr28.i125.i = getelementptr i8, ptr %98, i32 -2960
  %conv16.i126.i = zext i16 %maxqs to i32
  %146 = mul nuw nsw i32 %conv16.i126.i, 36
  %147 = ptrtoint ptr %add.ptr28.i125.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr28.i125.i, align 8
  %dev30.i127.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  %call5.i.i85.i128.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev30.i127.i, i32 noundef %146, i32 noundef 3520) #10
  %tobool33.not.i129.i = icmp eq ptr %call5.i.i85.i128.i, null
  br i1 %tobool33.not.i129.i, label %if.then22.i130.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, label %if.end35.i133.i

if.then22.i130.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge: ; preds = %if.then22.i130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end35.i133.i:                                  ; preds = %if.then22.i130.i
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %arrayidx.i110.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i110.i, align 4
  %mul.i131.i = mul nuw nsw i32 %conv20.i122.i, 36
  %151 = call ptr @memcpy(ptr %call5.i.i85.i128.i, ptr %150, i32 %mul.i131.i)
  %152 = ptrtoint ptr %add.ptr28.i125.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr28.i125.i, align 8
  %dev44.i132.i = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %154 = load ptr, ptr %arrayidx.i110.i, align 4
  tail call void @devm_kfree(ptr noundef %dev44.i132.i, ptr noundef %154) #10
  %155 = ptrtoint ptr %arrayidx.i110.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call5.i.i85.i128.i, ptr %arrayidx.i110.i, align 4
  br label %if.then37.sink.split.i

if.then37.sink.split.i:                           ; preds = %if.end35.i133.i, %if.end12.i120.i, %if.end35.i.i, %if.end12.i.i
  %arrayidx19.sink.i134.sink.i = phi ptr [ %arrayidx19.i.i, %if.end35.i.i ], [ %arrayidx14.i.i, %if.end12.i.i ], [ %arrayidx19.i121.i, %if.end35.i133.i ], [ %arrayidx14.i119.i, %if.end12.i120.i ]
  %156 = ptrtoint ptr %arrayidx19.sink.i134.sink.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %maxqs, ptr %arrayidx19.sink.i134.sink.i, align 2
  br label %if.then37.i

if.then37.i:                                      ; preds = %if.then37.sink.split.i, %if.end15.i124.i.if.then37.i_crit_edge, %if.end15.i.i.if.then37.i_crit_edge
  %157 = ptrtoint ptr %num_tx_sched_layers.i.i.i163 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %num_tx_sched_layers.i.i.i163, align 2
  %sub.i.i138.i = add i8 %158, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %158)
  %cmp.i.i139.i = icmp ugt i8 %158, 5
  br i1 %cmp.i.i139.i, label %if.then.i.i142.i, label %if.then37.i.if.end10.i.i144.i_crit_edge

if.then37.i.if.end10.i.i144.i_crit_edge:          ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i144.i

if.then.i.i142.i:                                 ; preds = %if.then37.i
  %sub.i26.i.i = add i8 %158, -4
  %sw_entry_point_layer.i.i140.i = getelementptr inbounds %struct.ice_hw, ptr %98, i32 0, i32 19
  %159 = ptrtoint ptr %sw_entry_point_layer.i.i140.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %sw_entry_point_layer.i.i140.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i26.i.i, i8 %160)
  %cmp7.not.i.i141.i = icmp ugt i8 %sub.i26.i.i, %160
  br i1 %cmp7.not.i.i141.i, label %if.then.i.i142.i.ice_sched_get_vsi_layer.exit.i146.i_crit_edge, label %if.then.i.i142.i.if.end10.i.i144.i_crit_edge

if.then.i.i142.i.if.end10.i.i144.i_crit_edge:     ; preds = %if.then.i.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i144.i

if.then.i.i142.i.ice_sched_get_vsi_layer.exit.i146.i_crit_edge: ; preds = %if.then.i.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i146.i

if.end10.i.i144.i:                                ; preds = %if.then.i.i142.i.if.end10.i.i144.i_crit_edge, %if.then37.i.if.end10.i.i144.i_crit_edge
  %sw_entry_point_layer11.i.i143.i = getelementptr inbounds %struct.ice_hw, ptr %98, i32 0, i32 19
  %161 = ptrtoint ptr %sw_entry_point_layer11.i.i143.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sw_entry_point_layer11.i.i143.i, align 2
  br label %ice_sched_get_vsi_layer.exit.i146.i

ice_sched_get_vsi_layer.exit.i146.i:              ; preds = %if.end10.i.i144.i, %if.then.i.i142.i.ice_sched_get_vsi_layer.exit.i146.i_crit_edge
  %retval.1.i.i145.i = phi i8 [ %sub.i26.i.i, %if.then.i.i142.i.ice_sched_get_vsi_layer.exit.i146.i_crit_edge ], [ %162, %if.end10.i.i144.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i138.i, i8 %retval.1.i.i145.i)
  %cmp27.i.i = icmp ugt i8 %sub.i.i138.i, %retval.1.i.i145.i
  br i1 %cmp27.i.i, label %for.body.preheader.i.i, label %ice_sched_get_vsi_layer.exit.i146.i.ice_sched_calc_vsi_child_nodes.exit.i_crit_edge

ice_sched_get_vsi_layer.exit.i146.i.ice_sched_calc_vsi_child_nodes.exit.i_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_calc_vsi_child_nodes.exit.i

for.body.preheader.i.i:                           ; preds = %ice_sched_get_vsi_layer.exit.i146.i
  %163 = zext i8 %sub.i.i138.i to i32
  br label %for.body.i152.i

for.body.i152.i:                                  ; preds = %for.body.i152.i.for.body.i152.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i147.i = phi i32 [ %163, %for.body.preheader.i.i ], [ %indvars.iv.next.i151.i, %for.body.i152.i.for.body.i152.i_crit_edge ]
  %num.029.i.i = phi i16 [ %maxqs, %for.body.preheader.i.i ], [ %conv10.i.i, %for.body.i152.i.for.body.i152.i_crit_edge ]
  %i.028.i.i = phi i8 [ %sub.i.i138.i, %for.body.preheader.i.i ], [ %dec.i.i186, %for.body.i152.i.for.body.i152.i_crit_edge ]
  %conv4.i.i = zext i16 %num.029.i.i to i32
  %arrayidx.i148.i = getelementptr %struct.ice_hw, ptr %98, i32 0, i32 20, i32 %indvars.iv.i147.i
  %164 = ptrtoint ptr %arrayidx.i148.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx.i148.i, align 2
  %conv5.i.i = zext i16 %165 to i32
  %add.i.i = add nsw i32 %conv4.i.i, -1
  %sub.i.i185 = add nsw i32 %add.i.i, %conv5.i.i
  %div.i.i = sdiv i32 %sub.i.i185, %conv5.i.i
  %conv10.i.i = trunc i32 %div.i.i to i16
  %conv11.i.i = and i32 %div.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11.i.i)
  %tobool.not.i149.i = icmp eq i32 %conv11.i.i, 0
  %conv13.i.i = select i1 %tobool.not.i149.i, i16 1, i16 %conv10.i.i
  %arrayidx15.i.i = getelementptr i16, ptr %new_num_nodes.i, i32 %indvars.iv.i147.i
  %166 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv13.i.i, ptr %arrayidx15.i.i, align 2
  %dec.i.i186 = add i8 %i.028.i.i, -1
  %cmp.i150.i = icmp ugt i8 %dec.i.i186, %retval.1.i.i145.i
  %indvars.iv.next.i151.i = add nsw i32 %indvars.iv.i147.i, -1
  br i1 %cmp.i150.i, label %for.body.i152.i.for.body.i152.i_crit_edge, label %for.body.i152.i.ice_sched_calc_vsi_child_nodes.exit.i_crit_edge

for.body.i152.i.ice_sched_calc_vsi_child_nodes.exit.i_crit_edge: ; preds = %for.body.i152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_calc_vsi_child_nodes.exit.i

for.body.i152.i.for.body.i152.i_crit_edge:        ; preds = %for.body.i152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i152.i

ice_sched_calc_vsi_child_nodes.exit.i:            ; preds = %for.body.i152.i.ice_sched_calc_vsi_child_nodes.exit.i_crit_edge, %ice_sched_get_vsi_layer.exit.i146.i.ice_sched_calc_vsi_child_nodes.exit.i_crit_edge
  %167 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_node_teid.i.i141) #10
  %169 = ptrtoint ptr %first_node_teid.i.i141 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %first_node_teid.i.i141, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_added.i.i142) #10
  %170 = ptrtoint ptr %num_added.i.i142 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %num_added.i.i142, align 2
  %num_tx_sched_layers.i.i153.i = getelementptr inbounds %struct.ice_hw, ptr %168, i32 0, i32 15
  %171 = ptrtoint ptr %num_tx_sched_layers.i.i153.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %num_tx_sched_layers.i.i153.i, align 2
  %sub.i.i154.i = add i8 %172, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %172)
  %cmp.i.i155.i = icmp ugt i8 %172, 5
  br i1 %cmp.i.i155.i, label %if.then.i.i158.i, label %ice_sched_get_vsi_layer.exit.i160.i

if.then.i.i158.i:                                 ; preds = %ice_sched_calc_vsi_child_nodes.exit.i
  %sub.i49.i.i = add i8 %172, -4
  %sw_entry_point_layer.i.i156.i = getelementptr inbounds %struct.ice_hw, ptr %168, i32 0, i32 19
  %173 = ptrtoint ptr %sw_entry_point_layer.i.i156.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %sw_entry_point_layer.i.i156.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i49.i.i, i8 %174)
  %cmp7.not.i.i157.i = icmp ugt i8 %sub.i49.i.i, %174
  br i1 %cmp7.not.i.i157.i, label %if.then.i.i158.i.ice_sched_get_vsi_layer.exit.i.i.i_crit_edge, label %if.then.i.i158.i.if.end10.i.i.i.i_crit_edge

if.then.i.i158.i.if.end10.i.i.i.i_crit_edge:      ; preds = %if.then.i.i158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i.i

if.then.i.i158.i.ice_sched_get_vsi_layer.exit.i.i.i_crit_edge: ; preds = %if.then.i.i158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i.i.i

ice_sched_get_vsi_layer.exit.i160.i:              ; preds = %ice_sched_calc_vsi_child_nodes.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %sw_entry_point_layer11.i.i159.i = getelementptr inbounds %struct.ice_hw, ptr %168, i32 0, i32 19
  %175 = ptrtoint ptr %sw_entry_point_layer11.i.i159.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %sw_entry_point_layer11.i.i159.i, align 2
  br label %if.end10.i.i.i.i

if.end10.i.i.i.i:                                 ; preds = %ice_sched_get_vsi_layer.exit.i160.i, %if.then.i.i158.i.if.end10.i.i.i.i_crit_edge
  %retval.1.i53.i.i = phi i8 [ %176, %ice_sched_get_vsi_layer.exit.i160.i ], [ %174, %if.then.i.i158.i.if.end10.i.i.i.i_crit_edge ]
  %sw_entry_point_layer11.i.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %168, i32 0, i32 19
  %177 = ptrtoint ptr %sw_entry_point_layer11.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %sw_entry_point_layer11.i.i.i.i, align 2
  br label %ice_sched_get_vsi_layer.exit.i.i.i

ice_sched_get_vsi_layer.exit.i.i.i:               ; preds = %if.end10.i.i.i.i, %if.then.i.i158.i.ice_sched_get_vsi_layer.exit.i.i.i_crit_edge
  %retval.1.i52.i.i = phi i8 [ %retval.1.i53.i.i, %if.end10.i.i.i.i ], [ %sub.i49.i.i, %if.then.i.i158.i.ice_sched_get_vsi_layer.exit.i.i.i_crit_edge ]
  %retval.1.i.i.i.i = phi i8 [ %178, %if.end10.i.i.i.i ], [ %sub.i49.i.i, %if.then.i.i158.i.ice_sched_get_vsi_layer.exit.i.i.i_crit_edge ]
  %179 = ptrtoint ptr %tc_num.i.i157.le to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %tc_num.i.i157.le, align 1
  %idxprom.i.i.i.i = zext i8 %180 to i32
  %idxprom1.i.i.i.i = zext i8 %retval.1.i.i.i.i to i32
  %arrayidx2.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i.i.i, i32 %idxprom1.i.i.i.i
  %181 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %node.011.i.i.i = load ptr, ptr %arrayidx2.i.i.i.i, align 4
  %tobool.not12.i.i.i = icmp eq ptr %node.011.i.i.i, null
  br i1 %tobool.not12.i.i.i, label %ice_sched_get_vsi_layer.exit.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge, label %ice_sched_get_vsi_layer.exit.i.i.i.while.body.i.i.i_crit_edge

ice_sched_get_vsi_layer.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i.i.i
  br label %while.body.i.i.i

ice_sched_get_vsi_layer.exit.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_node.exit.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %ice_sched_get_vsi_layer.exit.i.i.i.while.body.i.i.i_crit_edge
  %node.013.i.i.i = phi ptr [ %node.0.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ %node.011.i.i.i, %ice_sched_get_vsi_layer.exit.i.i.i.while.body.i.i.i_crit_edge ]
  %vsi_handle2.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i.i.i, i32 0, i32 5
  %182 = ptrtoint ptr %vsi_handle2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %vsi_handle2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %183, i16 %vsi_handle)
  %cmp.i50.i.i = icmp eq i16 %183, %vsi_handle
  br i1 %cmp.i50.i.i, label %while.body.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_node.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %sibling.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i.i.i, i32 0, i32 1
  %184 = ptrtoint ptr %sibling.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %node.0.i.i.i = load ptr, ptr %sibling.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_node.exit.i.i

ice_sched_get_vsi_node.exit.i.i:                  ; preds = %if.end.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge, %while.body.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge, %ice_sched_get_vsi_layer.exit.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge
  %node.0.lcssa.i.i.i = phi ptr [ null, %ice_sched_get_vsi_layer.exit.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge ], [ %node.013.i.i.i, %while.body.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge ], [ null, %if.end.i.i.i.ice_sched_get_vsi_node.exit.i.i_crit_edge ]
  %i.059.i.i = add i8 %retval.1.i52.i.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %i.059.i.i, i8 %sub.i.i154.i)
  %cmp.not61.i.i = icmp ugt i8 %i.059.i.i, %sub.i.i154.i
  br i1 %cmp.not61.i.i, label %ice_sched_get_vsi_node.exit.i.i.if.end43.i_crit_edge, label %ice_sched_get_vsi_node.exit.i.i.for.body.i162.i_crit_edge

ice_sched_get_vsi_node.exit.i.i.for.body.i162.i_crit_edge: ; preds = %ice_sched_get_vsi_node.exit.i.i
  br label %for.body.i162.i

ice_sched_get_vsi_node.exit.i.i.if.end43.i_crit_edge: ; preds = %ice_sched_get_vsi_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

for.body.i162.i:                                  ; preds = %for.inc.i.i190.for.body.i162.i_crit_edge, %ice_sched_get_vsi_node.exit.i.i.for.body.i162.i_crit_edge
  %i.063.i.i = phi i8 [ %i.0.i.i, %for.inc.i.i190.for.body.i162.i_crit_edge ], [ %i.059.i.i, %ice_sched_get_vsi_node.exit.i.i.for.body.i162.i_crit_edge ]
  %parent.062.i.i = phi ptr [ %parent.1.i.i189, %for.inc.i.i190.for.body.i162.i_crit_edge ], [ %node.0.lcssa.i.i.i, %ice_sched_get_vsi_node.exit.i.i.for.body.i162.i_crit_edge ]
  %tobool.not.i161.i = icmp eq ptr %parent.062.i.i, null
  br i1 %tobool.not.i161.i, label %for.body.i162.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge, label %if.end.i164.i

for.body.i162.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge: ; preds = %for.body.i162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_child_nodes.exit.thread.i

if.end.i164.i:                                    ; preds = %for.body.i162.i
  %conv564.i.i = zext i8 %i.063.i.i to i32
  %arrayidx.i163.i = getelementptr i16, ptr %new_num_nodes.i, i32 %conv564.i.i
  %185 = ptrtoint ptr %arrayidx.i163.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx.i163.i, align 2
  %call8.i.i = call fastcc i32 @ice_sched_add_nodes_to_layer(ptr noundef nonnull %pi, ptr noundef nonnull %106, ptr noundef nonnull %parent.062.i.i, i8 noundef zeroext %i.063.i.i, i16 noundef zeroext %186, ptr noundef nonnull %first_node_teid.i.i141, ptr noundef nonnull %num_added.i.i142) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i187 = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i187, label %lor.lhs.false.i165.i, label %if.end.i164.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge

if.end.i164.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge: ; preds = %if.end.i164.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_child_nodes.exit.thread.i

lor.lhs.false.i165.i:                             ; preds = %if.end.i164.i
  %187 = ptrtoint ptr %num_added.i.i142 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %num_added.i.i142, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %186, i16 %188)
  %cmp14.not.i.i = icmp eq i16 %186, %188
  br i1 %cmp14.not.i.i, label %if.end17.i.i, label %lor.lhs.false.i165.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge

lor.lhs.false.i165.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_vsi_child_nodes.exit.thread.i

if.end17.i.i:                                     ; preds = %lor.lhs.false.i165.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool18.not.i.i = icmp eq i16 %186, 0
  br i1 %tobool18.not.i.i, label %if.else.i.i188, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %189 = ptrtoint ptr %first_node_teid.i.i141 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %first_node_teid.i.i141, align 4
  %call20.i.i = tail call ptr @ice_sched_find_node_by_teid(ptr noundef nonnull %106, i32 noundef %190) #10
  %tobool21.not57.i.i = icmp eq ptr %call20.i.i, null
  br i1 %tobool21.not57.i.i, label %if.then19.i.i.for.inc.i.i190_crit_edge, label %if.then19.i.i.while.body.i167.i_crit_edge

if.then19.i.i.while.body.i167.i_crit_edge:        ; preds = %if.then19.i.i
  br label %while.body.i167.i

if.then19.i.i.for.inc.i.i190_crit_edge:           ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i190

while.body.i167.i:                                ; preds = %while.body.i167.i.while.body.i167.i_crit_edge, %if.then19.i.i.while.body.i167.i_crit_edge
  %node.058.i.i = phi ptr [ %193, %while.body.i167.i.while.body.i167.i_crit_edge ], [ %call20.i.i, %if.then19.i.i.while.body.i167.i_crit_edge ]
  %owner22.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.058.i.i, i32 0, i32 10
  %191 = ptrtoint ptr %owner22.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %owner, ptr %owner22.i.i, align 2
  %sibling.i166.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.058.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %sibling.i166.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sibling.i166.i, align 4
  %tobool21.not.i.i = icmp eq ptr %193, null
  br i1 %tobool21.not.i.i, label %while.body.i167.i.for.inc.i.i190_crit_edge, label %while.body.i167.i.while.body.i167.i_crit_edge

while.body.i167.i.while.body.i167.i_crit_edge:    ; preds = %while.body.i167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i167.i

while.body.i167.i.for.inc.i.i190_crit_edge:       ; preds = %while.body.i167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i190

if.else.i.i188:                                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %children.i168.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.062.i.i, i32 0, i32 2
  %194 = ptrtoint ptr %children.i168.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %children.i168.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  br label %for.inc.i.i190

for.inc.i.i190:                                   ; preds = %if.else.i.i188, %while.body.i167.i.for.inc.i.i190_crit_edge, %if.then19.i.i.for.inc.i.i190_crit_edge
  %parent.1.i.i189 = phi ptr [ %197, %if.else.i.i188 ], [ null, %if.then19.i.i.for.inc.i.i190_crit_edge ], [ %call20.i.i, %while.body.i167.i.for.inc.i.i190_crit_edge ]
  %i.0.i.i = add i8 %i.063.i.i, 1
  %cmp.not.i.i = icmp ugt i8 %i.0.i.i, %sub.i.i154.i
  br i1 %cmp.not.i.i, label %for.inc.i.i190.if.end43.i_crit_edge, label %for.inc.i.i190.for.body.i162.i_crit_edge

for.inc.i.i190.for.body.i162.i_crit_edge:         ; preds = %for.inc.i.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i162.i

for.inc.i.i190.if.end43.i_crit_edge:              ; preds = %for.inc.i.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

ice_sched_add_vsi_child_nodes.exit.thread.i:      ; preds = %lor.lhs.false.i165.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge, %if.end.i164.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge, %for.body.i162.i.ice_sched_add_vsi_child_nodes.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_added.i.i142) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_node_teid.i.i141) #10
  br label %ice_sched_update_vsi_child_nodes.exit.thread

if.end43.i:                                       ; preds = %for.inc.i.i190.if.end43.i_crit_edge, %ice_sched_get_vsi_node.exit.i.i.if.end43.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_added.i.i142) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_node_teid.i.i141) #10
  %arrayidx.i183.arrayidx14.i = select i1 %cmp.i182, ptr %arrayidx.i183, ptr %arrayidx14.i
  %198 = ptrtoint ptr %arrayidx.i183.arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %maxqs, ptr %arrayidx.i183.arrayidx14.i, align 2
  br label %if.end51

ice_sched_update_vsi_child_nodes.exit.thread:     ; preds = %ice_sched_add_vsi_child_nodes.exit.thread.i, %if.then22.i130.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %devm_kcalloc.exit.i118.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %if.else30.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %if.then22.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %devm_kcalloc.exit.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %if.then25.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %if.end5.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %if.end.i.i181.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %ice_sched_get_vsi_layer.exit.i.i176.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %ice_sched_get_tc_node.exit.i162.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %for.cond.i.i154.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %for.cond.preheader.i.i148.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge, %lor.lhs.false.i.i145.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge
  %retval.0.i191.ph = phi i32 [ -22, %if.else30.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i118.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -12, %if.then22.i130.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -22, %if.then25.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -12, %if.then22.i.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -5, %ice_sched_get_vsi_layer.exit.i.i176.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -5, %for.cond.preheader.i.i148.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -5, %lor.lhs.false.i.i145.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -5, %ice_sched_add_vsi_child_nodes.exit.thread.i ], [ -22, %if.end5.i.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -5, %ice_sched_get_tc_node.exit.i162.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -5, %if.end.i.i181.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ], [ -5, %for.cond.i.i154.ice_sched_update_vsi_child_nodes.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %new_num_nodes.i) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end43.i, %if.end9.i.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %new_num_nodes.i) #10
  %in_use52 = getelementptr inbounds %struct.ice_sched_node, ptr %vsi_node.0, i32 0, i32 6
  %199 = ptrtoint ptr %in_use52 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %in_use52, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool53.not = icmp eq i8 %200, 0
  br i1 %tobool53.not, label %if.then54, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %teid55) #10
  %node_teid57 = getelementptr inbounds %struct.ice_sched_node, ptr %vsi_node.0, i32 0, i32 3, i32 1
  %201 = ptrtoint ptr %node_teid57 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %node_teid57, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %202)
  %204 = ptrtoint ptr %teid55 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %teid55, align 4
  %call58 = call fastcc i32 @ice_sched_suspend_resume_elems(ptr noundef %1, ptr noundef nonnull %teid55, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.then54.if.end62_crit_edge

if.then54.if.end62_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %205 = ptrtoint ptr %in_use52 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %in_use52, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.then54.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %teid55) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end51.cleanup_crit_edge, %ice_sched_update_vsi_child_nodes.exit.thread, %if.end.i138.cleanup_crit_edge, %ice_sched_get_vsi_layer.exit.i130.cleanup_crit_edge, %ice_sched_add_vsi_to_topo.exit.thread198, %ice_sched_add_vsi_to_topo.exit.thread, %if.end26, %land.lhs.true.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %ice_sched_get_tc_node.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ice_sched_get_tc_node.exit.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call22, %if.end26 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ %call58, %if.end62 ], [ -22, %ice_sched_add_vsi_to_topo.exit.thread ], [ -5, %ice_sched_add_vsi_to_topo.exit.thread198 ], [ %retval.0.i191.ph, %ice_sched_update_vsi_child_nodes.exit.thread ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -5, %ice_sched_get_vsi_layer.exit.i130.cleanup_crit_edge ], [ -5, %if.end.i138.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_suspend_resume_elems(ptr noundef %hw, ptr nocapture noundef readonly %node_teids, i1 noundef zeroext %suspend) unnamed_addr #3 align 64 {
entry:
  %desc.i.i1 = alloca %struct.ice_aq_desc, align 4
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.critedge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.critedge:                                ; preds = %entry
  %2 = ptrtoint ptr %node_teids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_teids, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call.i, align 4
  br i1 %suspend, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body.critedge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %6 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %7 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 1033) #10
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %6, align 4
  %9 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %desc.i.i, align 4
  %11 = or i16 %10, 4
  store i16 %11, ptr %desc.i.i, align 4
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef nonnull %call.i, i16 noundef zeroext 4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i.not, label %if.then.i.i, label %if.then9.ice_aq_suspend_sched_elems.exit_crit_edge

if.then9.ice_aq_suspend_sched_elems.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_aq_suspend_sched_elems.exit

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %num_elem_resp.i.i = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %num_elem_resp.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_elem_resp.i.i, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13) #10
  br label %ice_aq_suspend_sched_elems.exit

ice_aq_suspend_sched_elems.exit:                  ; preds = %if.then.i.i, %if.then9.ice_aq_suspend_sched_elems.exit_crit_edge
  %num_elem_ret.0 = phi i16 [ 0, %if.then9.ice_aq_suspend_sched_elems.exit_crit_edge ], [ %14, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %if.end14

if.else:                                          ; preds = %for.body.critedge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i1) #10
  %15 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i1, i32 0, i32 6
  %16 = call ptr @memset(ptr %desc.i.i1, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i1, i16 noundef zeroext 1034) #10
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 256, ptr %15, align 4
  %18 = ptrtoint ptr %desc.i.i1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %desc.i.i1, align 4
  %20 = or i16 %19, 4
  store i16 %20, ptr %desc.i.i1, align 4
  %call.i.i2 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i1, ptr noundef nonnull %call.i, i16 noundef zeroext 4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2)
  %tobool.not.i.i3.not = icmp eq i32 %call.i.i2, 0
  br i1 %tobool.not.i.i3.not, label %if.then.i.i5, label %if.else.ice_aq_resume_sched_elems.exit_crit_edge

if.else.ice_aq_resume_sched_elems.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_aq_resume_sched_elems.exit

if.then.i.i5:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %num_elem_resp.i.i4 = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %num_elem_resp.i.i4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_elem_resp.i.i4, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22) #10
  br label %ice_aq_resume_sched_elems.exit

ice_aq_resume_sched_elems.exit:                   ; preds = %if.then.i.i5, %if.else.ice_aq_resume_sched_elems.exit_crit_edge
  %num_elem_ret.1 = phi i16 [ 0, %if.else.ice_aq_resume_sched_elems.exit_crit_edge ], [ %23, %if.then.i.i5 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i1) #10
  br label %if.end14

if.end14:                                         ; preds = %ice_aq_resume_sched_elems.exit, %ice_aq_suspend_sched_elems.exit
  %num_elem_ret.2 = phi i16 [ %num_elem_ret.0, %ice_aq_suspend_sched_elems.exit ], [ %num_elem_ret.1, %ice_aq_resume_sched_elems.exit ]
  %status.0 = phi i32 [ %call.i.i, %ice_aq_suspend_sched_elems.exit ], [ %call.i.i2, %ice_aq_resume_sched_elems.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool15.not = icmp eq i32 %status.0, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %num_elem_ret.2)
  %cmp18.not = icmp eq i16 %num_elem_ret.2, 1
  %or.cond = select i1 %tobool15.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end14.if.end34_crit_edge, label %do.body

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_suspend_resume_elems.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_suspend_resume_elems, %if.then27)) #10
          to label %if.end34 [label %if.then27], !srcloc !92

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_suspend_resume_elems.__UNIQUE_ID_ddebug615, ptr noundef %dev32, ptr noundef nonnull @.str.23) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %do.body, %if.end14.if.end34_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev39, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rm_vsi_lan_cfg(ptr noundef %pi, i16 noundef zeroext %vsi_handle) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_sched_rm_vsi_cfg(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_rm_vsi_cfg(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %owner) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_rm_vsi_cfg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv = zext i16 %vsi_handle to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug625, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw4 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %4 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw4, align 4
  %call5 = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %5, i16 noundef zeroext %vsi_handle) #10
  br i1 %call5, label %if.end7, label %do.end.cleanup86_crit_edge

do.end.cleanup86_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup86

if.end7:                                          ; preds = %do.end
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %6 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw4, align 4
  %call9 = tail call ptr @ice_get_vsi_ctx(ptr noundef %7, i16 noundef zeroext %vsi_handle) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.exit_sched_rm_vsi_cfg_crit_edge, label %for.cond.preheader

if.end7.exit_sched_rm_vsi_cfg_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_sched_rm_vsi_cfg

for.cond.preheader:                               ; preds = %if.end7
  %tobool.not.i = icmp eq ptr %pi, null
  %sched = getelementptr inbounds %struct.ice_vsi_ctx, ptr %call9, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %owner)
  %cmp71 = icmp eq i8 %owner, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.for.inc_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_children.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp23.not.i = icmp eq i8 %11, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %children.i, align 4
  %wide.trip.count.i = zext i8 %11 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond.i.for.inc_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %indvars.iv.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tc_num.i = getelementptr inbounds %struct.ice_sched_node, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %tc_num.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tc_num.i, align 1
  %18 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %18)
  %cmp8.i = icmp eq i32 %indvars.iv, %18
  br i1 %cmp8.i, label %ice_sched_get_tc_node.exit, label %for.cond.i

ice_sched_get_tc_node.exit:                       ; preds = %for.body.i
  %tc_num.i.le = getelementptr inbounds %struct.ice_sched_node, ptr %15, i32 0, i32 9
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %ice_sched_get_tc_node.exit.for.inc_crit_edge, label %if.end18

ice_sched_get_tc_node.exit.for.inc_crit_edge:     ; preds = %ice_sched_get_tc_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %ice_sched_get_tc_node.exit
  %19 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw4, align 4
  %num_tx_sched_layers.i.i = getelementptr inbounds %struct.ice_hw, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %num_tx_sched_layers.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_tx_sched_layers.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %cmp.i.i = icmp ugt i8 %22, 5
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end18.if.end10.i.i_crit_edge

if.end18.if.end10.i.i_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end18
  %sub.i.i = add i8 %22, -4
  %sw_entry_point_layer.i.i = getelementptr inbounds %struct.ice_hw, ptr %20, i32 0, i32 19
  %23 = ptrtoint ptr %sw_entry_point_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sw_entry_point_layer.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i, i8 %24)
  %cmp7.not.i.i = icmp ugt i8 %sub.i.i, %24
  br i1 %cmp7.not.i.i, label %if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge, label %if.then.i.i.if.end10.i.i_crit_edge

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i

if.end10.i.i:                                     ; preds = %if.then.i.i.if.end10.i.i_crit_edge, %if.end18.if.end10.i.i_crit_edge
  %sw_entry_point_layer11.i.i = getelementptr inbounds %struct.ice_hw, ptr %20, i32 0, i32 19
  %25 = ptrtoint ptr %sw_entry_point_layer11.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sw_entry_point_layer11.i.i, align 2
  br label %ice_sched_get_vsi_layer.exit.i

ice_sched_get_vsi_layer.exit.i:                   ; preds = %if.end10.i.i, %if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge
  %retval.1.i.i = phi i8 [ %sub.i.i, %if.then.i.i.ice_sched_get_vsi_layer.exit.i_crit_edge ], [ %26, %if.end10.i.i ]
  %27 = ptrtoint ptr %tc_num.i.le to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tc_num.i.le, align 1
  %idxprom.i.i = zext i8 %28 to i32
  %idxprom1.i.i = zext i8 %retval.1.i.i to i32
  %arrayidx2.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i, i32 %idxprom1.i.i
  %29 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.011.i = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not12.i = icmp eq ptr %node.011.i, null
  br i1 %tobool.not12.i, label %ice_sched_get_vsi_layer.exit.i.for.inc_crit_edge, label %ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge

ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i
  br label %while.body.i

ice_sched_get_vsi_layer.exit.i.for.inc_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge
  %node.013.i = phi ptr [ %node.0.i, %if.end.i.while.body.i_crit_edge ], [ %node.011.i, %ice_sched_get_vsi_layer.exit.i.while.body.i_crit_edge ]
  %vsi_handle2.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 5
  %30 = ptrtoint ptr %vsi_handle2.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsi_handle2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %vsi_handle)
  %cmp.i = icmp eq i16 %31, %vsi_handle
  br i1 %cmp.i, label %if.end22, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %sibling.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 1
  %32 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %node.0.i = load ptr, ptr %sibling.i, align 4
  %tobool.not.i128 = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i128, label %if.end.i.for.inc_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end22:                                         ; preds = %while.body.i
  %call23 = tail call fastcc zeroext i1 @ice_sched_is_leaf_node_present(ptr noundef nonnull %node.013.i)
  br i1 %call23, label %do.body25, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end22
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 8
  %33 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp51146.not = icmp eq i8 %34, 0
  br i1 %cmp51146.not, label %while.cond.preheader.if.then65_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.then65_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 2
  br label %while.body

do.body25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_rm_vsi_cfg, %if.then37)) #10
          to label %exit_sched_rm_vsi_cfg [label %if.then37], !srcloc !92

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw4, align 4
  %add.ptr41 = getelementptr i8, ptr %36, i32 -2960
  %37 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr41, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug626, ptr noundef %dev43, ptr noundef nonnull @.str.32, i32 noundef %indvars.iv) #10
  br label %exit_sched_rm_vsi_cfg

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %while.body.lr.ph
  %j.0147 = phi i8 [ 0, %while.body.lr.ph ], [ %j.1, %if.end62.while.body_crit_edge ]
  %conv49 = zext i8 %j.0147 to i32
  %39 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %children, align 4
  %arrayidx = getelementptr ptr, ptr %40, i32 %conv49
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %owner53 = getelementptr inbounds %struct.ice_sched_node, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %owner53 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %owner53, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %owner)
  %cmp56 = icmp eq i8 %44, %owner
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_free_sched_node(ptr noundef nonnull %pi, ptr noundef %42)
  br label %if.end62

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nuw i8 %j.0147, 1
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then58
  %j.1 = phi i8 [ 0, %if.then58 ], [ %inc, %if.else ]
  %45 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_children, align 4
  %cmp51 = icmp ult i8 %j.1, %46
  br i1 %cmp51, label %if.end62.while.body_crit_edge, label %while.end

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool64.not = icmp eq i8 %46, 0
  br i1 %tobool64.not, label %while.end.if.then65_crit_edge, label %while.end.if.end69_crit_edge

while.end.if.end69_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

while.end.if.then65_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

if.then65:                                        ; preds = %while.end.if.then65_crit_edge, %while.cond.preheader.if.then65_crit_edge
  tail call void @ice_free_sched_node(ptr noundef nonnull %pi, ptr noundef nonnull %node.013.i)
  %arrayidx68 = getelementptr [8 x ptr], ptr %sched, i32 0, i32 %indvars.iv
  %47 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx68, align 4
  %48 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw4, align 4
  %agg_list.i = getelementptr inbounds %struct.ice_hw, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %agg_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %agg_list.i, align 4
  %cmp.not64.i = icmp eq ptr %51, %agg_list.i
  br i1 %cmp.not64.i, label %if.then65.if.end69_crit_edge, label %if.then65.for.cond17.preheader.i_crit_edge

if.then65.for.cond17.preheader.i_crit_edge:       ; preds = %if.then65
  br label %for.cond17.preheader.i

if.then65.if.end69_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

for.cond.loopexit.i:                              ; preds = %for.cond17.i
  %cmp.not.i = icmp eq ptr %.pn66.i, %agg_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.if.end69_crit_edge, label %for.cond.loopexit.i.for.cond17.preheader.i_crit_edge

for.cond.loopexit.i.for.cond17.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond17.preheader.i

for.cond.loopexit.i.if.end69_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

for.cond17.preheader.i:                           ; preds = %for.cond.loopexit.i.for.cond17.preheader.i_crit_edge, %if.then65.for.cond17.preheader.i_crit_edge
  %.pn66.in.i = phi ptr [ %.pn66.i, %for.cond.loopexit.i.for.cond17.preheader.i_crit_edge ], [ %51, %if.then65.for.cond17.preheader.i_crit_edge ]
  %agg_info.065.i = getelementptr i8, ptr %.pn66.in.i, i32 -8
  %52 = ptrtoint ptr %.pn66.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn66.i = load ptr, ptr %.pn66.in.i, align 4
  br label %for.cond17.i

for.cond17.i:                                     ; preds = %for.body22.i.for.cond17.i_crit_edge, %for.cond17.preheader.i
  %agg_vsi_info.0.in.i = phi ptr [ %agg_vsi_info.0.i, %for.body22.i.for.cond17.i_crit_edge ], [ %agg_info.065.i, %for.cond17.preheader.i ]
  %53 = ptrtoint ptr %agg_vsi_info.0.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %agg_vsi_info.0.i = load ptr, ptr %agg_vsi_info.0.in.i, align 4
  %cmp20.not.i = icmp eq ptr %agg_vsi_info.0.i, %agg_info.065.i
  br i1 %cmp20.not.i, label %for.cond.loopexit.i, label %for.body22.i

for.body22.i:                                     ; preds = %for.cond17.i
  %vsi_handle23.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i, i32 0, i32 2
  %54 = ptrtoint ptr %vsi_handle23.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vsi_handle23.i, align 4
  %cmp25.i = icmp eq i16 %55, %vsi_handle
  br i1 %cmp25.i, label %if.then.i, label %for.body22.i.for.cond17.i_crit_edge

for.body22.i.for.cond17.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond17.i

if.then.i:                                        ; preds = %for.body22.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %agg_vsi_info.0.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %agg_vsi_info.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %agg_vsi_info.0.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %agg_vsi_info.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %62 = ptrtoint ptr %agg_vsi_info.0.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %agg_vsi_info.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %agg_vsi_info.0.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw4, align 4
  %add.ptr31.i = getelementptr i8, ptr %65, i32 -2960
  %66 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr31.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef %agg_vsi_info.0.i) #10
  br label %if.end69

if.end69:                                         ; preds = %list_del.exit.i, %for.cond.loopexit.i.if.end69_crit_edge, %if.then65.if.end69_crit_edge, %while.end.if.end69_crit_edge
  %arrayidx80 = getelementptr %struct.ice_vsi_ctx, ptr %call9, i32 0, i32 5, i32 4, i32 %indvars.iv
  %arrayidx76 = getelementptr %struct.ice_vsi_ctx, ptr %call9, i32 0, i32 5, i32 3, i32 %indvars.iv
  %arrayidx80.sink = select i1 %cmp71, ptr %arrayidx76, ptr %arrayidx80
  %68 = ptrtoint ptr %arrayidx80.sink to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %arrayidx80.sink, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end69, %if.end.i.for.inc_crit_edge, %ice_sched_get_vsi_layer.exit.i.for.inc_crit_edge, %ice_sched_get_tc_node.exit.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc.exit_sched_rm_vsi_cfg_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.exit_sched_rm_vsi_cfg_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_sched_rm_vsi_cfg

exit_sched_rm_vsi_cfg:                            ; preds = %for.inc.exit_sched_rm_vsi_cfg_crit_edge, %if.then37, %do.body25, %if.end7.exit_sched_rm_vsi_cfg_crit_edge
  %status.2 = phi i32 [ -22, %if.end7.exit_sched_rm_vsi_cfg_crit_edge ], [ -16, %if.then37 ], [ -16, %do.body25 ], [ 0, %for.inc.exit_sched_rm_vsi_cfg_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  br label %cleanup86

cleanup86:                                        ; preds = %exit_sched_rm_vsi_cfg, %do.end.cleanup86_crit_edge
  %retval.0 = phi i32 [ %status.2, %exit_sched_rm_vsi_cfg ], [ -22, %do.end.cleanup86_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rm_vsi_rdma_cfg(ptr noundef %pi, i16 noundef zeroext %vsi_handle) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_sched_rm_vsi_cfg(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_agg(ptr noundef %pi, i32 noundef %agg_id, i32 noundef %agg_type, i8 noundef zeroext %tc_bitmap) local_unnamed_addr #3 align 64 {
entry:
  %bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap) #10
  %conv = zext i8 %tc_bitmap to i32
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %bitmap, align 4
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %call = call fastcc i32 @ice_sched_cfg_agg(ptr noundef %pi, i32 noundef %agg_id, i32 noundef %agg_type, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 4
  %agg_list.i.i = getelementptr inbounds %struct.ice_hw, ptr %2, i32 0, i32 21
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then
  %.pn.in.i.i = phi ptr [ %agg_list.i.i, %if.then ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %agg_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end_crit_edge, label %for.body.i.i

for.cond.i.i.if.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i.i:                                     ; preds = %for.cond.i.i
  %agg_id2.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %4 = ptrtoint ptr %agg_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agg_id2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %5, %agg_id
  br i1 %cmp3.i.i, label %ice_get_agg_info.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

ice_get_agg_info.exit.i:                          ; preds = %for.body.i.i
  %agg_info.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool.not.i = icmp eq ptr %agg_info.0.le.i.i, null
  br i1 %tobool.not.i, label %ice_get_agg_info.exit.i.if.end_crit_edge, label %if.end.i

ice_get_agg_info.exit.i.if.end_crit_edge:         ; preds = %ice_get_agg_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %ice_get_agg_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %replay_tc_bitmap.i = getelementptr i8, ptr %.pn.i.i, i32 244
  %6 = ptrtoint ptr %replay_tc_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %replay_tc_bitmap.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %ice_get_agg_info.exit.i.if.end_crit_edge, %for.cond.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ 0, %if.end.i ], [ -22, %ice_get_agg_info.exit.i.if.end_crit_edge ], [ -22, %for.cond.i.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_cfg_agg(ptr noundef %pi, i32 noundef %agg_id, i32 noundef %agg_type, ptr nocapture noundef readonly %tc_bitmap) unnamed_addr #3 align 64 {
entry:
  %num_nodes.i = alloca [9 x i16], align 2
  %first_node_teid.i = alloca i32, align 4
  %num_nodes_added.i = alloca i16, align 2
  %bitmap.addr.i55 = alloca i32, align 4
  %bitmap.addr.i.i.i = alloca i32, align 4
  %bitmap.addr.i.i = alloca i32, align 4
  %bitmap.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %agg_list.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %agg_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %agg_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %agg_id2.i = getelementptr i8, ptr %.pn.i, i32 12
  %3 = ptrtoint ptr %agg_id2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %agg_id2.i, align 4
  %cmp3.i = icmp eq i32 %4, %agg_id
  br i1 %cmp3.i, label %ice_get_agg_info.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

ice_get_agg_info.exit:                            ; preds = %for.body.i
  %agg_info.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %agg_info.0.le.i, null
  br i1 %tobool.not, label %ice_get_agg_info.exit.if.then_crit_edge, label %ice_get_agg_info.exit.if.end8_crit_edge

ice_get_agg_info.exit.if.end8_crit_edge:          ; preds = %ice_get_agg_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

ice_get_agg_info.exit.if.then_crit_edge:          ; preds = %ice_get_agg_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ice_get_agg_info.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -2960
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #10
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %agg_id5 = getelementptr inbounds %struct.ice_sched_agg_info, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %agg_id5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %agg_id, ptr %agg_id5, align 4
  %agg_type6 = getelementptr inbounds %struct.ice_sched_agg_info, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %agg_type6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %agg_type, ptr %agg_type6, align 4
  %tc_bitmap7 = getelementptr inbounds %struct.ice_sched_agg_info, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %tc_bitmap7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tc_bitmap7, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %prev.i, align 4
  %list_entry = getelementptr inbounds %struct.ice_sched_agg_info, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %agg_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %agg_list.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %agg_list.i, ptr noundef %13) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list_entry, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.ice_sched_agg_info, ptr %call.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %agg_list.i, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %agg_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list_entry, ptr %agg_list.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i, %if.end.if.end8_crit_edge, %ice_get_agg_info.exit.if.end8_crit_edge
  %agg_info.0 = phi ptr [ %agg_info.0.le.i, %ice_get_agg_info.exit.if.end8_crit_edge ], [ %call.i, %if.end.if.end8_crit_edge ], [ %call.i, %if.end.i.i ]
  %tc_bitmap17 = getelementptr inbounds %struct.ice_sched_agg_info, ptr %agg_info.0, i32 0, i32 2
  %tobool.not.i.i59 = icmp eq ptr %pi, null
  %agg_id.i = getelementptr inbounds %struct.ice_sched_agg_info, ptr %agg_info.0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %indvars.iv = phi i32 [ 0, %if.end8 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %tc_bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tc_bitmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i)
  %20 = ptrtoint ptr %bitmap.addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bitmap.addr.i, align 4
  %bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i = load volatile i32, ptr %bitmap.addr.i, align 4
  %21 = shl nuw nsw i32 1, %indvars.iv
  %22 = and i32 %bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i)
  %23 = ptrtoint ptr %tc_bitmap17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tc_bitmap17, align 4
  br i1 %tobool.i.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i.i)
  %25 = ptrtoint ptr %bitmap.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bitmap.addr.i.i, align 4
  %bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i = load volatile i32, ptr %bitmap.addr.i.i, align 4
  %26 = and i32 %bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i.i)
  br i1 %tobool.i.not.i, label %if.then11.for.inc_crit_edge, label %if.end.i

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %if.then11
  %27 = ptrtoint ptr %agg_info.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %agg_info.0, align 4
  %cmp.not6.i.i = icmp eq ptr %28, %agg_info.0
  br i1 %cmp.not6.i.i, label %if.end.i.if.end4.i_crit_edge, label %for.body.i.i.preheader

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

for.body.i.i.preheader:                           ; preds = %if.end.i
  %29 = trunc i32 %indvars.iv to i8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %agg_vsi_info.07.i.i = phi ptr [ %tmp.08.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %28, %for.body.i.i.preheader ]
  %30 = ptrtoint ptr %agg_vsi_info.07.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %tmp.08.i.i = load ptr, ptr %agg_vsi_info.07.i.i, align 4
  %vsi_handle8.i.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.07.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %vsi_handle8.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vsi_handle8.i.i, align 4
  %tc_bitmap.i.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.07.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %tc_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tc_bitmap.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i.i.i)
  %35 = ptrtoint ptr %bitmap.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %bitmap.addr.i.i.i, align 4
  %bitmap.addr.i.i.i.0.bitmap.addr.i.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i.i = load volatile i32, ptr %bitmap.addr.i.i.i, align 4
  %36 = and i32 %bitmap.addr.i.i.i.0.bitmap.addr.i.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i.i = icmp eq i32 %36, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i.i.i)
  br i1 %tobool.i.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i54

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i.i54:                                     ; preds = %for.body.i.i
  %call9.i.i = tail call fastcc i32 @ice_sched_move_vsi_to_agg(ptr noundef %pi, i16 noundef zeroext %32, i32 noundef 0, i8 noundef zeroext %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i.i, label %if.end.i.i54.cleanup_crit_edge

if.end.i.i54.cleanup_crit_edge:                   ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.i.i:                                     ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %indvars.iv, ptr noundef %tc_bitmap.i.i) #10
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end11.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %tmp.08.i.i, %agg_info.0
  br i1 %cmp.not.i.i, label %cleanup.i.i.if.end4.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

cleanup.i.i.if.end4.i_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %cleanup.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %37 = ptrtoint ptr %agg_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %agg_id.i, align 4
  %39 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1, align 4
  br i1 %tobool.not.i.i59, label %if.end4.i.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end4.i
  %41 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pi, align 8
  %tobool1.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge, label %for.cond.preheader.i.i.i

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i.i.i:                         ; preds = %lor.lhs.false.i.i.i
  %num_children.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %num_children.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_children.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp23.not.i.i.i = icmp eq i8 %44, 0
  br i1 %cmp23.not.i.i.i, label %for.cond.preheader.i.i.i.cleanup_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.cleanup_crit_edge:       ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %children.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %children.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %children.i.i.i, align 4
  %wide.trip.count.i.i.i = zext i8 %44 to i32
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.cleanup_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.cond.i.i.i.cleanup_crit_edge:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %46, i32 %indvars.iv.i.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tc_num.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %tc_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tc_num.i.i.i, align 1
  %51 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %51)
  %cmp8.i.i.i = icmp eq i32 %indvars.iv, %51
  br i1 %cmp8.i.i.i, label %ice_sched_get_tc_node.exit.i.i, label %for.cond.i.i.i

ice_sched_get_tc_node.exit.i.i:                   ; preds = %for.body.i.i.i
  %tobool.not.i1.i = icmp eq ptr %48, null
  br i1 %tobool.not.i1.i, label %ice_sched_get_tc_node.exit.i.i.cleanup_crit_edge, label %if.end.i2.i

ice_sched_get_tc_node.exit.i.i.cleanup_crit_edge: ; preds = %ice_sched_get_tc_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i2.i:                                      ; preds = %ice_sched_get_tc_node.exit.i.i
  %tobool.not.i34.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i34.i.i, label %if.end.i2.i.cleanup_crit_edge, label %if.end.i.i.i

if.end.i2.i.cleanup_crit_edge:                    ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i2.i
  %num_tx_sched_layers.i.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %40, i32 0, i32 15
  %52 = ptrtoint ptr %num_tx_sched_layers.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_tx_sched_layers.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %53)
  %cmp.i.i.i.i = icmp ugt i8 %53, 7
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.if.end10.i.i.i.i_crit_edge

if.end.i.i.i.if.end10.i.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %sub.i.i.i.i = add i8 %53, -6
  %sw_entry_point_layer.i.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %40, i32 0, i32 19
  %54 = ptrtoint ptr %sw_entry_point_layer.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sw_entry_point_layer.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i.i.i, i8 %55)
  %cmp7.not.i.i.i.i = icmp ugt i8 %sub.i.i.i.i, %55
  br i1 %cmp7.not.i.i.i.i, label %if.then.i.i.i.i.ice_sched_get_agg_layer.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.if.end10.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end10.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i.i

if.then.i.i.i.i.ice_sched_get_agg_layer.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_agg_layer.exit.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.if.end10.i.i.i.i_crit_edge, %if.end.i.i.i.if.end10.i.i.i.i_crit_edge
  %sw_entry_point_layer11.i.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %40, i32 0, i32 19
  %56 = ptrtoint ptr %sw_entry_point_layer11.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sw_entry_point_layer11.i.i.i.i, align 2
  br label %ice_sched_get_agg_layer.exit.i.i.i

ice_sched_get_agg_layer.exit.i.i.i:               ; preds = %if.end10.i.i.i.i, %if.then.i.i.i.i.ice_sched_get_agg_layer.exit.i.i.i_crit_edge
  %retval.1.i.i.i.i = phi i8 [ %sub.i.i.i.i, %if.then.i.i.i.i.ice_sched_get_agg_layer.exit.i.i.i_crit_edge ], [ %57, %if.end10.i.i.i.i ]
  %idxprom1.i.i.i.i = zext i8 %retval.1.i.i.i.i to i32
  %arrayidx2.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %indvars.iv, i32 %idxprom1.i.i.i.i
  %58 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %node.015.i.i.i = load ptr, ptr %arrayidx2.i.i.i.i, align 4
  %tobool3.not16.i.i.i = icmp eq ptr %node.015.i.i.i, null
  br i1 %tobool3.not16.i.i.i, label %ice_sched_get_agg_layer.exit.i.i.i.cleanup_crit_edge, label %ice_sched_get_agg_layer.exit.i.i.i.while.body.i.i.i_crit_edge

ice_sched_get_agg_layer.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i.i.i
  br label %while.body.i.i.i

ice_sched_get_agg_layer.exit.i.i.i.cleanup_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.i.i:                                 ; preds = %if.end6.i.i.i.while.body.i.i.i_crit_edge, %ice_sched_get_agg_layer.exit.i.i.i.while.body.i.i.i_crit_edge
  %node.017.i.i.i = phi ptr [ %node.0.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ %node.015.i.i.i, %ice_sched_get_agg_layer.exit.i.i.i.while.body.i.i.i_crit_edge ]
  %agg_id4.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %agg_id4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %agg_id4.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %38)
  %cmp.i.i.i = icmp eq i32 %60, %38
  br i1 %cmp.i.i.i, label %if.end5.i.i, label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %while.body.i.i.i
  %sibling.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %sibling.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %node.0.i.i.i = load ptr, ptr %sibling.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %if.end6.i.i.i.cleanup_crit_edge, label %if.end6.i.i.i.while.body.i.i.i_crit_edge

if.end6.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end6.i.i.i.cleanup_crit_edge:                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i:                                      ; preds = %while.body.i.i.i
  %call6.i.i = tail call fastcc zeroext i1 @ice_sched_is_agg_inuse(ptr noundef nonnull %pi, ptr noundef nonnull %node.017.i.i.i) #10
  br i1 %call6.i.i, label %if.end5.i.i.cleanup_crit_edge, label %while.cond.preheader.i.i

if.end5.i.i.cleanup_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader.i.i:                         ; preds = %if.end5.i.i
  %sw_entry_point_layer.i.i = getelementptr inbounds %struct.ice_hw, ptr %40, i32 0, i32 19
  %62 = ptrtoint ptr %sw_entry_point_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sw_entry_point_layer.i.i, align 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end14.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %agg_node.0.i.i = phi ptr [ %67, %if.end14.i.i.while.cond.i.i_crit_edge ], [ %node.017.i.i.i, %while.cond.preheader.i.i ]
  %tx_sched_layer.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %agg_node.0.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %tx_sched_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tx_sched_layer.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %63)
  %cmp.i.i = icmp ugt i8 %65, %63
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.if.end8.i_crit_edge

while.cond.i.i.if.end8.i_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %66 = ptrtoint ptr %agg_node.0.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %agg_node.0.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %67, null
  br i1 %tobool12.not.i.i, label %while.body.i.i.cleanup_crit_edge, label %if.end14.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14.i.i:                                     ; preds = %while.body.i.i
  %num_children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_children.i.i, align 4
  %cmp16.i.i = icmp ugt i8 %69, 1
  br i1 %cmp16.i.i, label %if.end14.i.i.if.end8.i_crit_edge, label %if.end14.i.i.while.cond.i.i_crit_edge

if.end14.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

if.end14.i.i.if.end8.i_crit_edge:                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end14.i.i.if.end8.i_crit_edge, %while.cond.i.i.if.end8.i_crit_edge
  tail call void @ice_free_sched_node(ptr noundef nonnull %pi, ptr noundef nonnull %agg_node.0.i.i) #10
  tail call void @_clear_bit(i32 noundef %indvars.iv, ptr noundef %tc_bitmap17) #10
  br label %for.inc

if.end16:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i55)
  %70 = ptrtoint ptr %bitmap.addr.i55 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %24, ptr %bitmap.addr.i55, align 4
  %bitmap.addr.i55.0.bitmap.addr.i55.0.bitmap.addr.0..i56 = load volatile i32, ptr %bitmap.addr.i55, align 4
  %71 = and i32 %bitmap.addr.i55.0.bitmap.addr.i55.0.bitmap.addr.0..i56, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i58.not = icmp eq i32 %71, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i55)
  br i1 %tobool.i58.not, label %if.end21, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %num_nodes.i) #10
  %72 = call ptr @memset(ptr %num_nodes.i, i32 0, i32 18)
  %73 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_node_teid.i) #10
  %75 = ptrtoint ptr %first_node_teid.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %first_node_teid.i, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_nodes_added.i) #10
  %76 = ptrtoint ptr %num_nodes_added.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -1, ptr %num_nodes_added.i, align 2, !annotation !95
  br i1 %tobool.not.i.i59, label %if.end21.ice_sched_add_agg_cfg.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.end21.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end21
  %77 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pi, align 8
  %tobool1.not.i.i = icmp eq ptr %78, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, label %for.cond.preheader.i.i

lor.lhs.false.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %num_children.i.i60 = getelementptr inbounds %struct.ice_sched_node, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %num_children.i.i60 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_children.i.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp23.not.i.i = icmp eq i8 %80, 0
  br i1 %cmp23.not.i.i, label %for.cond.preheader.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, label %for.body.lr.ph.i.i61

for.cond.preheader.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

for.body.lr.ph.i.i61:                             ; preds = %for.cond.preheader.i.i
  %children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %78, i32 0, i32 2
  %81 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %children.i.i, align 4
  %wide.trip.count.i.i = zext i8 %80 to i32
  br label %for.body.i.i62

for.cond.i.i:                                     ; preds = %for.body.i.i62
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, label %for.cond.i.i.for.body.i.i62_crit_edge

for.cond.i.i.for.body.i.i62_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i62

for.cond.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

for.body.i.i62:                                   ; preds = %for.cond.i.i.for.body.i.i62_crit_edge, %for.body.lr.ph.i.i61
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i61 ], [ %indvars.iv.next.i.i, %for.cond.i.i.for.body.i.i62_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %82, i32 %indvars.iv.i.i
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i, align 4
  %tc_num.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %tc_num.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tc_num.i.i, align 1
  %87 = zext i8 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %87)
  %cmp8.i.i = icmp eq i32 %indvars.iv, %87
  br i1 %cmp8.i.i, label %ice_sched_get_tc_node.exit.i, label %for.cond.i.i

ice_sched_get_tc_node.exit.i:                     ; preds = %for.body.i.i62
  %tobool.not.i = icmp eq ptr %84, null
  br i1 %tobool.not.i, label %ice_sched_get_tc_node.exit.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, label %if.end.i63

ice_sched_get_tc_node.exit.i.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %ice_sched_get_tc_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

if.end.i63:                                       ; preds = %ice_sched_get_tc_node.exit.i
  %tobool.not.i107.i = icmp eq ptr %74, null
  br i1 %tobool.not.i107.i, label %if.end.i63.if.end5.i_crit_edge, label %if.end.i.i65

if.end.i63.if.end5.i_crit_edge:                   ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end.i.i65:                                     ; preds = %if.end.i63
  %num_tx_sched_layers.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %74, i32 0, i32 15
  %88 = ptrtoint ptr %num_tx_sched_layers.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %num_tx_sched_layers.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %89)
  %cmp.i.i.i64 = icmp ugt i8 %89, 7
  br i1 %cmp.i.i.i64, label %if.then.i.i.i, label %if.end.i.i65.if.end10.i.i.i_crit_edge

if.end.i.i65.if.end10.i.i.i_crit_edge:            ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i65
  %sub.i.i.i = add i8 %89, -6
  %sw_entry_point_layer.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %74, i32 0, i32 19
  %90 = ptrtoint ptr %sw_entry_point_layer.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sw_entry_point_layer.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i.i, i8 %91)
  %cmp7.not.i.i.i = icmp ugt i8 %sub.i.i.i, %91
  br i1 %cmp7.not.i.i.i, label %if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge, label %if.then.i.i.i.if.end10.i.i.i_crit_edge

if.then.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i

if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_agg_layer.exit.i.i

if.end10.i.i.i:                                   ; preds = %if.then.i.i.i.if.end10.i.i.i_crit_edge, %if.end.i.i65.if.end10.i.i.i_crit_edge
  %sw_entry_point_layer11.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %74, i32 0, i32 19
  %92 = ptrtoint ptr %sw_entry_point_layer11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sw_entry_point_layer11.i.i.i, align 2
  br label %ice_sched_get_agg_layer.exit.i.i

ice_sched_get_agg_layer.exit.i.i:                 ; preds = %if.end10.i.i.i, %if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge
  %retval.1.i.i.i = phi i8 [ %sub.i.i.i, %if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge ], [ %93, %if.end10.i.i.i ]
  %idxprom1.i.i.i = zext i8 %retval.1.i.i.i to i32
  %arrayidx2.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %indvars.iv, i32 %idxprom1.i.i.i
  %94 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %node.015.i.i = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool3.not16.i.i = icmp eq ptr %node.015.i.i, null
  br i1 %tobool3.not16.i.i, label %ice_sched_get_agg_layer.exit.i.i.if.end5.i_crit_edge, label %ice_sched_get_agg_layer.exit.i.i.while.body.i.i67_crit_edge

ice_sched_get_agg_layer.exit.i.i.while.body.i.i67_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i.i
  br label %while.body.i.i67

ice_sched_get_agg_layer.exit.i.i.if.end5.i_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

while.body.i.i67:                                 ; preds = %if.end6.i.i.while.body.i.i67_crit_edge, %ice_sched_get_agg_layer.exit.i.i.while.body.i.i67_crit_edge
  %node.017.i.i = phi ptr [ %node.0.i.i, %if.end6.i.i.while.body.i.i67_crit_edge ], [ %node.015.i.i, %ice_sched_get_agg_layer.exit.i.i.while.body.i.i67_crit_edge ]
  %agg_id4.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i.i, i32 0, i32 4
  %95 = ptrtoint ptr %agg_id4.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %agg_id4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %agg_id)
  %cmp.i.i66 = icmp eq i32 %96, %agg_id
  br i1 %cmp.i.i66, label %while.body.i.i67.if.end25_crit_edge, label %if.end6.i.i

while.body.i.i67.if.end25_crit_edge:              ; preds = %while.body.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end6.i.i:                                      ; preds = %while.body.i.i67
  %sibling.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %sibling.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %node.0.i.i = load ptr, ptr %sibling.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool3.not.i.i, label %if.end6.i.i.if.end5.i_crit_edge, label %if.end6.i.i.while.body.i.i67_crit_edge

if.end6.i.i.while.body.i.i67_crit_edge:           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i67

if.end6.i.i.if.end5.i_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end6.i.i.if.end5.i_crit_edge, %ice_sched_get_agg_layer.exit.i.i.if.end5.i_crit_edge, %if.end.i63.if.end5.i_crit_edge
  %num_tx_sched_layers.i.i = getelementptr inbounds %struct.ice_hw, ptr %74, i32 0, i32 15
  %98 = ptrtoint ptr %num_tx_sched_layers.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %num_tx_sched_layers.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %99)
  %cmp.i109.i = icmp ugt i8 %99, 7
  br i1 %cmp.i109.i, label %if.then.i.i, label %if.end5.i.if.end10.i.i_crit_edge

if.end5.i.if.end10.i.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  %sub.i.i = add i8 %99, -6
  %sw_entry_point_layer.i.i68 = getelementptr inbounds %struct.ice_hw, ptr %74, i32 0, i32 19
  %100 = ptrtoint ptr %sw_entry_point_layer.i.i68 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %sw_entry_point_layer.i.i68, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i, i8 %101)
  %cmp7.not.i.i = icmp ugt i8 %sub.i.i, %101
  br i1 %cmp7.not.i.i, label %if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge, label %if.then.i.i.if.end10.i.i_crit_edge

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_agg_layer.exit.i

if.end10.i.i:                                     ; preds = %if.then.i.i.if.end10.i.i_crit_edge, %if.end5.i.if.end10.i.i_crit_edge
  %sw_entry_point_layer11.i.i = getelementptr inbounds %struct.ice_hw, ptr %74, i32 0, i32 19
  %102 = ptrtoint ptr %sw_entry_point_layer11.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %sw_entry_point_layer11.i.i, align 2
  br label %ice_sched_get_agg_layer.exit.i

ice_sched_get_agg_layer.exit.i:                   ; preds = %if.end10.i.i, %if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge
  %retval.1.i.i = phi i8 [ %sub.i.i, %if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge ], [ %103, %if.end10.i.i ]
  %idxprom.i = zext i8 %retval.1.i.i to i32
  %arrayidx.i = getelementptr [9 x i16], ptr %num_nodes.i, i32 0, i32 %idxprom.i
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 1, ptr %arrayidx.i, align 2
  %sw_entry_point_layer.i = getelementptr inbounds %struct.ice_hw, ptr %74, i32 0, i32 19
  %105 = ptrtoint ptr %sw_entry_point_layer.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sw_entry_point_layer.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %retval.1.i.i)
  %cmp122.i = icmp ult i8 %106, %retval.1.i.i
  br i1 %cmp122.i, label %for.body.lr.ph.i, label %ice_sched_get_agg_layer.exit.i.for.cond26.preheader.i_crit_edge

ice_sched_get_agg_layer.exit.i.for.cond26.preheader.i_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond26.preheader.i

for.body.lr.ph.i:                                 ; preds = %ice_sched_get_agg_layer.exit.i
  %107 = zext i8 %106 to i32
  br label %for.body.i69

for.cond26.preheader.i:                           ; preds = %for.inc.i.for.cond26.preheader.i_crit_edge, %ice_sched_get_agg_layer.exit.i.for.cond26.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %retval.1.i.i)
  %cmp29.not127.i = icmp ugt i8 %106, %retval.1.i.i
  br i1 %cmp29.not127.i, label %for.cond26.preheader.i.if.end25_crit_edge, label %for.cond26.preheader.i.for.body31.i_crit_edge

for.cond26.preheader.i.for.body31.i_crit_edge:    ; preds = %for.cond26.preheader.i
  br label %for.body31.i

for.cond26.preheader.i.if.end25_crit_edge:        ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.body.i69:                                     ; preds = %for.inc.i.for.body.i69_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ %107, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i69_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %indvars.iv, i32 %indvars.iv.i
  %108 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %parent.0118.i = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool10.not119.i = icmp eq ptr %parent.0118.i, null
  br i1 %tobool10.not119.i, label %for.body.i69.if.then20.critedge.i_crit_edge, label %while.body.lr.ph.i

for.body.i69.if.then20.critedge.i_crit_edge:      ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.critedge.i

while.body.lr.ph.i:                               ; preds = %for.body.i69
  %arrayidx13.i = getelementptr %struct.ice_hw, ptr %74, i32 0, i32 20, i32 %indvars.iv.i
  %109 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx13.i, align 2
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %sibling.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.0120.i, i32 0, i32 1
  %111 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %parent.0.i = load ptr, ptr %sibling.i, align 4
  %tobool10.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool10.not.i, label %while.cond.i.if.then20.critedge.i_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.i.if.then20.critedge.i_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.critedge.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %parent.0120.i = phi ptr [ %parent.0118.i, %while.body.lr.ph.i ], [ %parent.0.i, %while.cond.i.while.body.i_crit_edge ]
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.0120.i, i32 0, i32 8
  %112 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %num_children.i, align 4
  %114 = zext i8 %113 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %114)
  %cmp15.i = icmp ugt i16 %110, %114
  br i1 %cmp15.i, label %while.body.i.for.inc.i_crit_edge, label %while.cond.i

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then20.critedge.i:                             ; preds = %while.cond.i.if.then20.critedge.i_crit_edge, %for.body.i69.if.then20.critedge.i_crit_edge
  %arrayidx22.i = getelementptr [9 x i16], ptr %num_nodes.i, i32 0, i32 %indvars.iv.i
  %115 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx22.i, align 2
  %inc.i = add i16 %116, 1
  store i16 %inc.i, ptr %arrayidx22.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.critedge.i, %while.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %idxprom.i
  br i1 %exitcond.not.i, label %for.inc.i.for.cond26.preheader.i_crit_edge, label %for.inc.i.for.body.i69_crit_edge

for.inc.i.for.body.i69_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i69

for.inc.i.for.cond26.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond26.preheader.i

for.body31.i:                                     ; preds = %for.inc60.i.for.body31.i_crit_edge, %for.cond26.preheader.i.for.body31.i_crit_edge
  %i.1129.i = phi i8 [ %inc61.i, %for.inc60.i.for.body31.i_crit_edge ], [ %106, %for.cond26.preheader.i.for.body31.i_crit_edge ]
  %parent.1128.i = phi ptr [ %parent.2.i, %for.inc60.i.for.body31.i_crit_edge ], [ %84, %for.cond26.preheader.i.for.body31.i_crit_edge ]
  %tobool32.not.i = icmp eq ptr %parent.1128.i, null
  br i1 %tobool32.not.i, label %for.body31.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, label %if.end34.i

for.body31.i.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

if.end34.i:                                       ; preds = %for.body31.i
  %conv27131.i = zext i8 %i.1129.i to i32
  %arrayidx36.i = getelementptr [9 x i16], ptr %num_nodes.i, i32 0, i32 %conv27131.i
  %117 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx36.i, align 2
  %call37.i = call fastcc i32 @ice_sched_add_nodes_to_layer(ptr noundef nonnull %pi, ptr noundef nonnull %84, ptr noundef nonnull %parent.1128.i, i8 noundef zeroext %i.1129.i, i16 noundef zeroext %118, ptr noundef nonnull %first_node_teid.i, ptr noundef nonnull %num_nodes_added.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %lor.lhs.false.i, label %if.end34.i.ice_sched_add_agg_cfg.exit.thread_crit_edge

if.end34.i.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end34.i
  %119 = ptrtoint ptr %num_nodes_added.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %num_nodes_added.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %120)
  %cmp43.not.i = icmp eq i16 %118, %120
  br i1 %cmp43.not.i, label %if.end46.i, label %lor.lhs.false.i.ice_sched_add_agg_cfg.exit.thread_crit_edge

lor.lhs.false.i.ice_sched_add_agg_cfg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_agg_cfg.exit.thread

if.end46.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool47.not.i = icmp eq i16 %118, 0
  br i1 %tobool47.not.i, label %if.else.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end46.i
  %121 = ptrtoint ptr %first_node_teid.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %first_node_teid.i, align 4
  %call49.i = tail call ptr @ice_sched_find_node_by_teid(ptr noundef nonnull %84, i32 noundef %122) #10
  %tobool50.not.i = icmp eq ptr %call49.i, null
  br i1 %tobool50.not.i, label %if.then48.i.for.inc60.i_crit_edge, label %land.lhs.true.i

if.then48.i.for.inc60.i_crit_edge:                ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60.i

land.lhs.true.i:                                  ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_cmp1(i8 %i.1129.i, i8 %retval.1.i.i)
  %cmp53.i = icmp eq i8 %i.1129.i, %retval.1.i.i
  br i1 %cmp53.i, label %if.then55.i, label %land.lhs.true.i.for.inc60.i_crit_edge

land.lhs.true.i.for.inc60.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60.i

if.then55.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %agg_id56.i = getelementptr inbounds %struct.ice_sched_node, ptr %call49.i, i32 0, i32 4
  %123 = ptrtoint ptr %agg_id56.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %agg_id, ptr %agg_id56.i, align 4
  br label %for.inc60.i

if.else.i:                                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.1128.i, i32 0, i32 2
  %124 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %children.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  br label %for.inc60.i

for.inc60.i:                                      ; preds = %if.else.i, %if.then55.i, %land.lhs.true.i.for.inc60.i_crit_edge, %if.then48.i.for.inc60.i_crit_edge
  %parent.2.i = phi ptr [ %call49.i, %if.then55.i ], [ %call49.i, %land.lhs.true.i.for.inc60.i_crit_edge ], [ null, %if.then48.i.for.inc60.i_crit_edge ], [ %127, %if.else.i ]
  %inc61.i = add i8 %i.1129.i, 1
  %cmp29.not.i = icmp ugt i8 %inc61.i, %retval.1.i.i
  br i1 %cmp29.not.i, label %for.inc60.i.if.end25_crit_edge, label %for.inc60.i.for.body31.i_crit_edge

for.inc60.i.for.body31.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.i

for.inc60.i.if.end25_crit_edge:                   ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

ice_sched_add_agg_cfg.exit.thread:                ; preds = %lor.lhs.false.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, %if.end34.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, %for.body31.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, %ice_sched_get_tc_node.exit.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, %for.cond.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, %for.cond.preheader.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, %lor.lhs.false.i.i.ice_sched_add_agg_cfg.exit.thread_crit_edge, %if.end21.ice_sched_add_agg_cfg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_nodes_added.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_node_teid.i) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %num_nodes.i) #10
  br label %cleanup

if.end25:                                         ; preds = %for.inc60.i.if.end25_crit_edge, %for.cond26.preheader.i.if.end25_crit_edge, %while.body.i.i67.if.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_nodes_added.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_node_teid.i) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %num_nodes.i) #10
  tail call void @_set_bit(i32 noundef %indvars.iv, ptr noundef %tc_bitmap17) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.end16.for.inc_crit_edge, %if.end8.i, %if.then11.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ice_sched_add_agg_cfg.exit.thread, %while.body.i.i.cleanup_crit_edge, %if.end5.i.i.cleanup_crit_edge, %if.end6.i.i.i.cleanup_crit_edge, %ice_sched_get_agg_layer.exit.i.i.i.cleanup_crit_edge, %if.end.i2.i.cleanup_crit_edge, %ice_sched_get_tc_node.exit.i.i.cleanup_crit_edge, %for.cond.i.i.i.cleanup_crit_edge, %for.cond.preheader.i.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.i54.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -5, %ice_sched_add_agg_cfg.exit.thread ], [ -5, %while.body.i.i.cleanup_crit_edge ], [ -2, %if.end6.i.i.i.cleanup_crit_edge ], [ -5, %for.cond.i.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end.i.i54.cleanup_crit_edge ], [ -2, %ice_sched_get_agg_layer.exit.i.i.i.cleanup_crit_edge ], [ -2, %if.end.i2.i.cleanup_crit_edge ], [ -5, %for.cond.preheader.i.i.i.cleanup_crit_edge ], [ -5, %if.end4.i.cleanup_crit_edge ], [ -5, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ -16, %if.end5.i.i.cleanup_crit_edge ], [ -5, %ice_sched_get_tc_node.exit.i.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_move_vsi_to_agg(ptr noundef %pi, i32 noundef %agg_id, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc_bitmap) local_unnamed_addr #3 align 64 {
entry:
  %bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap) #10
  %conv = zext i8 %tc_bitmap to i32
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %bitmap, align 4
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %call = call fastcc i32 @ice_sched_assoc_vsi_to_agg(ptr noundef %pi, i32 noundef %agg_id, i16 noundef zeroext %vsi_handle, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 4
  %agg_list.i.i = getelementptr inbounds %struct.ice_hw, ptr %2, i32 0, i32 21
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then
  %.pn.in.i.i = phi ptr [ %agg_list.i.i, %if.then ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %agg_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end_crit_edge, label %for.body.i.i

for.cond.i.i.if.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i.i:                                     ; preds = %for.cond.i.i
  %agg_id2.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %4 = ptrtoint ptr %agg_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agg_id2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %5, %agg_id
  br i1 %cmp3.i.i, label %ice_get_agg_info.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

ice_get_agg_info.exit.i:                          ; preds = %for.body.i.i
  %agg_info.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool.not.i = icmp eq ptr %agg_info.0.le.i.i, null
  br i1 %tobool.not.i, label %ice_get_agg_info.exit.i.if.end_crit_edge, label %ice_get_agg_info.exit.i.for.cond.i9.i_crit_edge

ice_get_agg_info.exit.i.for.cond.i9.i_crit_edge:  ; preds = %ice_get_agg_info.exit.i
  br label %for.cond.i9.i

ice_get_agg_info.exit.i.if.end_crit_edge:         ; preds = %ice_get_agg_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.i9.i:                                    ; preds = %for.body.i10.i.for.cond.i9.i_crit_edge, %ice_get_agg_info.exit.i.for.cond.i9.i_crit_edge
  %agg_vsi_info.0.in.i.i = phi ptr [ %agg_vsi_info.0.i.i, %for.body.i10.i.for.cond.i9.i_crit_edge ], [ %agg_info.0.le.i.i, %ice_get_agg_info.exit.i.for.cond.i9.i_crit_edge ]
  %6 = ptrtoint ptr %agg_vsi_info.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg_vsi_info.0.i.i = load ptr, ptr %agg_vsi_info.0.in.i.i, align 4
  %cmp.not.i8.i = icmp eq ptr %agg_vsi_info.0.i.i, %agg_info.0.le.i.i
  br i1 %cmp.not.i8.i, label %for.cond.i9.i.if.end_crit_edge, label %for.body.i10.i

for.cond.i9.i.if.end_crit_edge:                   ; preds = %for.cond.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i10.i:                                   ; preds = %for.cond.i9.i
  %vsi_handle2.i.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %vsi_handle2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vsi_handle2.i.i, align 4
  %cmp4.i.i = icmp eq i16 %8, %vsi_handle
  br i1 %cmp4.i.i, label %ice_get_agg_vsi_info.exit.i, label %for.body.i10.i.for.cond.i9.i_crit_edge

for.body.i10.i.for.cond.i9.i_crit_edge:           ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i9.i

ice_get_agg_vsi_info.exit.i:                      ; preds = %for.body.i10.i
  %tobool2.not.i = icmp eq ptr %agg_vsi_info.0.i.i, null
  br i1 %tobool2.not.i, label %ice_get_agg_vsi_info.exit.i.if.end_crit_edge, label %if.end4.i

ice_get_agg_vsi_info.exit.i.if.end_crit_edge:     ; preds = %ice_get_agg_vsi_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end4.i:                                        ; preds = %ice_get_agg_vsi_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %replay_tc_bitmap.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %replay_tc_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %replay_tc_bitmap.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %ice_get_agg_vsi_info.exit.i.if.end_crit_edge, %for.cond.i9.i.if.end_crit_edge, %ice_get_agg_info.exit.i.if.end_crit_edge, %for.cond.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ 0, %if.end4.i ], [ -22, %ice_get_agg_info.exit.i.if.end_crit_edge ], [ -22, %ice_get_agg_vsi_info.exit.i.if.end_crit_edge ], [ -22, %for.cond.i9.i.if.end_crit_edge ], [ -22, %for.cond.i.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_assoc_vsi_to_agg(ptr noundef %pi, i32 noundef %agg_id, i16 noundef zeroext %vsi_handle, ptr nocapture noundef readonly %tc_bitmap) unnamed_addr #3 align 64 {
entry:
  %bitmap.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %1, i16 noundef zeroext %vsi_handle) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %agg_list.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %agg_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %agg_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %agg_id2.i = getelementptr i8, ptr %.pn.i, i32 12
  %3 = ptrtoint ptr %agg_id2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %agg_id2.i, align 4
  %cmp3.i = icmp eq i32 %4, %agg_id
  br i1 %cmp3.i, label %ice_get_agg_info.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

ice_get_agg_info.exit:                            ; preds = %for.body.i
  %agg_info.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %agg_info.0.le.i, null
  br i1 %tobool.not, label %ice_get_agg_info.exit.cleanup_crit_edge, label %ice_get_agg_info.exit.for.cond.i123_crit_edge

ice_get_agg_info.exit.for.cond.i123_crit_edge:    ; preds = %ice_get_agg_info.exit
  br label %for.cond.i123

ice_get_agg_info.exit.cleanup_crit_edge:          ; preds = %ice_get_agg_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.i123:                                    ; preds = %ice_get_agg_vsi_info.exit.i.for.cond.i123_crit_edge, %ice_get_agg_info.exit.for.cond.i123_crit_edge
  %.pn.in.i120 = phi ptr [ %.pn.i121, %ice_get_agg_vsi_info.exit.i.for.cond.i123_crit_edge ], [ %agg_list.i, %ice_get_agg_info.exit.for.cond.i123_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i120 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i121 = load ptr, ptr %.pn.in.i120, align 4
  %agg_info.0.i = getelementptr i8, ptr %.pn.i121, i32 -8
  %cmp.not.i122 = icmp eq ptr %.pn.i121, %agg_list.i
  br i1 %cmp.not.i122, label %for.cond.i123.if.end27_crit_edge, label %for.cond.i123.for.cond.i.i_crit_edge

for.cond.i123.for.cond.i.i_crit_edge:             ; preds = %for.cond.i123
  br label %for.cond.i.i

for.cond.i123.if.end27_crit_edge:                 ; preds = %for.cond.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i123.for.cond.i.i_crit_edge
  %agg_vsi_info.0.in.i.i = phi ptr [ %agg_vsi_info.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %agg_info.0.i, %for.cond.i123.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %agg_vsi_info.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg_vsi_info.0.i.i = load ptr, ptr %agg_vsi_info.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %agg_vsi_info.0.i.i, %agg_info.0.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.ice_get_agg_vsi_info.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ice_get_agg_vsi_info.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_get_agg_vsi_info.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %vsi_handle2.i.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %vsi_handle2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vsi_handle2.i.i, align 4
  %cmp4.i.i = icmp eq i16 %8, %vsi_handle
  br i1 %cmp4.i.i, label %for.body.i.i.ice_get_agg_vsi_info.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.ice_get_agg_vsi_info.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_get_agg_vsi_info.exit.i

ice_get_agg_vsi_info.exit.i:                      ; preds = %for.body.i.i.ice_get_agg_vsi_info.exit.i_crit_edge, %for.cond.i.i.ice_get_agg_vsi_info.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %agg_vsi_info.0.i.i, %for.body.i.i.ice_get_agg_vsi_info.exit.i_crit_edge ], [ null, %for.cond.i.i.ice_get_agg_vsi_info.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %ice_get_agg_vsi_info.exit.i.for.cond.i123_crit_edge, label %ice_get_vsi_agg_info.exit

ice_get_agg_vsi_info.exit.i.for.cond.i123_crit_edge: ; preds = %ice_get_agg_vsi_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i123

ice_get_vsi_agg_info.exit:                        ; preds = %ice_get_agg_vsi_info.exit.i
  %tobool7.not = icmp eq ptr %agg_info.0.i, null
  %cmp.not = icmp eq ptr %.pn.i121, %.pn.i
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %ice_get_vsi_agg_info.exit.if.end27_crit_edge, label %ice_get_vsi_agg_info.exit.for.cond_crit_edge

ice_get_vsi_agg_info.exit.for.cond_crit_edge:     ; preds = %ice_get_vsi_agg_info.exit
  br label %for.cond

ice_get_vsi_agg_info.exit.if.end27_crit_edge:     ; preds = %ice_get_vsi_agg_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %ice_get_vsi_agg_info.exit.for.cond_crit_edge
  %old_agg_vsi_info.0.in = phi ptr [ %old_agg_vsi_info.0, %for.body.for.cond_crit_edge ], [ %agg_info.0.i, %ice_get_vsi_agg_info.exit.for.cond_crit_edge ]
  %9 = ptrtoint ptr %old_agg_vsi_info.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %old_agg_vsi_info.0 = load ptr, ptr %old_agg_vsi_info.0.in, align 4
  %cmp15.not = icmp eq ptr %old_agg_vsi_info.0, %agg_info.0.i
  br i1 %cmp15.not, label %for.cond.if.end27_crit_edge, label %for.body

for.cond.if.end27_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.body:                                         ; preds = %for.cond
  %vsi_handle16 = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %old_agg_vsi_info.0, i32 0, i32 2
  %10 = ptrtoint ptr %vsi_handle16 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsi_handle16, align 4
  %cmp18 = icmp eq i16 %11, %vsi_handle
  br i1 %cmp18, label %for.body.if.end27_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %for.body.if.end27_crit_edge, %for.cond.if.end27_crit_edge, %ice_get_vsi_agg_info.exit.if.end27_crit_edge, %for.cond.i123.if.end27_crit_edge
  %old_agg_vsi_info.1 = phi ptr [ null, %ice_get_vsi_agg_info.exit.if.end27_crit_edge ], [ %agg_info.0.i, %for.cond.if.end27_crit_edge ], [ %old_agg_vsi_info.0, %for.body.if.end27_crit_edge ], [ null, %for.cond.i123.if.end27_crit_edge ]
  br label %for.cond.i125

for.cond.i125:                                    ; preds = %for.body.i126.for.cond.i125_crit_edge, %if.end27
  %agg_vsi_info.0.in.i = phi ptr [ %agg_info.0.le.i, %if.end27 ], [ %agg_vsi_info.0.i, %for.body.i126.for.cond.i125_crit_edge ]
  %12 = ptrtoint ptr %agg_vsi_info.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg_vsi_info.0.i = load ptr, ptr %agg_vsi_info.0.in.i, align 4
  %cmp.not.i124 = icmp eq ptr %agg_vsi_info.0.i, %agg_info.0.le.i
  br i1 %cmp.not.i124, label %for.cond.i125.if.then30_crit_edge, label %for.body.i126

for.cond.i125.if.then30_crit_edge:                ; preds = %for.cond.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

for.body.i126:                                    ; preds = %for.cond.i125
  %vsi_handle2.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %vsi_handle2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vsi_handle2.i, align 4
  %cmp4.i = icmp eq i16 %14, %vsi_handle
  br i1 %cmp4.i, label %ice_get_agg_vsi_info.exit, label %for.body.i126.for.cond.i125_crit_edge

for.body.i126.for.cond.i125_crit_edge:            ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i125

ice_get_agg_vsi_info.exit:                        ; preds = %for.body.i126
  %tobool29.not = icmp eq ptr %agg_vsi_info.0.i, null
  br i1 %tobool29.not, label %ice_get_agg_vsi_info.exit.if.then30_crit_edge, label %ice_get_agg_vsi_info.exit.if.end41_crit_edge

ice_get_agg_vsi_info.exit.if.end41_crit_edge:     ; preds = %ice_get_agg_vsi_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

ice_get_agg_vsi_info.exit.if.then30_crit_edge:    ; preds = %ice_get_agg_vsi_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %ice_get_agg_vsi_info.exit.if.then30_crit_edge, %for.cond.i125.if.then30_crit_edge
  %add.ptr33 = getelementptr i8, ptr %1, i32 -2960
  %15 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr33, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #10
  %tobool35.not = icmp eq ptr %call.i, null
  br i1 %tobool35.not, label %if.then30.cleanup_crit_edge, label %if.end37

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.then30
  %vsi_handle38 = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %vsi_handle38 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %vsi_handle, ptr %vsi_handle38, align 4
  %18 = ptrtoint ptr %agg_info.0.le.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %agg_info.0.le.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull %agg_info.0.le.i, ptr noundef %19) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %agg_info.0.le.i, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %agg_info.0.le.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call.i, ptr %agg_info.0.le.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end.i.i, %if.end37.if.end41_crit_edge, %ice_get_agg_vsi_info.exit.if.end41_crit_edge
  %agg_vsi_info.0 = phi ptr [ %agg_vsi_info.0.i, %ice_get_agg_vsi_info.exit.if.end41_crit_edge ], [ %call.i, %if.end37.if.end41_crit_edge ], [ %call.i, %if.end.i.i ]
  %tc_bitmap55 = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0, i32 0, i32 1
  %tobool56.not = icmp eq ptr %old_agg_vsi_info.1, null
  %tc_bitmap59 = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %old_agg_vsi_info.1, i32 0, i32 1
  br label %for.body46

for.body46:                                       ; preds = %for.inc62.for.body46_crit_edge, %if.end41
  %indvars.iv = phi i32 [ 0, %if.end41 ], [ %indvars.iv.next, %for.inc62.for.body46_crit_edge ]
  %24 = ptrtoint ptr %tc_bitmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tc_bitmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i)
  %26 = ptrtoint ptr %bitmap.addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %bitmap.addr.i, align 4
  %bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i = load volatile i32, ptr %bitmap.addr.i, align 4
  %27 = shl nuw nsw i32 1, %indvars.iv
  %28 = and i32 %bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i)
  br i1 %tobool.i.not, label %for.body46.for.inc62_crit_edge, label %if.end49

for.body46.for.inc62_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc62

if.end49:                                         ; preds = %for.body46
  %29 = trunc i32 %indvars.iv to i8
  %call50 = tail call fastcc i32 @ice_sched_move_vsi_to_agg(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i32 noundef %agg_id, i8 noundef zeroext %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.for.end63_crit_edge

if.end49.for.end63_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63

if.end53:                                         ; preds = %if.end49
  tail call void @_set_bit(i32 noundef %indvars.iv, ptr noundef %tc_bitmap55) #10
  br i1 %tobool56.not, label %if.end53.for.inc62_crit_edge, label %if.then57

if.end53.for.inc62_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc62

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %indvars.iv, ptr noundef %tc_bitmap59) #10
  br label %for.inc62

for.inc62:                                        ; preds = %if.then57, %if.end53.for.inc62_crit_edge, %for.body46.for.inc62_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc62.for.end63_crit_edge, label %for.inc62.for.body46_crit_edge

for.inc62.for.body46_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46

for.inc62.for.end63_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63

for.end63:                                        ; preds = %for.inc62.for.end63_crit_edge, %if.end49.for.end63_crit_edge
  %status.2 = phi i32 [ %call50, %if.end49.for.end63_crit_edge ], [ 0, %for.inc62.for.end63_crit_edge ]
  br i1 %tobool56.not, label %for.end63.cleanup_crit_edge, label %land.lhs.true65

for.end63.cleanup_crit_edge:                      ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true65:                                  ; preds = %for.end63
  %30 = ptrtoint ptr %tc_bitmap59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tc_bitmap59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool67.not = icmp eq i32 %31, 0
  br i1 %tobool67.not, label %if.then68, label %land.lhs.true65.cleanup_crit_edge

land.lhs.true65.cleanup_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true65
  %call.i.i128 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %old_agg_vsi_info.1) #10
  br i1 %call.i.i128, label %if.end.i.i129, label %if.then68.list_del.exit_crit_edge

if.then68.list_del.exit_crit_edge:                ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i129:                                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %old_agg_vsi_info.1, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %old_agg_vsi_info.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %old_agg_vsi_info.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i129, %if.then68.list_del.exit_crit_edge
  %38 = ptrtoint ptr %old_agg_vsi_info.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %old_agg_vsi_info.1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %old_agg_vsi_info.1, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1, align 4
  %add.ptr73 = getelementptr i8, ptr %41, i32 -2960
  %42 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr73, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev75, ptr noundef nonnull %old_agg_vsi_info.1) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %land.lhs.true65.cleanup_crit_edge, %for.end63.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %ice_get_agg_info.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %ice_get_agg_info.exit.cleanup_crit_edge ], [ -22, %if.then30.cleanup_crit_edge ], [ %status.2, %list_del.exit ], [ %status.2, %land.lhs.true65.cleanup_crit_edge ], [ %status.2, %for.end63.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_q_bw_lmt(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle, i32 noundef %rl_type, i32 noundef %bw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_sched_set_q_bw_lmt(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle, i32 noundef %rl_type, i32 noundef %bw)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_set_q_bw_lmt(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle, i32 noundef %rl_type, i32 noundef %bw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %1, i16 noundef zeroext %vsi_handle) #10
  br i1 %call, label %if.end, label %entry.cleanup47_crit_edge

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end:                                           ; preds = %entry
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call2 = tail call ptr @ice_get_lan_q_ctx(ptr noundef %3, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.exit_q_bw_lmt_crit_edge, label %if.end4

if.end.exit_q_bw_lmt_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi, align 8
  %q_teid = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %q_teid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_teid, align 4
  %call5 = tail call ptr @ice_sched_find_node_by_teid(ptr noundef %5, i32 noundef %7)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_set_q_bw_lmt.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_set_q_bw_lmt, %if.then12)) #10
          to label %exit_q_bw_lmt [label %if.then12], !srcloc !92

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 -2960
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_set_q_bw_lmt.__UNIQUE_ID_ddebug630, ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  br label %exit_q_bw_lmt

if.end16:                                         ; preds = %if.end4
  %data = getelementptr inbounds %struct.ice_sched_node, ptr %call5, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp.not = icmp eq i8 %13, 5
  br i1 %cmp.not, label %if.end19, label %if.end16.exit_q_bw_lmt_crit_edge

if.end16.exit_q_bw_lmt_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rl_type)
  %cmp20 = icmp eq i32 %rl_type, 3
  br i1 %cmp20, label %if.then22, label %if.end19.if.end35_crit_edge

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then22:                                        ; preds = %if.end19
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %call5, i32 0, i32 7
  %14 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_sched_layer, align 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %conv.i = zext i8 %15 to i32
  %num_tx_sched_layers.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %num_tx_sched_layers.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_tx_sched_layers.i, align 2
  %conv2.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %15)
  %cmp.not.i = icmp ugt i8 %19, %15
  br i1 %cmp.not.i, label %if.end.i, label %if.then22.exit_q_bw_lmt_crit_edge

if.then22.exit_q_bw_lmt_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

if.end.i:                                         ; preds = %if.then22
  %layer_info14.i = getelementptr inbounds %struct.ice_hw, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %layer_info14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %layer_info14.i, align 8
  %max_srl_profiles.i = getelementptr %struct.ice_aqc_layer_props, ptr %21, i32 %conv.i, i32 8
  %22 = ptrtoint ptr %max_srl_profiles.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_srl_profiles.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool17.not.i = icmp eq i16 %23, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.end.i.ice_sched_get_rl_prof_layer.exit_crit_edge

if.end.i.ice_sched_get_rl_prof_layer.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_rl_prof_layer.exit

if.else.i:                                        ; preds = %if.end.i
  %sub.i = add nsw i32 %conv2.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp22.i = icmp sgt i32 %sub.i, %conv.i
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.else.i.if.else34.i_crit_edge

if.else.i.if.else34.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %add.i = add nuw nsw i32 %conv.i, 1
  %max_srl_profiles27.i = getelementptr %struct.ice_aqc_layer_props, ptr %21, i32 %add.i, i32 8
  %24 = ptrtoint ptr %max_srl_profiles27.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_srl_profiles27.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool29.not.i = icmp eq i16 %25, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.else34.i_crit_edge, label %if.then30.i

land.lhs.true.i.if.else34.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv33.i = trunc i32 %add.i to i8
  br label %ice_sched_get_rl_prof_layer.exit

if.else34.i:                                      ; preds = %land.lhs.true.i.if.else34.i_crit_edge, %if.else.i.if.else34.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp36.not.i = icmp eq i8 %15, 0
  br i1 %cmp36.not.i, label %if.else34.i.exit_q_bw_lmt_crit_edge, label %land.lhs.true38.i

if.else34.i.exit_q_bw_lmt_crit_edge:              ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

land.lhs.true38.i:                                ; preds = %if.else34.i
  %sub41.i = add nsw i32 %conv.i, -1
  %max_srl_profiles43.i = getelementptr %struct.ice_aqc_layer_props, ptr %21, i32 %sub41.i, i32 8
  %26 = ptrtoint ptr %max_srl_profiles43.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max_srl_profiles43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool45.not.i = icmp eq i16 %27, 0
  br i1 %tobool45.not.i, label %land.lhs.true38.i.exit_q_bw_lmt_crit_edge, label %if.then46.i

land.lhs.true38.i.exit_q_bw_lmt_crit_edge:        ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

if.then46.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv49.i = trunc i32 %sub41.i to i8
  br label %ice_sched_get_rl_prof_layer.exit

ice_sched_get_rl_prof_layer.exit:                 ; preds = %if.then46.i, %if.then30.i, %if.end.i.ice_sched_get_rl_prof_layer.exit_crit_edge
  %retval.0.i77 = phi i8 [ %conv33.i, %if.then30.i ], [ %conv49.i, %if.then46.i ], [ %15, %if.end.i.ice_sched_get_rl_prof_layer.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i77, i8 %19)
  %cmp27.not = icmp ult i8 %retval.0.i77, %19
  br i1 %cmp27.not, label %if.end30, label %ice_sched_get_rl_prof_layer.exit.exit_q_bw_lmt_crit_edge

ice_sched_get_rl_prof_layer.exit.exit_q_bw_lmt_crit_edge: ; preds = %ice_sched_get_rl_prof_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

if.end30:                                         ; preds = %ice_sched_get_rl_prof_layer.exit
  %conv.i78 = zext i8 %retval.0.i77 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %retval.0.i77)
  %cmp.i = icmp eq i8 %15, %retval.0.i77
  br i1 %cmp.i, label %if.end30.if.end35_crit_edge, label %lor.lhs.false.i

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

lor.lhs.false.i:                                  ; preds = %if.end30
  %add.i79 = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i79, i32 %conv.i78)
  %cmp6.i = icmp eq i32 %add.i79, %conv.i78
  br i1 %cmp6.i, label %land.lhs.true.i80, label %lor.lhs.false.i.lor.lhs.false11.i_crit_edge

lor.lhs.false.i.lor.lhs.false11.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false11.i

land.lhs.true.i80:                                ; preds = %lor.lhs.false.i
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %call5, i32 0, i32 8
  %28 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_children.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp9.i = icmp eq i8 %29, 1
  br i1 %cmp9.i, label %land.lhs.true.i80.if.end35_crit_edge, label %land.lhs.true.i80.lor.lhs.false11.i_crit_edge

land.lhs.true.i80.lor.lhs.false11.i_crit_edge:    ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false11.i

land.lhs.true.i80.if.end35_crit_edge:             ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

lor.lhs.false11.i:                                ; preds = %land.lhs.true.i80.lor.lhs.false11.i_crit_edge, %lor.lhs.false.i.lor.lhs.false11.i_crit_edge
  %sub.i81 = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i81, i32 %conv.i78)
  %cmp15.i = icmp eq i32 %sub.i81, %conv.i78
  br i1 %cmp15.i, label %land.lhs.true17.i, label %lor.lhs.false11.i.exit_q_bw_lmt_crit_edge

lor.lhs.false11.i.exit_q_bw_lmt_crit_edge:        ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

land.lhs.true17.i:                                ; preds = %lor.lhs.false11.i
  %30 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call5, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %land.lhs.true17.i.exit_q_bw_lmt_crit_edge, label %land.lhs.true18.i

land.lhs.true17.i.exit_q_bw_lmt_crit_edge:        ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

land.lhs.true18.i:                                ; preds = %land.lhs.true17.i
  %num_children20.i = getelementptr inbounds %struct.ice_sched_node, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %num_children20.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_children20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp22.i82 = icmp eq i8 %33, 1
  br i1 %cmp22.i82, label %land.lhs.true18.i.if.end35_crit_edge, label %land.lhs.true18.i.exit_q_bw_lmt_crit_edge

land.lhs.true18.i.exit_q_bw_lmt_crit_edge:        ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

land.lhs.true18.i.if.end35_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true18.i.if.end35_crit_edge, %land.lhs.true.i80.if.end35_crit_edge, %if.end30.if.end35_crit_edge, %if.end19.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bw)
  %cmp36 = icmp eq i32 %bw, -1
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef %pi, ptr noundef nonnull %call5, i32 noundef %rl_type, i32 noundef -1) #10
  br label %if.end41

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef %pi, ptr noundef nonnull %call5, i32 noundef %rl_type, i32 noundef %bw)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then38
  %status.1 = phi i32 [ %call.i, %if.then38 ], [ %call40, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool42.not = icmp eq i32 %status.1, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.exit_q_bw_lmt_crit_edge

if.end41.exit_q_bw_lmt_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

if.then43:                                        ; preds = %if.end41
  %34 = zext i32 %rl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %rl_type, label %if.then43.exit_q_bw_lmt_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb3.i
  ]

if.then43.exit_q_bw_lmt_crit_edge:                ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_q_bw_lmt

sw.bb.i:                                          ; preds = %if.then43
  %bw_t_info.i = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2
  br i1 %cmp36, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bw_t_info.i) #10
  br label %ice_set_clear_cir_bw.exit.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %bw_t_info.i) #10
  br label %ice_set_clear_cir_bw.exit.i

ice_set_clear_cir_bw.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %bw.sink.i.i = phi i32 [ 0, %if.then.i.i ], [ %bw, %if.else.i.i ]
  %35 = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bw.sink.i.i, ptr %35, align 4
  br label %exit_q_bw_lmt

sw.bb1.i:                                         ; preds = %if.then43
  %bw_t_info2.i = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2
  br i1 %cmp36, label %if.then.i10.i, label %if.else.i11.i

if.then.i10.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %bw_t_info2.i) #10
  br label %ice_set_clear_eir_bw.exit.i

if.else.i11.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bw_t_info2.i) #10
  %shared_bw.i.i = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %shared_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %shared_bw.i.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %bw_t_info2.i) #10
  br label %ice_set_clear_eir_bw.exit.i

ice_set_clear_eir_bw.exit.i:                      ; preds = %if.else.i11.i, %if.then.i10.i
  %bw.sink.i12.i = phi i32 [ 0, %if.then.i10.i ], [ %bw, %if.else.i11.i ]
  %38 = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %bw.sink.i12.i, ptr %38, align 4
  br label %exit_q_bw_lmt

sw.bb3.i:                                         ; preds = %if.then43
  %bw_t_info4.i = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2
  br i1 %cmp36, label %if.then.i14.i, label %if.else.i15.i

if.then.i14.i:                                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bw_t_info4.i) #10
  br label %ice_set_clear_shared_bw.exit.i

if.else.i15.i:                                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %bw_t_info4.i) #10
  %eir_bw.i.i = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %eir_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %eir_bw.i.i, align 4
  tail call void @_set_bit(i32 noundef 5, ptr noundef %bw_t_info4.i) #10
  br label %ice_set_clear_shared_bw.exit.i

ice_set_clear_shared_bw.exit.i:                   ; preds = %if.else.i15.i, %if.then.i14.i
  %bw.sink.i16.i = phi i32 [ 0, %if.then.i14.i ], [ %bw, %if.else.i15.i ]
  %41 = getelementptr inbounds %struct.ice_q_ctx, ptr %call2, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bw.sink.i16.i, ptr %41, align 4
  br label %exit_q_bw_lmt

exit_q_bw_lmt:                                    ; preds = %ice_set_clear_shared_bw.exit.i, %ice_set_clear_eir_bw.exit.i, %ice_set_clear_cir_bw.exit.i, %if.then43.exit_q_bw_lmt_crit_edge, %if.end41.exit_q_bw_lmt_crit_edge, %land.lhs.true18.i.exit_q_bw_lmt_crit_edge, %land.lhs.true17.i.exit_q_bw_lmt_crit_edge, %lor.lhs.false11.i.exit_q_bw_lmt_crit_edge, %ice_sched_get_rl_prof_layer.exit.exit_q_bw_lmt_crit_edge, %land.lhs.true38.i.exit_q_bw_lmt_crit_edge, %if.else34.i.exit_q_bw_lmt_crit_edge, %if.then22.exit_q_bw_lmt_crit_edge, %if.end16.exit_q_bw_lmt_crit_edge, %if.then12, %do.body, %if.end.exit_q_bw_lmt_crit_edge
  %status.2 = phi i32 [ -22, %if.end16.exit_q_bw_lmt_crit_edge ], [ %status.1, %if.end41.exit_q_bw_lmt_crit_edge ], [ -22, %if.then12 ], [ -22, %if.end.exit_q_bw_lmt_crit_edge ], [ -22, %do.body ], [ -22, %if.then43.exit_q_bw_lmt_crit_edge ], [ 0, %ice_set_clear_shared_bw.exit.i ], [ 0, %ice_set_clear_eir_bw.exit.i ], [ 0, %ice_set_clear_cir_bw.exit.i ], [ -5, %land.lhs.true18.i.exit_q_bw_lmt_crit_edge ], [ -5, %land.lhs.true17.i.exit_q_bw_lmt_crit_edge ], [ -5, %lor.lhs.false11.i.exit_q_bw_lmt_crit_edge ], [ -22, %ice_sched_get_rl_prof_layer.exit.exit_q_bw_lmt_crit_edge ], [ -22, %if.then22.exit_q_bw_lmt_crit_edge ], [ -22, %land.lhs.true38.i.exit_q_bw_lmt_crit_edge ], [ -22, %if.else34.i.exit_q_bw_lmt_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  br label %cleanup47

cleanup47:                                        ; preds = %exit_q_bw_lmt, %entry.cleanup47_crit_edge
  %retval.0 = phi i32 [ %status.2, %exit_q_bw_lmt ], [ -22, %entry.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_q_bw_dflt_lmt(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle, i32 noundef %rl_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_sched_set_q_bw_lmt(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle, i32 noundef %rl_type, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sched_set_node_bw_lmt_per_tc(ptr noundef %pi, i32 noundef %id, i32 noundef %agg_type, i8 noundef zeroext %tc, i32 noundef %rl_type, i32 noundef %bw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rl_type)
  %cmp = icmp eq i32 %rl_type, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %0 = zext i32 %agg_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %agg_type, label %if.end2.do.body_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %lor.lhs.false.i.i
  ]

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb.i:                                          ; preds = %if.end2
  %conv.i = trunc i32 %id to i16
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 4
  %call.i = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %2, i16 noundef zeroext %conv.i) #10
  br i1 %call.i, label %if.end.i, label %sw.bb.i.do.body_crit_edge

sw.bb.i.do.body_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i:                                         ; preds = %sw.bb.i
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 4
  %call2.i = tail call ptr @ice_get_vsi_ctx(ptr noundef %4, i16 noundef zeroext %conv.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.do.body_crit_edge, label %ice_sched_get_node_by_id_type.exit

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false.i.i:                                ; preds = %if.end2
  %5 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi, align 8
  %tobool1.not.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.body_crit_edge, label %for.cond.preheader.i.i

lor.lhs.false.i.i.do.body_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %num_children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_children.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp23.not.i.i = icmp eq i8 %8, 0
  br i1 %cmp23.not.i.i, label %for.cond.preheader.i.i.do.body_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.do.body_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %children.i.i, align 4
  %wide.trip.count.i.i = zext i8 %8 to i32
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.body_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.do.body_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %10, i32 %indvars.iv.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %tc_num.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %tc_num.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tc_num.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %tc)
  %cmp8.i.i = icmp eq i8 %14, %tc
  br i1 %cmp8.i.i, label %ice_sched_get_tc_node.exit.i, label %for.cond.i.i

ice_sched_get_tc_node.exit.i:                     ; preds = %for.body.i.i
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %ice_sched_get_tc_node.exit.i.do.body_crit_edge, label %if.then9.i

ice_sched_get_tc_node.exit.i.do.body_crit_edge:   ; preds = %ice_sched_get_tc_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then9.i:                                       ; preds = %ice_sched_get_tc_node.exit.i
  %hw1.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %15 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1.i.i, align 4
  %tobool.not.i22.i = icmp eq ptr %16, null
  br i1 %tobool.not.i22.i, label %if.then9.i.do.body_crit_edge, label %if.end.i.i

if.then9.i.do.body_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i.i:                                       ; preds = %if.then9.i
  %num_tx_sched_layers.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %num_tx_sched_layers.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_tx_sched_layers.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp.i.i.i = icmp ugt i8 %18, 7
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.if.end10.i.i.i_crit_edge

if.end.i.i.if.end10.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %sub.i.i.i = add i8 %18, -6
  %sw_entry_point_layer.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %16, i32 0, i32 19
  %19 = ptrtoint ptr %sw_entry_point_layer.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sw_entry_point_layer.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i.i, i8 %20)
  %cmp7.not.i.i.i = icmp ugt i8 %sub.i.i.i, %20
  br i1 %cmp7.not.i.i.i, label %if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge, label %if.then.i.i.i.if.end10.i.i.i_crit_edge

if.then.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i.i

if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_agg_layer.exit.i.i

if.end10.i.i.i:                                   ; preds = %if.then.i.i.i.if.end10.i.i.i_crit_edge, %if.end.i.i.if.end10.i.i.i_crit_edge
  %sw_entry_point_layer11.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %16, i32 0, i32 19
  %21 = ptrtoint ptr %sw_entry_point_layer11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sw_entry_point_layer11.i.i.i, align 2
  br label %ice_sched_get_agg_layer.exit.i.i

ice_sched_get_agg_layer.exit.i.i:                 ; preds = %if.end10.i.i.i, %if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge
  %retval.1.i.i.i = phi i8 [ %sub.i.i.i, %if.then.i.i.i.ice_sched_get_agg_layer.exit.i.i_crit_edge ], [ %22, %if.end10.i.i.i ]
  %idxprom.i.i.i = zext i8 %tc to i32
  %idxprom1.i.i.i = zext i8 %retval.1.i.i.i to i32
  %arrayidx2.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i.i, i32 %idxprom1.i.i.i
  %23 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %node.015.i.i = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool3.not16.i.i = icmp eq ptr %node.015.i.i, null
  br i1 %tobool3.not16.i.i, label %ice_sched_get_agg_layer.exit.i.i.do.body_crit_edge, label %ice_sched_get_agg_layer.exit.i.i.while.body.i.i_crit_edge

ice_sched_get_agg_layer.exit.i.i.while.body.i.i_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i.i
  br label %while.body.i.i

ice_sched_get_agg_layer.exit.i.i.do.body_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %ice_sched_get_agg_layer.exit.i.i.while.body.i.i_crit_edge
  %node.017.i.i = phi ptr [ %node.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %node.015.i.i, %ice_sched_get_agg_layer.exit.i.i.while.body.i.i_crit_edge ]
  %agg_id4.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %agg_id4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agg_id4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %id)
  %cmp.i.i = icmp eq i32 %25, %id
  br i1 %cmp.i.i, label %while.body.i.i.if.end12_crit_edge, label %if.end6.i.i

while.body.i.i.if.end12_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end6.i.i:                                      ; preds = %while.body.i.i
  %sibling.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %sibling.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %node.0.i.i = load ptr, ptr %sibling.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool3.not.i.i, label %if.end6.i.i.do.body_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end6.i.i.do.body_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

ice_sched_get_node_by_id_type.exit:               ; preds = %if.end.i
  %sched.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %call2.i, i32 0, i32 5
  %idxprom.i = zext i8 %tc to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr %sched.i, i32 0, i32 %idxprom.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not = icmp eq ptr %28, null
  br i1 %tobool3.not, label %ice_sched_get_node_by_id_type.exit.do.body_crit_edge, label %ice_sched_get_node_by_id_type.exit.if.end12_crit_edge

ice_sched_get_node_by_id_type.exit.if.end12_crit_edge: ; preds = %ice_sched_get_node_by_id_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

ice_sched_get_node_by_id_type.exit.do.body_crit_edge: ; preds = %ice_sched_get_node_by_id_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %ice_sched_get_node_by_id_type.exit.do.body_crit_edge, %if.end6.i.i.do.body_crit_edge, %ice_sched_get_agg_layer.exit.i.i.do.body_crit_edge, %if.then9.i.do.body_crit_edge, %ice_sched_get_tc_node.exit.i.do.body_crit_edge, %for.cond.i.i.do.body_crit_edge, %for.cond.preheader.i.i.do.body_crit_edge, %lor.lhs.false.i.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %sw.bb.i.do.body_crit_edge, %if.end2.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_set_node_bw_lmt_per_tc.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_set_node_bw_lmt_per_tc, %if.then9)) #10
          to label %exit_set_node_bw_lmt_per_tc [label %if.then9], !srcloc !92

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 -2960
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_set_node_bw_lmt_per_tc.__UNIQUE_ID_ddebug631, ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %exit_set_node_bw_lmt_per_tc

if.end12:                                         ; preds = %ice_sched_get_node_by_id_type.exit.if.end12_crit_edge, %while.body.i.i.if.end12_crit_edge
  %node.2.i39 = phi ptr [ %28, %ice_sched_get_node_by_id_type.exit.if.end12_crit_edge ], [ %node.017.i.i, %while.body.i.i.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bw)
  %cmp13 = icmp eq i32 %bw, -1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i33 = tail call fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef %pi, ptr noundef nonnull %node.2.i39, i32 noundef %rl_type, i32 noundef -1) #10
  br label %exit_set_node_bw_lmt_per_tc

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef nonnull %pi, ptr noundef nonnull %node.2.i39, i32 noundef %rl_type, i32 noundef %bw)
  br label %exit_set_node_bw_lmt_per_tc

exit_set_node_bw_lmt_per_tc:                      ; preds = %if.else, %if.then14, %if.then9, %do.body
  %status.0 = phi i32 [ %call.i33, %if.then14 ], [ %call16, %if.else ], [ -22, %if.then9 ], [ -22, %do.body ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %exit_set_node_bw_lmt_per_tc, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit_set_node_bw_lmt_per_tc ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef %pi, ptr noundef %node, i32 noundef %rl_type, i32 noundef %bw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %num_tx_sched_layers51.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %num_tx_sched_layers51.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tx_sched_layers51.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp52.not.i = icmp eq i8 %3, 0
  br i1 %cmp52.not.i, label %if.end.ice_sched_rm_unused_rl_prof.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ice_sched_rm_unused_rl_prof.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_rm_unused_rl_prof.exit

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 %indvars.iv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %cmp12.not48.i = icmp eq ptr %5, %arrayidx.i
  br i1 %cmp12.not48.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body14.i_crit_edge

for.body.i.for.body14.i_crit_edge:                ; preds = %for.body.i
  br label %for.body14.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body14.i:                                     ; preds = %for.inc.i.for.body14.i_crit_edge, %for.body.i.for.body14.i_crit_edge
  %.pn.in49.i = phi ptr [ %.pn50.i, %for.inc.i.for.body14.i_crit_edge ], [ %5, %for.body.i.for.body14.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in49.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn50.i = load ptr, ptr %.pn.in49.i, align 4
  %rl_prof_elem.0.i = getelementptr i8, ptr %.pn.in49.i, i32 -12
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 4
  %call.i = tail call fastcc i32 @ice_sched_del_rl_profile(ptr noundef %8, ptr noundef %rl_prof_elem.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %for.body14.i.for.inc.i_crit_edge

for.body14.i.for.inc.i_crit_edge:                 ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_rm_unused_rl_prof.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_set_node_bw_lmt, %if.then22.i)) #10
          to label %for.inc.i [label %if.then22.i], !srcloc !92

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 4
  %add.ptr26.i = getelementptr i8, ptr %10, i32 -2960
  %11 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr26.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_rm_unused_rl_prof.__UNIQUE_ID_ddebug627, ptr noundef %dev.i, ptr noundef nonnull @.str.36) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i, %do.body.i, %for.body14.i.for.inc.i_crit_edge
  %cmp12.not.i = icmp eq ptr %.pn50.i, %arrayidx.i
  br i1 %cmp12.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body14.i_crit_edge

for.inc.i.for.body14.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 4
  %num_tx_sched_layers.i = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %num_tx_sched_layers.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_tx_sched_layers.i, align 2
  %17 = zext i8 %16 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %17
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.ice_sched_rm_unused_rl_prof.exit_crit_edge

for.end.i.ice_sched_rm_unused_rl_prof.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_rm_unused_rl_prof.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ice_sched_rm_unused_rl_prof.exit:                 ; preds = %for.end.i.ice_sched_rm_unused_rl_prof.exit_crit_edge, %if.end.ice_sched_rm_unused_rl_prof.exit_crit_edge
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 7
  %18 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_sched_layer, align 1
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 4
  %conv.i = zext i8 %19 to i32
  %num_tx_sched_layers.i49 = getelementptr inbounds %struct.ice_hw, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %num_tx_sched_layers.i49 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_tx_sched_layers.i49, align 2
  %conv2.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %19)
  %cmp.not.i = icmp ugt i8 %23, %19
  br i1 %cmp.not.i, label %if.end.i, label %ice_sched_rm_unused_rl_prof.exit.cleanup_crit_edge

ice_sched_rm_unused_rl_prof.exit.cleanup_crit_edge: ; preds = %ice_sched_rm_unused_rl_prof.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %ice_sched_rm_unused_rl_prof.exit
  %24 = zext i32 %rl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %rl_type, label %if.end.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb13.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %layer_info.i = getelementptr inbounds %struct.ice_hw, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %layer_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %layer_info.i, align 8
  %max_cir_rl_profiles.i = getelementptr %struct.ice_aqc_layer_props, ptr %26, i32 %conv.i, i32 6
  %27 = ptrtoint ptr %max_cir_rl_profiles.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_cir_rl_profiles.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i50 = icmp eq i16 %28, 0
  br i1 %tobool.not.i50, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.ice_sched_get_rl_prof_layer.exit_crit_edge

sw.bb.i.ice_sched_get_rl_prof_layer.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_rl_prof_layer.exit

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.end.i
  %layer_info7.i = getelementptr inbounds %struct.ice_hw, ptr %21, i32 0, i32 2
  %29 = ptrtoint ptr %layer_info7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %layer_info7.i, align 8
  %max_eir_rl_profiles.i = getelementptr %struct.ice_aqc_layer_props, ptr %30, i32 %conv.i, i32 7
  %31 = ptrtoint ptr %max_eir_rl_profiles.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_eir_rl_profiles.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool10.not.i = icmp eq i16 %32, 0
  br i1 %tobool10.not.i, label %sw.bb6.i.cleanup_crit_edge, label %sw.bb6.i.ice_sched_get_rl_prof_layer.exit_crit_edge

sw.bb6.i.ice_sched_get_rl_prof_layer.exit_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_rl_prof_layer.exit

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.end.i
  %layer_info14.i = getelementptr inbounds %struct.ice_hw, ptr %21, i32 0, i32 2
  %33 = ptrtoint ptr %layer_info14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %layer_info14.i, align 8
  %max_srl_profiles.i = getelementptr %struct.ice_aqc_layer_props, ptr %34, i32 %conv.i, i32 8
  %35 = ptrtoint ptr %max_srl_profiles.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_srl_profiles.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool17.not.i = icmp eq i16 %36, 0
  br i1 %tobool17.not.i, label %if.else.i, label %sw.bb13.i.ice_sched_get_rl_prof_layer.exit_crit_edge

sw.bb13.i.ice_sched_get_rl_prof_layer.exit_crit_edge: ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_rl_prof_layer.exit

if.else.i:                                        ; preds = %sw.bb13.i
  %sub.i = add nsw i32 %conv2.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp22.i = icmp sgt i32 %sub.i, %conv.i
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.else.i.if.else34.i_crit_edge

if.else.i.if.else34.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %add.i = add nuw nsw i32 %conv.i, 1
  %max_srl_profiles27.i = getelementptr %struct.ice_aqc_layer_props, ptr %34, i32 %add.i, i32 8
  %37 = ptrtoint ptr %max_srl_profiles27.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %max_srl_profiles27.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool29.not.i = icmp eq i16 %38, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.else34.i_crit_edge, label %if.then30.i

land.lhs.true.i.if.else34.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv33.i = trunc i32 %add.i to i8
  br label %ice_sched_get_rl_prof_layer.exit

if.else34.i:                                      ; preds = %land.lhs.true.i.if.else34.i_crit_edge, %if.else.i.if.else34.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp36.not.i = icmp eq i8 %19, 0
  br i1 %cmp36.not.i, label %if.else34.i.cleanup_crit_edge, label %land.lhs.true38.i

if.else34.i.cleanup_crit_edge:                    ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true38.i:                                ; preds = %if.else34.i
  %sub41.i = add nsw i32 %conv.i, -1
  %max_srl_profiles43.i = getelementptr %struct.ice_aqc_layer_props, ptr %34, i32 %sub41.i, i32 8
  %39 = ptrtoint ptr %max_srl_profiles43.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_srl_profiles43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool45.not.i = icmp eq i16 %40, 0
  br i1 %tobool45.not.i, label %land.lhs.true38.i.cleanup_crit_edge, label %if.then46.i

land.lhs.true38.i.cleanup_crit_edge:              ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv49.i = trunc i32 %sub41.i to i8
  br label %ice_sched_get_rl_prof_layer.exit

ice_sched_get_rl_prof_layer.exit:                 ; preds = %if.then46.i, %if.then30.i, %sw.bb13.i.ice_sched_get_rl_prof_layer.exit_crit_edge, %sw.bb6.i.ice_sched_get_rl_prof_layer.exit_crit_edge, %sw.bb.i.ice_sched_get_rl_prof_layer.exit_crit_edge
  %retval.0.i = phi i8 [ %conv33.i, %if.then30.i ], [ %conv49.i, %if.then46.i ], [ %19, %sw.bb.i.ice_sched_get_rl_prof_layer.exit_crit_edge ], [ %19, %sw.bb6.i.ice_sched_get_rl_prof_layer.exit_crit_edge ], [ %19, %sw.bb13.i.ice_sched_get_rl_prof_layer.exit_crit_edge ]
  %41 = ptrtoint ptr %num_tx_sched_layers51.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_tx_sched_layers51.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %42)
  %cmp.not = icmp ult i8 %retval.0.i, %42
  br i1 %cmp.not, label %if.end5, label %ice_sched_get_rl_prof_layer.exit.cleanup_crit_edge

ice_sched_get_rl_prof_layer.exit.cleanup_crit_edge: ; preds = %ice_sched_get_rl_prof_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %ice_sched_get_rl_prof_layer.exit
  %43 = zext i32 %rl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %rl_type, label %if.end5.if.end17_crit_edge [
    i32 3, label %if.then8
    i32 2, label %land.lhs.true.i56
  ]

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %retval.0.i)
  %cmp.i51 = icmp ult i8 %19, %retval.0.i
  br i1 %cmp.i51, label %if.then.i, label %if.else.i52

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 2
  %44 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %children.i, align 4
  br label %return.sink.split.i

if.else.i52:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %retval.0.i)
  %cmp6.i = icmp ugt i8 %19, %retval.0.i
  br i1 %cmp6.i, label %if.else.i52.return.sink.split.i_crit_edge, label %if.else.i52.ice_sched_get_srl_node.exit_crit_edge

if.else.i52.ice_sched_get_srl_node.exit_crit_edge: ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_srl_node.exit

if.else.i52.return.sink.split.i_crit_edge:        ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.else.i52.return.sink.split.i_crit_edge, %if.then.i
  %node.sink.i = phi ptr [ %45, %if.then.i ], [ %node, %if.else.i52.return.sink.split.i_crit_edge ]
  %46 = ptrtoint ptr %node.sink.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node.sink.i, align 4
  br label %ice_sched_get_srl_node.exit

ice_sched_get_srl_node.exit:                      ; preds = %return.sink.split.i, %if.else.i52.ice_sched_get_srl_node.exit_crit_edge
  %retval.0.i53 = phi ptr [ %node, %if.else.i52.ice_sched_get_srl_node.exit_crit_edge ], [ %47, %return.sink.split.i ]
  %tobool10.not = icmp eq ptr %retval.0.i53, null
  br i1 %tobool10.not, label %ice_sched_get_srl_node.exit.cleanup_crit_edge, label %if.then.i54

ice_sched_get_srl_node.exit.cleanup_crit_edge:    ; preds = %ice_sched_get_srl_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i54:                                      ; preds = %ice_sched_get_srl_node.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bw)
  %cmp1.i = icmp eq i32 %bw, -1
  br i1 %cmp1.i, label %if.then.i54.if.then20_crit_edge, label %if.then.i54.ice_sched_set_eir_srl_excl.exit_crit_edge

if.then.i54.ice_sched_set_eir_srl_excl.exit_crit_edge: ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_set_eir_srl_excl.exit

if.then.i54.if.then20_crit_edge:                  ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

land.lhs.true.i56:                                ; preds = %if.end5
  %valid_sections.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %48 = ptrtoint ptr %valid_sections.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %valid_sections.i, align 1
  %50 = and i8 %49, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i55 = icmp eq i8 %50, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.if.end17_crit_edge, label %land.lhs.true.i56.ice_sched_set_eir_srl_excl.exit_crit_edge

land.lhs.true.i56.ice_sched_set_eir_srl_excl.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_set_eir_srl_excl.exit

land.lhs.true.i56.if.end17_crit_edge:             ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

ice_sched_set_eir_srl_excl.exit:                  ; preds = %land.lhs.true.i56.ice_sched_set_eir_srl_excl.exit_crit_edge, %if.then.i54.ice_sched_set_eir_srl_excl.exit_crit_edge
  %cfg_node.062 = phi ptr [ %retval.0.i53, %if.then.i54.ice_sched_set_eir_srl_excl.exit_crit_edge ], [ %node, %land.lhs.true.i56.ice_sched_set_eir_srl_excl.exit_crit_edge ]
  %.sink.i = phi i32 [ 2, %if.then.i54.ice_sched_set_eir_srl_excl.exit_crit_edge ], [ 3, %land.lhs.true.i56.ice_sched_set_eir_srl_excl.exit_crit_edge ]
  %call5.i = tail call fastcc i32 @ice_sched_set_node_bw_dflt(ptr noundef nonnull %pi, ptr noundef %cfg_node.062, i32 noundef %.sink.i, i8 noundef zeroext %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool15.not = icmp eq i32 %call5.i, 0
  br i1 %tobool15.not, label %ice_sched_set_eir_srl_excl.exit.if.end17_crit_edge, label %ice_sched_set_eir_srl_excl.exit.cleanup_crit_edge

ice_sched_set_eir_srl_excl.exit.cleanup_crit_edge: ; preds = %ice_sched_set_eir_srl_excl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ice_sched_set_eir_srl_excl.exit.if.end17_crit_edge: ; preds = %ice_sched_set_eir_srl_excl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %ice_sched_set_eir_srl_excl.exit.if.end17_crit_edge, %land.lhs.true.i56.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %cfg_node.06468 = phi ptr [ %cfg_node.062, %ice_sched_set_eir_srl_excl.exit.if.end17_crit_edge ], [ %node, %land.lhs.true.i56.if.end17_crit_edge ], [ %node, %if.end5.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bw)
  %cmp18 = icmp eq i32 %bw, -1
  br i1 %cmp18, label %if.end17.if.then20_crit_edge, label %if.end22

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %if.end17.if.then20_crit_edge, %if.then.i54.if.then20_crit_edge
  %cfg_node.0646871 = phi ptr [ %cfg_node.06468, %if.end17.if.then20_crit_edge ], [ %retval.0.i53, %if.then.i54.if.then20_crit_edge ]
  %call21 = tail call fastcc i32 @ice_sched_set_node_bw_dflt(ptr noundef nonnull %pi, ptr noundef %cfg_node.0646871, i32 noundef %rl_type, i8 noundef zeroext %retval.0.i)
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call fastcc i32 @ice_sched_set_node_bw(ptr noundef nonnull %pi, ptr noundef %cfg_node.06468, i32 noundef %rl_type, i32 noundef %bw, i8 noundef zeroext %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %ice_sched_set_eir_srl_excl.exit.cleanup_crit_edge, %ice_sched_get_srl_node.exit.cleanup_crit_edge, %ice_sched_get_rl_prof_layer.exit.cleanup_crit_edge, %land.lhs.true38.i.cleanup_crit_edge, %if.else34.i.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %ice_sched_rm_unused_rl_prof.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then20 ], [ %call23, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ice_sched_get_rl_prof_layer.exit.cleanup_crit_edge ], [ -5, %ice_sched_get_srl_node.exit.cleanup_crit_edge ], [ %call5.i, %ice_sched_set_eir_srl_excl.exit.cleanup_crit_edge ], [ -22, %ice_sched_rm_unused_rl_prof.exit.cleanup_crit_edge ], [ -22, %land.lhs.true38.i.cleanup_crit_edge ], [ -22, %if.else34.i.cleanup_crit_edge ], [ -22, %sw.bb6.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_vsi_bw_lmt_per_tc(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i32 noundef %rl_type, i32 noundef %bw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vsi_handle to i32
  %call = tail call i32 @ice_sched_set_node_bw_lmt_per_tc(ptr noundef %pi, i32 noundef %conv, i32 noundef 1, i8 noundef zeroext %tc, i32 noundef %rl_type, i32 noundef %bw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @ice_sched_save_vsi_bw(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i32 noundef %rl_type, i32 noundef %bw)
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_save_vsi_bw(ptr nocapture noundef readonly %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i32 noundef %rl_type, i32 noundef %bw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %1, i16 noundef zeroext %vsi_handle) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call2 = tail call ptr @ice_get_vsi_ctx(ptr noundef %3, i16 noundef zeroext %vsi_handle) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = zext i32 %rl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %rl_type, label %if.end4.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb10
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %idxprom = zext i8 %tc to i32
  %arrayidx = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bw)
  %cmp.i = icmp eq i32 %bw, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %arrayidx) #10
  br label %ice_set_clear_cir_bw.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %arrayidx) #10
  br label %ice_set_clear_cir_bw.exit

ice_set_clear_cir_bw.exit:                        ; preds = %if.else.i, %if.then.i
  %bw.sink.i = phi i32 [ 0, %if.then.i ], [ %bw, %if.else.i ]
  %5 = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bw.sink.i, ptr %5, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  %idxprom8 = zext i8 %tc to i32
  %arrayidx9 = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bw)
  %cmp.i24 = icmp eq i32 %bw, -1
  br i1 %cmp.i24, label %if.then.i25, label %if.else.i26

if.then.i25:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %arrayidx9) #10
  br label %ice_set_clear_eir_bw.exit

if.else.i26:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %arrayidx9) #10
  %shared_bw.i = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom8, i32 4
  %7 = ptrtoint ptr %shared_bw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %shared_bw.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %arrayidx9) #10
  br label %ice_set_clear_eir_bw.exit

ice_set_clear_eir_bw.exit:                        ; preds = %if.else.i26, %if.then.i25
  %bw.sink.i27 = phi i32 [ 0, %if.then.i25 ], [ %bw, %if.else.i26 ]
  %8 = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom8, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bw.sink.i27, ptr %8, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end4
  %idxprom13 = zext i8 %tc to i32
  %arrayidx14 = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bw)
  %cmp.i28 = icmp eq i32 %bw, -1
  br i1 %cmp.i28, label %if.then.i29, label %if.else.i30

if.then.i29:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %arrayidx14) #10
  br label %ice_set_clear_shared_bw.exit

if.else.i30:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %arrayidx14) #10
  %eir_bw.i = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom13, i32 3
  %10 = ptrtoint ptr %eir_bw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %eir_bw.i, align 4
  tail call void @_set_bit(i32 noundef 5, ptr noundef %arrayidx14) #10
  br label %ice_set_clear_shared_bw.exit

ice_set_clear_shared_bw.exit:                     ; preds = %if.else.i30, %if.then.i29
  %bw.sink.i31 = phi i32 [ 0, %if.then.i29 ], [ %bw, %if.else.i30 ]
  %11 = getelementptr %struct.ice_vsi_ctx, ptr %call2, i32 0, i32 5, i32 5, i32 %idxprom13, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bw.sink.i31, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %ice_set_clear_shared_bw.exit, %ice_set_clear_eir_bw.exit, %ice_set_clear_cir_bw.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %ice_set_clear_shared_bw.exit ], [ 0, %ice_set_clear_eir_bw.exit ], [ 0, %ice_set_clear_cir_bw.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_vsi_bw_dflt_lmt_per_tc(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i32 noundef %rl_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vsi_handle to i32
  %call = tail call i32 @ice_sched_set_node_bw_lmt_per_tc(ptr noundef %pi, i32 noundef %conv, i32 noundef 1, i8 noundef zeroext %tc, i32 noundef %rl_type, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @ice_sched_save_vsi_bw(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i32 noundef %rl_type, i32 noundef -1)
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %status.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ice_cfg_rl_burst_size(ptr nocapture noundef writeonly %hw, i32 noundef %bytes) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %bytes, -2096129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2096065, i32 %0)
  %1 = icmp ult i32 %0, -2096065
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem.i = and i32 %bytes, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i.not.not = icmp eq i32 %rem.i, 0
  br i1 %cmp.i.not.not, label %ice_round_to_num.exit, label %ice_round_to_num.exit.thread

ice_round_to_num.exit:                            ; preds = %if.end
  %mul.i = and i32 %bytes, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 131009, i32 %mul.i)
  %cmp2 = icmp ult i32 %mul.i, 131009
  br i1 %cmp2, label %ice_round_to_num.exit.ice_round_to_num.exit40_crit_edge, label %ice_round_to_num.exit.if.else_crit_edge

ice_round_to_num.exit.if.else_crit_edge:          ; preds = %ice_round_to_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

ice_round_to_num.exit.ice_round_to_num.exit40_crit_edge: ; preds = %ice_round_to_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_round_to_num.exit40

ice_round_to_num.exit.thread:                     ; preds = %if.end
  %sub.i = add nuw nsw i32 %bytes, 63
  %mul3.i = and i32 %sub.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 131009, i32 %mul3.i)
  %cmp252 = icmp ult i32 %mul3.i, 131009
  br i1 %cmp252, label %ice_round_to_num.exit.thread.ice_round_to_num.exit40_crit_edge, label %ice_round_to_num.exit.thread.if.else_crit_edge

ice_round_to_num.exit.thread.if.else_crit_edge:   ; preds = %ice_round_to_num.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

ice_round_to_num.exit.thread.ice_round_to_num.exit40_crit_edge: ; preds = %ice_round_to_num.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_round_to_num.exit40

ice_round_to_num.exit40:                          ; preds = %ice_round_to_num.exit.thread.ice_round_to_num.exit40_crit_edge, %ice_round_to_num.exit.ice_round_to_num.exit40_crit_edge
  %cond.i39.in = phi i32 [ %bytes, %ice_round_to_num.exit.ice_round_to_num.exit40_crit_edge ], [ %sub.i, %ice_round_to_num.exit.thread.ice_round_to_num.exit40_crit_edge ]
  %div30 = lshr i32 %cond.i39.in, 6
  %conv = trunc i32 %div30 to i16
  br label %if.end19

if.else:                                          ; preds = %ice_round_to_num.exit.thread.if.else_crit_edge, %ice_round_to_num.exit.if.else_crit_edge
  %rem.i41 = and i32 %bytes, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i41)
  %cmp.i42.not.not = icmp eq i32 %rem.i41, 0
  %sub.i46 = add nuw nsw i32 %bytes, 1023
  %cond.i49.in = select i1 %cmp.i42.not.not, i32 %bytes, i32 %sub.i46
  %cond.i49 = and i32 %cond.i49.in, -1024
  %2 = tail call i32 @llvm.umin.i32(i32 %cond.i49, i32 2096128)
  %div1329 = lshr exact i32 %2, 10
  %3 = trunc i32 %div1329 to i16
  %conv18 = or i16 %3, 2048
  br label %if.end19

if.end19:                                         ; preds = %if.else, %ice_round_to_num.exit40
  %burst_size_to_prog.0 = phi i16 [ %conv, %ice_round_to_num.exit40 ], [ %conv18, %if.else ]
  %max_burst_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 14
  %4 = ptrtoint ptr %max_burst_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %burst_size_to_prog.0, ptr %max_burst_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_sched_replay_agg(ptr noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  %bitmap.addr.i.i = alloca i32, align 4
  %replay_bitmap = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %agg_list = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 21
  %2 = ptrtoint ptr %agg_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn38 = load ptr, ptr %agg_list, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %agg_list
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %1, null
  %add.ptr14 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn40 = phi ptr [ %.pn38, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tc_bitmap = getelementptr i8, ptr %.pn40, i32 8
  %replay_tc_bitmap = getelementptr i8, ptr %.pn40, i32 244
  %3 = ptrtoint ptr %tc_bitmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tc_bitmap, align 4
  %5 = ptrtoint ptr %replay_tc_bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %replay_tc_bitmap, align 4
  %xor.i = xor i32 %6, %4
  %and3.i = and i32 %xor.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i.not = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %replay_bitmap) #10
  %7 = ptrtoint ptr %replay_bitmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %replay_bitmap, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %indvars.iv.i = phi i32 [ 0, %if.then ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %replay_tc_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %replay_tc_bitmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i.i)
  %10 = ptrtoint ptr %bitmap.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bitmap.addr.i.i, align 4
  %bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i = load volatile i32, ptr %bitmap.addr.i.i, align 4
  %11 = shl nuw nsw i32 1, %indvars.iv.i
  %12 = and i32 %bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.i = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i.i)
  %or.cond.i = or i1 %tobool.not.i.i, %tobool.i.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge, label %for.cond.preheader.i.i

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %num_children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_children.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp23.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp23.not.i.i, label %for.cond.preheader.i.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.inc.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %children.i.i, align 4
  %wide.trip.count.i.i = zext i8 %16 to i32
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.inc.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.for.inc.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %indvars.iv.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %tc_num.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %tc_num.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tc_num.i.i, align 1
  %23 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %23)
  %cmp8.i.i = icmp eq i32 %indvars.iv.i, %23
  br i1 %cmp8.i.i, label %ice_sched_get_tc_node.exit.i, label %for.cond.i.i

ice_sched_get_tc_node.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i36 = icmp eq ptr %20, null
  br i1 %tobool.not.i36, label %ice_sched_get_tc_node.exit.i.for.inc.i_crit_edge, label %if.then.i

ice_sched_get_tc_node.exit.i.for.inc.i_crit_edge: ; preds = %ice_sched_get_tc_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %ice_sched_get_tc_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %indvars.iv.i, ptr noundef nonnull %replay_bitmap) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %ice_sched_get_tc_node.exit.i.for.inc.i_crit_edge, %for.cond.i.i.for.inc.i_crit_edge, %for.cond.preheader.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %ice_sched_get_ena_tc_bitmap.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ice_sched_get_ena_tc_bitmap.exit:                 ; preds = %for.inc.i
  %24 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_info, align 4
  %agg_id = getelementptr i8, ptr %.pn40, i32 12
  %26 = ptrtoint ptr %agg_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %agg_id, align 4
  %call9 = call fastcc i32 @ice_sched_cfg_agg(ptr noundef %25, i32 noundef %27, i32 noundef 2, ptr noundef nonnull %replay_bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %ice_sched_get_ena_tc_bitmap.exit.cleanup_crit_edge, label %do.end

ice_sched_get_ena_tc_bitmap.exit.cleanup_crit_edge: ; preds = %ice_sched_get_ena_tc_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %ice_sched_get_ena_tc_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr14, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %agg_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agg_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %31) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ice_sched_get_ena_tc_bitmap.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %replay_bitmap) #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %agg_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %sched_lock) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_sched_replay_agg_vsi_preinit(ptr noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %agg_list = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 21
  %2 = ptrtoint ptr %agg_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn39 = load ptr, ptr %agg_list, align 4
  %cmp.not41 = icmp eq ptr %.pn39, %agg_list
  br i1 %cmp.not41, label %entry.for.end25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.cond.loopexit:                                ; preds = %for.body11.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %agg_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end25_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end25_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn39, %entry.for.body_crit_edge ]
  %agg_info.043 = getelementptr i8, ptr %.pn42, i32 -8
  %tc_bitmap = getelementptr i8, ptr %.pn42, i32 8
  %4 = ptrtoint ptr %tc_bitmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tc_bitmap, align 4
  %5 = ptrtoint ptr %agg_info.043 to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg_vsi_info.036 = load ptr, ptr %agg_info.043, align 4
  %cmp9.not37 = icmp eq ptr %agg_vsi_info.036, %agg_info.043
  br i1 %cmp9.not37, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %agg_vsi_info.038 = phi ptr [ %agg_vsi_info.0, %for.body11.for.body11_crit_edge ], [ %agg_vsi_info.036, %for.body.for.body11_crit_edge ]
  %tc_bitmap12 = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.038, i32 0, i32 1
  %6 = ptrtoint ptr %tc_bitmap12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tc_bitmap12, align 4
  %7 = ptrtoint ptr %agg_vsi_info.038 to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg_vsi_info.0 = load ptr, ptr %agg_vsi_info.038, align 4
  %cmp9.not = icmp eq ptr %agg_vsi_info.0, %agg_info.043
  br i1 %cmp9.not, label %for.body11.for.cond.loopexit_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.body11.for.cond.loopexit_crit_edge:           ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end25:                                        ; preds = %for.cond.loopexit.for.end25_crit_edge, %entry.for.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %sched_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_replay_vsi_agg(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #3 align 64 {
entry:
  %bitmap.addr.i.i47.i = alloca i32, align 4
  %bitmap.addr.i.i.i = alloca i32, align 4
  %replay_bitmap.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %replay_bitmap.i) #10
  %2 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info, align 4
  %4 = ptrtoint ptr %replay_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %replay_bitmap.i, align 4
  %call.i = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #10
  br i1 %call.i, label %if.end.i, label %entry.ice_sched_replay_vsi_agg.exit_crit_edge

entry.ice_sched_replay_vsi_agg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_replay_vsi_agg.exit

if.end.i:                                         ; preds = %entry
  %agg_list.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 21
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %ice_get_agg_vsi_info.exit.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ %agg_list.i.i, %if.end.i ], [ %.pn.i.i, %ice_get_agg_vsi_info.exit.i.i.for.cond.i.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %agg_info.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %agg_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.ice_sched_replay_vsi_agg.exit_crit_edge, label %for.cond.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.for.cond.i.i.i_crit_edge:            ; preds = %for.cond.i.i
  br label %for.cond.i.i.i

for.cond.i.i.ice_sched_replay_vsi_agg.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_replay_vsi_agg.exit

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.cond.i.i.for.cond.i.i.i_crit_edge
  %agg_vsi_info.0.in.i.i.i = phi ptr [ %agg_vsi_info.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %agg_info.0.i.i, %for.cond.i.i.for.cond.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %agg_vsi_info.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg_vsi_info.0.i.i.i = load ptr, ptr %agg_vsi_info.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %agg_vsi_info.0.i.i.i, %agg_info.0.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_get_agg_vsi_info.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %vsi_handle2.i.i.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %vsi_handle2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vsi_handle2.i.i.i, align 4
  %cmp4.i.i.i = icmp eq i16 %8, %vsi_handle
  br i1 %cmp4.i.i.i, label %for.body.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

for.body.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_get_agg_vsi_info.exit.i.i

ice_get_agg_vsi_info.exit.i.i:                    ; preds = %for.body.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge, %for.cond.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %agg_vsi_info.0.i.i.i, %for.body.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge ], [ null, %for.cond.i.i.i.ice_get_agg_vsi_info.exit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i, label %ice_get_agg_vsi_info.exit.i.i.for.cond.i.i_crit_edge, label %ice_get_vsi_agg_info.exit.i

ice_get_agg_vsi_info.exit.i.i.for.cond.i.i_crit_edge: ; preds = %ice_get_agg_vsi_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

ice_get_vsi_agg_info.exit.i:                      ; preds = %ice_get_agg_vsi_info.exit.i.i
  %tobool.not.i = icmp eq ptr %agg_info.0.i.i, null
  br i1 %tobool.not.i, label %ice_get_vsi_agg_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge, label %ice_get_vsi_agg_info.exit.i.for.cond.i42.i_crit_edge

ice_get_vsi_agg_info.exit.i.for.cond.i42.i_crit_edge: ; preds = %ice_get_vsi_agg_info.exit.i
  br label %for.cond.i42.i

ice_get_vsi_agg_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge: ; preds = %ice_get_vsi_agg_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_replay_vsi_agg.exit

for.cond.i42.i:                                   ; preds = %for.body.i.i.for.cond.i42.i_crit_edge, %ice_get_vsi_agg_info.exit.i.for.cond.i42.i_crit_edge
  %agg_vsi_info.0.in.i.i = phi ptr [ %agg_vsi_info.0.i.i, %for.body.i.i.for.cond.i42.i_crit_edge ], [ %agg_info.0.i.i, %ice_get_vsi_agg_info.exit.i.for.cond.i42.i_crit_edge ]
  %9 = ptrtoint ptr %agg_vsi_info.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %agg_vsi_info.0.i.i = load ptr, ptr %agg_vsi_info.0.in.i.i, align 4
  %cmp.not.i41.i = icmp eq ptr %agg_vsi_info.0.i.i, %agg_info.0.i.i
  br i1 %cmp.not.i41.i, label %for.cond.i42.i.ice_sched_replay_vsi_agg.exit_crit_edge, label %for.body.i.i

for.cond.i42.i.ice_sched_replay_vsi_agg.exit_crit_edge: ; preds = %for.cond.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_replay_vsi_agg.exit

for.body.i.i:                                     ; preds = %for.cond.i42.i
  %vsi_handle2.i.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %vsi_handle2.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsi_handle2.i.i, align 4
  %cmp4.i.i = icmp eq i16 %11, %vsi_handle
  br i1 %cmp4.i.i, label %ice_get_agg_vsi_info.exit.i, label %for.body.i.i.for.cond.i42.i_crit_edge

for.body.i.i.for.cond.i42.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i42.i

ice_get_agg_vsi_info.exit.i:                      ; preds = %for.body.i.i
  %tobool5.not.i = icmp eq ptr %agg_vsi_info.0.i.i, null
  br i1 %tobool5.not.i, label %ice_get_agg_vsi_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge, label %if.end7.i

ice_get_agg_vsi_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge: ; preds = %ice_get_agg_vsi_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_replay_vsi_agg.exit

if.end7.i:                                        ; preds = %ice_get_agg_vsi_info.exit.i
  %replay_tc_bitmap.i = getelementptr i8, ptr %.pn.i.i, i32 244
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br label %for.body.i43.i

for.body.i43.i:                                   ; preds = %for.inc.i.i.for.body.i43.i_crit_edge, %if.end7.i
  %indvars.iv.i.i = phi i32 [ 0, %if.end7.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i43.i_crit_edge ]
  %12 = ptrtoint ptr %replay_tc_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %replay_tc_bitmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i.i.i)
  %14 = ptrtoint ptr %bitmap.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bitmap.addr.i.i.i, align 4
  %bitmap.addr.i.i.i.0.bitmap.addr.i.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i.i = load volatile i32, ptr %bitmap.addr.i.i.i, align 4
  %15 = shl nuw nsw i32 1, %indvars.iv.i.i
  %16 = and i32 %bitmap.addr.i.i.i.0.bitmap.addr.i.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.i.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.i.i = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i.i.i)
  %or.cond.i.i = or i1 %tobool.not.i.i.i, %tobool.i.i.i
  br i1 %or.cond.i.i, label %for.body.i43.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i43.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i43.i
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %tobool1.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge, label %for.cond.preheader.i.i.i

lor.lhs.false.i.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.cond.preheader.i.i.i:                         ; preds = %lor.lhs.false.i.i.i
  %num_children.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %num_children.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_children.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp23.not.i.i.i = icmp eq i8 %20, 0
  br i1 %cmp23.not.i.i.i, label %for.cond.preheader.i.i.i.for.inc.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.for.inc.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %children.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %children.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %children.i.i.i, align 4
  %wide.trip.count.i.i.i = zext i8 %20 to i32
  br label %for.body.i.i45.i

for.cond.i.i44.i:                                 ; preds = %for.body.i.i45.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i44.i.for.inc.i.i_crit_edge, label %for.cond.i.i44.i.for.body.i.i45.i_crit_edge

for.cond.i.i44.i.for.body.i.i45.i_crit_edge:      ; preds = %for.cond.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i45.i

for.cond.i.i44.i.for.inc.i.i_crit_edge:           ; preds = %for.cond.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.body.i.i45.i:                                 ; preds = %for.cond.i.i44.i.for.body.i.i45.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.cond.i.i44.i.for.body.i.i45.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %22, i32 %indvars.iv.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tc_num.i.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %tc_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tc_num.i.i.i, align 1
  %27 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i.i, i32 %27)
  %cmp8.i.i.i = icmp eq i32 %indvars.iv.i.i, %27
  br i1 %cmp8.i.i.i, label %ice_sched_get_tc_node.exit.i.i, label %for.cond.i.i44.i

ice_sched_get_tc_node.exit.i.i:                   ; preds = %for.body.i.i45.i
  %tobool.not.i46.i = icmp eq ptr %24, null
  br i1 %tobool.not.i46.i, label %ice_sched_get_tc_node.exit.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

ice_sched_get_tc_node.exit.i.i.for.inc.i.i_crit_edge: ; preds = %ice_sched_get_tc_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %ice_sched_get_tc_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %indvars.iv.i.i, ptr noundef nonnull %replay_bitmap.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %ice_sched_get_tc_node.exit.i.i.for.inc.i.i_crit_edge, %for.cond.i.i44.i.for.inc.i.i_crit_edge, %for.cond.preheader.i.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge, %for.body.i43.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 8
  br i1 %exitcond.not.i.i, label %ice_sched_get_ena_tc_bitmap.exit.i, label %for.inc.i.i.for.body.i43.i_crit_edge

for.inc.i.i.for.body.i43.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i43.i

ice_sched_get_ena_tc_bitmap.exit.i:               ; preds = %for.inc.i.i
  %28 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_info, align 4
  %agg_id.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %30 = ptrtoint ptr %agg_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agg_id.i, align 4
  %call12.i = call fastcc i32 @ice_sched_cfg_agg(ptr noundef %29, i32 noundef %31, i32 noundef 2, ptr noundef nonnull %replay_bitmap.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %ice_sched_get_ena_tc_bitmap.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge

ice_sched_get_ena_tc_bitmap.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge: ; preds = %ice_sched_get_ena_tc_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_replay_vsi_agg.exit

if.end15.i:                                       ; preds = %ice_sched_get_ena_tc_bitmap.exit.i
  %32 = ptrtoint ptr %replay_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %replay_bitmap.i, align 4
  %replay_tc_bitmap17.i = getelementptr inbounds %struct.ice_sched_agg_vsi_info, ptr %agg_vsi_info.0.i.i, i32 0, i32 3
  br label %for.body.i53.i

for.body.i53.i:                                   ; preds = %for.inc.i75.i.for.body.i53.i_crit_edge, %if.end15.i
  %indvars.iv.i49.i = phi i32 [ 0, %if.end15.i ], [ %indvars.iv.next.i73.i, %for.inc.i75.i.for.body.i53.i_crit_edge ]
  %33 = ptrtoint ptr %replay_tc_bitmap17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %replay_tc_bitmap17.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i.i47.i)
  %35 = ptrtoint ptr %bitmap.addr.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %bitmap.addr.i.i47.i, align 4
  %bitmap.addr.i.i47.i.0.bitmap.addr.i.i47.i.0.bitmap.addr.i.i47.0.bitmap.addr.i.i47.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i50.i = load volatile i32, ptr %bitmap.addr.i.i47.i, align 4
  %36 = shl nuw nsw i32 1, %indvars.iv.i49.i
  %37 = and i32 %bitmap.addr.i.i47.i.0.bitmap.addr.i.i47.i.0.bitmap.addr.i.i47.0.bitmap.addr.i.i47.0.bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i.i50.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.i51.i = icmp eq i32 %37, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i.i47.i)
  %or.cond.i52.i = or i1 %tobool.not.i.i.i, %tobool.i.i51.i
  br i1 %or.cond.i52.i, label %for.body.i53.i.for.inc.i75.i_crit_edge, label %lor.lhs.false.i.i55.i

for.body.i53.i.for.inc.i75.i_crit_edge:           ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i75.i

lor.lhs.false.i.i55.i:                            ; preds = %for.body.i53.i
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %tobool1.not.i.i54.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i.i54.i, label %lor.lhs.false.i.i55.i.for.inc.i75.i_crit_edge, label %for.cond.preheader.i.i58.i

lor.lhs.false.i.i55.i.for.inc.i75.i_crit_edge:    ; preds = %lor.lhs.false.i.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i75.i

for.cond.preheader.i.i58.i:                       ; preds = %lor.lhs.false.i.i55.i
  %num_children.i.i56.i = getelementptr inbounds %struct.ice_sched_node, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %num_children.i.i56.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_children.i.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp23.not.i.i57.i = icmp eq i8 %41, 0
  br i1 %cmp23.not.i.i57.i, label %for.cond.preheader.i.i58.i.for.inc.i75.i_crit_edge, label %for.body.lr.ph.i.i61.i

for.cond.preheader.i.i58.i.for.inc.i75.i_crit_edge: ; preds = %for.cond.preheader.i.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i75.i

for.body.lr.ph.i.i61.i:                           ; preds = %for.cond.preheader.i.i58.i
  %children.i.i59.i = getelementptr inbounds %struct.ice_sched_node, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %children.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %children.i.i59.i, align 4
  %wide.trip.count.i.i60.i = zext i8 %41 to i32
  br label %for.body.i.i69.i

for.cond.i.i64.i:                                 ; preds = %for.body.i.i69.i
  %indvars.iv.next.i.i62.i = add nuw nsw i32 %indvars.iv.i.i65.i, 1
  %exitcond.not.i.i63.i = icmp eq i32 %indvars.iv.next.i.i62.i, %wide.trip.count.i.i60.i
  br i1 %exitcond.not.i.i63.i, label %for.cond.i.i64.i.for.inc.i75.i_crit_edge, label %for.cond.i.i64.i.for.body.i.i69.i_crit_edge

for.cond.i.i64.i.for.body.i.i69.i_crit_edge:      ; preds = %for.cond.i.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i69.i

for.cond.i.i64.i.for.inc.i75.i_crit_edge:         ; preds = %for.cond.i.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i75.i

for.body.i.i69.i:                                 ; preds = %for.cond.i.i64.i.for.body.i.i69.i_crit_edge, %for.body.lr.ph.i.i61.i
  %indvars.iv.i.i65.i = phi i32 [ 0, %for.body.lr.ph.i.i61.i ], [ %indvars.iv.next.i.i62.i, %for.cond.i.i64.i.for.body.i.i69.i_crit_edge ]
  %arrayidx.i.i66.i = getelementptr ptr, ptr %43, i32 %indvars.iv.i.i65.i
  %44 = ptrtoint ptr %arrayidx.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i66.i, align 4
  %tc_num.i.i67.i = getelementptr inbounds %struct.ice_sched_node, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %tc_num.i.i67.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tc_num.i.i67.i, align 1
  %48 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i49.i, i32 %48)
  %cmp8.i.i68.i = icmp eq i32 %indvars.iv.i49.i, %48
  br i1 %cmp8.i.i68.i, label %ice_sched_get_tc_node.exit.i71.i, label %for.cond.i.i64.i

ice_sched_get_tc_node.exit.i71.i:                 ; preds = %for.body.i.i69.i
  %tobool.not.i70.i = icmp eq ptr %45, null
  br i1 %tobool.not.i70.i, label %ice_sched_get_tc_node.exit.i71.i.for.inc.i75.i_crit_edge, label %if.then.i72.i

ice_sched_get_tc_node.exit.i71.i.for.inc.i75.i_crit_edge: ; preds = %ice_sched_get_tc_node.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i75.i

if.then.i72.i:                                    ; preds = %ice_sched_get_tc_node.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %indvars.iv.i49.i, ptr noundef nonnull %replay_bitmap.i) #10
  br label %for.inc.i75.i

for.inc.i75.i:                                    ; preds = %if.then.i72.i, %ice_sched_get_tc_node.exit.i71.i.for.inc.i75.i_crit_edge, %for.cond.i.i64.i.for.inc.i75.i_crit_edge, %for.cond.preheader.i.i58.i.for.inc.i75.i_crit_edge, %lor.lhs.false.i.i55.i.for.inc.i75.i_crit_edge, %for.body.i53.i.for.inc.i75.i_crit_edge
  %indvars.iv.next.i73.i = add nuw nsw i32 %indvars.iv.i49.i, 1
  %exitcond.not.i74.i = icmp eq i32 %indvars.iv.next.i73.i, 8
  br i1 %exitcond.not.i74.i, label %ice_sched_get_ena_tc_bitmap.exit76.i, label %for.inc.i75.i.for.body.i53.i_crit_edge

for.inc.i75.i.for.body.i53.i_crit_edge:           ; preds = %for.inc.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i53.i

ice_sched_get_ena_tc_bitmap.exit76.i:             ; preds = %for.inc.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %agg_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %agg_id.i, align 4
  %call22.i = call fastcc i32 @ice_sched_assoc_vsi_to_agg(ptr noundef %3, i32 noundef %50, i16 noundef zeroext %vsi_handle, ptr noundef nonnull %replay_bitmap.i) #10
  br label %ice_sched_replay_vsi_agg.exit

ice_sched_replay_vsi_agg.exit:                    ; preds = %ice_sched_get_ena_tc_bitmap.exit76.i, %ice_sched_get_ena_tc_bitmap.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge, %ice_get_agg_vsi_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge, %for.cond.i42.i.ice_sched_replay_vsi_agg.exit_crit_edge, %ice_get_vsi_agg_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge, %for.cond.i.i.ice_sched_replay_vsi_agg.exit_crit_edge, %entry.ice_sched_replay_vsi_agg.exit_crit_edge
  %retval.0.i = phi i32 [ %call22.i, %ice_sched_get_ena_tc_bitmap.exit76.i ], [ -22, %entry.ice_sched_replay_vsi_agg.exit_crit_edge ], [ 0, %ice_get_vsi_agg_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge ], [ 0, %ice_get_agg_vsi_info.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge ], [ %call12.i, %ice_sched_get_ena_tc_bitmap.exit.i.ice_sched_replay_vsi_agg.exit_crit_edge ], [ 0, %for.cond.i42.i.ice_sched_replay_vsi_agg.exit_crit_edge ], [ 0, %for.cond.i.i.ice_sched_replay_vsi_agg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %replay_bitmap.i) #10
  call void @mutex_unlock(ptr noundef %sched_lock) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sched_replay_q_bw(ptr nocapture noundef readonly %pi, ptr noundef %q_ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  %q_teid = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %q_teid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_teid, align 4
  %call = tail call ptr @ice_sched_find_node_by_teid(ptr noundef %1, i32 noundef %3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %bw_t_info = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 2
  %port_info.i = getelementptr inbounds %struct.ice_hw, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_info.i, align 4
  %8 = ptrtoint ptr %bw_t_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bw_t_info, align 4
  %and3.i.i = and i32 %9, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %bw_t_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bw_t_info, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool6.not.i, label %if.end2.i.if.end12.i_crit_edge, label %if.then7.i

if.end2.i.if.end12.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end2.i
  %generic.i = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %generic.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %generic.i, align 4
  %call8.i = tail call fastcc i32 @ice_sched_replay_node_prio(ptr noundef %5, ptr noundef nonnull %call, i8 noundef zeroext %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then7.i.cleanup_crit_edge

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i.if.end12.i_crit_edge, %if.end2.i.if.end12.i_crit_edge
  %status.0.i = phi i32 [ 0, %if.then7.i.if.end12.i_crit_edge ], [ -22, %if.end2.i.if.end12.i_crit_edge ]
  %14 = ptrtoint ptr %bw_t_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bw_t_info, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not.i = icmp eq i32 %16, 0
  br i1 %tobool16.not.i, label %if.end12.i.if.end22.i_crit_edge, label %if.then17.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.end12.i
  %cir_bw.i = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %cir_bw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cir_bw.i, align 4
  %call18.i = tail call fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef %7, ptr noundef nonnull %call, i32 noundef 1, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.if.end22.i_crit_edge, label %if.then17.i.cleanup_crit_edge

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17.i.if.end22.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i.if.end22.i_crit_edge, %if.end12.i.if.end22.i_crit_edge
  %status.1.i = phi i32 [ 0, %if.then17.i.if.end22.i_crit_edge ], [ %status.0.i, %if.end12.i.if.end22.i_crit_edge ]
  %19 = ptrtoint ptr %bw_t_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %bw_t_info, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not.i = icmp eq i32 %21, 0
  br i1 %tobool26.not.i, label %if.end22.i.if.end34.i_crit_edge, label %if.then27.i

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.end22.i
  %bw_alloc29.i = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 2, i32 2, i32 1
  %22 = ptrtoint ptr %bw_alloc29.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bw_alloc29.i, align 4
  %call30.i = tail call fastcc i32 @ice_sched_cfg_node_bw_alloc(ptr noundef %5, ptr noundef nonnull %call, i32 noundef 1, i16 noundef zeroext %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then27.i.if.end34.i_crit_edge, label %if.then27.i.cleanup_crit_edge

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.i.if.end34.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i.if.end34.i_crit_edge, %if.end22.i.if.end34.i_crit_edge
  %status.2.i = phi i32 [ 0, %if.then27.i.if.end34.i_crit_edge ], [ %status.1.i, %if.end22.i.if.end34.i_crit_edge ]
  %24 = ptrtoint ptr %bw_t_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %bw_t_info, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool38.not.i = icmp eq i32 %26, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.end45.i_crit_edge, label %if.then39.i

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then39.i:                                      ; preds = %if.end34.i
  %eir_bw.i = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %eir_bw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eir_bw.i, align 4
  %call41.i = tail call fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef %7, ptr noundef nonnull %call, i32 noundef 2, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then39.i.if.end45.i_crit_edge, label %if.then39.i.cleanup_crit_edge

if.then39.i.cleanup_crit_edge:                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39.i.if.end45.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i.if.end45.i_crit_edge, %if.end34.i.if.end45.i_crit_edge
  %status.3.i = phi i32 [ 0, %if.then39.i.if.end45.i_crit_edge ], [ %status.2.i, %if.end34.i.if.end45.i_crit_edge ]
  %29 = ptrtoint ptr %bw_t_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %bw_t_info, align 4
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool49.not.i = icmp eq i32 %31, 0
  br i1 %tobool49.not.i, label %if.end45.i.if.end57.i_crit_edge, label %if.then50.i

if.end45.i.if.end57.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.then50.i:                                      ; preds = %if.end45.i
  %bw_alloc52.i = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 2, i32 3, i32 1
  %32 = ptrtoint ptr %bw_alloc52.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bw_alloc52.i, align 4
  %call53.i = tail call fastcc i32 @ice_sched_cfg_node_bw_alloc(ptr noundef %5, ptr noundef nonnull %call, i32 noundef 2, i16 noundef zeroext %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then50.i.if.end57.i_crit_edge, label %if.then50.i.cleanup_crit_edge

if.then50.i.cleanup_crit_edge:                    ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50.i.if.end57.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then50.i.if.end57.i_crit_edge, %if.end45.i.if.end57.i_crit_edge
  %status.4.i = phi i32 [ 0, %if.then50.i.if.end57.i_crit_edge ], [ %status.3.i, %if.end45.i.if.end57.i_crit_edge ]
  %34 = ptrtoint ptr %bw_t_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %bw_t_info, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool61.not.i = icmp eq i32 %36, 0
  br i1 %tobool61.not.i, label %if.end57.i.cleanup_crit_edge, label %if.then62.i

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then62.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %shared_bw.i = getelementptr inbounds %struct.ice_q_ctx, ptr %q_ctx, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %shared_bw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shared_bw.i, align 4
  %call63.i = tail call fastcc i32 @ice_sched_set_node_bw_lmt(ptr noundef %7, ptr noundef nonnull %call, i32 noundef 3, i32 noundef %38) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then62.i, %if.end57.i.cleanup_crit_edge, %if.then50.i.cleanup_crit_edge, %if.then39.i.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.then17.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call8.i, %if.then7.i.cleanup_crit_edge ], [ %call18.i, %if.then17.i.cleanup_crit_edge ], [ %call30.i, %if.then27.i.cleanup_crit_edge ], [ %call41.i, %if.then39.i.cleanup_crit_edge ], [ %call53.i, %if.then50.i.cleanup_crit_edge ], [ %call63.i, %if.then62.i ], [ %status.4.i, %if.end57.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_send_cmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_sched_clear_rl_prof(ptr noundef readonly %pi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %num_tx_sched_layers64 = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %num_tx_sched_layers64 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tx_sched_layers64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp65.not = icmp eq i8 %3, 0
  br i1 %cmp65.not, label %entry.for.end40_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp12.not59 = icmp eq ptr %5, %arrayidx
  br i1 %cmp12.not59, label %for.body.for.end_crit_edge, label %for.body.for.body14_crit_edge

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body14:                                       ; preds = %if.end33.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %.pn.in60 = phi ptr [ %.pn63, %if.end33.for.body14_crit_edge ], [ %5, %for.body.for.body14_crit_edge ]
  %rl_prof_elem.062 = getelementptr i8, ptr %.pn.in60, i32 -12
  %6 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn63 = load ptr, ptr %.pn.in60, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %prof_id_ref = getelementptr i8, ptr %.pn.in60, i32 12
  %9 = ptrtoint ptr %prof_id_ref to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %prof_id_ref, align 4
  %call = tail call fastcc i32 @ice_sched_del_rl_profile(ptr noundef %8, ptr noundef %rl_prof_elem.062)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body14.if.end33_crit_edge, label %do.body

for.body14.if.end33_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body:                                          ; preds = %for.body14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_clear_rl_prof.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_clear_rl_prof, %if.then23)) #10
          to label %do.end [label %if.then23], !srcloc !92

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr26 = getelementptr i8, ptr %8, i32 -2960
  %10 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr26, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_clear_rl_prof.__UNIQUE_ID_ddebug616, ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in60, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in60, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr30 = getelementptr i8, ptr %8, i32 -2960
  %20 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr30, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev32, ptr noundef %rl_prof_elem.062) #10
  br label %if.end33

if.end33:                                         ; preds = %list_del.exit, %for.body14.if.end33_crit_edge
  %cmp12.not = icmp eq ptr %.pn63, %arrayidx
  br i1 %cmp12.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body14_crit_edge

if.end33.for.body14_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %for.body.for.end_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %num_tx_sched_layers = getelementptr inbounds %struct.ice_hw, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %num_tx_sched_layers to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_tx_sched_layers, align 2
  %26 = zext i8 %25 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %26
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end40_crit_edge

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end40:                                        ; preds = %for.end.for.end40_crit_edge, %entry.for.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_del_rl_profile(ptr noundef %hw, ptr noundef %rl_info) unnamed_addr #3 align 64 {
entry:
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prof_id_ref = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %rl_info, i32 0, i32 3
  %0 = ptrtoint ptr %prof_id_ref to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prof_id_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %3 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 1045) #10
  %4 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc.i.i, align 4
  %6 = or i16 %5, 4
  store i16 %6, ptr %desc.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %2, align 4
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef %rl_info, i16 noundef zeroext 12, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i.not, label %lor.lhs.false, label %ice_aq_remove_rl_profile.exit

ice_aq_remove_rl_profile.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %num_processed5.i.i = getelementptr inbounds %struct.ice_aqc_rl_profile, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %num_processed5.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_processed5.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %cmp4.not = icmp eq i16 %9, 256
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %list_entry = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %rl_info, i32 0, i32 1
  %call.i.i17 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #10
  br i1 %call.i.i17, label %if.end.i.i, label %if.end7.list_del.exit_crit_edge

if.end7.list_del.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %rl_info, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end7.list_del.exit_crit_edge
  %16 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %rl_info, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef %rl_info) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %lor.lhs.false.cleanup_crit_edge, %ice_aq_remove_rl_profile.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -16, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %ice_aq_remove_rl_profile.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_add_nodes_to_layer(ptr noundef %pi, ptr noundef readonly %tc_node, ptr noundef %parent, i8 noundef zeroext %layer, i16 noundef zeroext %num_nodes, ptr nocapture noundef writeonly %first_node_teid, ptr nocapture noundef %num_nodes_added) unnamed_addr #3 align 64 {
entry:
  %num_added = alloca i16, align 2
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %num_nodes_added, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_nodes)
  %cmp99.not = icmp eq i16 %num_nodes, 0
  br i1 %cmp99.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.thread104.while.body_crit_edge, %while.body.lr.ph
  %parent.addr.0102 = phi ptr [ %parent, %while.body.lr.ph ], [ %parent.addr.2.ph, %cleanup.thread104.while.body_crit_edge ]
  %first_teid_ptr.0101 = phi ptr [ %first_node_teid, %while.body.lr.ph ], [ %first_teid_ptr.3.ph, %cleanup.thread104.while.body_crit_edge ]
  %new_num_nodes.0100 = phi i16 [ %num_nodes, %while.body.lr.ph ], [ %new_num_nodes.2.ph, %cleanup.thread104.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_added) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %1 = ptrtoint ptr %num_added to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %num_added, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %new_num_nodes.0100)
  %tobool.not.i = icmp eq i16 %new_num_nodes.0100, 0
  br i1 %tobool.not.i, label %while.body.if.then_crit_edge, label %if.end.i

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %while.body
  %tobool1.not.i = icmp eq ptr %parent.addr.0102, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %sw_entry_point_layer.i = getelementptr inbounds %struct.ice_hw, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %sw_entry_point_layer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_entry_point_layer.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %layer)
  %cmp.i = icmp ugt i8 %5, %layer
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end5.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %tx_sched_layer.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.addr.0102, i32 0, i32 7
  %6 = ptrtoint ptr %tx_sched_layer.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_sched_layer.i, align 1
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %3, i32 0, i32 20, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.addr.0102, i32 0, i32 8
  %10 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_children.i, align 4
  %conv7.i = zext i8 %11 to i32
  %conv8.i = zext i16 %new_num_nodes.0100 to i32
  %add.i = add nuw nsw i32 %conv7.i, %conv8.i
  %conv9.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv9.i)
  %cmp10.i = icmp ugt i32 %add.i, %conv9.i
  br i1 %cmp10.i, label %if.then12.i, label %ice_sched_add_nodes_to_hw_layer.exit

if.then12.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmp13.i = icmp eq ptr %parent.addr.0102, %tc_node
  %..i = select i1 %cmp13.i, i32 -5, i32 -28
  br label %if.end

ice_sched_add_nodes_to_hw_layer.exit:             ; preds = %if.end5.i
  %call.i = call fastcc i32 @ice_sched_add_elems(ptr noundef %pi, ptr noundef %tc_node, ptr noundef nonnull %parent.addr.0102, i8 noundef zeroext %layer, i16 noundef zeroext %new_num_nodes.0100, ptr noundef nonnull %num_added, ptr noundef %first_teid_ptr.0101) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %ice_sched_add_nodes_to_hw_layer.exit.if.then_crit_edge, label %ice_sched_add_nodes_to_hw_layer.exit.if.end_crit_edge

ice_sched_add_nodes_to_hw_layer.exit.if.end_crit_edge: ; preds = %ice_sched_add_nodes_to_hw_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ice_sched_add_nodes_to_hw_layer.exit.if.then_crit_edge: ; preds = %ice_sched_add_nodes_to_hw_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ice_sched_add_nodes_to_hw_layer.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  %12 = ptrtoint ptr %num_added to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_added, align 2
  %14 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_nodes_added, align 2
  %add = add i16 %15, %13
  store i16 %add, ptr %num_nodes_added, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %ice_sched_add_nodes_to_hw_layer.exit.if.end_crit_edge, %if.then12.i, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %tobool.not84 = phi i1 [ true, %if.then ], [ false, %ice_sched_add_nodes_to_hw_layer.exit.if.end_crit_edge ], [ false, %lor.lhs.false.i.if.end_crit_edge ], [ false, %if.end.i.if.end_crit_edge ], [ false, %if.then12.i ]
  %retval.0.i8083 = phi i32 [ 0, %if.then ], [ %call.i, %ice_sched_add_nodes_to_hw_layer.exit.if.end_crit_edge ], [ -22, %lor.lhs.false.i.if.end_crit_edge ], [ -22, %if.end.i.if.end_crit_edge ], [ %..i, %if.then12.i ]
  %16 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_nodes_added, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %num_nodes)
  %cmp8 = icmp ugt i16 %17, %num_nodes
  br i1 %cmp8, label %do.body, label %if.end20

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_add_nodes_to_layer.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_add_nodes_to_layer, %if.then15)) #10
          to label %while.end.loopexit.critedge [label %if.then15], !srcloc !92

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.le = zext i16 %num_nodes to i32
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 -2960
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_nodes_added, align 2
  %conv18 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_add_nodes_to_layer.__UNIQUE_ID_ddebug620, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv1.le, i32 noundef %conv18) #10
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %num_nodes)
  %cmp24 = icmp eq i16 %17, %num_nodes
  %or.cond = select i1 %tobool.not84, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.end20.cleanup.thread_crit_edge, label %if.end27

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end27:                                         ; preds = %if.end20
  %24 = zext i32 %retval.0.i8083 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %retval.0.i8083, label %if.end27.cleanup.thread_crit_edge [
    i32 -28, label %if.end27.if.end33_crit_edge
    i32 0, label %if.end27.if.end33_crit_edge120
  ]

if.end27.if.end33_crit_edge120:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end27.cleanup.thread_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end33:                                         ; preds = %if.end27.if.end33_crit_edge, %if.end27.if.end33_crit_edge120
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %parent.addr.0102, i32 0, i32 7
  %27 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_sched_layer, align 1
  %idxprom = zext i8 %28 to i32
  %arrayidx = getelementptr %struct.ice_hw, ptr %26, i32 0, i32 20, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx, align 2
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %parent.addr.0102, i32 0, i32 8
  %31 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_children, align 4
  %33 = zext i8 %32 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %33)
  %cmp37 = icmp ugt i16 %30, %33
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %conv43 = sub i16 %30, %33
  br label %cleanup.thread104

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %sibling = getelementptr inbounds %struct.ice_sched_node, ptr %parent.addr.0102, i32 0, i32 1
  %34 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sibling, align 4
  %36 = ptrtoint ptr %num_added to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_added, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool44.not = icmp eq i16 %37, 0
  %spec.select = select i1 %tobool44.not, ptr %first_teid_ptr.0101, ptr %temp
  %sub49 = sub i16 %num_nodes, %17
  br label %cleanup.thread104

cleanup.thread:                                   ; preds = %if.end27.cleanup.thread_crit_edge, %if.end20.cleanup.thread_crit_edge, %if.then15
  %status.1.ph = phi i32 [ -5, %if.then15 ], [ 0, %if.end20.cleanup.thread_crit_edge ], [ %retval.0.i8083, %if.end27.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_added) #10
  br label %while.end

cleanup.thread104:                                ; preds = %if.else, %if.then39
  %new_num_nodes.2.ph = phi i16 [ %conv43, %if.then39 ], [ %sub49, %if.else ]
  %first_teid_ptr.3.ph = phi ptr [ %first_teid_ptr.0101, %if.then39 ], [ %spec.select, %if.else ]
  %parent.addr.2.ph = phi ptr [ %parent.addr.0102, %if.then39 ], [ %35, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_added) #10
  %38 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_nodes_added, align 2
  %cmp = icmp ult i16 %39, %num_nodes
  br i1 %cmp, label %cleanup.thread104.while.body_crit_edge, label %cleanup.thread104.while.end_crit_edge

cleanup.thread104.while.end_crit_edge:            ; preds = %cleanup.thread104
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.thread104.while.body_crit_edge:           ; preds = %cleanup.thread104
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end.loopexit.critedge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_added) #10
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.critedge, %cleanup.thread104.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %status.2 = phi i32 [ %status.1.ph, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ -5, %while.end.loopexit.critedge ], [ %retval.0.i8083, %cleanup.thread104.while.end_crit_edge ]
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_add_elems(ptr noundef %pi, ptr nocapture noundef readonly %tc_node, ptr noundef %parent, i8 noundef zeroext %layer, i16 noundef zeroext %num_nodes, ptr nocapture noundef writeonly %num_nodes_added, ptr nocapture noundef writeonly %first_node_teid) unnamed_addr #3 align 64 {
entry:
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %conv = zext i16 %num_nodes to i32
  %2 = mul nuw nsw i32 %conv, 24
  %spec.select.i256 = add nuw nsw i32 %2, 8
  %add.ptr = getelementptr i8, ptr %1, i32 -2960
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %spec.select.i256, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %parent, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node_teid, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %num_nodes)
  %num_elems = getelementptr inbounds %struct.ice_aqc_txsched_topo_grp_info_hdr, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_elems to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %num_elems, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_nodes)
  %cmp258.not = icmp eq i16 %num_nodes, 0
  br i1 %cmp258.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %arrayidx, align 4
  %data = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %data, align 4
  %valid_sections = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv, i32 2, i32 1
  %12 = ptrtoint ptr %valid_sections to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %valid_sections, align 1
  %generic21 = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv, i32 2, i32 2
  %13 = ptrtoint ptr %generic21 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %generic21, align 2
  %cir_bw = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv, i32 2, i32 4
  %14 = ptrtoint ptr %cir_bw to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %cir_bw, align 4
  %bw_alloc = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv, i32 2, i32 4, i32 1
  %15 = ptrtoint ptr %bw_alloc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1024, ptr %bw_alloc, align 2
  %eir_bw = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv, i32 2, i32 5
  %16 = ptrtoint ptr %eir_bw to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %eir_bw, align 4
  %bw_alloc41 = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv, i32 2, i32 5, i32 1
  %17 = ptrtoint ptr %bw_alloc41 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1024, ptr %bw_alloc41, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %conv42 = trunc i32 %spec.select.i256 to i16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %18 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %19 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 1025) #10
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %18, align 4
  %21 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %desc.i.i, align 4
  %23 = or i16 %22, 4
  store i16 %23, ptr %desc.i.i, align 4
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %1, ptr noundef nonnull %desc.i.i, ptr noundef nonnull %call.i, i16 noundef zeroext %conv42, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i.not, label %lor.lhs.false, label %ice_aq_add_sched_elems.exit

ice_aq_add_sched_elems.exit:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %do.body

lor.lhs.false:                                    ; preds = %for.end
  %num_elem_resp.i.i = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %num_elem_resp.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_elem_resp.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %25)
  %cmp46.not = icmp eq i16 %25, 256
  br i1 %cmp46.not, label %if.end66, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %ice_aq_add_sched_elems.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_add_elems.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_add_elems, %if.then54)) #10
          to label %cleanup.sink.split [label %if.then54], !srcloc !92

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 30, i32 8
  %28 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sq_last_status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_add_elems.__UNIQUE_ID_ddebug617, ptr noundef %dev59, ptr noundef nonnull @.str.27, i32 noundef %29) #10
  br label %cleanup.sink.split

if.end66:                                         ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %num_nodes, ptr %num_nodes_added, align 2
  br i1 %cmp258.not, label %if.end66.cleanup.sink.split_crit_edge, label %for.body72.lr.ph

if.end66.cleanup.sink.split_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body72.lr.ph:                                 ; preds = %if.end66
  %tc_num = getelementptr inbounds %struct.ice_sched_node, ptr %tc_node, i32 0, i32 9
  %idxprom1.i = zext i8 %layer to i32
  br label %for.body72

for.body72:                                       ; preds = %for.inc160.for.body72_crit_edge, %for.body72.lr.ph
  %indvars.iv266 = phi i32 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next267, %for.inc160.for.body72_crit_edge ]
  %arrayidx75 = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv266
  %call76 = call i32 @ice_sched_add_node(ptr noundef %pi, i8 noundef zeroext %layer, ptr noundef %arrayidx75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end100, label %do.body79

do.body79:                                        ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_add_elems.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_add_elems, %if.then91)) #10
          to label %cleanup.sink.split [label %if.then91], !srcloc !92

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_add_elems.__UNIQUE_ID_ddebug618, ptr noundef %dev96, ptr noundef nonnull @.str.28, i32 noundef %call76) #10
  br label %cleanup.sink.split

if.end100:                                        ; preds = %for.body72
  %node_teid104 = getelementptr %struct.ice_aqc_add_elem, ptr %call.i, i32 0, i32 1, i32 %indvars.iv266, i32 1
  %33 = ptrtoint ptr %node_teid104 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %node_teid104, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %call105 = call ptr @ice_sched_find_node_by_teid(ptr noundef %parent, i32 noundef %35)
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %do.body108, label %if.end129

do.body108:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_add_elems.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_add_elems, %if.then120)) #10
          to label %cleanup.sink.split [label %if.then120], !srcloc !92

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_add_elems.__UNIQUE_ID_ddebug619, ptr noundef %dev125, ptr noundef nonnull @.str.29, i32 noundef %35) #10
  br label %cleanup.sink.split

if.end129:                                        ; preds = %if.end100
  %sibling = getelementptr inbounds %struct.ice_sched_node, ptr %call105, i32 0, i32 1
  %38 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %sibling, align 4
  %39 = ptrtoint ptr %tc_num to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tc_num, align 1
  %tc_num130 = getelementptr inbounds %struct.ice_sched_node, ptr %call105, i32 0, i32 9
  %41 = ptrtoint ptr %tc_num130 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %tc_num130, align 1
  %42 = load i8, ptr %tc_num, align 1
  %idxprom.i = zext i8 %42 to i32
  %arrayidx2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i, i32 %idxprom1.i
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2.i, align 4
  %tobool132.not = icmp eq ptr %44, null
  %cmp133.not = icmp eq ptr %44, %call105
  %or.cond = select i1 %tobool132.not, i1 true, i1 %cmp133.not
  br i1 %or.cond, label %if.end129.if.end140_crit_edge, label %if.end129.while.cond_crit_edge

if.end129.while.cond_crit_edge:                   ; preds = %if.end129
  br label %while.cond

if.end129.if.end140_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end129.while.cond_crit_edge
  %prev.0 = phi ptr [ %46, %while.cond.while.cond_crit_edge ], [ %44, %if.end129.while.cond_crit_edge ]
  %sibling136 = getelementptr inbounds %struct.ice_sched_node, ptr %prev.0, i32 0, i32 1
  %45 = ptrtoint ptr %sibling136 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sibling136, align 4
  %tobool137.not = icmp eq ptr %46, null
  br i1 %tobool137.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %sibling136.le = getelementptr inbounds %struct.ice_sched_node, ptr %prev.0, i32 0, i32 1
  %47 = ptrtoint ptr %sibling136.le to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call105, ptr %sibling136.le, align 4
  br label %if.end140

if.end140:                                        ; preds = %while.end, %if.end129.if.end140_crit_edge
  %48 = ptrtoint ptr %tc_num to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tc_num, align 1
  %idxprom142 = zext i8 %49 to i32
  %arrayidx145 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom142, i32 %idxprom1.i
  %50 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx145, align 4
  %tobool146.not = icmp eq ptr %51, null
  br i1 %tobool146.not, label %if.then147, label %if.end140.if.end154_crit_edge

if.end140.if.end154_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

if.then147:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call105, ptr %arrayidx145, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then147, %if.end140.if.end154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv266)
  %cmp156 = icmp eq i32 %indvars.iv266, 0
  br i1 %cmp156, label %if.then158, label %if.end154.for.inc160_crit_edge

if.end154.for.inc160_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc160

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %first_node_teid to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %35, ptr %first_node_teid, align 4
  br label %for.inc160

for.inc160:                                       ; preds = %if.then158, %if.end154.for.inc160_crit_edge
  %indvars.iv.next267 = add nuw nsw i32 %indvars.iv266, 1
  %exitcond269.not = icmp eq i32 %indvars.iv.next267, %conv
  br i1 %exitcond269.not, label %for.inc160.cleanup.sink.split_crit_edge, label %for.inc160.for.body72_crit_edge

for.inc160.for.body72_crit_edge:                  ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body72

for.inc160.cleanup.sink.split_crit_edge:          ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc160.cleanup.sink.split_crit_edge, %if.then120, %do.body108, %if.then91, %do.body79, %if.end66.cleanup.sink.split_crit_edge, %if.then54, %do.body
  %retval.0.ph = phi i32 [ -5, %do.body ], [ -5, %if.then54 ], [ %call76, %if.then91 ], [ 0, %if.then120 ], [ %call76, %do.body79 ], [ 0, %do.body108 ], [ 0, %if.end66.cleanup.sink.split_crit_edge ], [ 0, %for.inc160.cleanup.sink.split_crit_edge ]
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %dev167 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev167, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_vsi_valid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ice_sched_is_leaf_node_present(ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 8
  %0 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp10.not = icmp eq i8 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %children, align 4
  %wide.trip.count = zext i8 %1 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call fastcc zeroext i1 @ice_sched_is_leaf_node_present(ptr noundef %5)
  br i1 %call, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %data = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp4 = icmp eq i8 %7, 5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp4, %for.end ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_move_vsi_to_agg(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i32 noundef %agg_id, i8 noundef zeroext %tc) unnamed_addr #3 align 64 {
entry:
  %desc.i.i.i = alloca %struct.ice_aq_desc, align 4
  %num_nodes = alloca [9 x i16], align 2
  %first_node_teid = alloca i32, align 4
  %num_nodes_added = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %num_nodes) #10
  %0 = call ptr @memset(ptr %num_nodes, i32 0, i32 18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_node_teid) #10
  %1 = ptrtoint ptr %first_node_teid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %first_node_teid, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_nodes_added) #10
  %2 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %num_nodes_added, align 2, !annotation !95
  %tobool.not.i = icmp eq ptr %pi, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_children.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp23.not.i = icmp eq i8 %6, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %children.i, align 4
  %wide.trip.count.i = zext i8 %6 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %indvars.iv.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tc_num.i = getelementptr inbounds %struct.ice_sched_node, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %tc_num.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tc_num.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %tc)
  %cmp8.i = icmp eq i8 %12, %tc
  br i1 %cmp8.i, label %ice_sched_get_tc_node.exit, label %for.cond.i

ice_sched_get_tc_node.exit:                       ; preds = %for.body.i
  %tc_num.i.le = getelementptr inbounds %struct.ice_sched_node, ptr %10, i32 0, i32 9
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %ice_sched_get_tc_node.exit.cleanup_crit_edge, label %if.end

ice_sched_get_tc_node.exit.cleanup_crit_edge:     ; preds = %ice_sched_get_tc_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ice_sched_get_tc_node.exit
  %hw1.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %13 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1.i, align 4
  %tobool.not.i115 = icmp eq ptr %14, null
  br i1 %tobool.not.i115, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %num_tx_sched_layers.i.i = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %num_tx_sched_layers.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_tx_sched_layers.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp.i.i = icmp ugt i8 %16, 7
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end10.i.i_crit_edge

if.end.i.if.end10.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %sub.i.i = add i8 %16, -6
  %sw_entry_point_layer.i.i = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %17 = ptrtoint ptr %sw_entry_point_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sw_entry_point_layer.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i, i8 %18)
  %cmp7.not.i.i = icmp ugt i8 %sub.i.i, %18
  br i1 %cmp7.not.i.i, label %if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge, label %if.then.i.i.if.end10.i.i_crit_edge

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_agg_layer.exit.i

if.end10.i.i:                                     ; preds = %if.then.i.i.if.end10.i.i_crit_edge, %if.end.i.if.end10.i.i_crit_edge
  %sw_entry_point_layer11.i.i = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %19 = ptrtoint ptr %sw_entry_point_layer11.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sw_entry_point_layer11.i.i, align 2
  br label %ice_sched_get_agg_layer.exit.i

ice_sched_get_agg_layer.exit.i:                   ; preds = %if.end10.i.i, %if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge
  %retval.1.i.i = phi i8 [ %sub.i.i, %if.then.i.i.ice_sched_get_agg_layer.exit.i_crit_edge ], [ %20, %if.end10.i.i ]
  %21 = ptrtoint ptr %tc_num.i.le to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tc_num.i.le, align 1
  %idxprom.i.i = zext i8 %22 to i32
  %idxprom1.i.i = zext i8 %retval.1.i.i to i32
  %arrayidx2.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i, i32 %idxprom1.i.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %node.015.i = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool3.not16.i = icmp eq ptr %node.015.i, null
  br i1 %tobool3.not16.i, label %ice_sched_get_agg_layer.exit.i.cleanup_crit_edge, label %ice_sched_get_agg_layer.exit.i.while.body.i_crit_edge

ice_sched_get_agg_layer.exit.i.while.body.i_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i
  br label %while.body.i

ice_sched_get_agg_layer.exit.i.cleanup_crit_edge: ; preds = %ice_sched_get_agg_layer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %ice_sched_get_agg_layer.exit.i.while.body.i_crit_edge
  %node.017.i = phi ptr [ %node.0.i, %if.end6.i.while.body.i_crit_edge ], [ %node.015.i, %ice_sched_get_agg_layer.exit.i.while.body.i_crit_edge ]
  %agg_id4.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i, i32 0, i32 4
  %24 = ptrtoint ptr %agg_id4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agg_id4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %agg_id)
  %cmp.i = icmp eq i32 %25, %agg_id
  br i1 %cmp.i, label %if.end4, label %if.end6.i

if.end6.i:                                        ; preds = %while.body.i
  %sibling.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i, i32 0, i32 1
  %26 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %node.0.i = load ptr, ptr %sibling.i, align 4
  %tobool3.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool3.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %while.body.i
  %27 = ptrtoint ptr %num_tx_sched_layers.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_tx_sched_layers.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %cmp.i.i118 = icmp ugt i8 %28, 5
  br i1 %cmp.i.i118, label %if.then.i.i122, label %if.end4.if.end10.i.i124_crit_edge

if.end4.if.end10.i.i124_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i124

if.then.i.i122:                                   ; preds = %if.end4
  %sub.i.i119 = add i8 %28, -4
  %sw_entry_point_layer.i.i120 = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %29 = ptrtoint ptr %sw_entry_point_layer.i.i120 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sw_entry_point_layer.i.i120, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i119, i8 %30)
  %cmp7.not.i.i121 = icmp ugt i8 %sub.i.i119, %30
  br i1 %cmp7.not.i.i121, label %if.then.i.i122.ice_sched_get_vsi_layer.exit.i_crit_edge, label %if.then.i.i122.if.end10.i.i124_crit_edge

if.then.i.i122.if.end10.i.i124_crit_edge:         ; preds = %if.then.i.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i124

if.then.i.i122.ice_sched_get_vsi_layer.exit.i_crit_edge: ; preds = %if.then.i.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit.i

if.end10.i.i124:                                  ; preds = %if.then.i.i122.if.end10.i.i124_crit_edge, %if.end4.if.end10.i.i124_crit_edge
  %sw_entry_point_layer11.i.i123 = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %31 = ptrtoint ptr %sw_entry_point_layer11.i.i123 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sw_entry_point_layer11.i.i123, align 2
  br label %ice_sched_get_vsi_layer.exit.i

ice_sched_get_vsi_layer.exit.i:                   ; preds = %if.end10.i.i124, %if.then.i.i122.ice_sched_get_vsi_layer.exit.i_crit_edge
  %retval.1.i.i125 = phi i8 [ %sub.i.i119, %if.then.i.i122.ice_sched_get_vsi_layer.exit.i_crit_edge ], [ %32, %if.end10.i.i124 ]
  %33 = ptrtoint ptr %tc_num.i.le to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tc_num.i.le, align 1
  %idxprom.i.i127 = zext i8 %34 to i32
  %idxprom1.i.i128 = zext i8 %retval.1.i.i125 to i32
  %arrayidx2.i.i129 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 15, i32 %idxprom.i.i127, i32 %idxprom1.i.i128
  %35 = ptrtoint ptr %arrayidx2.i.i129 to i32
  call void @__asan_load4_noabort(i32 %35)
  %node.011.i = load ptr, ptr %arrayidx2.i.i129, align 4
  %tobool.not12.i = icmp eq ptr %node.011.i, null
  br i1 %tobool.not12.i, label %ice_sched_get_vsi_layer.exit.i.cleanup_crit_edge, label %ice_sched_get_vsi_layer.exit.i.while.body.i131_crit_edge

ice_sched_get_vsi_layer.exit.i.while.body.i131_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i
  br label %while.body.i131

ice_sched_get_vsi_layer.exit.i.cleanup_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i131:                                  ; preds = %if.end.i135.while.body.i131_crit_edge, %ice_sched_get_vsi_layer.exit.i.while.body.i131_crit_edge
  %node.013.i = phi ptr [ %node.0.i133, %if.end.i135.while.body.i131_crit_edge ], [ %node.011.i, %ice_sched_get_vsi_layer.exit.i.while.body.i131_crit_edge ]
  %vsi_handle2.i = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 5
  %36 = ptrtoint ptr %vsi_handle2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vsi_handle2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %vsi_handle)
  %cmp.i130 = icmp eq i16 %37, %vsi_handle
  br i1 %cmp.i130, label %if.end8, label %if.end.i135

if.end.i135:                                      ; preds = %while.body.i131
  %sibling.i132 = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 1
  %38 = ptrtoint ptr %sibling.i132 to i32
  call void @__asan_load4_noabort(i32 %38)
  %node.0.i133 = load ptr, ptr %sibling.i132, align 4
  %tobool.not.i134 = icmp eq ptr %node.0.i133, null
  br i1 %tobool.not.i134, label %if.end.i135.cleanup_crit_edge, label %if.end.i135.while.body.i131_crit_edge

if.end.i135.while.body.i131_crit_edge:            ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i131

if.end.i135.cleanup_crit_edge:                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %while.body.i131
  %call9 = tail call fastcc zeroext i1 @ice_sched_find_node_in_subtree(ptr noundef nonnull %node.017.i, ptr noundef nonnull %node.013.i)
  br i1 %call9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %28)
  %cmp.i136 = icmp ugt i8 %28, 7
  br i1 %cmp.i136, label %if.then.i, label %if.end11.if.end10.i_crit_edge

if.end11.if.end10.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end11
  %sub.i = add i8 %28, -6
  %sw_entry_point_layer.i = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %39 = ptrtoint ptr %sw_entry_point_layer.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sw_entry_point_layer.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i, i8 %40)
  %cmp7.not.i = icmp ugt i8 %sub.i, %40
  br i1 %cmp7.not.i, label %if.then.i.ice_sched_get_agg_layer.exit_crit_edge, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i.ice_sched_get_agg_layer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_agg_layer.exit

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %if.end11.if.end10.i_crit_edge
  %sw_entry_point_layer11.i = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %41 = ptrtoint ptr %sw_entry_point_layer11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sw_entry_point_layer11.i, align 2
  br label %ice_sched_get_agg_layer.exit

ice_sched_get_agg_layer.exit:                     ; preds = %if.end10.i, %if.then.i.ice_sched_get_agg_layer.exit_crit_edge
  %retval.1.i = phi i8 [ %sub.i, %if.then.i.ice_sched_get_agg_layer.exit_crit_edge ], [ %42, %if.end10.i ]
  br i1 %cmp.i.i118, label %if.then.i142, label %ice_sched_get_agg_layer.exit.if.end10.i144_crit_edge

ice_sched_get_agg_layer.exit.if.end10.i144_crit_edge: ; preds = %ice_sched_get_agg_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i144

if.then.i142:                                     ; preds = %ice_sched_get_agg_layer.exit
  %sub.i139 = add i8 %28, -4
  %sw_entry_point_layer.i140 = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %43 = ptrtoint ptr %sw_entry_point_layer.i140 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sw_entry_point_layer.i140, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i139, i8 %44)
  %cmp7.not.i141 = icmp ugt i8 %sub.i139, %44
  br i1 %cmp7.not.i141, label %if.then.i142.ice_sched_get_vsi_layer.exit_crit_edge, label %if.then.i142.if.end10.i144_crit_edge

if.then.i142.if.end10.i144_crit_edge:             ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i144

if.then.i142.ice_sched_get_vsi_layer.exit_crit_edge: ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit

if.end10.i144:                                    ; preds = %if.then.i142.if.end10.i144_crit_edge, %ice_sched_get_agg_layer.exit.if.end10.i144_crit_edge
  %sw_entry_point_layer11.i143 = getelementptr inbounds %struct.ice_hw, ptr %14, i32 0, i32 19
  %45 = ptrtoint ptr %sw_entry_point_layer11.i143 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sw_entry_point_layer11.i143, align 2
  br label %ice_sched_get_vsi_layer.exit

ice_sched_get_vsi_layer.exit:                     ; preds = %if.end10.i144, %if.then.i142.ice_sched_get_vsi_layer.exit_crit_edge
  %retval.1.i145 = phi i8 [ %sub.i139, %if.then.i142.ice_sched_get_vsi_layer.exit_crit_edge ], [ %46, %if.end10.i144 ]
  %add = add i8 %retval.1.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add, i8 %retval.1.i145)
  %cmp172 = icmp ult i8 %add, %retval.1.i145
  br i1 %cmp172, label %for.body.preheader, label %ice_sched_get_vsi_layer.exit.for.cond20.preheader_crit_edge

ice_sched_get_vsi_layer.exit.for.cond20.preheader_crit_edge: ; preds = %ice_sched_get_vsi_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond20.preheader

for.body.preheader:                               ; preds = %ice_sched_get_vsi_layer.exit
  %47 = zext i8 %add to i32
  br label %for.body

for.cond20.preheader:                             ; preds = %for.body.for.cond20.preheader_crit_edge, %ice_sched_get_vsi_layer.exit.for.cond20.preheader_crit_edge
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i, i32 0, i32 8
  %48 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp23174.not = icmp eq i8 %49, 0
  br i1 %cmp23174.not, label %for.cond20.preheader.for.cond39.preheader_crit_edge, label %for.body25.lr.ph

for.cond20.preheader.for.cond39.preheader_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond39.preheader

for.body25.lr.ph:                                 ; preds = %for.cond20.preheader
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %node.017.i, i32 0, i32 2
  br label %for.body25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %47, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x i16], ptr %num_nodes, i32 0, i32 %indvars.iv
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next to i8
  %exitcond.not = icmp eq i8 %retval.1.i145, %lftr.wideiv
  br i1 %exitcond.not, label %for.body.for.cond20.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.cond20.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond20.preheader

for.cond20:                                       ; preds = %for.body25
  %indvars.iv.next189 = add nuw nsw i32 %indvars.iv188, 1
  %51 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_children, align 4
  %53 = zext i8 %52 to i32
  %cmp23 = icmp ult i32 %indvars.iv.next189, %53
  br i1 %cmp23, label %for.cond20.for.body25_crit_edge, label %for.cond20.for.cond39.preheader_crit_edge

for.cond20.for.cond39.preheader_crit_edge:        ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond39.preheader

for.cond20.for.body25_crit_edge:                  ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

for.cond39.preheader:                             ; preds = %for.cond20.for.cond39.preheader_crit_edge, %for.cond20.preheader.for.cond39.preheader_crit_edge
  br i1 %cmp172, label %for.body44.preheader, label %move_nodes

for.body44.preheader:                             ; preds = %for.cond39.preheader
  %54 = zext i8 %add to i32
  br label %for.body44

for.body25:                                       ; preds = %for.cond20.for.body25_crit_edge, %for.body25.lr.ph
  %indvars.iv188 = phi i32 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next189, %for.cond20.for.body25_crit_edge ]
  %55 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw1.i, align 4
  %57 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %children, align 4
  %arrayidx28 = getelementptr ptr, ptr %58, i32 %indvars.iv188
  %59 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx28, align 4
  %call29 = call fastcc ptr @ice_sched_get_free_vsi_parent(ptr noundef %56, ptr noundef %60, ptr noundef nonnull %num_nodes)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %for.cond20, label %for.body25.if.end.i150.sink.split_crit_edge

for.body25.if.end.i150.sink.split_crit_edge:      ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i150.sink.split

for.cond39:                                       ; preds = %if.end62
  %indvars.iv.next191 = add nuw nsw i32 %indvars.iv190, 1
  %lftr.wideiv192 = trunc i32 %indvars.iv.next191 to i8
  %exitcond193.not = icmp eq i8 %retval.1.i145, %lftr.wideiv192
  br i1 %exitcond193.not, label %for.cond39.if.end.i150.sink.split_crit_edge, label %for.cond39.for.body44_crit_edge

for.cond39.for.body44_crit_edge:                  ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44

for.cond39.if.end.i150.sink.split_crit_edge:      ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i150.sink.split

for.body44:                                       ; preds = %for.cond39.for.body44_crit_edge, %for.body44.preheader
  %indvars.iv190 = phi i32 [ %54, %for.body44.preheader ], [ %indvars.iv.next191, %for.cond39.for.body44_crit_edge ]
  %parent.0177 = phi ptr [ %node.017.i, %for.body44.preheader ], [ %parent.1, %for.cond39.for.body44_crit_edge ]
  %arrayidx46 = getelementptr [9 x i16], ptr %num_nodes, i32 0, i32 %indvars.iv190
  %61 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx46, align 2
  %63 = trunc i32 %indvars.iv190 to i8
  %call47 = call fastcc i32 @ice_sched_add_nodes_to_layer(ptr noundef nonnull %pi, ptr noundef nonnull %10, ptr noundef nonnull %parent.0177, i8 noundef zeroext %63, i16 noundef zeroext %62, ptr noundef nonnull %first_node_teid, ptr noundef nonnull %num_nodes_added)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false, label %for.body44.cleanup_crit_edge

for.body44.cleanup_crit_edge:                     ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body44
  %64 = ptrtoint ptr %num_nodes_added to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %num_nodes_added, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %65)
  %cmp53.not = icmp eq i16 %62, %65
  br i1 %cmp53.not, label %if.end56, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool57.not = icmp eq i16 %62, 0
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %first_node_teid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %first_node_teid, align 4
  %call59 = tail call ptr @ice_sched_find_node_by_teid(ptr noundef nonnull %10, i32 noundef %67)
  br label %if.end62

if.else:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %children60 = getelementptr inbounds %struct.ice_sched_node, ptr %parent.0177, i32 0, i32 2
  %68 = ptrtoint ptr %children60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %children60, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then58
  %parent.1 = phi ptr [ %call59, %if.then58 ], [ %71, %if.else ]
  %tobool63.not = icmp eq ptr %parent.1, null
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %for.cond39

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

move_nodes:                                       ; preds = %for.cond39.preheader
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %node_teid, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %tobool.not.i147 = icmp eq ptr %node.017.i, null
  br i1 %tobool.not.i147, label %move_nodes.cleanup_crit_edge, label %move_nodes.if.end.i150_crit_edge

move_nodes.if.end.i150_crit_edge:                 ; preds = %move_nodes
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i150

move_nodes.cleanup_crit_edge:                     ; preds = %move_nodes
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i150.sink.split:                           ; preds = %for.cond39.if.end.i150.sink.split_crit_edge, %for.body25.if.end.i150.sink.split_crit_edge
  %parent.2162.ph = phi ptr [ %parent.1, %for.cond39.if.end.i150.sink.split_crit_edge ], [ %call29, %for.body25.if.end.i150.sink.split_crit_edge ]
  %node_teid196 = getelementptr inbounds %struct.ice_sched_node, ptr %node.013.i, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %node_teid196 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %node_teid196, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.end.i150.sink.split, %move_nodes.if.end.i150_crit_edge
  %78 = phi i32 [ %74, %move_nodes.if.end.i150_crit_edge ], [ %77, %if.end.i150.sink.split ]
  %parent.2162 = phi ptr [ %node.017.i, %move_nodes.if.end.i150_crit_edge ], [ %parent.2162.ph, %if.end.i150.sink.split ]
  %79 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw1.i, align 4
  %num_children.i148 = getelementptr inbounds %struct.ice_sched_node, ptr %parent.2162, i32 0, i32 8
  %81 = ptrtoint ptr %num_children.i148 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_children.i148, align 4
  %tx_sched_layer.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.2162, i32 0, i32 7
  %83 = ptrtoint ptr %tx_sched_layer.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tx_sched_layer.i, align 1
  %idxprom.i = zext i8 %84 to i32
  %arrayidx.i149 = getelementptr %struct.ice_hw, ptr %80, i32 0, i32 20, i32 %idxprom.i
  %85 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i149, align 2
  %87 = zext i8 %82 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %87)
  %cmp.not.i = icmp ugt i16 %86, %87
  br i1 %cmp.not.i, label %kzalloc.exit.i, label %if.end.i150.cleanup_crit_edge

if.end.i150.cleanup_crit_edge:                    ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

kzalloc.exit.i:                                   ; preds = %if.end.i150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 16) #14
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %kzalloc.exit.i.cleanup_crit_edge, label %for.cond.preheader.i151

kzalloc.exit.i.cleanup_crit_edge:                 ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i151:                          ; preds = %kzalloc.exit.i
  %node_teid.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.2162, i32 0, i32 3, i32 1
  %children24.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %parent.2162, i32 0, i32 2
  %89 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pi, align 8
  %call20.i = tail call ptr @ice_sched_find_node_by_teid(ptr noundef %90, i32 noundef %78) #10
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %for.cond.preheader.i151.move_err_exit.i_crit_edge, label %if.end23.i

for.cond.preheader.i151.move_err_exit.i_crit_edge: ; preds = %for.cond.preheader.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %move_err_exit.i

if.end23.i:                                       ; preds = %for.cond.preheader.i151
  %91 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6
  %num_elems.i = getelementptr inbounds %struct.ice_aqc_txsched_move_grp_info_hdr, ptr %call7.i.i.i, i32 0, i32 2
  %teid.i = getelementptr inbounds %struct.ice_aqc_move_elem, ptr %call7.i.i.i, i32 0, i32 1
  %dest_parent_teid.i = getelementptr inbounds %struct.ice_aqc_txsched_move_grp_info_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %info.i = getelementptr inbounds %struct.ice_sched_node, ptr %call20.i, i32 0, i32 3
  %92 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %info.i, align 4
  %94 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %call7.i.i.i, align 8
  %95 = ptrtoint ptr %node_teid.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %node_teid.i, align 4
  %97 = ptrtoint ptr %dest_parent_teid.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %dest_parent_teid.i, align 4
  %node_teid27.i = getelementptr inbounds %struct.ice_sched_node, ptr %call20.i, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %node_teid27.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %node_teid27.i, align 4
  %100 = ptrtoint ptr %teid.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %teid.i, align 4
  %101 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 256, ptr %num_elems.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  %102 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i.i, i16 noundef zeroext 1032) #10
  %103 = ptrtoint ptr %91 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 256, ptr %91, align 4
  %104 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %desc.i.i.i, align 4
  %106 = or i16 %105, 4
  store i16 %106, ptr %desc.i.i.i, align 4
  %call.i.i.i = call i32 @ice_aq_send_cmd(ptr noundef %80, ptr noundef nonnull %desc.i.i.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 16, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  br i1 %tobool.not.i.i.not.i, label %if.end36.i, label %if.end23.i.move_err_exit.i_crit_edge

if.end23.i.move_err_exit.i_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %move_err_exit.i

if.end36.i:                                       ; preds = %if.end23.i
  %107 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call20.i, align 4
  %num_children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_children.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp51.not.i.i = icmp eq i8 %110, 0
  br i1 %cmp51.not.i.i, label %if.end36.i.ice_sched_update_parent.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end36.i.ice_sched_update_parent.exit.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_parent.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end36.i
  %children.i.i = getelementptr inbounds %struct.ice_sched_node, ptr %108, i32 0, i32 2
  %111 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %children.i.i, align 4
  %wide.trip.count.i.i = zext i8 %110 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc21.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc21.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %112, i32 %indvars.iv.i.i
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp3.i.i = icmp eq ptr %114, %call20.i
  br i1 %cmp3.i.i, label %for.cond7.preheader.i.i, label %for.inc21.i.i

for.cond7.preheader.i.i:                          ; preds = %for.body.i.i
  %115 = trunc i32 %indvars.iv.i.i to i8
  %j.053.i.i = add i8 %115, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %j.053.i.i, i8 %110)
  %cmp1154.i.i = icmp ult i8 %j.053.i.i, %110
  br i1 %cmp1154.i.i, label %for.cond7.preheader.i.i.for.body13.i.i_crit_edge, label %for.cond7.preheader.i.i.for.end.i.i_crit_edge

for.cond7.preheader.i.i.for.end.i.i_crit_edge:    ; preds = %for.cond7.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.cond7.preheader.i.i.for.body13.i.i_crit_edge: ; preds = %for.cond7.preheader.i.i
  br label %for.body13.i.i

for.body13.i.i:                                   ; preds = %for.body13.i.i.for.body13.i.i_crit_edge, %for.cond7.preheader.i.i.for.body13.i.i_crit_edge
  %indvars.iv58.in.i.i = phi i32 [ %indvars.iv58.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ %indvars.iv.i.i, %for.cond7.preheader.i.i.for.body13.i.i_crit_edge ]
  %j.055.i.i = phi i8 [ %j.0.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ %j.053.i.i, %for.cond7.preheader.i.i.for.body13.i.i_crit_edge ]
  %indvars.iv58.i.i = add nuw nsw i32 %indvars.iv58.in.i.i, 1
  %116 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %children.i.i, align 4
  %arrayidx16.i.i = getelementptr ptr, ptr %117, i32 %indvars.iv58.i.i
  %118 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx16.i.i, align 4
  %arrayidx19.i.i = getelementptr ptr, ptr %117, i32 %indvars.iv58.in.i.i
  %120 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %arrayidx19.i.i, align 4
  %j.0.i.i = add nuw i8 %j.055.i.i, 1
  %121 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %num_children.i.i, align 4
  %cmp11.i.i = icmp ult i8 %j.0.i.i, %122
  br i1 %cmp11.i.i, label %for.body13.i.i.for.body13.i.i_crit_edge, label %for.body13.i.i.for.end.i.i_crit_edge

for.body13.i.i.for.end.i.i_crit_edge:             ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body13.i.i.for.body13.i.i_crit_edge:          ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i.i

for.end.i.i:                                      ; preds = %for.body13.i.i.for.end.i.i_crit_edge, %for.cond7.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i8 [ %110, %for.cond7.preheader.i.i.for.end.i.i_crit_edge ], [ %122, %for.body13.i.i.for.end.i.i_crit_edge ]
  %dec.i.i = add i8 %.lcssa.i.i, -1
  %123 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %dec.i.i, ptr %num_children.i.i, align 4
  br label %ice_sched_update_parent.exit.i

for.inc21.i.i:                                    ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.inc21.i.i.ice_sched_update_parent.exit.i_crit_edge, label %for.inc21.i.i.for.body.i.i_crit_edge

for.inc21.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc21.i.i.ice_sched_update_parent.exit.i_crit_edge: ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_update_parent.exit.i

ice_sched_update_parent.exit.i:                   ; preds = %for.inc21.i.i.ice_sched_update_parent.exit.i_crit_edge, %for.end.i.i, %if.end36.i.ice_sched_update_parent.exit.i_crit_edge
  %124 = ptrtoint ptr %children24.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %children24.i.i, align 4
  %126 = ptrtoint ptr %num_children.i148 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %num_children.i148, align 4
  %inc26.i.i = add i8 %127, 1
  store i8 %inc26.i.i, ptr %num_children.i148, align 4
  %idxprom27.i.i = zext i8 %127 to i32
  %arrayidx28.i.i = getelementptr ptr, ptr %125, i32 %idxprom27.i.i
  %128 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call20.i, ptr %arrayidx28.i.i, align 4
  %129 = ptrtoint ptr %call20.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %parent.2162, ptr %call20.i, align 4
  %130 = ptrtoint ptr %node_teid.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %node_teid.i, align 4
  %132 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %info.i, align 4
  br label %move_err_exit.i

move_err_exit.i:                                  ; preds = %ice_sched_update_parent.exit.i, %if.end23.i.move_err_exit.i_crit_edge, %for.cond.preheader.i151.move_err_exit.i_crit_edge
  %status.1.i = phi i32 [ 0, %ice_sched_update_parent.exit.i ], [ -22, %for.cond.preheader.i151.move_err_exit.i_crit_edge ], [ -5, %if.end23.i.move_err_exit.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %move_err_exit.i, %kzalloc.exit.i.cleanup_crit_edge, %if.end.i150.cleanup_crit_edge, %move_nodes.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body44.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.i135.cleanup_crit_edge, %ice_sched_get_vsi_layer.exit.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %ice_sched_get_agg_layer.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ice_sched_get_tc_node.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %ice_sched_get_tc_node.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %status.1.i, %move_err_exit.i ], [ -22, %move_nodes.cleanup_crit_edge ], [ -28, %if.end.i150.cleanup_crit_edge ], [ -12, %kzalloc.exit.i.cleanup_crit_edge ], [ -5, %lor.lhs.false.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -5, %for.cond.preheader.i.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %ice_sched_get_agg_layer.exit.i.cleanup_crit_edge ], [ -2, %ice_sched_get_vsi_layer.exit.i.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %for.body44.cleanup_crit_edge ], [ -5, %if.end62.cleanup_crit_edge ], [ -2, %if.end.i135.cleanup_crit_edge ], [ -2, %if.end6.i.cleanup_crit_edge ], [ -5, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_nodes_added) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_node_teid) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %num_nodes) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_sched_get_free_vsi_parent(ptr nocapture noundef readonly %hw, ptr noundef readonly %node, ptr nocapture noundef writeonly %num_nodes) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 7
  %0 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_sched_layer, align 1
  %num_tx_sched_layers.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 15
  %2 = ptrtoint ptr %num_tx_sched_layers.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tx_sched_layers.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp ugt i8 %3, 5
  br i1 %cmp.i, label %if.then.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  %sub.i = add i8 %3, -4
  %sw_entry_point_layer.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 19
  %4 = ptrtoint ptr %sw_entry_point_layer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_entry_point_layer.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i, i8 %5)
  %cmp7.not.i = icmp ugt i8 %sub.i, %5
  br i1 %cmp7.not.i, label %if.then.i.ice_sched_get_vsi_layer.exit_crit_edge, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i.ice_sched_get_vsi_layer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %sw_entry_point_layer11.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 19
  %6 = ptrtoint ptr %sw_entry_point_layer11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sw_entry_point_layer11.i, align 2
  br label %ice_sched_get_vsi_layer.exit

ice_sched_get_vsi_layer.exit:                     ; preds = %if.end10.i, %if.then.i.ice_sched_get_vsi_layer.exit_crit_edge
  %retval.1.i = phi i8 [ %sub.i, %if.then.i.ice_sched_get_vsi_layer.exit_crit_edge ], [ %7, %if.end10.i ]
  %conv = zext i8 %1 to i32
  %conv1 = zext i8 %retval.1.i to i32
  %sub = add nsw i32 %conv1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp eq i32 %sub, %conv
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 8
  %8 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_children, align 4
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 20, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp5 = icmp ugt i16 %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %ice_sched_get_vsi_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = select i1 %cmp5, ptr %node, ptr null
  br label %cleanup29

if.end:                                           ; preds = %ice_sched_get_vsi_layer.exit
  br i1 %cmp5, label %if.then15, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17 = getelementptr i16, ptr %num_nodes, i32 %conv
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx17, align 2
  %14 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %num_children, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %15 = phi i8 [ %.pr, %if.then15 ], [ %9, %if.end.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2248.not = icmp eq i8 %15, 0
  br i1 %cmp2248.not, label %if.end18.cleanup29_crit_edge, label %for.body.lr.ph

if.end18.cleanup29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

for.body.lr.ph:                                   ; preds = %if.end18
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %16 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_children, align 4
  %18 = zext i8 %17 to i32
  %cmp22 = icmp ult i32 %indvars.iv.next, %18
  br i1 %cmp22, label %for.cond.for.body_crit_edge, label %for.cond.cleanup29_crit_edge

for.cond.cleanup29_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %19 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %children, align 4
  %arrayidx25 = getelementptr ptr, ptr %20, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx25, align 4
  %call26 = tail call fastcc ptr @ice_sched_get_free_vsi_parent(ptr noundef %hw, ptr noundef %22, ptr noundef %num_nodes)
  %tobool.not = icmp eq ptr %call26, null
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup29_crit_edge

for.body.cleanup29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

cleanup29:                                        ; preds = %for.body.cleanup29_crit_edge, %for.cond.cleanup29_crit_edge, %if.end18.cleanup29_crit_edge, %if.then
  %retval.2 = phi ptr [ %spec.select, %if.then ], [ null, %if.end18.cleanup29_crit_edge ], [ %call26, %for.body.cleanup29_crit_edge ], [ null, %for.cond.cleanup29_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ice_sched_is_agg_inuse(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %num_tx_sched_layers.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %num_tx_sched_layers.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tx_sched_layers.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp ugt i8 %3, 5
  br i1 %cmp.i, label %if.then.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  %sub.i = add i8 %3, -4
  %sw_entry_point_layer.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %sw_entry_point_layer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_entry_point_layer.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i, i8 %5)
  %cmp7.not.i = icmp ugt i8 %sub.i, %5
  br i1 %cmp7.not.i, label %if.then.i.ice_sched_get_vsi_layer.exit_crit_edge, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i.ice_sched_get_vsi_layer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_vsi_layer.exit

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %sw_entry_point_layer11.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %sw_entry_point_layer11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sw_entry_point_layer11.i, align 2
  br label %ice_sched_get_vsi_layer.exit

ice_sched_get_vsi_layer.exit:                     ; preds = %if.end10.i, %if.then.i.ice_sched_get_vsi_layer.exit_crit_edge
  %retval.1.i = phi i8 [ %sub.i, %if.then.i.ice_sched_get_vsi_layer.exit_crit_edge ], [ %7, %if.end10.i ]
  %tx_sched_layer = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 7
  %8 = ptrtoint ptr %tx_sched_layer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_sched_layer, align 1
  %conv = zext i8 %9 to i32
  %conv1 = zext i8 %retval.1.i to i32
  %sub = add nsw i32 %conv1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp sgt i32 %sub, %conv
  %num_children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 8
  %10 = ptrtoint ptr %num_children to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_children, align 4
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %ice_sched_get_vsi_layer.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp519.not = icmp eq i8 %11, 0
  br i1 %cmp519.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 2
  %12 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %children, align 4
  %wide.trip.count = zext i8 %11 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %13, i32 %indvars.iv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call fastcc zeroext i1 @ice_sched_is_agg_inuse(ptr noundef %pi, ptr noundef %15)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next, i32 %wide.trip.count)
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %call7, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %ice_sched_get_vsi_layer.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool = icmp ne i8 %11, 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.else ], [ false, %for.cond.preheader.cleanup_crit_edge ], [ %call7, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_get_lan_q_ctx(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_set_node_bw_dflt(ptr noundef readonly %pi, ptr nocapture noundef %node, i32 noundef %rl_type, i8 noundef zeroext %layer_num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %2 = zext i32 %rl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %rl_type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb10.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %valid_sections.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %3 = ptrtoint ptr %valid_sections.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid_sections.i, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, label %if.then.i

sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_node_rl_prof_id.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %cir_bw.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %entry
  %valid_sections3.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %6 = ptrtoint ptr %valid_sections3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid_sections3.i, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not.i = icmp eq i8 %8, 0
  br i1 %tobool6.not.i, label %sw.bb2.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, label %if.then7.i

sw.bb2.i.ice_sched_get_node_rl_prof_id.exit_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_node_rl_prof_id.exit

if.then7.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %eir_bw.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5
  br label %sw.epilog.sink.split.i

sw.bb10.i:                                        ; preds = %entry
  %valid_sections11.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %9 = ptrtoint ptr %valid_sections11.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid_sections11.i, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not.i = icmp eq i8 %11, 0
  br i1 %tobool14.not.i, label %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, label %if.then15.i

sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge: ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_node_rl_prof_id.exit

if.then15.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  %srl_id.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then15.i, %if.then7.i, %if.then.i
  %rl_prof_id.029 = phi i16 [ -1, %if.then15.i ], [ 0, %if.then7.i ], [ 0, %if.then.i ]
  %profile_type.026 = phi i8 [ 2, %if.then15.i ], [ 1, %if.then7.i ], [ 0, %if.then.i ]
  %srl_id.sink.i = phi ptr [ %srl_id.i, %if.then15.i ], [ %eir_bw.i, %if.then7.i ], [ %cir_bw.i, %if.then.i ]
  %12 = ptrtoint ptr %srl_id.sink.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %srl_id.sink.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  br label %ice_sched_get_node_rl_prof_id.exit

ice_sched_get_node_rl_prof_id.exit:               ; preds = %sw.epilog.sink.split.i, %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, %sw.bb2.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge
  %rl_prof_id.031 = phi i16 [ -1, %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ 0, %sw.bb2.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ 0, %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ %rl_prof_id.029, %sw.epilog.sink.split.i ]
  %profile_type.028 = phi i8 [ 2, %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ 1, %sw.bb2.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ 0, %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ %profile_type.026, %sw.epilog.sink.split.i ]
  %rl_prof_id.0.i = phi i16 [ -1, %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ -1, %sw.bb2.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ -1, %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ %14, %sw.epilog.sink.split.i ]
  %call4 = tail call fastcc i32 @ice_sched_cfg_node_bw_lmt(ptr noundef %1, ptr noundef %node, i32 noundef %rl_type, i16 noundef zeroext %rl_prof_id.031)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge

ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge: ; preds = %ice_sched_get_node_rl_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ice_sched_get_node_rl_prof_id.exit
  %15 = zext i16 %rl_prof_id.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %rl_prof_id.0.i, label %if.end10 [
    i16 0, label %if.end.cleanup_crit_edge
    i16 -1, label %if.end.cleanup_crit_edge43
  ]

if.end.cleanup_crit_edge43:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %layer_num)
  %cmp.i = icmp ugt i8 %layer_num, 8
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %conv.i = zext i8 %layer_num to i32
  %arrayidx.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 %conv.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn72.i = load ptr, ptr %arrayidx.i, align 4
  %cmp5.not73.i = icmp eq ptr %.pn72.i, %arrayidx.i
  br i1 %cmp5.not73.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn74.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn72.i, %if.end.i.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn74.i, i32 -11
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags.i, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %profile_type.028)
  %cmp9.i = icmp eq i8 %19, %profile_type.028
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %profile_id12.i = getelementptr i8, ptr %.pn74.i, i32 -10
  %20 = ptrtoint ptr %profile_id12.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %profile_id12.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %rl_prof_id.0.i)
  %cmp15.i = icmp eq i16 %22, %rl_prof_id.0.i
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  %rl_prof_elem.0.le.i = getelementptr i8, ptr %.pn74.i, i32 -12
  %prof_id_ref.i = getelementptr i8, ptr %.pn74.i, i32 12
  %23 = ptrtoint ptr %prof_id_ref.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %prof_id_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i23 = icmp eq i16 %24, 0
  br i1 %tobool.not.i23, label %if.then17.i.if.end20.i_crit_edge, label %if.then18.i

if.then17.i.if.end20.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add i16 %24, -1
  %25 = ptrtoint ptr %prof_id_ref.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %dec.i, ptr %prof_id_ref.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.then17.i.if.end20.i_crit_edge
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 4
  %call.i = tail call fastcc i32 @ice_sched_del_rl_profile(ptr noundef %27, ptr noundef %rl_prof_elem.0.le.i) #10
  %28 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call.i, label %do.body.i [
    i32 0, label %if.end20.i.cleanup_crit_edge
    i32 -16, label %if.end20.i.cleanup_crit_edge44
  ]

if.end20.i.cleanup_crit_edge44:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_rm_rl_profile.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_set_node_bw_dflt, %if.then32.i)) #10
          to label %cleanup [label %if.then32.i], !srcloc !92

if.then32.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1, align 4
  %add.ptr36.i = getelementptr i8, ptr %30, i32 -2960
  %31 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr36.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_rm_rl_profile.__UNIQUE_ID_ddebug629, ptr noundef %dev.i, ptr noundef nonnull @.str.21) #10
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %33 = ptrtoint ptr %.pn74.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn74.i, align 4
  %cmp5.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp5.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then32.i, %do.body.i, %if.end20.i.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge44, %if.end.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge43, %ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge43 ], [ -22, %if.end10.cleanup_crit_edge ], [ %call.i, %do.body.i ], [ 0, %if.end20.i.cleanup_crit_edge ], [ 0, %if.end20.i.cleanup_crit_edge44 ], [ %call.i, %if.then32.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_set_node_bw(ptr noundef %pi, ptr nocapture noundef %node, i32 noundef %rl_type, i32 noundef %bw, i8 noundef zeroext %layer_num) unnamed_addr #3 align 64 {
entry:
  %desc.i.i.i = alloca %struct.ice_aq_desc, align 4
  %remainder.i45.i.i.i = alloca i32, align 4
  %remainder.i43.i.i.i = alloca i32, align 4
  %remainder.i41.i.i.i = alloca i32, align 4
  %remainder.i39.i.i.i = alloca i32, align 4
  %remainder.i.i58.i.i = alloca i32, align 4
  %remainder.i.i.i.i = alloca i32, align 4
  %remainder.i56.i.i = alloca i32, align 4
  %remainder.i54.i.i = alloca i32, align 4
  %remainder.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %conv.i = zext i8 %layer_num to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %layer_num)
  %cmp.i = icmp ugt i8 %layer_num, 8
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %switch.tableidx = add i32 %rl_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %tobool.not.i = icmp eq ptr %pi, null
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %if.end5.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %switch.lookup
  %arrayidx.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 16, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn111.i = load ptr, ptr %arrayidx.i, align 4
  %cmp10.not112.i = icmp eq ptr %.pn111.i, %arrayidx.i
  br i1 %cmp10.not112.i, label %if.end5.i.for.end.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %.pn113.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn111.i, %if.end5.i.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn113.i, i32 -11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 1
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %switch.idx.cast)
  %cmp14.i = icmp eq i8 %6, %switch.idx.cast
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bw16.i = getelementptr i8, ptr %.pn113.i, i32 8
  %7 = ptrtoint ptr %bw16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bw16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %bw)
  %cmp17.i = icmp eq i32 %8, %bw
  br i1 %cmp17.i, label %cleanup.loopexit.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn113.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn113.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp10.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %add.ptr28.i = getelementptr i8, ptr %1, i32 -2960
  %10 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr28.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 28, i32 noundef 3520) #10
  %tobool29.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool29.not.i, label %for.end.i.cleanup_crit_edge, label %if.end31.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31.i:                                       ; preds = %for.end.i
  %12 = add i32 %bw, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99999501, i32 %12)
  %13 = icmp ult i32 %12, -99999501
  br i1 %13, label %if.end31.i.exit_add_rl_prof.i_crit_edge, label %if.end.i.i

if.end31.i.exit_add_rl_prof.i_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_add_rl_prof.i

if.end.i.i:                                       ; preds = %if.end31.i
  %conv.i.i = zext i32 %bw to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #10
  %14 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !95
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %mul.i.i, i32 noundef 8, ptr noundef nonnull %remainder.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #10
  %psm_clk_freq.i.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 4
  %mul12.i.i = mul i64 %call.i.i.i, 10000
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.076.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sh_prom.i.i = zext i32 %i.076.i.i to i64
  %15 = ptrtoint ptr %psm_clk_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %psm_clk_freq.i.i, align 8
  %conv4.i.i = zext i32 %16 to i64
  %mul5.i.i = shl i64 32, %sh_prom.i.i
  %conv6.i.i = trunc i64 %mul5.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i54.i.i) #10
  %17 = ptrtoint ptr %remainder.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %remainder.i54.i.i, align 4, !annotation !95
  %call.i55.i.i = call i64 @div_s64_rem(i64 noundef %conv4.i.i, i32 noundef %conv6.i.i, ptr noundef nonnull %remainder.i54.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i54.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call.i55.i.i)
  %cmp8.i.i = icmp slt i64 %call.i55.i.i, 1
  br i1 %cmp8.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end11.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  %conv13.i.i = trunc i64 %call.i55.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i56.i.i) #10
  %18 = ptrtoint ptr %remainder.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %remainder.i56.i.i, align 4, !annotation !95
  %call.i57.i.i = call i64 @div_s64_rem(i64 noundef %mul12.i.i, i32 noundef %conv13.i.i, ptr noundef nonnull %remainder.i56.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i56.i.i) #10
  %add.i.i.i = add i64 %call.i57.i.i, 5000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #10
  %19 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !95
  %call.i.i.i.i = call i64 @div_s64_rem(i64 noundef %add.i.i.i, i32 noundef 10000, ptr noundef nonnull %remainder.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %call.i.i.i.i)
  %cmp16.i.i = icmp sgt i64 %call.i.i.i.i, 128
  br i1 %cmp16.i.i, label %for.end.thread.i.i, label %if.end11.i.i.for.inc.i.i_crit_edge

if.end11.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.end.thread.i.i:                               ; preds = %if.end11.i.i
  %extract.t51.i.i = trunc i64 %call.i.i.i.i to i16
  %conv.i.i.i = sext i32 %bw to i64
  %mul.i.i.i = mul nsw i64 %conv.i.i.i, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i58.i.i) #10
  %20 = ptrtoint ptr %remainder.i.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %remainder.i.i58.i.i, align 4, !annotation !95
  %call.i.i59.i.i = call i64 @div_s64_rem(i64 noundef %mul.i.i.i, i32 noundef 8, ptr noundef nonnull %remainder.i.i58.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i58.i.i) #10
  %21 = ptrtoint ptr %psm_clk_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %psm_clk_freq.i.i, align 8
  %conv1.i.i.i = zext i32 %22 to i64
  %conv2.i.i.i = trunc i64 %call.i.i59.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i39.i.i.i) #10
  %23 = ptrtoint ptr %remainder.i39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %remainder.i39.i.i.i, align 4, !annotation !95
  %call.i40.i.i.i = call i64 @div_s64_rem(i64 noundef %conv1.i.i.i, i32 noundef %conv2.i.i.i, ptr noundef nonnull %remainder.i39.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i39.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %call.i40.i.i.i)
  %cmp.i.i.i = icmp sgt i64 %call.i40.i.i.i, 63
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

for.inc.i.i:                                      ; preds = %if.end11.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.076.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.exit_add_rl_prof.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.exit_add_rl_prof.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_add_rl_prof.i

if.then.i.i.i:                                    ; preds = %for.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = trunc i64 %call.i40.i.i.i to i16
  %conv5.i.i.i = or i16 %24, -32768
  br label %if.end36.i

if.else.i.i.i:                                    ; preds = %for.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul6.neg.i.i.i = mul i64 %call.i40.i.i.i, -10000
  %25 = ptrtoint ptr %psm_clk_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %psm_clk_freq.i.i, align 8
  %conv8.i.i.i = zext i32 %26 to i64
  %mul9.i.i.i = mul nuw nsw i64 %conv8.i.i.i, 10000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i41.i.i.i) #10
  %27 = ptrtoint ptr %remainder.i41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %remainder.i41.i.i.i, align 4, !annotation !95
  %call.i42.i.i.i = call i64 @div_s64_rem(i64 noundef %mul9.i.i.i, i32 noundef %conv2.i.i.i, ptr noundef nonnull %remainder.i41.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i41.i.i.i) #10
  %sub.i.i.i = add i64 %call.i42.i.i.i, %mul6.neg.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i43.i.i.i) #10
  %28 = ptrtoint ptr %remainder.i43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %remainder.i43.i.i.i, align 4, !annotation !95
  %call.i44.i.i.i = call i64 @div_s64_rem(i64 noundef 10000, i32 noundef 2, ptr noundef nonnull %remainder.i43.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i43.i.i.i) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i.i, i64 %call.i44.i.i.i)
  %cmp13.i.i.i = icmp sgt i64 %sub.i.i.i, %call.i44.i.i.i
  %add.i60.i.i = zext i1 %cmp13.i.i.i to i64
  %spec.select.i.i.i = add i64 %sub.i.i.i, %add.i60.i.i
  %mul16.i.i.i = shl i64 %spec.select.i.i.i, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i45.i.i.i) #10
  %29 = ptrtoint ptr %remainder.i45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %remainder.i45.i.i.i, align 4, !annotation !95
  %call.i46.i.i.i = call i64 @div_s64_rem(i64 noundef %mul16.i.i.i, i32 noundef 10000, ptr noundef nonnull %remainder.i45.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i45.i.i.i) #10
  %conv18.i.i.i = trunc i64 %call.i46.i.i.i to i16
  %call3.tr.i.i.i = trunc i64 %call.i40.i.i.i to i16
  %conv19.i.i.i = shl i16 %call3.tr.i.i.i, 9
  %and.i.i.i = and i16 %conv18.i.i.i, 511
  %or27.i.i.i = or i16 %and.i.i.i, %conv19.i.i.i
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i.i.i, %if.then.i.i.i
  %wakeup.0.i.i.i = phi i16 [ %conv5.i.i.i, %if.then.i.i.i ], [ %or27.i.i.i, %if.else.i.i.i ]
  %30 = call i16 @llvm.bswap.i16(i16 %extract.t51.i.i) #10
  %rl_multiply.i.i = getelementptr inbounds %struct.ice_aqc_rl_profile_elem, ptr %call.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %rl_multiply.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %rl_multiply.i.i, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %wakeup.0.i.i.i) #10
  %wake_up_calc.i.i = getelementptr inbounds %struct.ice_aqc_rl_profile_elem, ptr %call.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %wake_up_calc.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %wake_up_calc.i.i, align 2
  %conv23.i.i = trunc i32 %i.076.i.i to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv23.i.i) #10
  %rl_encode.i.i = getelementptr inbounds %struct.ice_aqc_rl_profile_elem, ptr %call.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %rl_encode.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %rl_encode.i.i, align 2
  %bw37.i = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %call.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %bw37.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bw, ptr %bw37.i, align 4
  %add.i = add i8 %layer_num, 1
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %add.i, ptr %call.i.i, align 4
  %flags42.i = getelementptr inbounds %struct.ice_aqc_rl_profile_elem, ptr %call.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags42.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %switch.idx.cast, ptr %flags42.i, align 1
  %max_burst_size.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %max_burst_size.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_burst_size.i, align 8
  %41 = call i16 @llvm.bswap.i16(i16 %40) #10
  %max_burst_size44.i = getelementptr inbounds %struct.ice_aqc_rl_profile_elem, ptr %call.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %max_burst_size44.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %max_burst_size44.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  %43 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6
  %44 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i.i, i16 noundef zeroext 1040) #10
  %45 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %desc.i.i.i, align 4
  %47 = or i16 %46, 4
  store i16 %47, ptr %desc.i.i.i, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 256, ptr %43, align 4
  %call.i.i101.i = call i32 @ice_aq_send_cmd(ptr noundef %1, ptr noundef nonnull %desc.i.i.i, ptr noundef nonnull %call.i.i, i16 noundef zeroext 12, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %tobool.not.i.i.not.i = icmp eq i32 %call.i.i101.i, 0
  br i1 %tobool.not.i.i.not.i, label %lor.lhs.false.i, label %ice_aq_add_rl_profile.exit.i

ice_aq_add_rl_profile.exit.i:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  br label %exit_add_rl_prof.i

lor.lhs.false.i:                                  ; preds = %if.end36.i
  %num_processed5.i.i.i = getelementptr inbounds %struct.ice_aqc_rl_profile, ptr %43, i32 0, i32 1
  %49 = ptrtoint ptr %num_processed5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_processed5.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %50)
  %cmp50.not.i = icmp eq i16 %50, 256
  br i1 %cmp50.not.i, label %if.end53.i, label %lor.lhs.false.i.exit_add_rl_prof.i_crit_edge

lor.lhs.false.i.exit_add_rl_prof.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_add_rl_prof.i

if.end53.i:                                       ; preds = %lor.lhs.false.i
  %prof_id_ref.i = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %call.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %prof_id_ref.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %prof_id_ref.i, align 4
  %list_entry54.i = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %call.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i103.i = call zeroext i1 @__list_add_valid(ptr noundef %list_entry54.i, ptr noundef %arrayidx.i, ptr noundef %53) #10
  br i1 %call.i.i103.i, label %if.end.i.i.i, label %if.end53.i.ice_sched_add_rl_profile.exit_crit_edge

if.end53.i.ice_sched_add_rl_profile.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_add_rl_profile.exit

if.end.i.i.i:                                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list_entry54.i, ptr %prev1.i.i.i, align 4
  %55 = ptrtoint ptr %list_entry54.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %list_entry54.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %call.i.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx.i, ptr %prev3.i.i.i, align 4
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %list_entry54.i, ptr %arrayidx.i, align 4
  br label %ice_sched_add_rl_profile.exit

exit_add_rl_prof.i:                               ; preds = %lor.lhs.false.i.exit_add_rl_prof.i_crit_edge, %ice_aq_add_rl_profile.exit.i, %for.inc.i.i.exit_add_rl_prof.i_crit_edge, %if.end31.i.exit_add_rl_prof.i_crit_edge
  %58 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr28.i, align 8
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev62.i, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup.loopexit.i:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %rl_prof_elem.0.le.i = getelementptr i8, ptr %.pn113.i, i32 -12
  br label %ice_sched_add_rl_profile.exit

ice_sched_add_rl_profile.exit:                    ; preds = %cleanup.loopexit.i, %if.end.i.i.i, %if.end53.i.ice_sched_add_rl_profile.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end53.i.ice_sched_add_rl_profile.exit_crit_edge ], [ %call.i.i, %if.end.i.i.i ], [ %rl_prof_elem.0.le.i, %cleanup.loopexit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %ice_sched_add_rl_profile.exit.cleanup_crit_edge, label %if.end

ice_sched_add_rl_profile.exit.cleanup_crit_edge:  ; preds = %ice_sched_add_rl_profile.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ice_sched_add_rl_profile.exit
  %profile_id = getelementptr inbounds %struct.ice_aqc_rl_profile_elem, ptr %retval.0.i, i32 0, i32 2
  %60 = ptrtoint ptr %profile_id to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %profile_id, align 2
  %62 = call i16 @llvm.bswap.i16(i16 %61)
  %63 = zext i32 %rl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %rl_type, label %if.end.ice_sched_get_node_rl_prof_id.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i47
    i32 3, label %sw.bb10.i
  ]

if.end.ice_sched_get_node_rl_prof_id.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_node_rl_prof_id.exit

sw.bb.i:                                          ; preds = %if.end
  %valid_sections.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %64 = ptrtoint ptr %valid_sections.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %valid_sections.i, align 1
  %66 = and i8 %65, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i46 = icmp eq i8 %66, 0
  br i1 %tobool.not.i46, label %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, label %if.then.i

sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_node_rl_prof_id.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %cir_bw.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4
  br label %sw.epilog.sink.split.i

sw.bb2.i47:                                       ; preds = %if.end
  %valid_sections3.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %67 = ptrtoint ptr %valid_sections3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %valid_sections3.i, align 1
  %69 = and i8 %68, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool6.not.i = icmp eq i8 %69, 0
  br i1 %tobool6.not.i, label %sw.bb2.i47.ice_sched_get_node_rl_prof_id.exit_crit_edge, label %if.then7.i

sw.bb2.i47.ice_sched_get_node_rl_prof_id.exit_crit_edge: ; preds = %sw.bb2.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_node_rl_prof_id.exit

if.then7.i:                                       ; preds = %sw.bb2.i47
  call void @__sanitizer_cov_trace_pc() #12
  %eir_bw.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5
  br label %sw.epilog.sink.split.i

sw.bb10.i:                                        ; preds = %if.end
  %valid_sections11.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %70 = ptrtoint ptr %valid_sections11.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %valid_sections11.i, align 1
  %72 = and i8 %71, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool14.not.i = icmp eq i8 %72, 0
  br i1 %tobool14.not.i, label %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, label %if.then15.i

sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge: ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_sched_get_node_rl_prof_id.exit

if.then15.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  %srl_id.i = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then15.i, %if.then7.i, %if.then.i
  %srl_id.sink.i = phi ptr [ %srl_id.i, %if.then15.i ], [ %eir_bw.i, %if.then7.i ], [ %cir_bw.i, %if.then.i ]
  %73 = ptrtoint ptr %srl_id.sink.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %srl_id.sink.i, align 2
  %75 = call i16 @llvm.bswap.i16(i16 %74) #10
  br label %ice_sched_get_node_rl_prof_id.exit

ice_sched_get_node_rl_prof_id.exit:               ; preds = %sw.epilog.sink.split.i, %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, %sw.bb2.i47.ice_sched_get_node_rl_prof_id.exit_crit_edge, %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge, %if.end.ice_sched_get_node_rl_prof_id.exit_crit_edge
  %rl_prof_id.0.i = phi i16 [ -1, %if.end.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ -1, %sw.bb10.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ -1, %sw.bb2.i47.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ -1, %sw.bb.i.ice_sched_get_node_rl_prof_id.exit_crit_edge ], [ %75, %sw.epilog.sink.split.i ]
  %call3 = call fastcc i32 @ice_sched_cfg_node_bw_lmt(ptr noundef %1, ptr noundef %node, i32 noundef %rl_type, i16 noundef zeroext %62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge

ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge: ; preds = %ice_sched_get_node_rl_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %ice_sched_get_node_rl_prof_id.exit
  %prof_id_ref = getelementptr inbounds %struct.ice_aqc_rl_profile_info, ptr %retval.0.i, i32 0, i32 3
  %76 = ptrtoint ptr %prof_id_ref to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %prof_id_ref, align 4
  %inc = add i16 %77, 1
  store i16 %inc, ptr %prof_id_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rl_prof_id.0.i)
  %cmp = icmp eq i16 %rl_prof_id.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rl_type)
  %cmp8.not = icmp ne i32 %rl_type, 3
  %or.cond.not = and i1 %cmp8.not, %cmp
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %rl_prof_id.0.i)
  %cmp11 = icmp eq i16 %rl_prof_id.0.i, -1
  %or.cond44 = or i1 %cmp11, %or.cond.not
  call void @__sanitizer_cov_trace_cmp2(i16 %rl_prof_id.0.i, i16 %62)
  %cmp16 = icmp eq i16 %rl_prof_id.0.i, %62
  %or.cond45 = select i1 %or.cond44, i1 true, i1 %cmp16
  br i1 %or.cond45, label %if.end6.cleanup_crit_edge, label %if.end.i52

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i52:                                       ; preds = %if.end6
  %flags = getelementptr inbounds %struct.ice_aqc_rl_profile_elem, ptr %retval.0.i, i32 0, i32 1
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags, align 1
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn72.i = load ptr, ptr %arrayidx.i, align 4
  %cmp5.not73.i = icmp eq ptr %.pn72.i, %arrayidx.i
  br i1 %cmp5.not73.i, label %if.end.i52.cleanup_crit_edge, label %if.end.i52.for.body.i54_crit_edge

if.end.i52.for.body.i54_crit_edge:                ; preds = %if.end.i52
  br label %for.body.i54

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i54:                                     ; preds = %for.inc.i61.for.body.i54_crit_edge, %if.end.i52.for.body.i54_crit_edge
  %.pn74.i = phi ptr [ %.pn.i60, %for.inc.i61.for.body.i54_crit_edge ], [ %.pn72.i, %if.end.i52.for.body.i54_crit_edge ]
  %flags.i53 = getelementptr i8, ptr %.pn74.i, i32 -11
  %81 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags.i53, align 1
  %83 = xor i8 %82, %79
  %84 = and i8 %83, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp9.i = icmp eq i8 %84, 0
  br i1 %cmp9.i, label %land.lhs.true.i55, label %for.body.i54.for.inc.i61_crit_edge

for.body.i54.for.inc.i61_crit_edge:               ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i61

land.lhs.true.i55:                                ; preds = %for.body.i54
  %profile_id12.i = getelementptr i8, ptr %.pn74.i, i32 -10
  %85 = ptrtoint ptr %profile_id12.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %profile_id12.i, align 2
  %87 = call i16 @llvm.bswap.i16(i16 %86) #10
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %rl_prof_id.0.i)
  %cmp15.i = icmp eq i16 %87, %rl_prof_id.0.i
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true.i55.for.inc.i61_crit_edge

land.lhs.true.i55.for.inc.i61_crit_edge:          ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i61

if.then17.i:                                      ; preds = %land.lhs.true.i55
  %rl_prof_elem.0.le.i56 = getelementptr i8, ptr %.pn74.i, i32 -12
  %prof_id_ref.i57 = getelementptr i8, ptr %.pn74.i, i32 12
  %88 = ptrtoint ptr %prof_id_ref.i57 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %prof_id_ref.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool.not.i58 = icmp eq i16 %89, 0
  br i1 %tobool.not.i58, label %if.then17.i.if.end20.i_crit_edge, label %if.then18.i

if.then17.i.if.end20.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add i16 %89, -1
  %90 = ptrtoint ptr %prof_id_ref.i57 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %dec.i, ptr %prof_id_ref.i57, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.then17.i.if.end20.i_crit_edge
  %91 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw1, align 4
  %call.i = call fastcc i32 @ice_sched_del_rl_profile(ptr noundef %92, ptr noundef %rl_prof_elem.0.le.i56) #10
  %93 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call.i, label %do.body.i [
    i32 0, label %if.end20.i.cleanup_crit_edge
    i32 -16, label %if.end20.i.cleanup_crit_edge83
  ]

if.end20.i.cleanup_crit_edge83:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_rm_rl_profile.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_set_node_bw, %if.then32.i)) #10
          to label %cleanup [label %if.then32.i], !srcloc !92

if.then32.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw1, align 4
  %add.ptr36.i = getelementptr i8, ptr %95, i32 -2960
  %96 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr36.i, align 8
  %dev.i59 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_rm_rl_profile.__UNIQUE_ID_ddebug629, ptr noundef %dev.i59, ptr noundef nonnull @.str.21) #10
  br label %cleanup

for.inc.i61:                                      ; preds = %land.lhs.true.i55.for.inc.i61_crit_edge, %for.body.i54.for.inc.i61_crit_edge
  %98 = ptrtoint ptr %.pn74.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn.i60 = load ptr, ptr %.pn74.i, align 4
  %cmp5.not.i = icmp eq ptr %.pn.i60, %arrayidx.i
  br i1 %cmp5.not.i, label %for.inc.i61.cleanup_crit_edge, label %for.inc.i61.for.body.i54_crit_edge

for.inc.i61.for.body.i54_crit_edge:               ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54

for.inc.i61.cleanup_crit_edge:                    ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i61.cleanup_crit_edge, %if.then32.i, %do.body.i, %if.end20.i.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge83, %if.end.i52.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge, %ice_sched_add_rl_profile.exit.cleanup_crit_edge, %exit_add_rl_prof.i, %for.end.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ice_sched_add_rl_profile.exit.cleanup_crit_edge ], [ %call3, %ice_sched_get_node_rl_prof_id.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call.i, %do.body.i ], [ 0, %if.end20.i.cleanup_crit_edge ], [ 0, %if.end20.i.cleanup_crit_edge83 ], [ %call.i, %if.then32.i ], [ 0, %if.end.i52.cleanup_crit_edge ], [ -22, %exit_add_rl_prof.i ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ 0, %for.inc.i61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_cfg_node_bw_lmt(ptr noundef %hw, ptr nocapture noundef %node, i32 noundef %rl_type, i16 noundef zeroext %rl_prof_id) unnamed_addr #3 align 64 {
entry:
  %desc.i.i.i = alloca %struct.ice_aq_desc, align 4
  %buf.i = alloca %struct.ice_aqc_txsched_elem_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf.sroa.5.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %buf.sroa.5.0.info.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0.info.sroa_idx, align 4
  %buf.sroa.6.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %buf.sroa.6.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %buf.sroa.6.0.copyload = load i8, ptr %buf.sroa.6.0.info.sroa_idx, align 4
  %buf.sroa.8.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %buf.sroa.8.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %buf.sroa.8.0.copyload = load i8, ptr %buf.sroa.8.0.info.sroa_idx, align 1
  %buf.sroa.19.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 2
  %3 = ptrtoint ptr %buf.sroa.19.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %buf.sroa.19.0.copyload = load i8, ptr %buf.sroa.19.0.info.sroa_idx, align 2
  %buf.sroa.20.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 3
  %4 = ptrtoint ptr %buf.sroa.20.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %buf.sroa.20.0.copyload = load i8, ptr %buf.sroa.20.0.info.sroa_idx, align 1
  %buf.sroa.21.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4
  %5 = ptrtoint ptr %buf.sroa.21.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %buf.sroa.21.0.copyload = load i16, ptr %buf.sroa.21.0.info.sroa_idx, align 4
  %buf.sroa.23.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4, i32 1
  %6 = ptrtoint ptr %buf.sroa.23.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %buf.sroa.23.0.copyload = load i16, ptr %buf.sroa.23.0.info.sroa_idx, align 2
  %buf.sroa.24.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5
  %7 = ptrtoint ptr %buf.sroa.24.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %buf.sroa.24.0.copyload = load i16, ptr %buf.sroa.24.0.info.sroa_idx, align 4
  %buf.sroa.28.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5, i32 1
  %8 = ptrtoint ptr %buf.sroa.28.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %buf.sroa.28.0.copyload = load i16, ptr %buf.sroa.28.0.info.sroa_idx, align 2
  %buf.sroa.29.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 6
  %9 = ptrtoint ptr %buf.sroa.29.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %buf.sroa.29.0.copyload = load i16, ptr %buf.sroa.29.0.info.sroa_idx, align 4
  %buf.sroa.32.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 7
  %10 = ptrtoint ptr %buf.sroa.32.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %buf.sroa.32.0.copyload = load i16, ptr %buf.sroa.32.0.info.sroa_idx, align 2
  %11 = zext i32 %rl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %rl_type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = or i8 %buf.sroa.8.0.copyload, 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %rl_prof_id)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %14 = and i8 %buf.sroa.8.0.copyload, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %or8 = or i8 %buf.sroa.8.0.copyload, 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %rl_prof_id)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %rl_prof_id)
  %cmp = icmp eq i16 %rl_prof_id, -1
  br i1 %cmp, label %if.then14, label %if.end25

if.then14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %16 = and i8 %buf.sroa.8.0.copyload, -13
  %17 = or i8 %16, 4
  br label %sw.epilog

if.end25:                                         ; preds = %sw.bb11
  %18 = and i8 %buf.sroa.8.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf.sroa.24.0.copyload)
  %cmp33.not = icmp eq i16 %buf.sroa.24.0.copyload, 0
  %or.cond = select i1 %tobool29.not, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %if.end36, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %19 = and i8 %buf.sroa.8.0.copyload, -13
  %20 = or i8 %19, 8
  %21 = tail call i16 @llvm.bswap.i16(i16 %rl_prof_id)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end36, %if.then14, %if.end, %sw.bb
  %buf.sroa.29.0 = phi i16 [ 0, %if.then14 ], [ %21, %if.end36 ], [ %buf.sroa.29.0.copyload, %if.end ], [ %buf.sroa.29.0.copyload, %sw.bb ]
  %buf.sroa.24.0 = phi i16 [ 0, %if.then14 ], [ %buf.sroa.24.0.copyload, %if.end36 ], [ %15, %if.end ], [ %buf.sroa.24.0.copyload, %sw.bb ]
  %buf.sroa.21.0 = phi i16 [ %buf.sroa.21.0.copyload, %if.then14 ], [ %buf.sroa.21.0.copyload, %if.end36 ], [ %buf.sroa.21.0.copyload, %if.end ], [ %13, %sw.bb ]
  %buf.sroa.8.0 = phi i8 [ %17, %if.then14 ], [ %20, %if.end36 ], [ %or8, %if.end ], [ %12, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #10
  %22 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %buf.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %buf.i, i32 0, i32 2, i32 3
  %buf.sroa.5.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %24 = ptrtoint ptr %buf.sroa.5.0.buf.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %buf.sroa.5.0.copyload, ptr %buf.sroa.5.0.buf.i.sroa_idx, align 4
  %buf.sroa.8.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 9
  %25 = ptrtoint ptr %buf.sroa.8.0.buf.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %buf.sroa.8.0, ptr %buf.sroa.8.0.buf.i.sroa_idx, align 1
  %buf.sroa.19.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 10
  %26 = ptrtoint ptr %buf.sroa.19.0.buf.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %buf.sroa.19.0.copyload, ptr %buf.sroa.19.0.buf.i.sroa_idx, align 2
  %buf.sroa.21.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 12
  %27 = ptrtoint ptr %buf.sroa.21.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %buf.sroa.21.0, ptr %buf.sroa.21.0.buf.i.sroa_idx, align 4
  %buf.sroa.23.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 14
  %28 = ptrtoint ptr %buf.sroa.23.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %buf.sroa.23.0.copyload, ptr %buf.sroa.23.0.buf.i.sroa_idx, align 2
  %buf.sroa.24.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 16
  %29 = ptrtoint ptr %buf.sroa.24.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %buf.sroa.24.0, ptr %buf.sroa.24.0.buf.i.sroa_idx, align 4
  %buf.sroa.28.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 18
  %30 = ptrtoint ptr %buf.sroa.28.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %buf.sroa.28.0.copyload, ptr %buf.sroa.28.0.buf.i.sroa_idx, align 2
  %buf.sroa.29.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 20
  %31 = ptrtoint ptr %buf.sroa.29.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %buf.sroa.29.0, ptr %buf.sroa.29.0.buf.i.sroa_idx, align 4
  %buf.sroa.32.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 22
  %32 = ptrtoint ptr %buf.sroa.32.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %buf.sroa.32.0.copyload, ptr %buf.sroa.32.0.buf.i.sroa_idx, align 2
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %buf.i, align 4
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %22, align 4
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  %36 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6
  %37 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i.i, i16 noundef zeroext 1027) #10
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 256, ptr %36, align 4
  %39 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %desc.i.i.i, align 4
  %41 = or i16 %40, 4
  store i16 %41, ptr %desc.i.i.i, align 4
  %call.i.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 24, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.not.i, label %lor.lhs.false.i, label %ice_aq_cfg_sched_elems.exit.i

ice_aq_cfg_sched_elems.exit.i:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %num_elem_resp.i.i.i = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %36, i32 0, i32 1
  %42 = ptrtoint ptr %num_elem_resp.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_elem_resp.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %43)
  %cmp.not.i = icmp eq i16 %43, 256
  br i1 %cmp.not.i, label %if.end10.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %ice_aq_cfg_sched_elems.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_update_elem.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_cfg_node_bw_lmt, %if.then8.i)) #10
          to label %ice_sched_update_elem.exit [label %if.then8.i], !srcloc !92

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_update_elem.__UNIQUE_ID_ddebug628, ptr noundef %dev.i, ptr noundef nonnull @.str.38) #10
  br label %ice_sched_update_elem.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %buf.sroa.6.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %buf.sroa.6.0.copyload, ptr %buf.sroa.6.0.info.sroa_idx, align 4
  %47 = ptrtoint ptr %buf.sroa.8.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %buf.sroa.8.0, ptr %buf.sroa.8.0.info.sroa_idx, align 1
  %48 = ptrtoint ptr %buf.sroa.19.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %buf.sroa.19.0.copyload, ptr %buf.sroa.19.0.info.sroa_idx, align 2
  %49 = ptrtoint ptr %buf.sroa.20.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %buf.sroa.20.0.copyload, ptr %buf.sroa.20.0.info.sroa_idx, align 1
  %50 = ptrtoint ptr %buf.sroa.21.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %buf.sroa.21.0, ptr %buf.sroa.21.0.info.sroa_idx, align 4
  %51 = ptrtoint ptr %buf.sroa.23.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %buf.sroa.23.0.copyload, ptr %buf.sroa.23.0.info.sroa_idx, align 2
  %52 = ptrtoint ptr %buf.sroa.24.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %buf.sroa.24.0, ptr %buf.sroa.24.0.info.sroa_idx, align 4
  %53 = ptrtoint ptr %buf.sroa.28.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %buf.sroa.28.0.copyload, ptr %buf.sroa.28.0.info.sroa_idx, align 2
  %54 = ptrtoint ptr %buf.sroa.29.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %buf.sroa.29.0, ptr %buf.sroa.29.0.info.sroa_idx, align 4
  %55 = ptrtoint ptr %buf.sroa.32.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %buf.sroa.32.0.copyload, ptr %buf.sroa.32.0.info.sroa_idx, align 2
  br label %ice_sched_update_elem.exit

ice_sched_update_elem.exit:                       ; preds = %if.end10.i, %if.then8.i, %do.body.i
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ -5, %if.then8.i ], [ -5, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ice_sched_update_elem.exit, %if.end25.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ice_sched_update_elem.exit ], [ -5, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_replay_node_prio(ptr noundef %hw, ptr nocapture noundef %node, i8 noundef zeroext %priority) unnamed_addr #3 align 64 {
entry:
  %desc.i.i.i = alloca %struct.ice_aq_desc, align 4
  %buf.i = alloca %struct.ice_aqc_txsched_elem_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf.sroa.5.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %buf.sroa.5.0.info.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0.info.sroa_idx, align 4
  %buf.sroa.6.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %buf.sroa.6.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %buf.sroa.6.0.copyload = load i8, ptr %buf.sroa.6.0.info.sroa_idx, align 4
  %buf.sroa.8.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %buf.sroa.8.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %buf.sroa.8.0.copyload = load i8, ptr %buf.sroa.8.0.info.sroa_idx, align 1
  %buf.sroa.13.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 3
  %3 = ptrtoint ptr %buf.sroa.13.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %buf.sroa.13.0.copyload = load i8, ptr %buf.sroa.13.0.info.sroa_idx, align 1
  %buf.sroa.14.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4
  %4 = ptrtoint ptr %buf.sroa.14.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %buf.sroa.14.0.copyload = load i16, ptr %buf.sroa.14.0.info.sroa_idx, align 4
  %buf.sroa.15.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4, i32 1
  %5 = ptrtoint ptr %buf.sroa.15.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %buf.sroa.15.0.copyload = load i16, ptr %buf.sroa.15.0.info.sroa_idx, align 2
  %buf.sroa.16.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5
  %6 = ptrtoint ptr %buf.sroa.16.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %buf.sroa.16.0.copyload = load i16, ptr %buf.sroa.16.0.info.sroa_idx, align 4
  %buf.sroa.17.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5, i32 1
  %7 = ptrtoint ptr %buf.sroa.17.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %buf.sroa.17.0.copyload = load i16, ptr %buf.sroa.17.0.info.sroa_idx, align 2
  %buf.sroa.18.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 6
  %8 = ptrtoint ptr %buf.sroa.18.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %buf.sroa.18.0.copyload = load i16, ptr %buf.sroa.18.0.info.sroa_idx, align 4
  %buf.sroa.19.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 7
  %9 = ptrtoint ptr %buf.sroa.19.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %buf.sroa.19.0.copyload = load i16, ptr %buf.sroa.19.0.info.sroa_idx, align 2
  %10 = or i8 %buf.sroa.8.0.copyload, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #10
  %11 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %buf.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %buf.i, i32 0, i32 2, i32 3
  %buf.sroa.5.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %13 = ptrtoint ptr %buf.sroa.5.0.buf.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %buf.sroa.5.0.copyload, ptr %buf.sroa.5.0.buf.i.sroa_idx, align 4
  %buf.sroa.8.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 9
  %14 = ptrtoint ptr %buf.sroa.8.0.buf.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %10, ptr %buf.sroa.8.0.buf.i.sroa_idx, align 1
  %buf.sroa.11.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 10
  %15 = ptrtoint ptr %buf.sroa.11.0.buf.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %priority, ptr %buf.sroa.11.0.buf.i.sroa_idx, align 2
  %buf.sroa.14.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 12
  %16 = ptrtoint ptr %buf.sroa.14.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %buf.sroa.14.0.copyload, ptr %buf.sroa.14.0.buf.i.sroa_idx, align 4
  %buf.sroa.15.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 14
  %17 = ptrtoint ptr %buf.sroa.15.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %buf.sroa.15.0.copyload, ptr %buf.sroa.15.0.buf.i.sroa_idx, align 2
  %buf.sroa.16.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 16
  %18 = ptrtoint ptr %buf.sroa.16.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %buf.sroa.16.0.copyload, ptr %buf.sroa.16.0.buf.i.sroa_idx, align 4
  %buf.sroa.17.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 18
  %19 = ptrtoint ptr %buf.sroa.17.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %buf.sroa.17.0.copyload, ptr %buf.sroa.17.0.buf.i.sroa_idx, align 2
  %buf.sroa.18.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 20
  %20 = ptrtoint ptr %buf.sroa.18.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %buf.sroa.18.0.copyload, ptr %buf.sroa.18.0.buf.i.sroa_idx, align 4
  %buf.sroa.19.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 22
  %21 = ptrtoint ptr %buf.sroa.19.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %buf.sroa.19.0.copyload, ptr %buf.sroa.19.0.buf.i.sroa_idx, align 2
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buf.i, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %11, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  %25 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6
  %26 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i.i, i16 noundef zeroext 1027) #10
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 256, ptr %25, align 4
  %28 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %desc.i.i.i, align 4
  %30 = or i16 %29, 4
  store i16 %30, ptr %desc.i.i.i, align 4
  %call.i.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 24, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.not.i, label %lor.lhs.false.i, label %ice_aq_cfg_sched_elems.exit.i

ice_aq_cfg_sched_elems.exit.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %num_elem_resp.i.i.i = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %num_elem_resp.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_elem_resp.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %32)
  %cmp.not.i = icmp eq i16 %32, 256
  br i1 %cmp.not.i, label %if.end10.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %ice_aq_cfg_sched_elems.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_update_elem.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_replay_node_prio, %if.then8.i)) #10
          to label %ice_sched_update_elem.exit [label %if.then8.i], !srcloc !92

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_update_elem.__UNIQUE_ID_ddebug628, ptr noundef %dev.i, ptr noundef nonnull @.str.38) #10
  br label %ice_sched_update_elem.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %buf.sroa.6.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %buf.sroa.6.0.copyload, ptr %buf.sroa.6.0.info.sroa_idx, align 4
  %36 = ptrtoint ptr %buf.sroa.8.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %10, ptr %buf.sroa.8.0.info.sroa_idx, align 1
  %buf.sroa.11.8.data12.i.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 2
  %37 = ptrtoint ptr %buf.sroa.11.8.data12.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %priority, ptr %buf.sroa.11.8.data12.i.sroa_idx, align 2
  %38 = ptrtoint ptr %buf.sroa.13.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %buf.sroa.13.0.copyload, ptr %buf.sroa.13.0.info.sroa_idx, align 1
  %39 = ptrtoint ptr %buf.sroa.14.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %buf.sroa.14.0.copyload, ptr %buf.sroa.14.0.info.sroa_idx, align 4
  %40 = ptrtoint ptr %buf.sroa.15.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %buf.sroa.15.0.copyload, ptr %buf.sroa.15.0.info.sroa_idx, align 2
  %41 = ptrtoint ptr %buf.sroa.16.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %buf.sroa.16.0.copyload, ptr %buf.sroa.16.0.info.sroa_idx, align 4
  %42 = ptrtoint ptr %buf.sroa.17.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %buf.sroa.17.0.copyload, ptr %buf.sroa.17.0.info.sroa_idx, align 2
  %43 = ptrtoint ptr %buf.sroa.18.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %buf.sroa.18.0.copyload, ptr %buf.sroa.18.0.info.sroa_idx, align 4
  %44 = ptrtoint ptr %buf.sroa.19.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %buf.sroa.19.0.copyload, ptr %buf.sroa.19.0.info.sroa_idx, align 2
  br label %ice_sched_update_elem.exit

ice_sched_update_elem.exit:                       ; preds = %if.end10.i, %if.then8.i, %do.body.i
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ -5, %if.then8.i ], [ -5, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sched_cfg_node_bw_alloc(ptr noundef %hw, ptr nocapture noundef %node, i32 noundef %rl_type, i16 noundef zeroext %bw_alloc) unnamed_addr #3 align 64 {
entry:
  %desc.i.i.i = alloca %struct.ice_aq_desc, align 4
  %buf.i = alloca %struct.ice_aqc_txsched_elem_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf.sroa.5.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %buf.sroa.5.0.info.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0.info.sroa_idx, align 4
  %buf.sroa.6.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %buf.sroa.6.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %buf.sroa.6.0.copyload = load i8, ptr %buf.sroa.6.0.info.sroa_idx, align 4
  %buf.sroa.8.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %buf.sroa.8.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %buf.sroa.8.0.copyload = load i8, ptr %buf.sroa.8.0.info.sroa_idx, align 1
  %buf.sroa.13.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 2
  %3 = ptrtoint ptr %buf.sroa.13.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %buf.sroa.13.0.copyload = load i8, ptr %buf.sroa.13.0.info.sroa_idx, align 2
  %buf.sroa.14.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 3
  %4 = ptrtoint ptr %buf.sroa.14.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %buf.sroa.14.0.copyload = load i8, ptr %buf.sroa.14.0.info.sroa_idx, align 1
  %buf.sroa.15.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4
  %5 = ptrtoint ptr %buf.sroa.15.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %buf.sroa.15.0.copyload = load i16, ptr %buf.sroa.15.0.info.sroa_idx, align 4
  %buf.sroa.16.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 4, i32 1
  %6 = ptrtoint ptr %buf.sroa.16.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %buf.sroa.16.0.copyload = load i16, ptr %buf.sroa.16.0.info.sroa_idx, align 2
  %buf.sroa.18.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5
  %7 = ptrtoint ptr %buf.sroa.18.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %buf.sroa.18.0.copyload = load i16, ptr %buf.sroa.18.0.info.sroa_idx, align 4
  %buf.sroa.19.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 5, i32 1
  %8 = ptrtoint ptr %buf.sroa.19.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %buf.sroa.19.0.copyload = load i16, ptr %buf.sroa.19.0.info.sroa_idx, align 2
  %buf.sroa.21.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 6
  %9 = ptrtoint ptr %buf.sroa.21.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %buf.sroa.21.0.copyload = load i16, ptr %buf.sroa.21.0.info.sroa_idx, align 4
  %buf.sroa.22.0.info.sroa_idx = getelementptr inbounds %struct.ice_sched_node, ptr %node, i32 0, i32 3, i32 2, i32 7
  %10 = ptrtoint ptr %buf.sroa.22.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %buf.sroa.22.0.copyload = load i16, ptr %buf.sroa.22.0.info.sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rl_type)
  %cmp = icmp eq i32 %rl_type, 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %bw_alloc)
  %buf.sroa.19.0 = select i1 %cmp, i16 %buf.sroa.19.0.copyload, i16 %11
  %buf.sroa.16.0 = select i1 %cmp, i16 %11, i16 %buf.sroa.16.0.copyload
  %buf.sroa.8.0.v = select i1 %cmp, i8 2, i8 4
  %buf.sroa.8.0 = or i8 %buf.sroa.8.0.copyload, %buf.sroa.8.0.v
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #10
  %12 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %buf.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %buf.i, i32 0, i32 2, i32 3
  %buf.sroa.5.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %14 = ptrtoint ptr %buf.sroa.5.0.buf.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %buf.sroa.5.0.copyload, ptr %buf.sroa.5.0.buf.i.sroa_idx, align 4
  %buf.sroa.8.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 9
  %15 = ptrtoint ptr %buf.sroa.8.0.buf.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %buf.sroa.8.0, ptr %buf.sroa.8.0.buf.i.sroa_idx, align 1
  %buf.sroa.13.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 10
  %16 = ptrtoint ptr %buf.sroa.13.0.buf.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %buf.sroa.13.0.copyload, ptr %buf.sroa.13.0.buf.i.sroa_idx, align 2
  %buf.sroa.15.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 12
  %17 = ptrtoint ptr %buf.sroa.15.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %buf.sroa.15.0.copyload, ptr %buf.sroa.15.0.buf.i.sroa_idx, align 4
  %buf.sroa.16.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 14
  %18 = ptrtoint ptr %buf.sroa.16.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %buf.sroa.16.0, ptr %buf.sroa.16.0.buf.i.sroa_idx, align 2
  %buf.sroa.18.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 16
  %19 = ptrtoint ptr %buf.sroa.18.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %buf.sroa.18.0.copyload, ptr %buf.sroa.18.0.buf.i.sroa_idx, align 4
  %buf.sroa.19.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 18
  %20 = ptrtoint ptr %buf.sroa.19.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %buf.sroa.19.0, ptr %buf.sroa.19.0.buf.i.sroa_idx, align 2
  %buf.sroa.21.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 20
  %21 = ptrtoint ptr %buf.sroa.21.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %buf.sroa.21.0.copyload, ptr %buf.sroa.21.0.buf.i.sroa_idx, align 4
  %buf.sroa.22.0.buf.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 22
  %22 = ptrtoint ptr %buf.sroa.22.0.buf.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %buf.sroa.22.0.copyload, ptr %buf.sroa.22.0.buf.i.sroa_idx, align 2
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %buf.i, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %12, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  %26 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6
  %27 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i.i, i16 noundef zeroext 1027) #10
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %26, align 4
  %29 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %desc.i.i.i, align 4
  %31 = or i16 %30, 4
  store i16 %31, ptr %desc.i.i.i, align 4
  %call.i.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 24, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.not.i, label %lor.lhs.false.i, label %ice_aq_cfg_sched_elems.exit.i

ice_aq_cfg_sched_elems.exit.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %num_elem_resp.i.i.i = getelementptr inbounds %struct.ice_aqc_sched_elem_cmd, ptr %26, i32 0, i32 1
  %32 = ptrtoint ptr %num_elem_resp.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_elem_resp.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %33)
  %cmp.not.i = icmp eq i16 %33, 256
  br i1 %cmp.not.i, label %if.end10.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %ice_aq_cfg_sched_elems.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_update_elem.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_cfg_node_bw_alloc, %if.then8.i)) #10
          to label %ice_sched_update_elem.exit [label %if.then8.i], !srcloc !92

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_update_elem.__UNIQUE_ID_ddebug628, ptr noundef %dev.i, ptr noundef nonnull @.str.38) #10
  br label %ice_sched_update_elem.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %buf.sroa.6.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %buf.sroa.6.0.copyload, ptr %buf.sroa.6.0.info.sroa_idx, align 4
  %37 = ptrtoint ptr %buf.sroa.8.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %buf.sroa.8.0, ptr %buf.sroa.8.0.info.sroa_idx, align 1
  %38 = ptrtoint ptr %buf.sroa.13.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %buf.sroa.13.0.copyload, ptr %buf.sroa.13.0.info.sroa_idx, align 2
  %39 = ptrtoint ptr %buf.sroa.14.0.info.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %buf.sroa.14.0.copyload, ptr %buf.sroa.14.0.info.sroa_idx, align 1
  %40 = ptrtoint ptr %buf.sroa.15.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %buf.sroa.15.0.copyload, ptr %buf.sroa.15.0.info.sroa_idx, align 4
  %41 = ptrtoint ptr %buf.sroa.16.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %buf.sroa.16.0, ptr %buf.sroa.16.0.info.sroa_idx, align 2
  %42 = ptrtoint ptr %buf.sroa.18.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %buf.sroa.18.0.copyload, ptr %buf.sroa.18.0.info.sroa_idx, align 4
  %43 = ptrtoint ptr %buf.sroa.19.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %buf.sroa.19.0, ptr %buf.sroa.19.0.info.sroa_idx, align 2
  %44 = ptrtoint ptr %buf.sroa.21.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %buf.sroa.21.0.copyload, ptr %buf.sroa.21.0.info.sroa_idx, align 4
  %45 = ptrtoint ptr %buf.sroa.22.0.info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %buf.sroa.22.0.copyload, ptr %buf.sroa.22.0.info.sroa_idx, align 2
  br label %ice_sched_update_elem.exit

ice_sched_update_elem.exit:                       ; preds = %if.end10.i, %if.then8.i, %do.body.i
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ -5, %if.then8.i ], [ -5, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 167, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_sched_add_node.__UNIQUE_ID_ddebug613, !1, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 1227, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ice_sched_init_port.__UNIQUE_ID_ddebug621, !7, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 1238, i32 3}
!12 = !{ptr @ice_sched_init_port.__UNIQUE_ID_ddebug622, !11, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!13 = !{ptr @ice_sched_init_port.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 1283, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 1386, i32 3}
!18 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 1881, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ice_sched_cfg_vsi.__UNIQUE_ID_ddebug624, !21, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 3898, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ice_sched_set_node_bw_lmt_per_tc.__UNIQUE_ID_ddebug631, !25, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 4149, i32 5}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ice_sched_replay_agg._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @ice_sched_replay_agg._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 253, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ice_sched_remove_elems.__UNIQUE_ID_ddebug614, !36, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 771, i32 5}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ice_sched_clear_rl_prof.__UNIQUE_ID_ddebug616, !40, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 548, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ice_sched_suspend_resume_elems.__UNIQUE_ID_ddebug615, !44, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 1046, i32 4}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ice_sched_add_nodes_to_layer.__UNIQUE_ID_ddebug620, !48, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 918, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ice_sched_add_elems.__UNIQUE_ID_ddebug617, !52, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 929, i32 4}
!57 = !{ptr @ice_sched_add_elems.__UNIQUE_ID_ddebug618, !56, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 937, i32 4}
!60 = !{ptr @ice_sched_add_elems.__UNIQUE_ID_ddebug619, !59, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 2003, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug625, !62, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 2024, i32 4}
!67 = !{ptr @ice_sched_rm_vsi_cfg.__UNIQUE_ID_ddebug626, !66, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 3748, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ice_sched_set_q_bw_lmt.__UNIQUE_ID_ddebug630, !69, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 2836, i32 5}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ice_sched_rm_unused_rl_prof.__UNIQUE_ID_ddebug627, !73, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 2874, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ice_sched_update_elem.__UNIQUE_ID_ddebug628, !77, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ice/ice_sched.c", i32 3443, i32 5}
!82 = !{ptr @ice_sched_rm_rl_profile.__UNIQUE_ID_ddebug629, !81, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148851545, i64 2148851550, i64 2148851563, i64 2148851607, i64 2148851641, i64 2148851662}
!93 = !{i64 6871187}
!94 = !{i64 2160284245}
!95 = !{!"auto-init"}
