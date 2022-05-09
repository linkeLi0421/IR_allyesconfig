; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_flex_pipe.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_flex_pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ice_blk_size_details = type { i16, i16, i16, i16, i8, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ice_fd_src_dst_pair = type { i8, i8, i16 }
%struct.ice_ptype_attrib_info = type { i16, i16 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.202, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.202 = type { ptr }
%struct.ice_pkg_enum = type { ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.ice_pkg_hdr = type { %struct.ice_pkg_ver, i32, [0 x i32] }
%struct.ice_generic_seg_hdr = type { i32, %struct.ice_pkg_ver, i32, [32 x i8] }
%struct.ice_label_section = type { i16, [0 x %struct.ice_label] }
%struct.ice_label = type { i16, [64 x i8] }
%struct.ice_meta_sect = type { %struct.ice_pkg_ver, [28 x i8], i32 }
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
%struct.ice_aqc_get_pkg_info_resp = type { i32, [0 x %struct.ice_aqc_get_pkg_info] }
%struct.ice_aqc_get_pkg_info = type { %struct.ice_pkg_ver, [28 x i8], i32, i8, i8, i8, i8 }
%struct.ice_seg = type { %struct.ice_generic_seg_hdr, i32, [0 x %struct.ice_device_id_entry] }
%struct.ice_device_id_entry = type { %union.ice_device_id, %union.ice_device_id }
%union.ice_device_id = type { i32 }
%struct.ice_nvm_table = type { i32, [0 x i32] }
%struct.ice_buf_table = type { i32, [0 x %struct.ice_buf] }
%struct.ice_buf = type { [4096 x i8] }
%struct.ice_ptg_entry = type { ptr, i8 }
%struct.ice_ptg_ptype = type { ptr, i8 }
%struct.ice_vsig_entry = type { %struct.list_head, ptr, i8 }
%struct.ice_vsig_vsi = type { ptr, i32, i16, i16 }
%struct.ice_marker_ptype_tcam_entry = type { i16, i16, [20 x i8] }
%struct.ice_fv_word = type <{ i8, i16, i8 }>
%struct.ice_switch_info = type { %struct.list_head, ptr, i16, i16, [256 x [2 x i32]] }
%struct.ice_sw_fv_section = type { i16, i16, [0 x %struct.ice_fv] }
%struct.ice_fv = type { [48 x %struct.ice_fv_word] }
%struct.ice_sw_fv_list_entry = type { %struct.list_head, i32, ptr }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.180 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.180 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }
%struct.ice_buf_hdr = type { i16, i16, [0 x %struct.ice_section_entry] }
%struct.ice_section_entry = type { i32, i16, i16 }
%struct.ice_buf_build = type { %struct.ice_buf, i16 }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice_xlt1_section = type { i16, i16, [0 x i8] }
%struct.ice_xlt2_section = type { i16, i16, [0 x i16] }
%struct.ice_prof_id_section = type { i16, [0 x %struct.ice_prof_tcam_entry] }
%struct.ice_prof_tcam_entry = type <{ i16, [10 x i8], i8 }>
%struct.ice_prof_redir_section = type { i16, i16, [0 x i8] }
%struct.ice_flow_prof = type { %struct.list_head, i64, i32, i8, %struct.mutex, %struct.list_head, [2 x %struct.ice_flow_seg_info], [24 x i32] }
%struct.ice_flow_seg_info = type { i32, i64, i64, [42 x %struct.ice_flow_fld_info], i8, [2 x %struct.ice_flow_seg_fld_raw] }
%struct.ice_flow_fld_info = type { i32, %struct.ice_flow_fld_loc, %struct.ice_flow_fld_loc, %struct.ice_flow_seg_xtrct }
%struct.ice_flow_fld_loc = type { i16, i16, i16 }
%struct.ice_flow_seg_xtrct = type { i8, i16, i8, i8, i16 }
%struct.ice_flow_seg_fld_raw = type { %struct.ice_flow_fld_info, i16 }
%struct.ice_prof_map = type { %struct.list_head, i64, i64, i8, i8, [32 x i8], [32 x %struct.ice_ptype_attrib_info] }
%struct.ice_ptype_attributes = type { i16, i32 }
%struct.ice_vsig_prof = type { %struct.list_head, i64, i8, i8, [32 x %struct.ice_tcam_inf] }
%struct.ice_tcam_inf = type { i16, %struct.ice_ptype_attrib_info, i8, i8, i8 }
%struct.ice_chs_chg = type { %struct.list_head, i32, i8, i8, i8, i8, i16, i8, i8, i16, i16, i16, i16, %struct.ice_ptype_attrib_info }
%struct.ice_pkg_es = type { i16, i16, [0 x %struct.ice_fv_word] }
%struct.ice_boost_tcam_section = type { i16, i16, [0 x %struct.ice_boost_tcam_entry] }
%struct.ice_boost_tcam_entry = type { i16, i16, %struct.ice_boost_key, i8, [43 x i8] }
%struct.ice_boost_key = type { %struct.ice_boost_key_value, %struct.ice_boost_key_value }
%struct.ice_boost_key_value = type <{ [15 x i8], i16, i16, i8 }>
%struct.ice_aqc_download_pkg_resp = type { i32, i32, i32, i32 }
%struct.ice_marker_ptype_tcam_section = type { i16, i16, [0 x %struct.ice_marker_ptype_tcam_entry] }
%struct.ice_prof_id_key = type <{ i16, i8, i16 }>

@ice_init_pkg.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_init_pkg\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/ice/ice_flex_pipe.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to verify pkg (err: %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_init_pkg.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"package previously loaded - no work.\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_init_pkg.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"package load failed, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error adding UDP tunnel - %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error removing UDP tunnel - %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_init_hw_tbls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hw->rss_locks\00", [17 x i8] zeroinitializer }, align 32
@ice_init_hw_tbls.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&es->prof_map_lock\00", [45 x i8] zeroinitializer }, align 32
@blk_sizes = internal constant { [5 x %struct.ice_blk_size_details], [38 x i8] } { [5 x %struct.ice_blk_size_details] [%struct.ice_blk_size_details { i16 1024, i16 768, i16 512, i16 256, i8 0, i16 256, i16 256, i16 48, i8 0, i8 0 }, %struct.ice_blk_size_details { i16 1024, i16 768, i16 512, i16 128, i8 0, i16 128, i16 128, i16 32, i8 0, i8 0 }, %struct.ice_blk_size_details { i16 1024, i16 768, i16 512, i16 128, i8 0, i16 128, i16 128, i16 24, i8 0, i8 1 }, %struct.ice_blk_size_details { i16 1024, i16 768, i16 512, i16 128, i8 0, i16 128, i16 128, i16 24, i8 1, i8 1 }, %struct.ice_blk_size_details { i16 1024, i16 768, i16 64, i16 32, i8 0, i16 32, i16 32, i16 24, i8 0, i8 0 }], [38 x i8] zeroinitializer }, align 32
@ice_blk_sids = internal constant { [5 x [5 x i32]], [60 x i8] } { [5 x [5 x i32]] [[5 x i32] [i32 12, i32 13, i32 14, i32 15, i32 16], [5 x i32] [i32 22, i32 23, i32 24, i32 25, i32 26], [5 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36], [5 x i32] [i32 42, i32 43, i32 44, i32 45, i32 46], [5 x i32] [i32 82, i32 83, i32 84, i32 85, i32 86]], [60 x i8] zeroinitializer }, align 32
@ice_init_pkg_info.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_init_pkg_info\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Did not find ice metadata section in package\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_init_pkg_info.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Pkg: %d.%d.%d.%d, %s\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_init_pkg_info.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ice Seg: %d.%d.%d.%d, %s\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_init_pkg_info.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Did not find ice segment in driver package\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_find_seg_in_pkg.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_find_seg_in_pkg\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Package format version: %d.%d.%d.%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_chk_pkg_compat.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_chk_pkg_compat\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Package version check failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_chk_pkg_compat.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 1, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no ice segment in package.\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_chk_pkg_compat.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"OS package is not compatible with NVM.\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TNL_VXLAN_PF\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TNL_GENEVE_PF\00", [18 x i8] zeroinitializer }, align 32
@ice_download_pkg.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_download_pkg\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Segment format version: %d.%d.%d.%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_download_pkg.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Seg: type 0x%X, size %d, name %s\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_download_pkg.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Seg buf count: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_dwnld_cfg_bufs.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_dwnld_cfg_bufs\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Pkg download failed: err %d off %d inf %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ice_global_cfg_lock_sw = external dso_local global %struct.mutex, align 4
@ice_acquire_global_cfg_lock.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ice_acquire_global_cfg_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Global config lock: No work to do\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_get_pkg_info.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_get_pkg_info\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pkg[%d]: %d.%d.%d.%d,%s,%s\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_tunnel_idx_to_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ice_update_pkg.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ice_update_pkg\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Update pkg failed: err %d off %d inf %d\0A\00", [55 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@ice_fill_tbl.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 3, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_fill_tbl\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hw->seg is NULL, tables are not filled\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 3, i8 1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_write_prof_mask_reg\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No profile masks for block %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 3, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"write mask, blk %d (%d): %x = %x\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_init_prof_masks.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&hw->blk[blk].masks.lock\00", [39 x i8] zeroinitializer }, align 32
@ice_init_flow_profs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&hw->fl_profs_locks[blk_idx]\00", [35 x i8] zeroinitializer }, align 32
@ice_fd_pairs = internal constant { [16 x %struct.ice_fd_src_dst_pair], [32 x i8] } { [16 x %struct.ice_fd_src_dst_pair] [%struct.ice_fd_src_dst_pair { i8 32, i8 2, i16 12 }, %struct.ice_fd_src_dst_pair { i8 32, i8 2, i16 16 }, %struct.ice_fd_src_dst_pair { i8 33, i8 2, i16 12 }, %struct.ice_fd_src_dst_pair { i8 33, i8 2, i16 16 }, %struct.ice_fd_src_dst_pair { i8 40, i8 8, i16 8 }, %struct.ice_fd_src_dst_pair { i8 40, i8 8, i16 24 }, %struct.ice_fd_src_dst_pair { i8 41, i8 8, i16 8 }, %struct.ice_fd_src_dst_pair { i8 41, i8 8, i16 24 }, %struct.ice_fd_src_dst_pair { i8 49, i8 1, i16 0 }, %struct.ice_fd_src_dst_pair { i8 49, i8 1, i16 2 }, %struct.ice_fd_src_dst_pair { i8 52, i8 1, i16 0 }, %struct.ice_fd_src_dst_pair { i8 52, i8 1, i16 2 }, %struct.ice_fd_src_dst_pair { i8 53, i8 1, i16 0 }, %struct.ice_fd_src_dst_pair { i8 53, i8 1, i16 2 }, %struct.ice_fd_src_dst_pair { i8 96, i8 1, i16 0 }, %struct.ice_fd_src_dst_pair { i8 96, i8 1, i16 2 }], [32 x i8] zeroinitializer }, align 32
@ice_update_fd_swap.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 4, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_update_fd_swap\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"swap wr(%d, %d): %x = %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_update_fd_swap.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 4, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"inset wr(%d, %d): %x = %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_update_fd_mask.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 4, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_update_fd_mask\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fd mask(%d): %x = %x\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_free_prof_mask.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 3, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_free_prof_mask\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Free mask, blk %d, mask %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.40, i8 3, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ice_write_prof_mask_enable_res\00", [33 x i8] zeroinitializer }, align 32
@ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 3, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"write mask enable, blk %d (%d): %x = %x\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_ptype_attributes = internal constant { [4 x %struct.ice_ptype_attrib_info], [16 x i8] } { [4 x %struct.ice_ptype_attrib_info] [%struct.ice_ptype_attrib_info { i16 16384, i16 16384 }, %struct.ice_ptype_attrib_info { i16 0, i16 24576 }, %struct.ice_ptype_attrib_info { i16 16384, i16 24576 }, %struct.ice_ptype_attrib_info { i16 24576, i16 24576 }], [16 x i8] zeroinitializer }, align 32
@ice_has_prof_vsig.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 4, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_has_prof_vsig\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Characteristic list for VSI group %d not found.\0A\00", [47 x i8] zeroinitializer }, align 32
@__const.ice_rel_tcam_idx.dc_msk = private unnamed_addr constant [5 x i8] c"\FE\FF\FF\FF\FF", align 1
@__const.ice_rel_tcam_idx.nm_msk = private unnamed_addr constant [5 x i8] c"\01\00\00\00\00", align 1
@ice_prof_gen_key.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 3, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_prof_gen_key\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error in profile config\0A\00", [39 x i8] zeroinitializer }, align 32
@__const.ice_prof_tcam_ena_dis.dc_msk = private unnamed_addr constant [5 x i8] c"\FF\FF\00\00\00", align 1
@ice_upd_prof_hw.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 4, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_upd_prof_hw\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to update HW profile\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_sect_lkup = internal constant { [5 x [9 x i32]], [44 x i8] } { [5 x [9 x i32]] [[9 x i32] [i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18], [9 x i32] [i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28], [9 x i32] [i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38], [9 x i32] [i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48], [9 x i32] [i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88]], [44 x i8] zeroinitializer }, align 32
@switch.table.ice_dwnld_cfg_bufs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -9, i32 -9, i32 -10, i32 -11, i32 -11], [44 x i8] zeroinitializer }, align 32
@switch.table.ice_dwnld_cfg_bufs.59 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -9, i32 -9, i32 -10, i32 -11, i32 -11], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 52, i64 64]
@__sancov_gen_cov_switch_values.63 = internal global [27 x i64] [i64 25, i64 32, i64 12, i64 13, i64 14, i64 15, i64 16, i64 22, i64 23, i64 24, i64 25, i64 26, i64 32, i64 33, i64 34, i64 35, i64 36, i64 42, i64 43, i64 44, i64 45, i64 46, i64 82, i64 83, i64 84, i64 85, i64 86]
@__sancov_gen_cov_switch_values.64 = internal global [22 x i64] [i64 20, i64 32, i64 12, i64 13, i64 14, i64 15, i64 22, i64 23, i64 24, i64 25, i64 32, i64 33, i64 34, i64 35, i64 42, i64 43, i64 44, i64 45, i64 82, i64 83, i64 84, i64 85]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1567, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1588, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1612, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2244, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2267, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3850, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3865, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"blk_sizes\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2452, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"ice_blk_sids\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3422, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1166, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1173, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1181, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1188, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 940, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1379, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1387, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1411, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 12, i32 16 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 13, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1121, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1127, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1133, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1072, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 786, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1240, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 984, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3551, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3077, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3083, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3128, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3795, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [13 x i8] c"ice_fd_pairs\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4376, i32 41 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4543, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4549, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4366, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3254, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3108, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 3114, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"ice_ptype_attributes\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4560, i32 43 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4102, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4015, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 4346, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [14 x i8] c"ice_sect_lkup\00", align 1
@___asan_gen_.276 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 17, i32 18 }
@___asan_gen_.278 = private unnamed_addr constant [32 x i8] c"switch.table.ice_dwnld_cfg_bufs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [35 x i8] c"switch.table.ice_dwnld_cfg_bufs.59\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ice_init_hw_tbls.__key, ptr @.str.8, ptr @ice_init_hw_tbls.__key.9, ptr @.str.10, ptr @blk_sizes, ptr @ice_blk_sids, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ice_init_prof_masks.__key, ptr @.str.42, ptr @ice_init_flow_profs.__key, ptr @.str.43, ptr @ice_fd_pairs, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @ice_ptype_attributes, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @ice_sect_lkup, ptr @switch.table.ice_dwnld_cfg_bufs, ptr @switch.table.ice_dwnld_cfg_bufs.59], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_hw_tbls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_hw_tbls.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_sizes to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_blk_sids to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_prof_masks.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_flow_profs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fd_pairs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptype_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_sect_lkup to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_dwnld_cfg_bufs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_dwnld_cfg_bufs.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_hw_ptype_ena(ptr noundef %hw, i16 noundef zeroext %ptype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %ptype)
  %cmp = icmp ult i16 %ptype, 1024
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %ptype to i32
  %hw_ptype = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 73
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %hw_ptype, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_acquire_change_lock(ptr noundef %hw, i32 noundef %access) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 3, i32 noundef %access, i32 noundef 1000) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_acquire_res(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_release_change_lock(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ice_release_res(ptr noundef %hw, i32 noundef 3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_res(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_free_seg(ptr nocapture noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pkg_copy = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 55
  %0 = ptrtoint ptr %pkg_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkg_copy, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %1) #16
  %4 = ptrtoint ptr %pkg_copy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pkg_copy, align 8
  %pkg_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 56
  %5 = ptrtoint ptr %pkg_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pkg_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %seg = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %6 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %seg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_pkg(ptr noundef %hw, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %state.i.i = alloca %struct.ice_pkg_enum, align 4
  %state.i = alloca %struct.ice_pkg_enum, align 4
  %seg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seg) #16
  %0 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %seg, align 4, !annotation !154
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp.i = icmp ult i32 %len, 12
  br i1 %cmp.i, label %if.end.do.body_crit_edge, label %if.end.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end.i:                                         ; preds = %if.end
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp1.not.i = icmp eq i8 %2, 1
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end.i
  %minor.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %minor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5.not.i = icmp eq i8 %4, 0
  br i1 %cmp5.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %update.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %buf, i32 0, i32 2
  %5 = ptrtoint ptr %update.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %update.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp10.not.i = icmp eq i8 %6, 0
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false7.i.do.body_crit_edge

lor.lhs.false7.i.do.body_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false12.i:                                ; preds = %lor.lhs.false7.i
  %draft.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %buf, i32 0, i32 3
  %7 = ptrtoint ptr %draft.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %draft.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp15.not.i = icmp eq i8 %8, 0
  br i1 %cmp15.not.i, label %if.end18.i, label %lor.lhs.false12.i.do.body_crit_edge

lor.lhs.false12.i.do.body_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end18.i:                                       ; preds = %lor.lhs.false12.i
  %seg_count19.i = getelementptr inbounds %struct.ice_pkg_hdr, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %seg_count19.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seg_count19.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp20.i = icmp eq i32 %10, 0
  br i1 %cmp20.i, label %if.end18.i.do.body_crit_edge, label %if.end23.i

if.end18.i.do.body_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end23.i:                                       ; preds = %if.end18.i
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #16
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %14, i32 8) #16
  %retval.0.i.i = select i1 %13, i32 -1, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len)
  %cmp25.i = icmp ugt i32 %retval.0.i.i, %len
  br i1 %cmp25.i, label %if.end23.i.do.body_crit_edge, label %for.body.preheader.i

if.end23.i.do.body_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.body.preheader.i:                             ; preds = %if.end23.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %11, i32 1) #16
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end34.i
  %inc.i = add nuw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end11, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.059.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.ice_pkg_hdr, ptr %buf, i32 0, i32 2, i32 %i.059.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  %add.i = add i32 %17, 44
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %len)
  %cmp31.i = icmp ugt i32 %add.i, %len
  br i1 %cmp31.i, label %for.body.i.do.body_crit_edge, label %if.end34.i

for.body.i.do.body_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end34.i:                                       ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %17
  %seg_size.i = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %add.ptr.i, i32 0, i32 2
  %18 = ptrtoint ptr %seg_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seg_size.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  %add35.i = add i32 %20, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add35.i, i32 %len)
  %cmp36.not.i = icmp ugt i32 %add35.i, %len
  br i1 %cmp36.not.i, label %if.end34.i.do.body_crit_edge, label %for.cond.i

if.end34.i.do.body_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %if.end34.i.do.body_crit_edge, %for.body.i.do.body_crit_edge, %if.end23.i.do.body_crit_edge, %if.end18.i.do.body_crit_edge, %lor.lhs.false12.i.do.body_crit_edge, %lor.lhs.false7.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_pkg.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg, %if.then8)) #16
          to label %cleanup [label %if.then8], !srcloc !155

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_pkg.__UNIQUE_ID_ddebug628, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef -6) #16
  br label %cleanup

if.end11:                                         ; preds = %for.cond.i
  %call12 = tail call fastcc i32 @ice_init_pkg_info(ptr noundef %hw, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call fastcc i32 @ice_chk_pkg_compat(ptr noundef %hw, ptr noundef nonnull %buf, ptr noundef nonnull %seg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %23 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %seg, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state.i) #16
  %tnl.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 58
  %25 = call ptr @memset(ptr %tnl.i, i32 0, i32 264)
  %26 = call ptr @memset(ptr %state.i, i32 0, i32 36)
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end19.ice_init_pkg_hints.exit_crit_edge, label %if.then.i.i.i

if.end19.ice_init_pkg_hints.exit_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_init_pkg_hints.exit

if.then.i.i.i:                                    ; preds = %if.end19
  %call.i.i.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %24, ptr noundef nonnull %state.i, i32 noundef -2147483624) #16
  %tobool4.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.then.i.i.i.ice_enum_labels.exit.thread.i_crit_edge, label %if.end9.i.i.i

if.then.i.i.i.ice_enum_labels.exit.thread.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_enum_labels.exit.thread.i

if.end9.i.i.i:                                    ; preds = %if.then.i.i.i
  %entry_idx.i.i.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i, i32 0, i32 7
  %27 = ptrtoint ptr %entry_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %entry_idx.i.i.i, align 4
  %handler7.i.i.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i, i32 0, i32 8
  %28 = ptrtoint ptr %handler7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ice_label_enum_handler, ptr %handler7.i.i.i, align 4
  %sect_type15.i.i.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i, i32 0, i32 6
  %sect.i.i.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i, i32 0, i32 5
  %29 = ptrtoint ptr %sect.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sect.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end9.i.i.i.if.then19.i.i.i_crit_edge, label %if.end5.i.i

if.end9.i.i.i.if.then19.i.i.i_crit_edge:          ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then19.i.i.i

if.end5.i.i:                                      ; preds = %if.end9.i.i.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp9.not.i.i = icmp eq i16 %32, 0
  %label.i.i = getelementptr inbounds %struct.ice_label_section, ptr %30, i32 0, i32 1
  br i1 %cmp9.not.i.i, label %if.end5.i.i.if.then19.i.i.i_crit_edge, label %if.end5.i.i.ice_enum_labels.exit.i_crit_edge

if.end5.i.i.ice_enum_labels.exit.i_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_enum_labels.exit.i

if.end5.i.i.if.then19.i.i.i_crit_edge:            ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then19.i.i.i

if.then19.i.i.i:                                  ; preds = %if.end5.i.i.if.then19.i.i.i_crit_edge, %if.end9.i.i.i.if.then19.i.i.i_crit_edge
  %call20.i.i.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state.i, i32 noundef 0) #16
  %tobool21.not.i.i.i = icmp eq ptr %call20.i.i.i, null
  br i1 %tobool21.not.i.i.i, label %if.then19.i.i.i.ice_enum_labels.exit.thread.i_crit_edge, label %ice_pkg_enum_entry.exit.i.i

if.then19.i.i.i.ice_enum_labels.exit.thread.i_crit_edge: ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_enum_labels.exit.thread.i

ice_pkg_enum_entry.exit.i.i:                      ; preds = %if.then19.i.i.i
  %33 = ptrtoint ptr %entry_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %entry_idx.i.i.i, align 4
  %34 = ptrtoint ptr %handler7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handler7.i.i.i, align 4
  %36 = ptrtoint ptr %sect_type15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sect_type15.i.i.i, align 4
  %38 = ptrtoint ptr %sect.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sect.i.i.i, align 4
  %call29.i.i.i = tail call ptr %35(i32 noundef %37, ptr noundef %39, i32 noundef 0, ptr noundef null) #16
  %tobool3.not.i.i = icmp eq ptr %call29.i.i.i, null
  br i1 %tobool3.not.i.i, label %ice_pkg_enum_entry.exit.i.i.ice_enum_labels.exit.thread.i_crit_edge, label %ice_pkg_enum_entry.exit.i.i.ice_enum_labels.exit.i_crit_edge

ice_pkg_enum_entry.exit.i.i.ice_enum_labels.exit.i_crit_edge: ; preds = %ice_pkg_enum_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_enum_labels.exit.i

ice_pkg_enum_entry.exit.i.i.ice_enum_labels.exit.thread.i_crit_edge: ; preds = %ice_pkg_enum_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_enum_labels.exit.thread.i

ice_enum_labels.exit.thread.i:                    ; preds = %ice_pkg_enum_entry.exit.i.i.ice_enum_labels.exit.thread.i_crit_edge, %if.then19.i.i.i.ice_enum_labels.exit.thread.i_crit_edge, %if.then.i.i.i.ice_enum_labels.exit.thread.i_crit_edge
  %count198.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 58, i32 1
  br label %while.end.i

ice_enum_labels.exit.i:                           ; preds = %ice_pkg_enum_entry.exit.i.i.ice_enum_labels.exit.i_crit_edge, %if.end5.i.i.ice_enum_labels.exit.i_crit_edge
  %retval.0.i17.i.i = phi ptr [ %call29.i.i.i, %ice_pkg_enum_entry.exit.i.i.ice_enum_labels.exit.i_crit_edge ], [ %label.i.i, %if.end5.i.i.ice_enum_labels.exit.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 58, i32 1
  %pf_id.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %40 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %41)
  %cmp.i120132 = icmp ult i16 %41, 16
  br i1 %cmp.i120132, label %for.body.preheader.i121.preheader, label %ice_enum_labels.exit.i.do.body.preheader.i.lr.ph.i_crit_edge

ice_enum_labels.exit.i.do.body.preheader.i.lr.ph.i_crit_edge: ; preds = %ice_enum_labels.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader.i.lr.ph.i

for.body.preheader.i121.preheader:                ; preds = %ice_enum_labels.exit.i
  %42 = ptrtoint ptr %retval.0.i17.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %retval.0.i17.i.i, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #16
  br label %for.body.preheader.i121

for.body.preheader.i121:                          ; preds = %ice_enum_labels.exit159.i.for.body.preheader.i121_crit_edge, %for.body.preheader.i121.preheader
  %45 = phi i16 [ %79, %ice_enum_labels.exit159.i.for.body.preheader.i121_crit_edge ], [ %41, %for.body.preheader.i121.preheader ]
  %val.1187.i135 = phi i16 [ %77, %ice_enum_labels.exit159.i.for.body.preheader.i121_crit_edge ], [ %44, %for.body.preheader.i121.preheader ]
  %retval.0.i17.i.i.pn133 = phi ptr [ %retval.0.i17.i155.i, %ice_enum_labels.exit159.i.for.body.preheader.i121_crit_edge ], [ %retval.0.i17.i.i, %for.body.preheader.i121.preheader ]
  %label_name.0189.i136 = getelementptr inbounds %struct.ice_label, ptr %retval.0.i17.i.i.pn133, i32 0, i32 1
  %call10.i = tail call i32 @strncmp(ptr noundef nonnull %label_name.0189.i136, ptr noundef nonnull dereferenceable(13) @.str.22, i32 noundef 12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %for.body.preheader.i121.for.inc.i_crit_edge

for.body.preheader.i121.for.inc.i_crit_edge:      ; preds = %for.body.preheader.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body.preheader.i121
  %arrayidx14.i = getelementptr %struct.ice_label, ptr %retval.0.i17.i.i.pn133, i32 0, i32 1, i32 12
  %46 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %47 to i32
  %sub.i = add nsw i32 %conv15.i, -48
  %48 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pf_id.i, align 1
  %conv16.i = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv16.i)
  %cmp17.i = icmp eq i32 %sub.i, %conv16.i
  br i1 %cmp17.i, label %if.end13.i.cleanup.i_crit_edge, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end13.i.cleanup.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.1.i.cleanup.i_crit_edge, %if.end13.i.cleanup.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end13.i.cleanup.i_crit_edge ], [ 1, %if.end13.1.i.cleanup.i_crit_edge ]
  %idxprom.i = zext i16 %45 to i32
  %arrayidx25.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom.i
  %50 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.lcssa.i, ptr %arrayidx25.i, align 4
  %51 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %count.i, align 4
  %idxprom31.i = zext i16 %52 to i32
  %valid.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom31.i, i32 4
  %53 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %valid.i, align 4
  %boost_addr.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom31.i, i32 1
  %54 = ptrtoint ptr %boost_addr.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %val.1187.i135, ptr %boost_addr.i, align 4
  %port.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom31.i, i32 2
  %55 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %port.i, align 2
  %inc.i122 = add i16 %52, 1
  store i16 %inc.i122, ptr %count.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %for.body.preheader.i121.for.inc.i_crit_edge
  %call10.1.i = tail call i32 @strncmp(ptr noundef nonnull %label_name.0189.i136, ptr noundef nonnull dereferenceable(14) @.str.23, i32 noundef 13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1.i)
  %tobool11.not.1.i = icmp eq i32 %call10.1.i, 0
  br i1 %tobool11.not.1.i, label %if.end13.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end13.1.i:                                     ; preds = %for.inc.i
  %arrayidx14.1.i = getelementptr %struct.ice_label, ptr %retval.0.i17.i.i.pn133, i32 0, i32 1, i32 13
  %56 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx14.1.i, align 1
  %conv15.1.i = zext i8 %57 to i32
  %sub.1.i = add nsw i32 %conv15.1.i, -48
  %58 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pf_id.i, align 1
  %conv16.1.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %conv16.1.i)
  %cmp17.1.i = icmp eq i32 %sub.1.i, %conv16.1.i
  br i1 %cmp17.1.i, label %if.end13.1.i.cleanup.i_crit_edge, label %if.end13.1.i.for.end.i_crit_edge

if.end13.1.i.for.end.i_crit_edge:                 ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end13.1.i.cleanup.i_crit_edge:                 ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.end.i:                                        ; preds = %if.end13.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %cleanup.i
  %60 = ptrtoint ptr %entry_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entry_idx.i.i.i, align 4
  %inc.i.i138.i = add i32 %61, 1
  store i32 %inc.i.i138.i, ptr %entry_idx.i.i.i, align 4
  %62 = ptrtoint ptr %handler7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %handler7.i.i.i, align 4
  %tobool11.not.i.i141.i = icmp eq ptr %63, null
  br i1 %tobool11.not.i.i141.i, label %for.end.i.while.end.i_crit_edge, label %if.end13.i.i148.i

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end13.i.i148.i:                                ; preds = %for.end.i
  %64 = ptrtoint ptr %sect_type15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sect_type15.i.i.i, align 4
  %66 = ptrtoint ptr %sect.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sect.i.i.i, align 4
  %call17.i.i146.i = tail call ptr %63(i32 noundef %65, ptr noundef %67, i32 noundef %inc.i.i138.i, ptr noundef null) #16
  %tobool18.not.i.i147.i = icmp eq ptr %call17.i.i146.i, null
  br i1 %tobool18.not.i.i147.i, label %if.then19.i.i151.i, label %if.end13.i.i148.i.ice_enum_labels.exit159.i_crit_edge

if.end13.i.i148.i.ice_enum_labels.exit159.i_crit_edge: ; preds = %if.end13.i.i148.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_enum_labels.exit159.i

if.then19.i.i151.i:                               ; preds = %if.end13.i.i148.i
  %call20.i.i149.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state.i, i32 noundef 0) #16
  %tobool21.not.i.i150.i = icmp eq ptr %call20.i.i149.i, null
  br i1 %tobool21.not.i.i150.i, label %if.then19.i.i151.i.while.end.i_crit_edge, label %ice_pkg_enum_entry.exit.i154.i

if.then19.i.i151.i.while.end.i_crit_edge:         ; preds = %if.then19.i.i151.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

ice_pkg_enum_entry.exit.i154.i:                   ; preds = %if.then19.i.i151.i
  %68 = ptrtoint ptr %entry_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %entry_idx.i.i.i, align 4
  %69 = ptrtoint ptr %handler7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handler7.i.i.i, align 4
  %71 = ptrtoint ptr %sect_type15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sect_type15.i.i.i, align 4
  %73 = ptrtoint ptr %sect.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sect.i.i.i, align 4
  %call29.i.i152.i = tail call ptr %70(i32 noundef %72, ptr noundef %74, i32 noundef 0, ptr noundef null) #16
  %tobool3.not.i153.i = icmp eq ptr %call29.i.i152.i, null
  br i1 %tobool3.not.i153.i, label %ice_pkg_enum_entry.exit.i154.i.while.end.i_crit_edge, label %ice_pkg_enum_entry.exit.i154.i.ice_enum_labels.exit159.i_crit_edge

ice_pkg_enum_entry.exit.i154.i.ice_enum_labels.exit159.i_crit_edge: ; preds = %ice_pkg_enum_entry.exit.i154.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_enum_labels.exit159.i

ice_pkg_enum_entry.exit.i154.i.while.end.i_crit_edge: ; preds = %ice_pkg_enum_entry.exit.i154.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

ice_enum_labels.exit159.i:                        ; preds = %ice_pkg_enum_entry.exit.i154.i.ice_enum_labels.exit159.i_crit_edge, %if.end13.i.i148.i.ice_enum_labels.exit159.i_crit_edge
  %retval.0.i17.i155.i = phi ptr [ %call29.i.i152.i, %ice_pkg_enum_entry.exit.i154.i.ice_enum_labels.exit159.i_crit_edge ], [ %call17.i.i146.i, %if.end13.i.i148.i.ice_enum_labels.exit159.i_crit_edge ]
  %75 = ptrtoint ptr %retval.0.i17.i155.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %retval.0.i17.i155.i, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #16
  %78 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %count.i, align 4
  %cmp.i120 = icmp ult i16 %79, 16
  br i1 %cmp.i120, label %ice_enum_labels.exit159.i.for.body.preheader.i121_crit_edge, label %ice_enum_labels.exit159.i.do.body.preheader.i.lr.ph.i_crit_edge

ice_enum_labels.exit159.i.do.body.preheader.i.lr.ph.i_crit_edge: ; preds = %ice_enum_labels.exit159.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader.i.lr.ph.i

ice_enum_labels.exit159.i.for.body.preheader.i121_crit_edge: ; preds = %ice_enum_labels.exit159.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader.i121

while.end.i:                                      ; preds = %ice_pkg_enum_entry.exit.i154.i.while.end.i_crit_edge, %if.then19.i.i151.i.while.end.i_crit_edge, %for.end.i.while.end.i_crit_edge, %ice_enum_labels.exit.thread.i
  %count200.ph.i = phi ptr [ %count198.i, %ice_enum_labels.exit.thread.i ], [ %count.i, %for.end.i.while.end.i_crit_edge ], [ %count.i, %if.then19.i.i151.i.while.end.i_crit_edge ], [ %count.i, %ice_pkg_enum_entry.exit.i154.i.while.end.i_crit_edge ]
  %80 = ptrtoint ptr %count200.ph.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %.pr.i = load i16, ptr %count200.ph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp54191.not.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp54191.not.i, label %while.end.i.ice_init_pkg_hints.exit_crit_edge, label %while.end.i.do.body.preheader.i.lr.ph.i_crit_edge

while.end.i.do.body.preheader.i.lr.ph.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader.i.lr.ph.i

while.end.i.ice_init_pkg_hints.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_init_pkg_hints.exit

do.body.preheader.i.lr.ph.i:                      ; preds = %while.end.i.do.body.preheader.i.lr.ph.i_crit_edge, %ice_enum_labels.exit159.i.do.body.preheader.i.lr.ph.i_crit_edge, %ice_enum_labels.exit.i.do.body.preheader.i.lr.ph.i_crit_edge
  %count200207.i = phi ptr [ %count200.ph.i, %while.end.i.do.body.preheader.i.lr.ph.i_crit_edge ], [ %count.i, %ice_enum_labels.exit.i.do.body.preheader.i.lr.ph.i_crit_edge ], [ %count.i, %ice_enum_labels.exit159.i.do.body.preheader.i.lr.ph.i_crit_edge ]
  %entry_idx.i.i160.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i.i, i32 0, i32 7
  %handler7.i.i161.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i.i, i32 0, i32 8
  %sect_type15.i.i162.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i.i, i32 0, i32 6
  %sect.i.i163.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state.i.i, i32 0, i32 5
  br label %do.body.preheader.i.i

do.body.preheader.i.i:                            ; preds = %for.inc91.i.do.body.preheader.i.i_crit_edge, %do.body.preheader.i.lr.ph.i
  %i.1192.i = phi i32 [ 0, %do.body.preheader.i.lr.ph.i ], [ %inc92.i, %for.inc91.i.do.body.preheader.i.i_crit_edge ]
  %boost_addr60.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %i.1192.i, i32 1
  %81 = ptrtoint ptr %boost_addr60.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %boost_addr60.i, align 4
  %boost_entry.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %i.1192.i, i32 3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state.i.i) #16
  %83 = call ptr @memset(ptr %state.i.i, i32 0, i32 36)
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %ice_seg.addr.0.i.i = phi ptr [ null, %land.lhs.true.i.i.do.body.i.i_crit_edge ], [ %24, %do.body.preheader.i.i ]
  %tobool.not.i.i164.i = icmp eq ptr %ice_seg.addr.0.i.i, null
  br i1 %tobool.not.i.i164.i, label %if.end9.i.i170.i, label %if.then.i.i167.i

if.then.i.i167.i:                                 ; preds = %do.body.i.i
  %call.i.i165.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %ice_seg.addr.0.i.i, ptr noundef nonnull %state.i.i, i32 noundef 56) #16
  %tobool4.not.i.i166.i = icmp eq ptr %call.i.i165.i, null
  br i1 %tobool4.not.i.i166.i, label %if.then.i.i167.i.ice_find_boost_entry.exit.thread.i_crit_edge, label %if.end9.i.thread.i.i

if.then.i.i167.i.ice_find_boost_entry.exit.thread.i_crit_edge: ; preds = %if.then.i.i167.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_boost_entry.exit.thread.i

if.end9.i.thread.i.i:                             ; preds = %if.then.i.i167.i
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %entry_idx.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %entry_idx.i.i160.i, align 4
  %85 = ptrtoint ptr %handler7.i.i161.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ice_boost_tcam_handler, ptr %handler7.i.i161.i, align 4
  br label %if.end13.i.i173.i

if.end9.i.i170.i:                                 ; preds = %do.body.i.i
  %86 = ptrtoint ptr %entry_idx.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %entry_idx.i.i160.i, align 4
  %inc.i.i168.i = add i32 %87, 1
  store i32 %inc.i.i168.i, ptr %entry_idx.i.i160.i, align 4
  %88 = ptrtoint ptr %handler7.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr.i.i = load ptr, ptr %handler7.i.i161.i, align 4
  %tobool11.not.i.i169.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool11.not.i.i169.i, label %if.end9.i.i170.i.ice_find_boost_entry.exit.thread.i_crit_edge, label %if.end9.i.i170.i.if.end13.i.i173.i_crit_edge

if.end9.i.i170.i.if.end13.i.i173.i_crit_edge:     ; preds = %if.end9.i.i170.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i173.i

if.end9.i.i170.i.ice_find_boost_entry.exit.thread.i_crit_edge: ; preds = %if.end9.i.i170.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_boost_entry.exit.thread.i

if.end13.i.i173.i:                                ; preds = %if.end9.i.i170.i.if.end13.i.i173.i_crit_edge, %if.end9.i.thread.i.i
  %89 = phi ptr [ @ice_boost_tcam_handler, %if.end9.i.thread.i.i ], [ %.pr.i.i, %if.end9.i.i170.i.if.end13.i.i173.i_crit_edge ]
  %90 = ptrtoint ptr %sect_type15.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sect_type15.i.i162.i, align 4
  %92 = ptrtoint ptr %sect.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sect.i.i163.i, align 4
  %94 = ptrtoint ptr %entry_idx.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %entry_idx.i.i160.i, align 4
  %call17.i.i171.i = tail call ptr %89(i32 noundef %91, ptr noundef %93, i32 noundef %95, ptr noundef null) #16
  %tobool18.not.i.i172.i = icmp eq ptr %call17.i.i171.i, null
  br i1 %tobool18.not.i.i172.i, label %if.then19.i.i176.i, label %if.end13.i.i173.i.land.lhs.true.i.i_crit_edge

if.end13.i.i173.i.land.lhs.true.i.i_crit_edge:    ; preds = %if.end13.i.i173.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i.i

if.then19.i.i176.i:                               ; preds = %if.end13.i.i173.i
  %call20.i.i174.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state.i.i, i32 noundef 0) #16
  %tobool21.not.i.i175.i = icmp eq ptr %call20.i.i174.i, null
  br i1 %tobool21.not.i.i175.i, label %if.then19.i.i176.i.ice_find_boost_entry.exit.thread.i_crit_edge, label %ice_pkg_enum_entry.exit.i178.i

if.then19.i.i176.i.ice_find_boost_entry.exit.thread.i_crit_edge: ; preds = %if.then19.i.i176.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_boost_entry.exit.thread.i

ice_pkg_enum_entry.exit.i178.i:                   ; preds = %if.then19.i.i176.i
  %96 = ptrtoint ptr %entry_idx.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %entry_idx.i.i160.i, align 4
  %97 = ptrtoint ptr %handler7.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handler7.i.i161.i, align 4
  %99 = ptrtoint ptr %sect_type15.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sect_type15.i.i162.i, align 4
  %101 = ptrtoint ptr %sect.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sect.i.i163.i, align 4
  %call29.i.i177.i = tail call ptr %98(i32 noundef %100, ptr noundef %102, i32 noundef 0, ptr noundef null) #16
  %tobool2.not.i.i = icmp eq ptr %call29.i.i177.i, null
  br i1 %tobool2.not.i.i, label %ice_pkg_enum_entry.exit.i178.i.ice_find_boost_entry.exit.thread.i_crit_edge, label %ice_pkg_enum_entry.exit.i178.i.land.lhs.true.i.i_crit_edge

ice_pkg_enum_entry.exit.i178.i.land.lhs.true.i.i_crit_edge: ; preds = %ice_pkg_enum_entry.exit.i178.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i.i

ice_pkg_enum_entry.exit.i178.i.ice_find_boost_entry.exit.thread.i_crit_edge: ; preds = %ice_pkg_enum_entry.exit.i178.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_boost_entry.exit.thread.i

land.lhs.true.i.i:                                ; preds = %ice_pkg_enum_entry.exit.i178.i.land.lhs.true.i.i_crit_edge, %if.end13.i.i173.i.land.lhs.true.i.i_crit_edge
  %retval.0.i6.i.i = phi ptr [ %call29.i.i177.i, %ice_pkg_enum_entry.exit.i178.i.land.lhs.true.i.i_crit_edge ], [ %call17.i.i171.i, %if.end13.i.i173.i.land.lhs.true.i.i_crit_edge ]
  %103 = ptrtoint ptr %retval.0.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %retval.0.i6.i.i, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #16
  %cmp.i.i = icmp eq i16 %105, %82
  br i1 %cmp.i.i, label %if.then70.i, label %land.lhs.true.i.i.do.body.i.i_crit_edge

land.lhs.true.i.i.do.body.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

ice_find_boost_entry.exit.thread.i:               ; preds = %ice_pkg_enum_entry.exit.i178.i.ice_find_boost_entry.exit.thread.i_crit_edge, %if.then19.i.i176.i.ice_find_boost_entry.exit.thread.i_crit_edge, %if.end9.i.i170.i.ice_find_boost_entry.exit.thread.i_crit_edge, %if.then.i.i167.i.ice_find_boost_entry.exit.thread.i_crit_edge
  %106 = ptrtoint ptr %boost_entry.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %boost_entry.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state.i.i) #16
  br label %for.inc91.i

if.then70.i:                                      ; preds = %land.lhs.true.i.i
  %107 = ptrtoint ptr %boost_entry.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %retval.0.i6.i.i, ptr %boost_entry.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state.i.i) #16
  %arrayidx59.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %i.1192.i
  %valid74.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %i.1192.i, i32 4
  %108 = ptrtoint ptr %valid74.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %valid74.i, align 4
  %109 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %110)
  %cmp79.i = icmp ult i32 %110, 3
  br i1 %cmp79.i, label %if.then81.i, label %if.then70.i.for.inc91.i_crit_edge

if.then70.i.for.inc91.i_crit_edge:                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc91.i

if.then81.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx87.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 58, i32 2, i32 %110
  %111 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx87.i, align 2
  %inc88.i = add i16 %112, 1
  store i16 %inc88.i, ptr %arrayidx87.i, align 2
  br label %for.inc91.i

for.inc91.i:                                      ; preds = %if.then81.i, %if.then70.i.for.inc91.i_crit_edge, %ice_find_boost_entry.exit.thread.i
  %inc92.i = add nuw nsw i32 %i.1192.i, 1
  %113 = ptrtoint ptr %count200207.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %count200207.i, align 4
  %conv53.i = zext i16 %114 to i32
  %cmp54.i = icmp ult i32 %inc92.i, %conv53.i
  br i1 %cmp54.i, label %for.inc91.i.do.body.preheader.i.i_crit_edge, label %for.inc91.i.ice_init_pkg_hints.exit_crit_edge

for.inc91.i.ice_init_pkg_hints.exit_crit_edge:    ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_init_pkg_hints.exit

for.inc91.i.do.body.preheader.i.i_crit_edge:      ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader.i.i

ice_init_pkg_hints.exit:                          ; preds = %for.inc91.i.ice_init_pkg_hints.exit_crit_edge, %while.end.i.ice_init_pkg_hints.exit_crit_edge, %if.end19.ice_init_pkg_hints.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state.i) #16
  %call20 = tail call fastcc i32 @ice_download_pkg(ptr noundef %hw, ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp = icmp eq i32 %call20, -1
  br i1 %cmp, label %do.body22, label %ice_init_pkg_hints.exit.if.end43_crit_edge

ice_init_pkg_hints.exit.if.end43_crit_edge:       ; preds = %ice_init_pkg_hints.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

do.body22:                                        ; preds = %ice_init_pkg_hints.exit
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_pkg.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg, %if.end43.thread)) #16
          to label %if.end43 [label %if.end43.thread], !srcloc !155

if.end43.thread:                                  ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr37 = getelementptr i8, ptr %hw, i32 -2960
  %115 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr37, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_pkg.__UNIQUE_ID_ddebug629, ptr noundef %dev39, ptr noundef nonnull @.str.4) #16
  br label %if.then47

if.end43:                                         ; preds = %do.body22, %ice_init_pkg_hints.exit.if.end43_crit_edge
  %117 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %if.end43.if.end54_crit_edge [
    i32 -1, label %if.end43.if.then47_crit_edge
    i32 0, label %if.end43.if.then47_crit_edge137
  ]

if.end43.if.then47_crit_edge137:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end43.if.then47_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then47:                                        ; preds = %if.end43.if.then47_crit_edge, %if.end43.if.then47_crit_edge137, %if.end43.thread
  %call48 = tail call fastcc i32 @ice_get_pkg_info(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.then47.if.end54_crit_edge

if.then47.if.end54_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  %call52 = tail call fastcc i32 @ice_get_ddp_pkg_state(ptr noundef %hw, i1 noundef zeroext %cmp)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.then47.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %state.0 = phi i32 [ %call48, %if.then47.if.end54_crit_edge ], [ %call52, %if.then50 ], [ %call20, %if.end43.if.end54_crit_edge ]
  %118 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %state.0, label %do.body59 [
    i32 0, label %if.end54.if.then56_crit_edge
    i32 -2, label %if.end54.if.then56_crit_edge138
    i32 -4, label %if.end54.if.then56_crit_edge139
  ]

if.end54.if.then56_crit_edge139:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

if.end54.if.then56_crit_edge138:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

if.end54.if.then56_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

if.then56:                                        ; preds = %if.end54.if.then56_crit_edge, %if.end54.if.then56_crit_edge138, %if.end54.if.then56_crit_edge139
  %seg57 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %119 = ptrtoint ptr %seg57 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %24, ptr %seg57, align 4
  tail call fastcc void @ice_init_pkg_regs(ptr noundef %hw)
  tail call void @ice_fill_blk_tbls(ptr noundef %hw)
  tail call fastcc void @ice_fill_hw_ptype(ptr noundef %hw)
  tail call fastcc void @ice_get_prof_index_max(ptr noundef %hw)
  br label %cleanup

do.body59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_pkg.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg, %if.then71)) #16
          to label %cleanup [label %if.then71], !srcloc !155

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr74 = getelementptr i8, ptr %hw, i32 -2960
  %120 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr74, align 8
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_pkg.__UNIQUE_ID_ddebug630, ptr noundef %dev76, ptr noundef nonnull @.str.5, i32 noundef %state.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.body59, %if.then56, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -6, %if.then8 ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %state.0, %if.then71 ], [ %state.0, %if.then56 ], [ -6, %do.body ], [ %state.0, %do.body59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_init_pkg_info(ptr nocapture noundef %hw, ptr noundef %pkg_hdr) unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.ice_pkg_enum, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pkg_hdr, null
  br i1 %tobool.not, label %entry.cleanup105_crit_edge, label %if.end

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup105

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_find_seg_in_pkg.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg_info, %if.then.i)) #16
          to label %do.end.i [label %if.then.i], !srcloc !155

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %pkg_hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pkg_hdr, align 4
  %conv.i = zext i8 %3 to i32
  %minor.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %pkg_hdr, i32 0, i32 1
  %4 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minor.i, align 1
  %conv5.i = zext i8 %5 to i32
  %update.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %pkg_hdr, i32 0, i32 2
  %6 = ptrtoint ptr %update.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %update.i, align 2
  %conv7.i = zext i8 %7 to i32
  %draft.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %pkg_hdr, i32 0, i32 3
  %8 = ptrtoint ptr %draft.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %draft.i, align 1
  %conv9.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_find_seg_in_pkg.__UNIQUE_ID_ddebug614, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %seg_count.i = getelementptr inbounds %struct.ice_pkg_hdr, ptr %pkg_hdr, i32 0, i32 1
  %10 = ptrtoint ptr %seg_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.not.i = icmp eq i32 %11, 0
  br i1 %cmp4.not.i, label %do.end.i.do.body83_crit_edge, label %for.body.preheader.i

do.end.i.do.body83_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body83

for.body.preheader.i:                             ; preds = %do.end.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #16
  %umax.i = tail call i32 @llvm.umax.i32(i32 %12, i32 1) #16
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.cond.i.do.body83_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.do.body83_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body83

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.05.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.ice_pkg_hdr, ptr %pkg_hdr, i32 0, i32 2, i32 %i.05.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #16
  %add.ptr11.i = getelementptr i8, ptr %pkg_hdr, i32 %15
  %16 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %17)
  %cmp13.i = icmp eq i32 %17, 268435456
  br i1 %cmp13.i, label %ice_find_seg_in_pkg.exit, label %for.cond.i

ice_find_seg_in_pkg.exit:                         ; preds = %for.body.i
  %add.ptr11.i.le = getelementptr i8, ptr %pkg_hdr, i32 %15
  %tobool1.not = icmp eq ptr %add.ptr11.i.le, null
  br i1 %tobool1.not, label %ice_find_seg_in_pkg.exit.do.body83_crit_edge, label %if.then2

ice_find_seg_in_pkg.exit.do.body83_crit_edge:     ; preds = %ice_find_seg_in_pkg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body83

if.then2:                                         ; preds = %ice_find_seg_in_pkg.exit
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state) #16
  %18 = call ptr @memset(ptr %state, i32 0, i32 36)
  %call3 = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %add.ptr11.i.le, ptr noundef nonnull %state, i32 noundef 1)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %if.end13

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg_info, %if.then10)) #16
          to label %cleanup [label %if.then10], !srcloc !155

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_pkg_info.__UNIQUE_ID_ddebug620, ptr noundef %dev, ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end13:                                         ; preds = %if.then2
  %pkg_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 50
  %21 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call3, align 4
  %23 = ptrtoint ptr %pkg_ver to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %pkg_ver, align 1
  %pkg_name = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 51
  %name = getelementptr inbounds %struct.ice_meta_sect, ptr %call3, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %pkg_name, ptr %name, i32 28)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg_info, %if.then27)) #16
          to label %do.end44 [label %if.then27], !srcloc !155

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr30 = getelementptr i8, ptr %hw, i32 -2960
  %25 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr30, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call3, align 4
  %conv = zext i8 %28 to i32
  %minor = getelementptr inbounds %struct.ice_pkg_ver, ptr %call3, i32 0, i32 1
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %minor, align 1
  %conv35 = zext i8 %30 to i32
  %update = getelementptr inbounds %struct.ice_pkg_ver, ptr %call3, i32 0, i32 2
  %31 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %update, align 2
  %conv37 = zext i8 %32 to i32
  %draft = getelementptr inbounds %struct.ice_pkg_ver, ptr %call3, i32 0, i32 3
  %33 = ptrtoint ptr %draft to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %draft, align 1
  %conv39 = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_pkg_info.__UNIQUE_ID_ddebug621, ptr noundef %dev32, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv39, ptr noundef %name) #16
  br label %do.end44

do.end44:                                         ; preds = %if.then27, %if.end13
  %ice_seg_fmt_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 52
  %seg_format_ver = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %add.ptr11.i.le, i32 0, i32 1
  %35 = ptrtoint ptr %seg_format_ver to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seg_format_ver, align 4
  %37 = ptrtoint ptr %ice_seg_fmt_ver to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %ice_seg_fmt_ver, align 1
  %ice_seg_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 53
  %seg_id = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %add.ptr11.i.le, i32 0, i32 3
  %38 = call ptr @memcpy(ptr %ice_seg_id, ptr %seg_id, i32 28)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg_info, %if.then59)) #16
          to label %cleanup [label %if.then59], !srcloc !155

if.then59:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr62 = getelementptr i8, ptr %hw, i32 -2960
  %39 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr62, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %seg_format_ver to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %seg_format_ver, align 4
  %conv67 = zext i8 %42 to i32
  %minor69 = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %add.ptr11.i.le, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %minor69 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %minor69, align 1
  %conv70 = zext i8 %44 to i32
  %update72 = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %add.ptr11.i.le, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %update72 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %update72, align 2
  %conv73 = zext i8 %46 to i32
  %draft75 = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %add.ptr11.i.le, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %draft75 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %draft75, align 1
  %conv76 = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_pkg_info.__UNIQUE_ID_ddebug622, ptr noundef %dev64, ptr noundef nonnull @.str.14, i32 noundef %conv67, i32 noundef %conv70, i32 noundef %conv73, i32 noundef %conv76, ptr noundef %seg_id) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.end44, %if.then10, %do.body
  %spec.select = phi i32 [ 0, %do.end44 ], [ -6, %do.body ], [ 0, %if.then59 ], [ -6, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state) #16
  br label %cleanup105

do.body83:                                        ; preds = %ice_find_seg_in_pkg.exit.do.body83_crit_edge, %for.cond.i.do.body83_crit_edge, %do.end.i.do.body83_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_pkg_info, %if.then95)) #16
          to label %cleanup105 [label %if.then95], !srcloc !155

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr98 = getelementptr i8, ptr %hw, i32 -2960
  %49 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr98, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_pkg_info.__UNIQUE_ID_ddebug623, ptr noundef %dev100, ptr noundef nonnull @.str.15) #16
  br label %cleanup105

cleanup105:                                       ; preds = %if.then95, %do.body83, %cleanup, %entry.cleanup105_crit_edge
  %retval.1 = phi i32 [ -12, %entry.cleanup105_crit_edge ], [ -6, %if.then95 ], [ %spec.select, %cleanup ], [ -6, %do.body83 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_chk_pkg_compat(ptr noundef %hw, ptr noundef %ospkg, ptr nocapture noundef %seg) unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pkg_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 50
  %0 = ptrtoint ptr %pkg_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkg_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp ugt i8 %1, 1
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %lor.lhs.false.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp4.i = icmp eq i8 %1, 1
  br i1 %cmp4.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %minor.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 50, i32 1
  %2 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp7.i = icmp ugt i8 %3, 3
  br i1 %cmp7.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true18.i

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp21.i.not = icmp eq i8 %3, 3
  br i1 %cmp21.i.not, label %if.end7, label %land.lhs.true18.i.do.body_crit_edge

land.lhs.true18.i.do.body_crit_edge:              ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %land.lhs.true18.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %entry.do.body_crit_edge
  %retval.0.i117.ph = phi i32 [ -8, %lor.lhs.false.i.do.body_crit_edge ], [ -7, %entry.do.body_crit_edge ], [ -7, %land.lhs.true.i.do.body_crit_edge ], [ -8, %land.lhs.true18.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_chk_pkg_compat.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_chk_pkg_compat, %if.then5)) #16
          to label %cleanup [label %if.then5], !srcloc !155

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_chk_pkg_compat.__UNIQUE_ID_ddebug625, ptr noundef %dev, ptr noundef nonnull @.str.19) #16
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true18.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_find_seg_in_pkg.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_chk_pkg_compat, %if.then.i)) #16
          to label %do.end.i [label %if.then.i], !srcloc !155

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %ospkg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ospkg, align 4
  %conv.i = zext i8 %9 to i32
  %minor.i118 = getelementptr inbounds %struct.ice_pkg_ver, ptr %ospkg, i32 0, i32 1
  %10 = ptrtoint ptr %minor.i118 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %minor.i118, align 1
  %conv5.i = zext i8 %11 to i32
  %update.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %ospkg, i32 0, i32 2
  %12 = ptrtoint ptr %update.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %update.i, align 2
  %conv7.i = zext i8 %13 to i32
  %draft.i = getelementptr inbounds %struct.ice_pkg_ver, ptr %ospkg, i32 0, i32 3
  %14 = ptrtoint ptr %draft.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %draft.i, align 1
  %conv9.i = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_find_seg_in_pkg.__UNIQUE_ID_ddebug614, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end7
  %seg_count.i = getelementptr inbounds %struct.ice_pkg_hdr, ptr %ospkg, i32 0, i32 1
  %16 = ptrtoint ptr %seg_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.not.i = icmp eq i32 %17, 0
  br i1 %cmp4.not.i, label %do.end.i.ice_find_seg_in_pkg.exit.thread_crit_edge, label %for.body.preheader.i

do.end.i.ice_find_seg_in_pkg.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_seg_in_pkg.exit.thread

for.body.preheader.i:                             ; preds = %do.end.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #16
  %umax.i = tail call i32 @llvm.umax.i32(i32 %18, i32 1) #16
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.cond.i.ice_find_seg_in_pkg.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.ice_find_seg_in_pkg.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_seg_in_pkg.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.05.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.ice_pkg_hdr, ptr %ospkg, i32 0, i32 2, i32 %i.05.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #16
  %add.ptr11.i = getelementptr i8, ptr %ospkg, i32 %21
  %22 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %23)
  %cmp13.i = icmp eq i32 %23, 268435456
  br i1 %cmp13.i, label %ice_find_seg_in_pkg.exit, label %for.cond.i

ice_find_seg_in_pkg.exit.thread:                  ; preds = %for.cond.i.ice_find_seg_in_pkg.exit.thread_crit_edge, %do.end.i.ice_find_seg_in_pkg.exit.thread_crit_edge
  %24 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %seg, align 4
  br label %do.body11

ice_find_seg_in_pkg.exit:                         ; preds = %for.body.i
  %add.ptr11.i.le = getelementptr i8, ptr %ospkg, i32 %21
  %25 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr11.i.le, ptr %seg, align 4
  %tobool9.not = icmp eq ptr %add.ptr11.i.le, null
  br i1 %tobool9.not, label %ice_find_seg_in_pkg.exit.do.body11_crit_edge, label %kzalloc.exit

ice_find_seg_in_pkg.exit.do.body11_crit_edge:     ; preds = %ice_find_seg_in_pkg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body11

do.body11:                                        ; preds = %ice_find_seg_in_pkg.exit.do.body11_crit_edge, %ice_find_seg_in_pkg.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_chk_pkg_compat.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_chk_pkg_compat, %if.then23)) #16
          to label %cleanup [label %if.then23], !srcloc !155

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr26 = getelementptr i8, ptr %hw, i32 -2960
  %26 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr26, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_chk_pkg_compat.__UNIQUE_ID_ddebug626, ptr noundef %dev28, ptr noundef nonnull @.str.20) #16
  br label %cleanup

kzalloc.exit:                                     ; preds = %ice_find_seg_in_pkg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 164) #19
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end38

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end38:                                         ; preds = %kzalloc.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #16
  %29 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 3139) #16
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 164, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %for.cond.preheader, label %if.end38.fw_ddp_compat_free_alloc_crit_edge

if.end38.fw_ddp_compat_free_alloc_crit_edge:      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_ddp_compat_free_alloc

for.cond.preheader:                               ; preds = %if.end38
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp128.not = icmp eq i32 %31, 0
  br i1 %cmp128.not, label %for.cond.preheader.fw_ddp_compat_free_alloc_crit_edge, label %for.body.preheader

for.cond.preheader.fw_ddp_compat_free_alloc_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_ddp_compat_free_alloc

for.body.preheader:                               ; preds = %for.cond.preheader
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %umax = call i32 @llvm.umax.i32(i32 %32, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0129 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %is_in_nvm = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0129, i32 3
  %33 = ptrtoint ptr %is_in_nvm to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_in_nvm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool44.not = icmp eq i8 %34, 0
  br i1 %tobool44.not, label %for.inc, label %if.end46

if.end46:                                         ; preds = %for.body
  %arrayidx.le = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0129
  %35 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %seg, align 4
  %seg_format_ver = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %seg_format_ver to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %seg_format_ver, align 4
  %39 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.le, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp52.not = icmp eq i8 %38, %40
  br i1 %cmp52.not, label %lor.lhs.false, label %if.end46.if.then64_crit_edge

if.end46.if.then64_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then64

lor.lhs.false:                                    ; preds = %if.end46
  %minor = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %36, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %minor, align 1
  %minor60 = getelementptr inbounds %struct.ice_pkg_ver, ptr %arrayidx.le, i32 0, i32 1
  %43 = ptrtoint ptr %minor60 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %minor60, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp62 = icmp ugt i8 %42, %44
  br i1 %cmp62, label %lor.lhs.false.if.then64_crit_edge, label %lor.lhs.false.fw_ddp_compat_free_alloc_crit_edge

lor.lhs.false.fw_ddp_compat_free_alloc_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_ddp_compat_free_alloc

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false.if.then64_crit_edge, %if.end46.if.then64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_chk_pkg_compat.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_chk_pkg_compat, %if.then77)) #16
          to label %fw_ddp_compat_free_alloc [label %if.then77], !srcloc !155

if.then77:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr80 = getelementptr i8, ptr %hw, i32 -2960
  %45 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr80, align 8
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_chk_pkg_compat.__UNIQUE_ID_ddebug627, ptr noundef %dev82, ptr noundef nonnull @.str.21) #16
  br label %fw_ddp_compat_free_alloc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.fw_ddp_compat_free_alloc_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.fw_ddp_compat_free_alloc_crit_edge:       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_ddp_compat_free_alloc

fw_ddp_compat_free_alloc:                         ; preds = %for.inc.fw_ddp_compat_free_alloc_crit_edge, %if.then77, %if.then64, %lor.lhs.false.fw_ddp_compat_free_alloc_crit_edge, %for.cond.preheader.fw_ddp_compat_free_alloc_crit_edge, %if.end38.fw_ddp_compat_free_alloc_crit_edge
  %state.0 = phi i32 [ -5, %if.then77 ], [ 0, %lor.lhs.false.fw_ddp_compat_free_alloc_crit_edge ], [ -11, %if.end38.fw_ddp_compat_free_alloc_crit_edge ], [ -5, %if.then64 ], [ 0, %for.cond.preheader.fw_ddp_compat_free_alloc_crit_edge ], [ 0, %for.inc.fw_ddp_compat_free_alloc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %fw_ddp_compat_free_alloc, %kzalloc.exit.cleanup_crit_edge, %if.then23, %do.body11, %if.then5, %do.body
  %retval.0 = phi i32 [ %state.0, %fw_ddp_compat_free_alloc ], [ %retval.0.i117.ph, %if.then5 ], [ -6, %if.then23 ], [ -12, %kzalloc.exit.cleanup_crit_edge ], [ %retval.0.i117.ph, %do.body ], [ -6, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_download_pkg(ptr noundef %hw, ptr noundef %ice_seg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_download_pkg.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_download_pkg, %if.then)) #16
          to label %do.body13 [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %seg_format_ver = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %ice_seg, i32 0, i32 1
  %2 = ptrtoint ptr %seg_format_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seg_format_ver, align 4
  %conv = zext i8 %3 to i32
  %minor = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %ice_seg, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minor, align 1
  %conv6 = zext i8 %5 to i32
  %update = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %ice_seg, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %update, align 2
  %conv9 = zext i8 %7 to i32
  %draft = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %ice_seg, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %draft to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %draft, align 1
  %conv12 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_download_pkg.__UNIQUE_ID_ddebug617, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12) #16
  br label %do.body13

do.body13:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_download_pkg.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_download_pkg, %if.then25)) #16
          to label %do.end36 [label %if.then25], !srcloc !155

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr28 = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr28, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %ice_seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ice_seg, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %seg_size = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %ice_seg, i32 0, i32 2
  %15 = ptrtoint ptr %seg_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seg_size, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %seg_id = getelementptr inbounds %struct.ice_generic_seg_hdr, ptr %ice_seg, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_download_pkg.__UNIQUE_ID_ddebug618, ptr noundef %dev30, ptr noundef nonnull @.str.27, i32 noundef %14, i32 noundef %17, ptr noundef %seg_id) #16
  br label %do.end36

do.end36:                                         ; preds = %if.then25, %do.body13
  %device_table.i = getelementptr inbounds %struct.ice_seg, ptr %ice_seg, i32 0, i32 2
  %device_table_count.i = getelementptr inbounds %struct.ice_seg, ptr %ice_seg, i32 0, i32 1
  %18 = ptrtoint ptr %device_table_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_table_count.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  %add.ptr.i = getelementptr %struct.ice_device_id_entry, ptr %device_table.i, i32 %20
  %vers.i = getelementptr inbounds %struct.ice_nvm_table, ptr %add.ptr.i, i32 0, i32 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #16
  %add.ptr2.i = getelementptr i32, ptr %vers.i, i32 %23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_download_pkg.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_download_pkg, %if.then50)) #16
          to label %do.end58 [label %if.then50], !srcloc !155

if.then50:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr53 = getelementptr i8, ptr %hw, i32 -2960
  %24 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr53, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr2.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_download_pkg.__UNIQUE_ID_ddebug619, ptr noundef %dev55, ptr noundef nonnull @.str.28, i32 noundef %28) #16
  br label %do.end58

do.end58:                                         ; preds = %if.then50, %do.end36
  %buf_array = getelementptr inbounds %struct.ice_buf_table, ptr %add.ptr2.i, i32 0, i32 1
  %29 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr2.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %call61 = tail call fastcc i32 @ice_dwnld_cfg_bufs(ptr noundef %hw, ptr noundef %buf_array, i32 noundef %31)
  ret i32 %call61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_pkg_info(ptr noundef %hw) unnamed_addr #1 align 64 {
kzalloc.exit:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  %flags = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #16
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 3139) #16
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 164, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.init_pkg_free_alloc_crit_edge

if.end.init_pkg_free_alloc_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_pkg_free_alloc

for.cond.preheader:                               ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp120.not = icmp eq i32 %3, 0
  br i1 %cmp120.not, label %for.cond.preheader.init_pkg_free_alloc_crit_edge, label %for.body.lr.ph

for.cond.preheader.init_pkg_free_alloc_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_pkg_free_alloc

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %active_pkg_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 46
  %active_track_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 47
  %active_pkg_name = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 48
  %active_pkg_in_nvm = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 49
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc75, %do.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %flags) #16
  %4 = call ptr @memset(ptr %flags, i32 0, i32 5)
  %arrayidx = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121
  %is_active = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 4
  %5 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %for.body.if.end21_crit_edge, label %if.then10

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 65, ptr %flags, align 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %active_pkg_ver to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %active_pkg_ver, align 4
  %track_id = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 2
  %11 = ptrtoint ptr %track_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %track_id, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %active_track_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %active_track_id, align 8
  %name = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 1
  %15 = call ptr @memcpy(ptr %active_pkg_name, ptr %name, i32 28)
  %is_in_nvm = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 3
  %16 = ptrtoint ptr %is_in_nvm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_in_nvm, align 8
  %18 = ptrtoint ptr %active_pkg_in_nvm to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %active_pkg_in_nvm, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %for.body.if.end21_crit_edge
  %place.0 = phi i8 [ 1, %if.then10 ], [ 0, %for.body.if.end21_crit_edge ]
  %is_active_at_boot = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 5
  %19 = ptrtoint ptr %is_active_at_boot to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_active_at_boot, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not = icmp eq i8 %20, 0
  br i1 %tobool24.not, label %if.end21.if.end29_crit_edge, label %if.then25

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %inc26 = add nuw nsw i8 %place.0, 1
  %idxprom27 = zext i8 %place.0 to i32
  %arrayidx28 = getelementptr [5 x i8], ptr %flags, i32 0, i32 %idxprom27
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 66, ptr %arrayidx28, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end21.if.end29_crit_edge
  %place.1 = phi i8 [ %inc26, %if.then25 ], [ %place.0, %if.end21.if.end29_crit_edge ]
  %is_modified = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 6
  %22 = ptrtoint ptr %is_modified to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_modified, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  br i1 %tobool32.not, label %if.end29.if.end37_crit_edge, label %if.then33

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %inc34 = add nuw nsw i8 %place.1, 1
  %idxprom35 = zext i8 %place.1 to i32
  %arrayidx36 = getelementptr [5 x i8], ptr %flags, i32 0, i32 %idxprom35
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 77, ptr %arrayidx36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end29.if.end37_crit_edge
  %place.2 = phi i8 [ %inc34, %if.then33 ], [ %place.1, %if.end29.if.end37_crit_edge ]
  %is_in_nvm40 = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 3
  %25 = ptrtoint ptr %is_in_nvm40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_in_nvm40, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool41.not = icmp eq i8 %26, 0
  br i1 %tobool41.not, label %if.end37.do.body_crit_edge, label %if.then42

if.end37.do.body_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom44 = zext i8 %place.2 to i32
  %arrayidx45 = getelementptr [5 x i8], ptr %flags, i32 0, i32 %idxprom44
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 78, ptr %arrayidx45, align 1
  br label %do.body

do.body:                                          ; preds = %if.then42, %if.end37.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_pkg_info.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_pkg_info, %if.then51)) #16
          to label %do.end [label %if.then51], !srcloc !155

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 4
  %conv56 = zext i8 %31 to i32
  %minor = getelementptr inbounds %struct.ice_pkg_ver, ptr %arrayidx, i32 0, i32 1
  %32 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %minor, align 1
  %conv60 = zext i8 %33 to i32
  %update = getelementptr inbounds %struct.ice_pkg_ver, ptr %arrayidx, i32 0, i32 2
  %34 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %update, align 2
  %conv64 = zext i8 %35 to i32
  %draft = getelementptr inbounds %struct.ice_pkg_ver, ptr %arrayidx, i32 0, i32 3
  %36 = ptrtoint ptr %draft to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %draft, align 1
  %conv68 = zext i8 %37 to i32
  %name71 = getelementptr %struct.ice_aqc_get_pkg_info_resp, ptr %call7.i.i, i32 0, i32 1, i32 %i.0121, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_pkg_info.__UNIQUE_ID_ddebug624, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %i.0121, i32 noundef %conv56, i32 noundef %conv60, i32 noundef %conv64, i32 noundef %conv68, ptr noundef %name71, ptr noundef nonnull %flags) #16
  br label %do.end

do.end:                                           ; preds = %if.then51, %do.body
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %flags) #16
  %inc75 = add nuw i32 %i.0121, 1
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call7.i.i, align 8
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %cmp = icmp ult i32 %inc75, %40
  br i1 %cmp, label %do.end.for.body_crit_edge, label %do.end.init_pkg_free_alloc_crit_edge

do.end.init_pkg_free_alloc_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_pkg_free_alloc

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

init_pkg_free_alloc:                              ; preds = %do.end.init_pkg_free_alloc_crit_edge, %for.cond.preheader.init_pkg_free_alloc_crit_edge, %if.end.init_pkg_free_alloc_crit_edge
  %state.0 = phi i32 [ -12, %if.end.init_pkg_free_alloc_crit_edge ], [ 0, %for.cond.preheader.init_pkg_free_alloc_crit_edge ], [ 0, %do.end.init_pkg_free_alloc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %init_pkg_free_alloc, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %state.0, %init_pkg_free_alloc ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ice_get_ddp_pkg_state(ptr nocapture noundef readonly %hw, i1 noundef zeroext %already_loaded) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pkg_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 50
  %0 = ptrtoint ptr %pkg_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkg_ver, align 1
  %active_pkg_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 46
  %2 = ptrtoint ptr %active_pkg_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_pkg_ver, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.else31_crit_edge

entry.if.else31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else31

land.lhs.true:                                    ; preds = %entry
  %minor = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 50, i32 1
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minor, align 1
  %minor7 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 46, i32 1
  %6 = ptrtoint ptr %minor7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp9 = icmp eq i8 %5, %7
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.else31_crit_edge

land.lhs.true.if.else31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else31

land.lhs.true11:                                  ; preds = %land.lhs.true
  %update = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 50, i32 2
  %8 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %update, align 1
  %update15 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %update15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %update15, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp17 = icmp eq i8 %9, %11
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true11.if.else31_crit_edge

land.lhs.true11.if.else31_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else31

land.lhs.true19:                                  ; preds = %land.lhs.true11
  %draft = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 50, i32 3
  %12 = ptrtoint ptr %draft to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %draft, align 1
  %draft23 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 46, i32 3
  %14 = ptrtoint ptr %draft23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %draft23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp25 = icmp eq i8 %13, %15
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true19.if.else31_crit_edge

land.lhs.true19.if.else31_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else31

land.lhs.true27:                                  ; preds = %land.lhs.true19
  %pkg_name = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 51
  %active_pkg_name = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 48
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(32) %pkg_name, ptr noundef dereferenceable(32) %active_pkg_name, i32 32) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true27.if.else31_crit_edge

land.lhs.true27.if.else31_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else31

if.then:                                          ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  %. = select i1 %already_loaded, i32 -2, i32 0
  br label %return

if.else31:                                        ; preds = %land.lhs.true27.if.else31_crit_edge, %land.lhs.true19.if.else31_crit_edge, %land.lhs.true11.if.else31_crit_edge, %land.lhs.true.if.else31_crit_edge, %entry.if.else31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp35.not = icmp eq i8 %3, 1
  br i1 %cmp35.not, label %lor.lhs.false, label %if.else31.return_crit_edge

if.else31.return_crit_edge:                       ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #18
  %minor38 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 46, i32 1
  %16 = ptrtoint ptr %minor38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %minor38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp40.not = icmp eq i8 %17, 3
  %spec.select = select i1 %cmp40.not, i32 -4, i32 -3
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.else31.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ -3, %if.else31.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_init_pkg_successful(i32 noundef %state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %state, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  %1 = and i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.idx.cast.not = icmp eq i32 %1, 0
  %retval.0 = select i1 %0, i1 %switch.idx.cast.not, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_init_pkg_regs(ptr nocapture noundef readonly %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !156
  tail call void @arm_heavy_mb() #16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 2158844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #16, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !158
  tail call void @arm_heavy_mb() #16
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 2158856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -65536) #16, !srcloc !157
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fill_blk_tbls(ptr nocapture noundef readonly %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %sid = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 0, i32 3
  %0 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sid, align 4
  tail call fastcc void @ice_fill_tbl(ptr noundef %hw, i32 noundef %indvars.iv, i32 noundef %1)
  %sid5 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1, i32 3
  %2 = ptrtoint ptr %sid5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sid5, align 4
  tail call fastcc void @ice_fill_tbl(ptr noundef %hw, i32 noundef %indvars.iv, i32 noundef %3)
  %prof = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 2
  %4 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prof, align 4
  tail call fastcc void @ice_fill_tbl(ptr noundef %hw, i32 noundef %indvars.iv, i32 noundef %5)
  %sid11 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 3, i32 1
  %6 = ptrtoint ptr %sid11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sid11, align 4
  tail call fastcc void @ice_fill_tbl(ptr noundef %hw, i32 noundef %indvars.iv, i32 noundef %7)
  %es = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4
  %8 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %es, align 4
  tail call fastcc void @ice_fill_tbl(ptr noundef %hw, i32 noundef %indvars.iv, i32 noundef %9)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.body.for.body.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %ice_init_sw_xlt2_db.exit.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %ice_init_sw_xlt2_db.exit.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv.i
  %count.i.i = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp27.not.i.i = icmp eq i16 %11, 0
  br i1 %cmp27.not.i.i, label %for.body.i.ice_init_sw_xlt1_db.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.ice_init_sw_xlt1_db.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_init_sw_xlt1_db.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %t.i.i = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx.i.i, i32 0, i32 2
  %ptypes.i.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv.i, i32 0, i32 1
  %ptypes.i4.i.i.i = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t.i.i, align 4
  %arrayidx7.i.i = getelementptr i8, ptr %13, i32 %indvars.iv.i.i
  %14 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp9.not.i.i = icmp eq i8 %15, 0
  br i1 %cmp9.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %idxprom.i.i.i = zext i8 %15 to i32
  %in_use.i.i.i = getelementptr %struct.ice_ptg_entry, ptr %17, i32 %idxprom.i.i.i, i32 1
  %18 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %in_use.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %indvars.iv.i.i)
  %cmp.i.i.i = icmp ugt i32 %indvars.iv.i.i, 1023
  br i1 %cmp.i.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %in_use.i24.i.i = getelementptr %struct.ice_ptg_entry, ptr %20, i32 %idxprom.i.i.i, i32 1
  %21 = ptrtoint ptr %in_use.i24.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %in_use.i24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.not.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge, label %if.end11.i.i.i

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  %23 = ptrtoint ptr %ptypes.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptypes.i.i.i.i, align 4
  %ptg4.i.i.i.i = getelementptr %struct.ice_ptg_ptype, ptr %24, i32 %indvars.iv.i.i, i32 1
  %25 = ptrtoint ptr %ptg4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ptg4.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %15)
  %cmp14.i.i.i = icmp eq i8 %26, %15
  br i1 %cmp14.i.i.i, label %if.end11.i.i.i.if.end.i.i_crit_edge, label %if.end17.i.i.i

if.end11.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end17.i.i.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp19.not.i.i.i = icmp eq i8 %26, 0
  br i1 %cmp19.not.i.i.i, label %if.end17.i.i.i.if.end28.i.i.i_crit_edge, label %if.end.i3.i.i.i

if.end17.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i.i.i

if.end.i3.i.i.i:                                  ; preds = %if.end17.i.i.i
  %idxprom.i.i.i.i = zext i8 %26 to i32
  %in_use.i.i.i.i = getelementptr %struct.ice_ptg_entry, ptr %20, i32 %idxprom.i.i.i.i, i32 1
  %27 = ptrtoint ptr %in_use.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %in_use.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i3.i.i.i.if.end28.i.i.i_crit_edge, label %if.end5.i.i.i.i

if.end.i3.i.i.i.if.end28.i.i.i_crit_edge:         ; preds = %if.end.i3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i3.i.i.i
  %arrayidx3.i.i.i.i = getelementptr %struct.ice_ptg_entry, ptr %20, i32 %idxprom.i.i.i.i
  %29 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx3.i.i.i.i, align 4
  %tobool12.not.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool12.not.i.i.i.i, label %if.end5.i.i.i.i.if.end28.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i

if.end5.i.i.i.i.if.end28.i.i.i_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %if.end5.i.i.i.i
  %31 = ptrtoint ptr %ptypes.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptypes.i4.i.i.i, align 4
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.lhs.cast.i7.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i8.i.i.i = sub i32 %sub.ptr.lhs.cast.i7.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i9.i.i.i = ashr exact i32 %sub.ptr.sub.i8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i9.i.i.i, i32 %indvars.iv.i.i)
  %cmp34.i10.i.i.i = icmp eq i32 %sub.ptr.div.i9.i.i.i, %indvars.iv.i.i
  br i1 %cmp34.i10.i.i.i, label %while.cond.preheader.i.i.i.i.if.then36.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.if.end37.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.i.if.end37.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  br label %if.end37.i.i.i.i

while.cond.preheader.i.i.i.i.if.then36.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end37.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i.i, 3
  %cmp34.i.i.i.i = icmp eq i32 %sub.ptr.div.i.i.i.i, %indvars.iv.i.i
  br i1 %cmp34.i.i.i.i, label %while.body.i.i.i.i.if.then36.i.i.i.i_crit_edge, label %while.body.i.i.i.i.if.end37.i.i.i.i_crit_edge

while.body.i.i.i.i.if.end37.i.i.i.i_crit_edge:    ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i.i.i.i

while.body.i.i.i.i.if.then36.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36.i.i.i.i

if.then36.i.i.i.i:                                ; preds = %while.body.i.i.i.i.if.then36.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.if.then36.i.i.i.i_crit_edge
  %p.05.i.lcssa.i.i.i = phi ptr [ %30, %while.cond.preheader.i.i.i.i.if.then36.i.i.i.i_crit_edge ], [ %37, %while.body.i.i.i.i.if.then36.i.i.i.i_crit_edge ]
  %ch.04.i.lcssa.i.i.i = phi ptr [ %arrayidx3.i.i.i.i, %while.cond.preheader.i.i.i.i.if.then36.i.i.i.i_crit_edge ], [ %p.05.i11.i.i.i, %while.body.i.i.i.i.if.then36.i.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %p.05.i.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p.05.i.lcssa.i.i.i, align 4
  %35 = ptrtoint ptr %ch.04.i.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %ch.04.i.lcssa.i.i.i, align 4
  br label %while.end.i.i.i.i

if.end37.i.i.i.i:                                 ; preds = %while.body.i.i.i.i.if.end37.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.if.end37.i.i.i.i_crit_edge
  %p.05.i11.i.i.i = phi ptr [ %37, %while.body.i.i.i.i.if.end37.i.i.i.i_crit_edge ], [ %30, %while.cond.preheader.i.i.i.i.if.end37.i.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %p.05.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p.05.i11.i.i.i, align 4
  %tobool29.not.i.i.i.i = icmp eq ptr %37, null
  br i1 %tobool29.not.i.i.i.i, label %if.end37.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.body.i.i.i.i

if.end37.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %if.end37.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %if.end37.i.i.i.i.while.end.i.i.i.i_crit_edge, %if.then36.i.i.i.i
  %38 = ptrtoint ptr %ptypes.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptypes.i4.i.i.i, align 4
  %ptg46.i.i.i.i = getelementptr %struct.ice_ptg_ptype, ptr %39, i32 %indvars.iv.i.i, i32 1
  %40 = ptrtoint ptr %ptg46.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ptg46.i.i.i.i, align 4
  %41 = load ptr, ptr %ptypes.i4.i.i.i, align 4
  %arrayidx52.i.i.i.i = getelementptr %struct.ice_ptg_ptype, ptr %41, i32 %indvars.iv.i.i
  %42 = ptrtoint ptr %arrayidx52.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx52.i.i.i.i, align 4
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %while.end.i.i.i.i, %if.end5.i.i.i.i.if.end28.i.i.i_crit_edge, %if.end.i3.i.i.i.if.end28.i.i.i_crit_edge, %if.end17.i.i.i.if.end28.i.i.i_crit_edge
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx34.i.i.i = getelementptr %struct.ice_ptg_entry, ptr %44, i32 %idxprom.i.i.i
  %45 = ptrtoint ptr %arrayidx34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx34.i.i.i, align 4
  %47 = ptrtoint ptr %ptypes.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptypes.i4.i.i.i, align 4
  %arrayidx39.i.i.i = getelementptr %struct.ice_ptg_ptype, ptr %48, i32 %indvars.iv.i.i
  %49 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %arrayidx39.i.i.i, align 4
  %50 = load ptr, ptr %ptypes.i4.i.i.i, align 4
  %arrayidx45.i.i.i = getelementptr %struct.ice_ptg_ptype, ptr %50, i32 %indvars.iv.i.i
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx51.i.i.i = getelementptr %struct.ice_ptg_entry, ptr %51, i32 %idxprom.i.i.i
  %52 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx45.i.i.i, ptr %arrayidx51.i.i.i, align 4
  %53 = load ptr, ptr %ptypes.i4.i.i.i, align 4
  %ptg59.i.i.i = getelementptr %struct.ice_ptg_ptype, ptr %53, i32 %indvars.iv.i.i, i32 1
  %54 = ptrtoint ptr %ptg59.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %15, ptr %ptg59.i.i.i, align 4
  %55 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %t.i.i, align 4
  %arrayidx64.i.i.i = getelementptr i8, ptr %56, i32 %indvars.iv.i.i
  %57 = ptrtoint ptr %arrayidx64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %15, ptr %arrayidx64.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end28.i.i.i, %if.end11.i.i.i.if.end.i.i_crit_edge, %if.end.i.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %58 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %count.i.i, align 4
  %60 = zext i16 %59 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %60
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.ice_init_sw_xlt1_db.exit.i_crit_edge

if.end.i.i.ice_init_sw_xlt1_db.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_init_sw_xlt1_db.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

ice_init_sw_xlt1_db.exit.i:                       ; preds = %if.end.i.i.ice_init_sw_xlt1_db.exit.i_crit_edge, %for.body.i.ice_init_sw_xlt1_db.exit.i_crit_edge
  %count.i8.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv.i, i32 1, i32 4
  %61 = ptrtoint ptr %count.i8.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %count.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp28.not.i.i = icmp eq i16 %62, 0
  br i1 %cmp28.not.i.i, label %ice_init_sw_xlt1_db.exit.i.ice_init_sw_xlt2_db.exit.i_crit_edge, label %for.body.lr.ph.i10.i

ice_init_sw_xlt1_db.exit.i.ice_init_sw_xlt2_db.exit.i_crit_edge: ; preds = %ice_init_sw_xlt1_db.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_init_sw_xlt2_db.exit.i

for.body.lr.ph.i10.i:                             ; preds = %ice_init_sw_xlt1_db.exit.i
  %t.i9.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv.i, i32 1, i32 2
  %xlt2.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv.i, i32 1
  %vsis.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv.i, i32 1, i32 1
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %if.end.i19.i.for.body.i13.i_crit_edge, %for.body.lr.ph.i10.i
  %indvars.iv.i11.i = phi i32 [ 0, %for.body.lr.ph.i10.i ], [ %indvars.iv.next.i17.i, %if.end.i19.i.for.body.i13.i_crit_edge ]
  %63 = ptrtoint ptr %t.i9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %t.i9.i, align 4
  %arrayidx7.i12.i = getelementptr i16, ptr %64, i32 %indvars.iv.i11.i
  %65 = ptrtoint ptr %arrayidx7.i12.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx7.i12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i.i = icmp eq i16 %66, 0
  br i1 %tobool.not.i.i, label %for.body.i13.i.if.end.i19.i_crit_edge, label %if.then.i16.i

for.body.i13.i.if.end.i19.i_crit_edge:            ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i19.i

if.then.i16.i:                                    ; preds = %for.body.i13.i
  %67 = and i16 %66, 8191
  %68 = ptrtoint ptr %xlt2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xlt2.i.i.i, align 4
  %idxprom.i.i14.i = zext i16 %67 to i32
  %in_use.i.i15.i = getelementptr %struct.ice_vsig_entry, ptr %69, i32 %idxprom.i.i14.i, i32 2
  %70 = ptrtoint ptr %in_use.i.i15.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %in_use.i.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i16.i.ice_vsig_alloc_val.exit.i.i_crit_edge

if.then.i16.i.ice_vsig_alloc_val.exit.i.i_crit_edge: ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_vsig_alloc_val.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx3.i.i.i = getelementptr %struct.ice_vsig_entry, ptr %69, i32 %idxprom.i.i14.i
  %72 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %arrayidx3.i.i.i, ptr %arrayidx3.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx3.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx3.i.i.i, ptr %prev.i.i.i.i, align 4
  %74 = ptrtoint ptr %xlt2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xlt2.i.i.i, align 4
  %in_use16.i.i.i = getelementptr %struct.ice_vsig_entry, ptr %75, i32 %idxprom.i.i14.i, i32 2
  %76 = ptrtoint ptr %in_use16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %in_use16.i.i.i, align 4
  br label %ice_vsig_alloc_val.exit.i.i

ice_vsig_alloc_val.exit.i.i:                      ; preds = %if.then.i.i.i, %if.then.i16.i.ice_vsig_alloc_val.exit.i.i_crit_edge
  %77 = trunc i32 %indvars.iv.i11.i to i16
  %call8.i.i = tail call fastcc i32 @ice_vsig_add_mv_vsi(ptr noundef %hw, i32 noundef %indvars.iv.i, i16 noundef zeroext %77, i16 noundef zeroext %66) #16
  %78 = ptrtoint ptr %vsis.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vsis.i.i, align 4
  %changed.i.i = getelementptr %struct.ice_vsig_vsi, ptr %79, i32 %indvars.iv.i11.i, i32 2
  %80 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %changed.i.i, align 4
  br label %if.end.i19.i

if.end.i19.i:                                     ; preds = %ice_vsig_alloc_val.exit.i.i, %for.body.i13.i.if.end.i19.i_crit_edge
  %indvars.iv.next.i17.i = add nuw nsw i32 %indvars.iv.i11.i, 1
  %81 = ptrtoint ptr %count.i8.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %count.i8.i, align 4
  %83 = zext i16 %82 to i32
  %cmp.i18.i = icmp ult i32 %indvars.iv.next.i17.i, %83
  br i1 %cmp.i18.i, label %if.end.i19.i.for.body.i13.i_crit_edge, label %if.end.i19.i.ice_init_sw_xlt2_db.exit.i_crit_edge

if.end.i19.i.ice_init_sw_xlt2_db.exit.i_crit_edge: ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_init_sw_xlt2_db.exit.i

if.end.i19.i.for.body.i13.i_crit_edge:            ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i13.i

ice_init_sw_xlt2_db.exit.i:                       ; preds = %if.end.i19.i.ice_init_sw_xlt2_db.exit.i_crit_edge, %ice_init_sw_xlt1_db.exit.i.ice_init_sw_xlt2_db.exit.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 5
  br i1 %exitcond.not.i, label %ice_init_sw_db.exit, label %ice_init_sw_xlt2_db.exit.i.for.body.i_crit_edge

ice_init_sw_xlt2_db.exit.i.for.body.i_crit_edge:  ; preds = %ice_init_sw_xlt2_db.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

ice_init_sw_db.exit:                              ; preds = %ice_init_sw_xlt2_db.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_fill_hw_ptype(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.ice_pkg_enum, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %seg1 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %0 = ptrtoint ptr %seg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seg1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state) #16
  %hw_ptype = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 73
  %2 = call ptr @memset(ptr %hw_ptype, i32 0, i32 128)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %state, i32 0, i32 36)
  %entry_idx.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 7
  %handler7.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 8
  %sect_type15.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 6
  %sect.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end
  %seg.0 = phi ptr [ %1, %if.end ], [ null, %do.body.backedge ]
  %tobool.not.i = icmp eq ptr %seg.0, null
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %seg.0, ptr noundef nonnull %state, i32 noundef 55) #16
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then.i.cleanup_crit_edge, label %if.end9.i.thread

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9.i.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %entry_idx.i, align 4
  %5 = ptrtoint ptr %handler7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ice_marker_ptype_tcam_handler, ptr %handler7.i, align 4
  br label %if.end13.i

if.end9.i:                                        ; preds = %do.body
  %6 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_idx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %entry_idx.i, align 4
  %8 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %handler7.i, align 4
  %tobool11.not.i = icmp eq ptr %.pr, null
  br i1 %tobool11.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13.i:                                       ; preds = %if.end9.i.if.end13.i_crit_edge, %if.end9.i.thread
  %9 = phi ptr [ @ice_marker_ptype_tcam_handler, %if.end9.i.thread ], [ %.pr, %if.end9.i.if.end13.i_crit_edge ]
  %10 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sect_type15.i, align 4
  %12 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sect.i, align 4
  %14 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry_idx.i, align 4
  %call17.i = tail call ptr %9(i32 noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef null) #16
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end13.i.land.lhs.true_crit_edge

if.end13.i.land.lhs.true_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.then19.i:                                      ; preds = %if.end13.i
  %call20.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state, i32 noundef 0) #16
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then19.i.cleanup_crit_edge, label %ice_pkg_enum_entry.exit

if.then19.i.cleanup_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ice_pkg_enum_entry.exit:                          ; preds = %if.then19.i
  %16 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %entry_idx.i, align 4
  %17 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler7.i, align 4
  %19 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sect_type15.i, align 4
  %21 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sect.i, align 4
  %call29.i = tail call ptr %18(i32 noundef %20, ptr noundef %22, i32 noundef 0, ptr noundef null) #16
  %tobool2.not = icmp eq ptr %call29.i, null
  br i1 %tobool2.not, label %ice_pkg_enum_entry.exit.cleanup_crit_edge, label %ice_pkg_enum_entry.exit.land.lhs.true_crit_edge

ice_pkg_enum_entry.exit.land.lhs.true_crit_edge:  ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

ice_pkg_enum_entry.exit.cleanup_crit_edge:        ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %ice_pkg_enum_entry.exit.land.lhs.true_crit_edge, %if.end13.i.land.lhs.true_crit_edge
  %retval.0.i31 = phi ptr [ %call29.i, %ice_pkg_enum_entry.exit.land.lhs.true_crit_edge ], [ %call17.i, %if.end13.i.land.lhs.true_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i31 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %retval.0.i31, align 2
  %25 = and i16 %24, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp = icmp eq i16 %25, 0
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.do.body.backedge_crit_edge

land.lhs.true.do.body.backedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge

land.lhs.true4:                                   ; preds = %land.lhs.true
  %ptype = getelementptr inbounds %struct.ice_marker_ptype_tcam_entry, ptr %retval.0.i31, i32 0, i32 1
  %26 = ptrtoint ptr %ptype to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ptype, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %28)
  %cmp6 = icmp ult i16 %28, 1024
  br i1 %cmp6, label %if.then8, label %land.lhs.true4.do.body.backedge_crit_edge

land.lhs.true4.do.body.backedge_crit_edge:        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge

if.then8:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  %conv5 = zext i16 %28 to i32
  tail call void @_set_bit(i32 noundef %conv5, ptr noundef %hw_ptype) #16
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.then8, %land.lhs.true4.do.body.backedge_crit_edge, %land.lhs.true.do.body.backedge_crit_edge
  br label %do.body

cleanup:                                          ; preds = %ice_pkg_enum_entry.exit.cleanup_crit_edge, %if.then19.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_get_prof_index_max(ptr nocapture noundef readonly %hw) unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.ice_pkg_enum, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !154
  %1 = call ptr @memset(ptr %state, i32 0, i32 36)
  %seg = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %2 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %entry_idx.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 7
  %handler7.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 8
  %sect_type15.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 6
  %sect.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 5
  %fvw = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 0, i32 4, i32 2
  br label %do.body

do.body:                                          ; preds = %for.end, %do.body.preheader
  %prof_index.0 = phi i16 [ %inc27, %for.end ], [ 0, %do.body.preheader ]
  %max_prof_index.0 = phi i16 [ %max_prof_index.1, %for.end ], [ 0, %do.body.preheader ]
  %ice_seg.0 = phi ptr [ null, %for.end ], [ %3, %do.body.preheader ]
  %tobool.not.i = icmp eq ptr %ice_seg.0, null
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %ice_seg.0, ptr noundef nonnull %state, i32 noundef 16) #16
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then.i.do.end_crit_edge, label %if.end9.i.thread

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end9.i.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %entry_idx.i, align 4
  %5 = ptrtoint ptr %handler7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ice_sw_fv_handler, ptr %handler7.i, align 4
  br label %if.end13.i

if.end9.i:                                        ; preds = %do.body
  %6 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_idx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %entry_idx.i, align 4
  %8 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %handler7.i, align 4
  %tobool11.not.i = icmp eq ptr %.pr, null
  br i1 %tobool11.not.i, label %if.end9.i.do.end_crit_edge, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end13.i:                                       ; preds = %if.end9.i.if.end13.i_crit_edge, %if.end9.i.thread
  %9 = phi ptr [ @ice_sw_fv_handler, %if.end9.i.thread ], [ %.pr, %if.end9.i.if.end13.i_crit_edge ]
  %10 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sect_type15.i, align 4
  %12 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sect.i, align 4
  %14 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry_idx.i, align 4
  %call17.i = call ptr %9(i32 noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef nonnull %offset) #16
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end13.i.for.cond.preheader_crit_edge

if.end13.i.for.cond.preheader_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

if.then19.i:                                      ; preds = %if.end13.i
  %call20.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state, i32 noundef 0) #16
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then19.i.do.end_crit_edge, label %ice_pkg_enum_entry.exit

if.then19.i.do.end_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

ice_pkg_enum_entry.exit:                          ; preds = %if.then19.i
  %16 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %entry_idx.i, align 4
  %17 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler7.i, align 4
  %19 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sect_type15.i, align 4
  %21 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sect.i, align 4
  %call29.i = call ptr %18(i32 noundef %20, ptr noundef %22, i32 noundef 0, ptr noundef nonnull %offset) #16
  %tobool2.not = icmp eq ptr %call29.i, null
  br i1 %tobool2.not, label %ice_pkg_enum_entry.exit.do.end_crit_edge, label %ice_pkg_enum_entry.exit.for.cond.preheader_crit_edge

ice_pkg_enum_entry.exit.for.cond.preheader_crit_edge: ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

ice_pkg_enum_entry.exit.do.end_crit_edge:         ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

for.cond.preheader:                               ; preds = %ice_pkg_enum_entry.exit.for.cond.preheader_crit_edge, %if.end13.i.for.cond.preheader_crit_edge
  %retval.0.i10 = phi ptr [ %call29.i, %ice_pkg_enum_entry.exit.for.cond.preheader_crit_edge ], [ %call17.i, %if.end13.i.for.cond.preheader_crit_edge ]
  %23 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fvw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp4.not = icmp eq i16 %24, 0
  br i1 %cmp4.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i16 %24 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %flag.1.off06 = phi i1 [ false, %for.body.preheader ], [ %flag.2.off0, %for.inc.for.body_crit_edge ]
  %arrayidx7 = getelementptr [48 x %struct.ice_fv_word], ptr %retval.0.i10, i32 0, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp9.not = icmp eq i8 %26, -1
  br i1 %cmp9.not, label %lor.lhs.false, label %for.body.if.then17_crit_edge

for.body.if.then17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

lor.lhs.false:                                    ; preds = %for.body
  %off = getelementptr [48 x %struct.ice_fv_word], ptr %retval.0.i10, i32 0, i32 %indvars.iv, i32 1
  %27 = ptrtoint ptr %off to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %off, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %28)
  %cmp15.not = icmp eq i16 %28, 511
  br i1 %cmp15.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %for.body.if.then17_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %lor.lhs.false.for.inc_crit_edge
  %flag.2.off0 = phi i1 [ true, %if.then17 ], [ %flag.1.off06, %lor.lhs.false.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flag.1.off0.lcssa = phi i1 [ false, %for.cond.preheader.for.end_crit_edge ], [ %flag.2.off0, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %prof_index.0, i16 %max_prof_index.0)
  %cmp23 = icmp ugt i16 %prof_index.0, %max_prof_index.0
  %or.cond = select i1 %flag.1.off0.lcssa, i1 %cmp23, i1 false
  %max_prof_index.1 = select i1 %or.cond, i16 %prof_index.0, i16 %max_prof_index.0
  %inc27 = add i16 %prof_index.0, 1
  br label %do.body

do.end:                                           ; preds = %ice_pkg_enum_entry.exit.do.end_crit_edge, %if.then19.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %29 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %switch_info, align 8
  %max_used_prof_index = getelementptr inbounds %struct.ice_switch_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %max_used_prof_index to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %max_prof_index.0, ptr %max_used_prof_index, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_copy_and_init_pkg(ptr noundef %hw, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef %len, i32 noundef 3264) #16
  %call2 = tail call i32 @ice_init_pkg(ptr noundef %hw, ptr noundef %call, i32 noundef %len)
  %2 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call2, label %if.then4 [
    i32 0, label %if.end.if.else_crit_edge
    i32 -2, label %if.end.if.else_crit_edge24
    i32 -4, label %if.end.if.else_crit_edge25
  ]

if.end.if.else_crit_edge25:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.end.if.else_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev9, ptr noundef %call) #16
  br label %cleanup

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.if.else_crit_edge24, %if.end.if.else_crit_edge25
  %pkg_copy = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 55
  %5 = ptrtoint ptr %pkg_copy to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %pkg_copy, align 8
  %pkg_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 56
  %6 = ptrtoint ptr %pkg_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %pkg_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.else ], [ %call2, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_get_sw_fv_bitmap(ptr nocapture noundef readonly %hw, i32 noundef %req_profs, ptr noundef %bm) local_unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.ice_pkg_enum, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %req_profs)
  %cmp = icmp eq i32 %req_profs, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = call ptr @memset(ptr %bm, i32 255, i32 32)
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %state, i32 0, i32 36)
  %2 = call ptr @memset(ptr %bm, i32 0, i32 32)
  %seg = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %3 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %seg, align 4
  %entry_idx.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 7
  %handler7.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 8
  %sect_type15.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 6
  %sect.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 5
  %fvw.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 0, i32 4, i32 2
  br label %do.body

do.body.critedge:                                 ; preds = %ice_get_sw_prof_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.then4, %do.body.critedge
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end
  %ice_seg.0 = phi ptr [ %4, %if.end ], [ null, %do.body.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %offset, align 4, !annotation !154
  %tobool.not.i = icmp eq ptr %ice_seg.0, null
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %ice_seg.0, ptr noundef nonnull %state, i32 noundef 16) #16
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then.i.do.end.critedge_crit_edge, label %if.end9.i.thread

if.then.i.do.end.critedge_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.critedge

if.end9.i.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %entry_idx.i, align 4
  %7 = ptrtoint ptr %handler7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ice_sw_fv_handler, ptr %handler7.i, align 4
  br label %if.end13.i

if.end9.i:                                        ; preds = %do.body
  %8 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry_idx.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %entry_idx.i, align 4
  %10 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %handler7.i, align 4
  %tobool11.not.i = icmp eq ptr %.pr, null
  br i1 %tobool11.not.i, label %if.end9.i.do.end.critedge_crit_edge, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end9.i.do.end.critedge_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.critedge

if.end13.i:                                       ; preds = %if.end9.i.if.end13.i_crit_edge, %if.end9.i.thread
  %11 = phi ptr [ @ice_sw_fv_handler, %if.end9.i.thread ], [ %.pr, %if.end9.i.if.end13.i_crit_edge ]
  %12 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sect_type15.i, align 4
  %14 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sect.i, align 4
  %16 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %entry_idx.i, align 4
  %call17.i = call ptr %11(i32 noundef %13, ptr noundef %15, i32 noundef %17, ptr noundef nonnull %offset) #16
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end13.i.if.then1_crit_edge

if.end13.i.if.then1_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

if.then19.i:                                      ; preds = %if.end13.i
  %call20.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state, i32 noundef 0) #16
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then19.i.do.end.critedge_crit_edge, label %ice_pkg_enum_entry.exit

if.then19.i.do.end.critedge_crit_edge:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.critedge

ice_pkg_enum_entry.exit:                          ; preds = %if.then19.i
  %18 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %entry_idx.i, align 4
  %19 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler7.i, align 4
  %21 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sect_type15.i, align 4
  %23 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sect.i, align 4
  %call29.i = call ptr %20(i32 noundef %22, ptr noundef %24, i32 noundef 0, ptr noundef nonnull %offset) #16
  %tobool.not = icmp eq ptr %call29.i, null
  br i1 %tobool.not, label %ice_pkg_enum_entry.exit.do.end.critedge_crit_edge, label %ice_pkg_enum_entry.exit.if.then1_crit_edge

ice_pkg_enum_entry.exit.if.then1_crit_edge:       ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

ice_pkg_enum_entry.exit.do.end.critedge_crit_edge: ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.critedge

if.then1:                                         ; preds = %ice_pkg_enum_entry.exit.if.then1_crit_edge, %if.end13.i.if.then1_crit_edge
  %retval.0.i24 = phi ptr [ %call29.i, %ice_pkg_enum_entry.exit.if.then1_crit_edge ], [ %call17.i, %if.end13.i.if.then1_crit_edge ]
  %25 = ptrtoint ptr %fvw.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fvw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp29.not.i = icmp eq i16 %26, 0
  br i1 %cmp29.not.i, label %if.then1.ice_get_sw_prof_type.exit_crit_edge, label %for.body.preheader.i

if.then1.ice_get_sw_prof_type.exit_crit_edge:     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_get_sw_prof_type.exit

for.body.preheader.i:                             ; preds = %if.then1
  %wide.trip.count.i = zext i16 %26 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr [48 x %struct.ice_fv_word], ptr %retval.0.i24, i32 0, i32 %indvars.iv.i
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx3.i, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %28, label %for.body.i.for.inc.i_crit_edge [
    i8 52, label %land.lhs.true.i
    i8 64, label %for.body.i.ice_get_sw_prof_type.exit_crit_edge
  ]

for.body.i.ice_get_sw_prof_type.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_get_sw_prof_type.exit

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %off.i = getelementptr [48 x %struct.ice_fv_word], ptr %retval.0.i24, i32 0, i32 %indvars.iv.i, i32 1
  %30 = ptrtoint ptr %off.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %off.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %31)
  %cmp11.i = icmp eq i16 %31, 12
  br i1 %cmp11.i, label %land.lhs.true.i.ice_get_sw_prof_type.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i.ice_get_sw_prof_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_get_sw_prof_type.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.ice_get_sw_prof_type.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.ice_get_sw_prof_type.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_get_sw_prof_type.exit

ice_get_sw_prof_type.exit:                        ; preds = %for.inc.i.ice_get_sw_prof_type.exit_crit_edge, %land.lhs.true.i.ice_get_sw_prof_type.exit_crit_edge, %for.body.i.ice_get_sw_prof_type.exit_crit_edge, %if.then1.ice_get_sw_prof_type.exit_crit_edge
  %retval.0.i18 = phi i32 [ 1, %if.then1.ice_get_sw_prof_type.exit_crit_edge ], [ 2, %land.lhs.true.i.ice_get_sw_prof_type.exit_crit_edge ], [ 1, %for.inc.i.ice_get_sw_prof_type.exit_crit_edge ], [ 4, %for.body.i.ice_get_sw_prof_type.exit_crit_edge ]
  %and = and i32 %retval.0.i18, %req_profs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.critedge, label %if.then4

if.then4:                                         ; preds = %ice_get_sw_prof_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %conv5 = and i32 %33, 65535
  call void @_set_bit(i32 noundef %conv5, ptr noundef %bm) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  br label %do.body.backedge

do.end.critedge:                                  ; preds = %ice_pkg_enum_entry.exit.do.end.critedge_crit_edge, %if.then19.i.do.end.critedge_crit_edge, %if.end9.i.do.end.critedge_crit_edge, %if.then.i.do.end.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ice_sw_fv_handler(i32 noundef %sect_type, ptr noundef readonly %section, i32 noundef %index, ptr noundef writeonly %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %section, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sect_type)
  %cmp.not = icmp eq i32 %sect_type, 16
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %section to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %section, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp1.not = icmp ugt i32 %conv, %index
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %offset, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %base_offset = getelementptr inbounds %struct.ice_sw_fv_section, ptr %section, i32 0, i32 1
  %3 = ptrtoint ptr %base_offset to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base_offset, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv7 = zext i16 %5 to i32
  %add = add i32 %conv7, %index
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %offset, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %fv = getelementptr inbounds %struct.ice_sw_fv_section, ptr %section, i32 0, i32 2
  %add.ptr = getelementptr %struct.ice_fv, ptr %fv, i32 %index
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_sw_fv_list(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %prot_ids, i16 noundef zeroext %ids_cnt, ptr noundef %bm, ptr noundef %fv_list) local_unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.ice_pkg_enum, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !154
  %1 = call ptr @memset(ptr %state, i32 0, i32 36)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ids_cnt)
  %tobool.not = icmp eq i16 %ids_cnt, 0
  br i1 %tobool.not, label %entry.cleanup84_crit_edge, label %lor.lhs.false

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

lor.lhs.false:                                    ; preds = %entry
  %seg = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %2 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seg, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup84_crit_edge, label %do.body.preheader

lor.lhs.false.cleanup84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

do.body.preheader:                                ; preds = %lor.lhs.false
  %entry_idx.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 7
  %handler7.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 8
  %sect_type15.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 6
  %sect.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 5
  %conv12 = zext i16 %ids_cnt to i32
  %fvw = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 0, i32 4, i32 2
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader
  %ice_seg.0 = phi ptr [ %3, %do.body.preheader ], [ null, %do.body.backedge ]
  %tobool.not.i = icmp eq ptr %ice_seg.0, null
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %ice_seg.0, ptr noundef nonnull %state, i32 noundef 16) #16
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then.i.do.end_crit_edge, label %if.end9.i.thread

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end9.i.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %entry_idx.i, align 4
  %5 = ptrtoint ptr %handler7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ice_sw_fv_handler, ptr %handler7.i, align 4
  br label %if.end13.i

if.end9.i:                                        ; preds = %do.body
  %6 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_idx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %entry_idx.i, align 4
  %8 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %handler7.i, align 4
  %tobool11.not.i = icmp eq ptr %.pr, null
  br i1 %tobool11.not.i, label %if.end9.i.do.end_crit_edge, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end13.i:                                       ; preds = %if.end9.i.if.end13.i_crit_edge, %if.end9.i.thread
  %9 = phi ptr [ @ice_sw_fv_handler, %if.end9.i.thread ], [ %.pr, %if.end9.i.if.end13.i_crit_edge ]
  %10 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sect_type15.i, align 4
  %12 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sect.i, align 4
  %14 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry_idx.i, align 4
  %call17.i = call ptr %9(i32 noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef nonnull %offset) #16
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end13.i.if.end5_crit_edge

if.end13.i.if.end5_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then19.i:                                      ; preds = %if.end13.i
  %call20.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state, i32 noundef 0) #16
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then19.i.do.end_crit_edge, label %ice_pkg_enum_entry.exit

if.then19.i.do.end_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

ice_pkg_enum_entry.exit:                          ; preds = %if.then19.i
  %16 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %entry_idx.i, align 4
  %17 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler7.i, align 4
  %19 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sect_type15.i, align 4
  %21 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sect.i, align 4
  %call29.i = call ptr %18(i32 noundef %20, ptr noundef %22, i32 noundef 0, ptr noundef nonnull %offset) #16
  %tobool3.not = icmp eq ptr %call29.i, null
  br i1 %tobool3.not, label %ice_pkg_enum_entry.exit.do.end_crit_edge, label %ice_pkg_enum_entry.exit.if.end5_crit_edge

ice_pkg_enum_entry.exit.if.end5_crit_edge:        ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

ice_pkg_enum_entry.exit.do.end_crit_edge:         ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end5:                                          ; preds = %ice_pkg_enum_entry.exit.if.end5_crit_edge, %if.end13.i.if.end5_crit_edge
  %retval.0.i127 = phi ptr [ %call29.i, %ice_pkg_enum_entry.exit.if.end5_crit_edge ], [ %call17.i, %if.end13.i.if.end5_crit_edge ]
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %conv6 = lshr i32 %24, 5
  %div3.i = and i32 %conv6, 2047
  %arrayidx.i = getelementptr i32, ptr %bm, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %24, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %27, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not = icmp eq i32 %28, 0
  br i1 %tobool8.not, label %if.end5.do.body.backedge_crit_edge, label %for.cond.preheader

if.end5.do.body.backedge_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge

for.cond.preheader:                               ; preds = %if.end5
  %29 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fvw, align 2
  %conv15 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp16144.not = icmp eq i16 %30, 0
  br i1 %cmp16144.not, label %for.cond.preheader.do.body.backedge_crit_edge, label %for.cond.preheader.for.cond14.preheader_crit_edge

for.cond.preheader.for.cond14.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond14.preheader

for.cond.preheader.do.body.backedge_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.end.i.i, %if.end45.do.body.backedge_crit_edge, %for.cond14.do.body.backedge_crit_edge, %for.cond.do.body.backedge_crit_edge, %for.cond.preheader.do.body.backedge_crit_edge, %if.end5.do.body.backedge_crit_edge
  br label %do.body

for.cond:                                         ; preds = %if.end35
  %lftr.wideiv = trunc i32 %add to i16
  %exitcond153.not = icmp eq i16 %lftr.wideiv, %ids_cnt
  br i1 %exitcond153.not, label %for.cond.do.body.backedge_crit_edge, label %for.cond.for.cond14.preheader_crit_edge

for.cond.for.cond14.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond14.preheader

for.cond.do.body.backedge_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge

for.cond14.preheader:                             ; preds = %for.cond.for.cond14.preheader_crit_edge, %for.cond.preheader.for.cond14.preheader_crit_edge
  %indvars.iv = phi i32 [ %add, %for.cond.for.cond14.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond14.preheader_crit_edge ]
  %arrayidx21 = getelementptr i8, ptr %prot_ids, i32 %indvars.iv
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx21, align 1
  br label %for.body18

for.cond14:                                       ; preds = %for.body18
  %inc = add nuw nsw i32 %j.0145, 1
  %exitcond.not = icmp eq i32 %inc, %conv15
  br i1 %exitcond.not, label %for.cond14.do.body.backedge_crit_edge, label %for.cond14.for.body18_crit_edge

for.cond14.for.body18_crit_edge:                  ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18

for.cond14.do.body.backedge_crit_edge:            ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge

for.body18:                                       ; preds = %for.cond14.for.body18_crit_edge, %for.cond14.preheader
  %j.0145 = phi i32 [ 0, %for.cond14.preheader ], [ %inc, %for.cond14.for.body18_crit_edge ]
  %arrayidx19 = getelementptr [48 x %struct.ice_fv_word], ptr %retval.0.i127, i32 0, i32 %j.0145
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %32)
  %cmp23 = icmp eq i8 %34, %32
  br i1 %cmp23, label %if.end35, label %for.cond14

if.end35:                                         ; preds = %for.body18
  %add = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv12)
  %cmp38 = icmp eq i32 %add, %conv12
  br i1 %cmp38, label %if.then40, label %for.cond

if.then40:                                        ; preds = %if.end35
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call.i118 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #16
  %tobool43.not = icmp eq ptr %call.i118, null
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.then40
  %fv_ptr = getelementptr inbounds %struct.ice_sw_fv_list_entry, ptr %call.i118, i32 0, i32 2
  %37 = ptrtoint ptr %fv_ptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i127, ptr %fv_ptr, align 4
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %profile_id = getelementptr inbounds %struct.ice_sw_fv_list_entry, ptr %call.i118, i32 0, i32 1
  %40 = ptrtoint ptr %profile_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %profile_id, align 4
  %41 = ptrtoint ptr %fv_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fv_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i118, ptr noundef %fv_list, ptr noundef %42) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end45.do.body.backedge_crit_edge

if.end45.do.body.backedge_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i118, ptr %prev1.i.i, align 4
  %44 = ptrtoint ptr %call.i118 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %call.i118, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i118, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %fv_list, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %fv_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call.i118, ptr %fv_list, align 4
  br label %do.body.backedge

do.end:                                           ; preds = %ice_pkg_enum_entry.exit.do.end_crit_edge, %if.then19.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %47 = ptrtoint ptr %fv_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %fv_list, align 4
  %cmp.i.not = icmp eq ptr %48, %fv_list
  %. = select i1 %cmp.i.not, i32 -5, i32 0
  br label %cleanup84

err:                                              ; preds = %if.then40
  %49 = ptrtoint ptr %fv_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fv_list, align 4
  %cmp68.not149 = icmp eq ptr %50, %fv_list
  br i1 %cmp68.not149, label %err.cleanup84_crit_edge, label %err.for.body70_crit_edge

err.for.body70_crit_edge:                         ; preds = %err
  br label %for.body70

err.cleanup84_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

for.body70:                                       ; preds = %list_del.exit.for.body70_crit_edge, %err.for.body70_crit_edge
  %fvl.0150 = phi ptr [ %tmp.0, %list_del.exit.for.body70_crit_edge ], [ %50, %err.for.body70_crit_edge ]
  %51 = ptrtoint ptr %fvl.0150 to i32
  call void @__asan_load4_noabort(i32 %51)
  %tmp.0 = load ptr, ptr %fvl.0150, align 4
  %call.i.i119 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fvl.0150) #16
  br i1 %call.i.i119, label %if.end.i.i120, label %for.body70.list_del.exit_crit_edge

for.body70.list_del.exit_crit_edge:               ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i120:                                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fvl.0150, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %fvl.0150 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fvl.0150, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i120, %for.body70.list_del.exit_crit_edge
  %58 = ptrtoint ptr %fvl.0150 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %fvl.0150, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fvl.0150, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 8
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev76, ptr noundef %fvl.0150) #16
  %cmp68.not = icmp eq ptr %tmp.0, %fv_list
  br i1 %cmp68.not, label %list_del.exit.cleanup84_crit_edge, label %list_del.exit.for.body70_crit_edge

list_del.exit.for.body70_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body70

list_del.exit.cleanup84_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

cleanup84:                                        ; preds = %list_del.exit.cleanup84_crit_edge, %err.cleanup84_crit_edge, %do.end, %lor.lhs.false.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup84_crit_edge ], [ -22, %entry.cleanup84_crit_edge ], [ %., %do.end ], [ -12, %err.cleanup84_crit_edge ], [ -12, %list_del.exit.cleanup84_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_init_prof_result_bm(ptr nocapture noundef readonly %hw) local_unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.ice_pkg_enum, align 4
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state) #16
  %0 = call ptr @memset(ptr %state, i32 0, i32 36)
  %seg = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %1 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %seg, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %do.body.preheader

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup26

do.body.preheader:                                ; preds = %entry
  %entry_idx.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 7
  %handler7.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 8
  %sect_type15.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 6
  %sect.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 5
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  br label %do.body

do.body:                                          ; preds = %cleanup, %do.body.preheader
  %ice_seg.0 = phi ptr [ null, %cleanup ], [ %2, %do.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #16
  %3 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %off, align 4, !annotation !154
  %tobool.not.i = icmp eq ptr %ice_seg.0, null
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %ice_seg.0, ptr noundef nonnull %state, i32 noundef 16) #16
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then.i.cleanup.thread_crit_edge, label %if.end9.i.thread

if.then.i.cleanup.thread_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end9.i.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %entry_idx.i, align 4
  %5 = ptrtoint ptr %handler7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ice_sw_fv_handler, ptr %handler7.i, align 4
  br label %if.end13.i

if.end9.i:                                        ; preds = %do.body
  %6 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_idx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %entry_idx.i, align 4
  %8 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %handler7.i, align 4
  %tobool11.not.i = icmp eq ptr %.pr, null
  br i1 %tobool11.not.i, label %if.end9.i.cleanup.thread_crit_edge, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end9.i.cleanup.thread_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end13.i:                                       ; preds = %if.end9.i.if.end13.i_crit_edge, %if.end9.i.thread
  %9 = phi ptr [ @ice_sw_fv_handler, %if.end9.i.thread ], [ %.pr, %if.end9.i.if.end13.i_crit_edge ]
  %10 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sect_type15.i, align 4
  %12 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sect.i, align 4
  %14 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry_idx.i, align 4
  %call17.i = call ptr %9(i32 noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef nonnull %off) #16
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end13.i.if.end4_crit_edge

if.end13.i.if.end4_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then19.i:                                      ; preds = %if.end13.i
  %call20.i = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state, i32 noundef 0) #16
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then19.i.cleanup.thread_crit_edge, label %ice_pkg_enum_entry.exit

if.then19.i.cleanup.thread_crit_edge:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

ice_pkg_enum_entry.exit:                          ; preds = %if.then19.i
  %16 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %entry_idx.i, align 4
  %17 = ptrtoint ptr %handler7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler7.i, align 4
  %19 = ptrtoint ptr %sect_type15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sect_type15.i, align 4
  %21 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sect.i, align 4
  %call29.i = call ptr %18(i32 noundef %20, ptr noundef %22, i32 noundef 0, ptr noundef nonnull %off) #16
  %tobool2.not = icmp eq ptr %call29.i, null
  br i1 %tobool2.not, label %ice_pkg_enum_entry.exit.cleanup.thread_crit_edge, label %ice_pkg_enum_entry.exit.if.end4_crit_edge

ice_pkg_enum_entry.exit.if.end4_crit_edge:        ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

ice_pkg_enum_entry.exit.cleanup.thread_crit_edge: ; preds = %ice_pkg_enum_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end4:                                          ; preds = %ice_pkg_enum_entry.exit.if.end4_crit_edge, %if.end13.i.if.end4_crit_edge
  %retval.0.i47 = phi ptr [ %call29.i, %ice_pkg_enum_entry.exit.if.end4_crit_edge ], [ %call17.i, %if.end13.i.if.end4_crit_edge ]
  %23 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %switch_info, align 8
  %25 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %off, align 4
  %arrayidx = getelementptr %struct.ice_switch_info, ptr %24, i32 0, i32 4, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4
  %indvars.iv = phi i32 [ 1, %if.end4 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr [48 x %struct.ice_fv_word], ptr %retval.0.i47, i32 0, i32 %indvars.iv
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp8 = icmp eq i8 %29, -1
  br i1 %cmp8, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %off13 = getelementptr [48 x %struct.ice_fv_word], ptr %retval.0.i47, i32 0, i32 %indvars.iv, i32 1
  %30 = ptrtoint ptr %off13 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %off13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %31)
  %cmp15 = icmp eq i16 %31, 511
  br i1 %cmp15, label %if.then17, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %switch_info, align 8
  %34 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %off, align 4
  %arrayidx21 = getelementptr %struct.ice_switch_info, ptr %33, i32 0, i32 4, i32 %35
  call void @_set_bit(i32 noundef %indvars.iv, ptr noundef %arrayidx21) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 48
  br i1 %exitcond.not, label %cleanup, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.thread:                                   ; preds = %ice_pkg_enum_entry.exit.cleanup.thread_crit_edge, %if.then19.i.cleanup.thread_crit_edge, %if.end9.i.cleanup.thread_crit_edge, %if.then.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #16
  br label %cleanup26

cleanup:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #16
  br label %do.body

cleanup26:                                        ; preds = %cleanup.thread, %entry.cleanup26_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw, ptr nocapture noundef writeonly %port, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tnl_lock = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tnl_lock, i32 noundef 0) #16
  %tnl = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 58
  %count = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 58, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp47.not = icmp eq i16 %1, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %type)
  %cmp16 = icmp eq i32 %type, 255
  %2 = zext i16 %1 to i32
  %3 = add i16 %1, -1
  %umin = call i16 @llvm.umin.i16(i16 %3, i16 15)
  %4 = add nuw nsw i16 %umin, 1
  %wide.trip.count = zext i16 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %or.cond50 = phi i1 [ true, %for.body.lr.ph ], [ %or.cond, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl, i32 0, i32 %indvars.iv
  %valid = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl, i32 0, i32 %indvars.iv, i32 4
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port12 = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl, i32 0, i32 %indvars.iv, i32 2
  %7 = ptrtoint ptr %port12 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool14.not = icmp eq i16 %8, 0
  br i1 %tobool14.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  br i1 %cmp16, label %land.lhs.true15.if.then_crit_edge, label %lor.lhs.false

land.lhs.true15.if.then_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %type)
  %cmp23 = icmp eq i32 %10, %type
  br i1 %cmp23, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true15.if.then_crit_edge
  %11 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %8, ptr %port, align 2
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next, i32 %2)
  %cmp = icmp ult i32 %indvars.iv.next, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %indvars.iv)
  %cmp4 = icmp ult i32 %indvars.iv, 15
  %or.cond = and i1 %cmp4, %cmp
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %or.cond46 = phi i1 [ %or.cond50, %if.then ], [ false, %entry.for.end_crit_edge ], [ %or.cond, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tnl_lock) #16
  ret i1 %or.cond46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_udp_tunnel_set_port(ptr noundef %netdev, i32 noundef %table, i32 noundef %idx, ptr nocapture noundef readonly %ti) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ti, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp ne i16 %5, 1
  %cond = zext i1 %cmp to i32
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %tnl.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 58
  %count.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 58, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp68.not.i = icmp eq i16 %7, 0
  br i1 %cmp68.not.i, label %entry.land.end23.i_crit_edge, label %for.body.preheader.i

entry.land.end23.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end23.i

for.body.preheader.i:                             ; preds = %entry
  %conv3 = trunc i32 %idx to i16
  %8 = add i16 %7, -1
  %umin.i = tail call i16 @llvm.umin.i16(i16 %8, i16 15) #16
  %9 = add nuw nsw i16 %umin.i, 1
  %wide.trip.count.i = zext i16 %9 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %idx.addr.071.i = phi i16 [ %conv3, %for.body.preheader.i ], [ %idx.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %valid.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %indvars.iv.i, i32 4
  %10 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %indvars.iv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cond)
  %cmp13.i = icmp eq i32 %13, %cond
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %dec.i = add i16 %idx.addr.071.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %idx.addr.071.i)
  %cmp17.i = icmp eq i16 %idx.addr.071.i, 0
  br i1 %cmp17.i, label %cleanup.loopexit.i, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %idx.addr.1.i = phi i16 [ %dec.i, %land.lhs.true15.i.for.inc.i_crit_edge ], [ %idx.addr.071.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %idx.addr.071.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.land.end23.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.land.end23.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end23.i

land.end23.i:                                     ; preds = %for.inc.i.land.end23.i_crit_edge, %entry.land.end23.i_crit_edge
  %.b66.i = load i1, ptr @ice_tunnel_idx_to_entry.__already_done, align 1
  br i1 %.b66.i, label %land.end23.i.ice_tunnel_idx_to_entry.exit_crit_edge, label %if.then27.i, !prof !159

land.end23.i.ice_tunnel_idx_to_entry.exit_crit_edge: ; preds = %land.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_tunnel_idx_to_entry.exit

if.then27.i:                                      ; preds = %land.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ice_tunnel_idx_to_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2083, i32 noundef 9, ptr noundef null) #16
  br label %ice_tunnel_idx_to_entry.exit

cleanup.loopexit.i:                               ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = trunc i32 %indvars.iv.i to i16
  br label %ice_tunnel_idx_to_entry.exit

ice_tunnel_idx_to_entry.exit:                     ; preds = %cleanup.loopexit.i, %if.then27.i, %land.end23.i.ice_tunnel_idx_to_entry.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %if.then27.i ], [ 0, %land.end23.i.ice_tunnel_idx_to_entry.exit_crit_edge ], [ %14, %cleanup.loopexit.i ]
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %port, align 2
  %port.addr.sroa.0.0.extract.shift.i = lshr i16 %16, 8
  %port.addr.sroa.0.0.extract.trunc.i = trunc i16 %port.addr.sroa.0.0.extract.shift.i to i8
  %port.addr.sroa.2.0.extract.trunc.i = trunc i16 %16 to i8
  %tnl_lock.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tnl_lock.i, i32 noundef 0) #16
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 4098, i32 noundef 3520) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %ice_create_tunnel.exit.thread, label %if.end.i2.i

ice_create_tunnel.exit.thread:                    ; preds = %ice_tunnel_idx_to_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %tnl_lock.i) #16
  br label %if.then

if.end.i2.i:                                      ; preds = %ice_tunnel_idx_to_entry.exit
  %data_end.i.i = getelementptr inbounds %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1024, ptr %data_end.i.i, align 2
  %20 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.not.i.i = icmp eq i16 %21, 0
  br i1 %cmp.not.i.i, label %if.end5.i.i, label %if.end.i2.i.ice_create_tunnel.exit_crit_edge

if.end.i2.i.ice_create_tunnel.exit_crit_edge:     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_create_tunnel.exit

if.end5.i.i:                                      ; preds = %if.end.i2.i
  %reserved_section_table_entries.i.i = getelementptr inbounds %struct.ice_buf_build, ptr %call.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %reserved_section_table_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reserved_section_table_entries.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 509, i16 %23)
  %cmp8.i.i = icmp ugt i16 %23, 509
  br i1 %cmp8.i.i, label %if.end5.i.i.ice_create_tunnel.exit_crit_edge, label %ice_pkg_buf_alloc_section.exit.i

if.end5.i.i.ice_create_tunnel.exit_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_create_tunnel.exit

ice_pkg_buf_alloc_section.exit.i:                 ; preds = %if.end5.i.i
  %add.i.i = add nuw nsw i16 %23, 2
  %24 = ptrtoint ptr %reserved_section_table_entries.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %add.i.i, ptr %reserved_section_table_entries.i.i, align 2
  %add.ptr.i7.i = getelementptr i8, ptr %call.i.i.i, i32 20
  %arrayidx.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 0
  %offset.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 5120, ptr %offset.i.i, align 4
  %size22.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %size22.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 23552, ptr %size22.i.i, align 2
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 939524096, ptr %arrayidx.i.i, align 4
  %28 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 28672, ptr %data_end.i.i, align 2
  %29 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 256, ptr %call.i.i.i, align 4
  %tobool7.not.i = icmp eq ptr %add.ptr.i7.i, null
  br i1 %tobool7.not.i, label %ice_pkg_buf_alloc_section.exit.i.ice_create_tunnel.exit_crit_edge, label %if.end12.i20.i

ice_pkg_buf_alloc_section.exit.i.ice_create_tunnel.exit_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_create_tunnel.exit

if.end12.i20.i:                                   ; preds = %ice_pkg_buf_alloc_section.exit.i
  %30 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 256, ptr %add.ptr.i7.i, align 2
  %31 = ptrtoint ptr %reserved_section_table_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %reserved_section_table_entries.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp15.i19.i = icmp ugt i16 %32, 1
  br i1 %cmp15.i19.i, label %ice_pkg_buf_alloc_section.exit30.i, label %if.end12.i20.i.ice_create_tunnel.exit_crit_edge

if.end12.i20.i.ice_create_tunnel.exit_crit_edge:  ; preds = %if.end12.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_create_tunnel.exit

ice_pkg_buf_alloc_section.exit30.i:               ; preds = %if.end12.i20.i
  %add.ptr.i22.i = getelementptr i8, ptr %call.i.i.i, i32 112
  %arrayidx.i23.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %offset.i24.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 1, i32 1
  %33 = ptrtoint ptr %offset.i24.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 28672, ptr %offset.i24.i, align 4
  %size22.i25.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 1, i32 2
  %34 = ptrtoint ptr %size22.i25.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 23552, ptr %size22.i25.i, align 2
  %35 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1107296256, ptr %arrayidx.i23.i, align 4
  %36 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -13312, ptr %data_end.i.i, align 2
  %37 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 512, ptr %call.i.i.i, align 4
  %tobool13.not.i = icmp eq ptr %add.ptr.i22.i, null
  br i1 %tobool13.not.i, label %ice_pkg_buf_alloc_section.exit30.i.ice_create_tunnel.exit_crit_edge, label %if.else47.i.i.i

ice_pkg_buf_alloc_section.exit30.i.ice_create_tunnel.exit_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_create_tunnel.exit

if.else47.i.i.i:                                  ; preds = %ice_pkg_buf_alloc_section.exit30.i
  %38 = ptrtoint ptr %add.ptr.i22.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 256, ptr %add.ptr.i22.i, align 2
  %tcam.i = getelementptr i8, ptr %call.i.i.i, i32 24
  %idxprom.i = zext i16 %retval.0.i to i32
  %boost_entry.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom.i, i32 3
  %39 = ptrtoint ptr %boost_entry.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %boost_entry.i, align 4
  %41 = call ptr @memcpy(ptr %tcam.i, ptr %40, i32 88)
  %add.ptr.i33.i = getelementptr i8, ptr %call.i.i.i, i32 43
  %add.ptr45.i.i = getelementptr i8, ptr %call.i.i.i, i32 63
  %42 = shl i8 %port.addr.sroa.0.0.extract.trunc.i, 4
  %43 = and i8 %42, 48
  %44 = xor i8 %43, 48
  %45 = shl i8 %port.addr.sroa.0.0.extract.trunc.i, 5
  %46 = and i8 %45, 96
  %47 = and i8 %port.addr.sroa.0.0.extract.trunc.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool50.not.i.i.2.i = icmp eq i8 %47, 0
  %48 = or i8 %45, -128
  %or24117.i.i46.2.i = select i1 %tobool50.not.i.i.2.i, i8 %46, i8 %48
  %49 = or i8 %44, 64
  %50 = select i1 %tobool50.not.i.i.2.i, i8 %49, i8 %44
  %51 = lshr exact i8 %or24117.i.i46.2.i, 5
  %52 = and i8 %42, -128
  %53 = or i8 %50, %52
  %54 = lshr exact i8 %53, 4
  %55 = and i8 %port.addr.sroa.0.0.extract.trunc.i, 120
  %56 = or i8 %55, %51
  %57 = and i8 %port.addr.sroa.0.0.extract.trunc.i, 112
  %58 = or i8 %57, %54
  %59 = xor i8 %58, 120
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool50.not.i.i.7.i = icmp sgt i16 %16, -1
  %60 = or i8 %59, -128
  %61 = or i8 %56, -128
  %or24117.i.i46.7.i = select i1 %tobool50.not.i.i.7.i, i8 %56, i8 %61
  %or18116.i.i44.7.i = select i1 %tobool50.not.i.i.7.i, i8 %60, i8 %59
  %62 = ptrtoint ptr %add.ptr.i33.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %or18116.i.i44.7.i, ptr %add.ptr.i33.i, align 1
  %63 = ptrtoint ptr %add.ptr45.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %or24117.i.i46.7.i, ptr %add.ptr45.i.i, align 1
  %add.ptr41.i.1.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %add.ptr47.i.1.i = getelementptr i8, ptr %call.i.i.i, i32 64
  %64 = shl i8 %port.addr.sroa.2.0.extract.trunc.i, 4
  %65 = and i8 %64, 48
  %66 = xor i8 %65, 48
  %67 = shl i8 %port.addr.sroa.2.0.extract.trunc.i, 5
  %68 = and i8 %67, 96
  %69 = and i8 %port.addr.sroa.2.0.extract.trunc.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool50.not.i.i.2.1.i = icmp eq i8 %69, 0
  %70 = or i8 %67, -128
  %or24117.i.i46.2.1.i = select i1 %tobool50.not.i.i.2.1.i, i8 %68, i8 %70
  %71 = or i8 %66, 64
  %72 = select i1 %tobool50.not.i.i.2.1.i, i8 %71, i8 %66
  %73 = lshr exact i8 %or24117.i.i46.2.1.i, 5
  %74 = and i8 %64, -128
  %75 = or i8 %72, %74
  %76 = lshr exact i8 %75, 4
  %77 = and i8 %port.addr.sroa.2.0.extract.trunc.i, 120
  %78 = or i8 %77, %73
  %79 = and i8 %port.addr.sroa.2.0.extract.trunc.i, 112
  %80 = or i8 %79, %76
  %81 = xor i8 %80, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %port.addr.sroa.2.0.extract.trunc.i)
  %tobool50.not.i.i.7.1.i = icmp sgt i8 %port.addr.sroa.2.0.extract.trunc.i, -1
  %82 = or i8 %81, -128
  %83 = or i8 %78, -128
  %or24117.i.i46.7.1.i = select i1 %tobool50.not.i.i.7.1.i, i8 %78, i8 %83
  %or18116.i.i44.7.1.i = select i1 %tobool50.not.i.i.7.1.i, i8 %82, i8 %81
  %84 = ptrtoint ptr %add.ptr41.i.1.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %or18116.i.i44.7.1.i, ptr %add.ptr41.i.1.i, align 1
  %85 = ptrtoint ptr %add.ptr47.i.1.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %or24117.i.i46.7.1.i, ptr %add.ptr47.i.1.i, align 1
  %tcam20.i = getelementptr i8, ptr %call.i.i.i, i32 116
  %86 = call ptr @memcpy(ptr %tcam20.i, ptr %tcam.i, i32 88)
  %call25.i = tail call fastcc i32 @ice_update_pkg(ptr noundef %hw, ptr noundef nonnull %call.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then27.i22, label %if.else47.i.i.i.ice_create_tunnel.exit_crit_edge

if.else47.i.i.i.ice_create_tunnel.exit_crit_edge: ; preds = %if.else47.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_create_tunnel.exit

if.then27.i22:                                    ; preds = %if.else47.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %port32.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom.i, i32 2
  %87 = ptrtoint ptr %port32.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %16, ptr %port32.i, align 2
  br label %ice_create_tunnel.exit

ice_create_tunnel.exit:                           ; preds = %if.then27.i22, %if.else47.i.i.i.ice_create_tunnel.exit_crit_edge, %ice_pkg_buf_alloc_section.exit30.i.ice_create_tunnel.exit_crit_edge, %if.end12.i20.i.ice_create_tunnel.exit_crit_edge, %ice_pkg_buf_alloc_section.exit.i.ice_create_tunnel.exit_crit_edge, %if.end5.i.i.ice_create_tunnel.exit_crit_edge, %if.end.i2.i.ice_create_tunnel.exit_crit_edge
  %status.0.i = phi i32 [ %call25.i, %if.else47.i.i.i.ice_create_tunnel.exit_crit_edge ], [ 0, %if.then27.i22 ], [ -28, %ice_pkg_buf_alloc_section.exit30.i.ice_create_tunnel.exit_crit_edge ], [ -28, %ice_pkg_buf_alloc_section.exit.i.ice_create_tunnel.exit_crit_edge ], [ -28, %if.end.i2.i.ice_create_tunnel.exit_crit_edge ], [ -28, %if.end5.i.i.ice_create_tunnel.exit_crit_edge ], [ -28, %if.end12.i20.i.ice_create_tunnel.exit_crit_edge ]
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 8
  %dev.i37.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i37.i, ptr noundef nonnull %call.i.i.i) #16
  tail call void @mutex_unlock(ptr noundef %tnl_lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool.not, label %if.end, label %ice_create_tunnel.exit.if.then_crit_edge

ice_create_tunnel.exit.if.then_crit_edge:         ; preds = %ice_create_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %ice_create_tunnel.exit.if.then_crit_edge, %ice_create_tunnel.exit.thread
  %status.1.i26 = phi i32 [ -12, %ice_create_tunnel.exit.thread ], [ %status.0.i, %ice_create_tunnel.exit.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.6, i32 noundef %status.1.i26) #21
  br label %cleanup

if.end:                                           ; preds = %ice_create_tunnel.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %90 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i23 = icmp eq ptr %90, null
  br i1 %tobool.not.i23, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv7 = trunc i16 %retval.0.i to i8
  %set_port_priv.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %set_port_priv.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_port_priv.i, align 4
  tail call void %92(ptr noundef %netdev, i32 noundef %table, i32 noundef %idx, i8 noundef zeroext %conv7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_udp_tunnel_unset_port(ptr noundef %netdev, i32 noundef %table, i32 noundef %idx, ptr nocapture noundef readonly %ti) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ti, align 2
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %hw_priv = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %hw_priv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_priv, align 2
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port, align 2
  %tnl_lock.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tnl_lock.i, i32 noundef 0) #16
  %tnl.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 58
  %idxprom.i = zext i8 %7 to i32
  %valid.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom.i, i32 4
  %10 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp ne i16 %5, 1
  %cond = zext i1 %cmp to i32
  %arrayidx.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cond)
  %cmp.not.i = icmp eq i32 %13, %cond
  br i1 %cmp.not.i, label %lor.rhs.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %port10.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom.i, i32 2
  %14 = ptrtoint ptr %port10.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %port10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %9)
  %cmp12.not.i = icmp eq i16 %15, %9
  br i1 %cmp12.not.i, label %if.end35.i, label %lor.rhs.i.do.end.i_crit_edge, !prof !159

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2181, i32 noundef 9, ptr noundef null) #16
  br label %ice_destroy_tunnel.exit.thread

if.end35.i:                                       ; preds = %lor.rhs.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 4098, i32 noundef 3520) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end35.i.ice_destroy_tunnel.exit.thread_crit_edge, label %if.end.i106.i

if.end35.i.ice_destroy_tunnel.exit.thread_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_destroy_tunnel.exit.thread

if.end.i106.i:                                    ; preds = %if.end35.i
  %data_end.i.i = getelementptr inbounds %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1024, ptr %data_end.i.i, align 2
  %19 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.not.i.i = icmp eq i16 %20, 0
  br i1 %cmp.not.i.i, label %if.end5.i.i, label %if.end.i106.i.ice_destroy_tunnel.exit_crit_edge

if.end.i106.i.ice_destroy_tunnel.exit_crit_edge:  ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_destroy_tunnel.exit

if.end5.i.i:                                      ; preds = %if.end.i106.i
  %reserved_section_table_entries.i.i = getelementptr inbounds %struct.ice_buf_build, ptr %call.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %reserved_section_table_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reserved_section_table_entries.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 509, i16 %22)
  %cmp8.i.i = icmp ugt i16 %22, 509
  br i1 %cmp8.i.i, label %if.end5.i.i.ice_destroy_tunnel.exit_crit_edge, label %ice_pkg_buf_alloc_section.exit.i

if.end5.i.i.ice_destroy_tunnel.exit_crit_edge:    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_destroy_tunnel.exit

ice_pkg_buf_alloc_section.exit.i:                 ; preds = %if.end5.i.i
  %add.i.i = add nuw nsw i16 %22, 2
  %23 = ptrtoint ptr %reserved_section_table_entries.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %add.i.i, ptr %reserved_section_table_entries.i.i, align 2
  %add.ptr.i111.i = getelementptr i8, ptr %call.i.i.i, i32 20
  %arrayidx.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 0
  %offset.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 5120, ptr %offset.i.i, align 4
  %size22.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %size22.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 23552, ptr %size22.i.i, align 2
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 939524096, ptr %arrayidx.i.i, align 4
  %27 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 28672, ptr %data_end.i.i, align 2
  %28 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %call.i.i.i, align 4
  %tobool46.not.i = icmp eq ptr %add.ptr.i111.i, null
  br i1 %tobool46.not.i, label %ice_pkg_buf_alloc_section.exit.i.ice_destroy_tunnel.exit_crit_edge, label %if.end12.i124.i

ice_pkg_buf_alloc_section.exit.i.ice_destroy_tunnel.exit_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_destroy_tunnel.exit

if.end12.i124.i:                                  ; preds = %ice_pkg_buf_alloc_section.exit.i
  %29 = ptrtoint ptr %add.ptr.i111.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 256, ptr %add.ptr.i111.i, align 2
  %30 = ptrtoint ptr %reserved_section_table_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reserved_section_table_entries.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %31)
  %cmp15.i123.i = icmp ugt i16 %31, 1
  br i1 %cmp15.i123.i, label %ice_pkg_buf_alloc_section.exit134.i, label %if.end12.i124.i.ice_destroy_tunnel.exit_crit_edge

if.end12.i124.i.ice_destroy_tunnel.exit_crit_edge: ; preds = %if.end12.i124.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_destroy_tunnel.exit

ice_pkg_buf_alloc_section.exit134.i:              ; preds = %if.end12.i124.i
  %add.ptr.i126.i = getelementptr i8, ptr %call.i.i.i, i32 112
  %arrayidx.i127.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %offset.i128.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 1, i32 1
  %32 = ptrtoint ptr %offset.i128.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 28672, ptr %offset.i128.i, align 4
  %size22.i129.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i.i, i32 0, i32 2, i32 1, i32 2
  %33 = ptrtoint ptr %size22.i129.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 23552, ptr %size22.i129.i, align 2
  %34 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1107296256, ptr %arrayidx.i127.i, align 4
  %35 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -13312, ptr %data_end.i.i, align 2
  %36 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 512, ptr %call.i.i.i, align 4
  %tobool52.not.i = icmp eq ptr %add.ptr.i126.i, null
  br i1 %tobool52.not.i, label %ice_pkg_buf_alloc_section.exit134.i.ice_destroy_tunnel.exit_crit_edge, label %if.end54.i

ice_pkg_buf_alloc_section.exit134.i.ice_destroy_tunnel.exit_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_destroy_tunnel.exit

if.end54.i:                                       ; preds = %ice_pkg_buf_alloc_section.exit134.i
  %37 = ptrtoint ptr %add.ptr.i126.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 256, ptr %add.ptr.i126.i, align 2
  %tcam.i = getelementptr i8, ptr %call.i.i.i, i32 24
  %boost_entry.i = getelementptr [16 x %struct.ice_tunnel_entry], ptr %tnl.i, i32 0, i32 %idxprom.i, i32 3
  %38 = ptrtoint ptr %boost_entry.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %boost_entry.i, align 4
  %40 = call ptr @memcpy(ptr %tcam.i, ptr %39, i32 88)
  %tcam60.i = getelementptr i8, ptr %call.i.i.i, i32 116
  %41 = call ptr @memcpy(ptr %tcam60.i, ptr %39, i32 88)
  %call68.i = tail call fastcc i32 @ice_update_pkg(ptr noundef %hw, ptr noundef nonnull %call.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %if.end54.i.ice_destroy_tunnel.exit_crit_edge

if.end54.i.ice_destroy_tunnel.exit_crit_edge:     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_destroy_tunnel.exit

if.then70.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %port10.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %port10.i, align 2
  br label %ice_destroy_tunnel.exit

ice_destroy_tunnel.exit.thread:                   ; preds = %if.end35.i.ice_destroy_tunnel.exit.thread_crit_edge, %do.end.i
  %status.1.i.ph = phi i32 [ -12, %if.end35.i.ice_destroy_tunnel.exit.thread_crit_edge ], [ -5, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %tnl_lock.i) #16
  br label %if.then

ice_destroy_tunnel.exit:                          ; preds = %if.then70.i, %if.end54.i.ice_destroy_tunnel.exit_crit_edge, %ice_pkg_buf_alloc_section.exit134.i.ice_destroy_tunnel.exit_crit_edge, %if.end12.i124.i.ice_destroy_tunnel.exit_crit_edge, %ice_pkg_buf_alloc_section.exit.i.ice_destroy_tunnel.exit_crit_edge, %if.end5.i.i.ice_destroy_tunnel.exit_crit_edge, %if.end.i106.i.ice_destroy_tunnel.exit_crit_edge
  %status.0.i = phi i32 [ %call68.i, %if.end54.i.ice_destroy_tunnel.exit_crit_edge ], [ 0, %if.then70.i ], [ -28, %ice_pkg_buf_alloc_section.exit134.i.ice_destroy_tunnel.exit_crit_edge ], [ -28, %ice_pkg_buf_alloc_section.exit.i.ice_destroy_tunnel.exit_crit_edge ], [ -28, %if.end.i106.i.ice_destroy_tunnel.exit_crit_edge ], [ -28, %if.end5.i.i.ice_destroy_tunnel.exit_crit_edge ], [ -28, %if.end12.i124.i.ice_destroy_tunnel.exit_crit_edge ]
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 8
  %dev.i136.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i136.i, ptr noundef nonnull %call.i.i.i) #16
  tail call void @mutex_unlock(ptr noundef %tnl_lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool.not, label %ice_destroy_tunnel.exit.cleanup_crit_edge, label %ice_destroy_tunnel.exit.if.then_crit_edge

ice_destroy_tunnel.exit.if.then_crit_edge:        ; preds = %ice_destroy_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

ice_destroy_tunnel.exit.cleanup_crit_edge:        ; preds = %ice_destroy_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %ice_destroy_tunnel.exit.if.then_crit_edge, %ice_destroy_tunnel.exit.thread
  %status.1.i15 = phi i32 [ %status.1.i.ph, %ice_destroy_tunnel.exit.thread ], [ %status.0.i, %ice_destroy_tunnel.exit.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.7, i32 noundef %status.1.i15) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ice_destroy_tunnel.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %ice_destroy_tunnel.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_find_prot_off(ptr nocapture noundef readonly %hw, i32 noundef %blk, i8 noundef zeroext %prof, i16 noundef zeroext %fv_idx, ptr nocapture noundef writeonly %prot, ptr nocapture noundef writeonly %off) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %prof to i32
  %count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  %2 = zext i8 %prof to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %2)
  %cmp.not = icmp ugt i16 %1, %2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %fvw = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 2
  %3 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fvw, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %fv_idx)
  %cmp9.not = icmp ugt i16 %4, %fv_idx
  br i1 %cmp9.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv8 = zext i16 %4 to i32
  %conv4 = zext i16 %fv_idx to i32
  %t = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 6
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %mul = mul nuw nsw i32 %conv8, %conv
  %add.ptr = getelementptr %struct.ice_fv_word, ptr %6, i32 %mul
  %arrayidx22 = getelementptr %struct.ice_fv_word, ptr %add.ptr, i32 %conv4
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx22, align 1
  %9 = ptrtoint ptr %prot to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %prot, align 1
  %off25 = getelementptr inbounds %struct.ice_fv_word, ptr %arrayidx22, i32 0, i32 1
  %10 = ptrtoint ptr %off25 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %off25, align 1
  %12 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %off, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_fill_tbl(ptr nocapture noundef readonly %hw, i32 noundef %block_id, i32 noundef %sid) unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.ice_pkg_enum, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %state) #16
  %seg = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 54
  %0 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_fill_tbl.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_fill_tbl, %if.then4)) #16
          to label %cleanup [label %if.then4], !srcloc !155

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_fill_tbl.__UNIQUE_ID_ddebug636, ptr noundef %dev, ptr noundef nonnull @.str.38) #16
  br label %cleanup

if.end6:                                          ; preds = %entry
  %4 = call ptr @memset(ptr %state, i32 0, i32 36)
  %call8 = call fastcc ptr @ice_pkg_enum_section(ptr noundef nonnull %1, ptr noundef nonnull %state, i32 noundef %sid)
  %tobool9.not155 = icmp eq ptr %call8, null
  br i1 %tobool9.not155, label %if.end6.cleanup_crit_edge, label %while.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end6
  %fvw = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 4, i32 2
  %t75 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 4, i32 6
  %count79 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 4, i32 1
  %prof_redir = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 3
  %count59 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 3, i32 2
  %t41 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 2, i32 3
  %count45 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 2, i32 1
  %t26 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 1, i32 2
  %count30 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id, i32 1, i32 4
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %block_id
  %t = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 2
  %count14 = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 4
  %5 = zext i32 %sid to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %sid, label %while.body.lr.ph.cleanup_crit_edge [
    i32 12, label %while.body.lr.ph.while.body.preheader_crit_edge
    i32 32, label %while.body.lr.ph.while.body.preheader_crit_edge158
    i32 42, label %while.body.lr.ph.while.body.preheader_crit_edge159
    i32 22, label %while.body.lr.ph.while.body.preheader_crit_edge160
    i32 82, label %while.body.lr.ph.while.body.preheader_crit_edge161
    i32 13, label %while.body.lr.ph.while.body.preheader_crit_edge162
    i32 33, label %while.body.lr.ph.while.body.preheader_crit_edge163
    i32 43, label %while.body.lr.ph.while.body.preheader_crit_edge164
    i32 23, label %while.body.lr.ph.while.body.preheader_crit_edge165
    i32 83, label %while.body.lr.ph.while.body.preheader_crit_edge166
    i32 14, label %while.body.lr.ph.while.body.preheader_crit_edge167
    i32 34, label %while.body.lr.ph.while.body.preheader_crit_edge168
    i32 44, label %while.body.lr.ph.while.body.preheader_crit_edge169
    i32 24, label %while.body.lr.ph.while.body.preheader_crit_edge170
    i32 84, label %while.body.lr.ph.while.body.preheader_crit_edge171
    i32 15, label %while.body.lr.ph.while.body.preheader_crit_edge172
    i32 35, label %while.body.lr.ph.while.body.preheader_crit_edge173
    i32 45, label %while.body.lr.ph.while.body.preheader_crit_edge174
    i32 25, label %while.body.lr.ph.while.body.preheader_crit_edge175
    i32 85, label %while.body.lr.ph.while.body.preheader_crit_edge176
    i32 16, label %while.body.lr.ph.while.body.preheader_crit_edge177
    i32 36, label %while.body.lr.ph.while.body.preheader_crit_edge178
    i32 46, label %while.body.lr.ph.while.body.preheader_crit_edge179
    i32 26, label %while.body.lr.ph.while.body.preheader_crit_edge180
    i32 86, label %while.body.lr.ph.while.body.preheader_crit_edge181
  ]

while.body.lr.ph.while.body.preheader_crit_edge181: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge180: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge179: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge178: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge177: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge176: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge175: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge174: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge173: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge172: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge171: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge170: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge169: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge168: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge167: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge166: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge165: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge164: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge163: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge162: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge161: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge160: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge159: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge158: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge:  ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

while.body.lr.ph.cleanup_crit_edge:               ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.preheader:                             ; preds = %while.body.lr.ph.while.body.preheader_crit_edge, %while.body.lr.ph.while.body.preheader_crit_edge158, %while.body.lr.ph.while.body.preheader_crit_edge159, %while.body.lr.ph.while.body.preheader_crit_edge160, %while.body.lr.ph.while.body.preheader_crit_edge161, %while.body.lr.ph.while.body.preheader_crit_edge162, %while.body.lr.ph.while.body.preheader_crit_edge163, %while.body.lr.ph.while.body.preheader_crit_edge164, %while.body.lr.ph.while.body.preheader_crit_edge165, %while.body.lr.ph.while.body.preheader_crit_edge166, %while.body.lr.ph.while.body.preheader_crit_edge167, %while.body.lr.ph.while.body.preheader_crit_edge168, %while.body.lr.ph.while.body.preheader_crit_edge169, %while.body.lr.ph.while.body.preheader_crit_edge170, %while.body.lr.ph.while.body.preheader_crit_edge171, %while.body.lr.ph.while.body.preheader_crit_edge172, %while.body.lr.ph.while.body.preheader_crit_edge173, %while.body.lr.ph.while.body.preheader_crit_edge174, %while.body.lr.ph.while.body.preheader_crit_edge175, %while.body.lr.ph.while.body.preheader_crit_edge176, %while.body.lr.ph.while.body.preheader_crit_edge177, %while.body.lr.ph.while.body.preheader_crit_edge178, %while.body.lr.ph.while.body.preheader_crit_edge179, %while.body.lr.ph.while.body.preheader_crit_edge180, %while.body.lr.ph.while.body.preheader_crit_edge181
  br label %while.body

while.body:                                       ; preds = %if.end90.while.body_crit_edge, %while.body.preheader
  %offset.0157 = phi i32 [ %add96, %if.end90.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %sect.0156 = phi ptr [ %call97, %if.end90.while.body_crit_edge ], [ %call8, %while.body.preheader ]
  %6 = zext i32 %sid to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %sid, label %sw.bb62 [
    i32 12, label %while.body.sw.bb_crit_edge
    i32 32, label %while.body.sw.bb_crit_edge182
    i32 42, label %while.body.sw.bb_crit_edge183
    i32 22, label %while.body.sw.bb_crit_edge184
    i32 82, label %while.body.sw.bb_crit_edge185
    i32 13, label %while.body.sw.bb17_crit_edge
    i32 33, label %while.body.sw.bb17_crit_edge186
    i32 43, label %while.body.sw.bb17_crit_edge187
    i32 23, label %while.body.sw.bb17_crit_edge188
    i32 83, label %while.body.sw.bb17_crit_edge189
    i32 14, label %while.body.sw.bb33_crit_edge
    i32 34, label %while.body.sw.bb33_crit_edge190
    i32 44, label %while.body.sw.bb33_crit_edge191
    i32 24, label %while.body.sw.bb33_crit_edge192
    i32 84, label %while.body.sw.bb33_crit_edge193
    i32 15, label %while.body.sw.bb48_crit_edge
    i32 35, label %while.body.sw.bb48_crit_edge194
    i32 45, label %while.body.sw.bb48_crit_edge195
    i32 25, label %while.body.sw.bb48_crit_edge196
    i32 85, label %while.body.sw.bb48_crit_edge197
  ]

while.body.sw.bb48_crit_edge197:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb48

while.body.sw.bb48_crit_edge196:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb48

while.body.sw.bb48_crit_edge195:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb48

while.body.sw.bb48_crit_edge194:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb48

while.body.sw.bb48_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb48

while.body.sw.bb33_crit_edge193:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

while.body.sw.bb33_crit_edge192:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

while.body.sw.bb33_crit_edge191:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

while.body.sw.bb33_crit_edge190:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

while.body.sw.bb33_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

while.body.sw.bb17_crit_edge189:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb17

while.body.sw.bb17_crit_edge188:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb17

while.body.sw.bb17_crit_edge187:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb17

while.body.sw.bb17_crit_edge186:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb17

while.body.sw.bb17_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb17

while.body.sw.bb_crit_edge185:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

while.body.sw.bb_crit_edge184:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

while.body.sw.bb_crit_edge183:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

while.body.sw.bb_crit_edge182:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge182, %while.body.sw.bb_crit_edge183, %while.body.sw.bb_crit_edge184, %while.body.sw.bb_crit_edge185
  %value = getelementptr inbounds %struct.ice_xlt1_section, ptr %sect.0156, i32 0, i32 2
  %7 = ptrtoint ptr %sect.0156 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sect.0156, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %count14 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count14, align 4
  %conv15 = zext i16 %11 to i32
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.body.sw.bb17_crit_edge, %while.body.sw.bb17_crit_edge186, %while.body.sw.bb17_crit_edge187, %while.body.sw.bb17_crit_edge188, %while.body.sw.bb17_crit_edge189
  %value18 = getelementptr inbounds %struct.ice_xlt2_section, ptr %sect.0156, i32 0, i32 2
  %12 = ptrtoint ptr %sect.0156 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sect.0156, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv21 = zext i16 %14 to i32
  %mul22 = shl nuw nsw i32 %conv21, 1
  %15 = ptrtoint ptr %count30 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count30, align 4
  %conv31 = zext i16 %16 to i32
  %mul32 = shl nuw nsw i32 %conv31, 1
  br label %sw.epilog

sw.bb33:                                          ; preds = %while.body.sw.bb33_crit_edge, %while.body.sw.bb33_crit_edge190, %while.body.sw.bb33_crit_edge191, %while.body.sw.bb33_crit_edge192, %while.body.sw.bb33_crit_edge193
  %entry34 = getelementptr inbounds %struct.ice_prof_id_section, ptr %sect.0156, i32 0, i32 1
  %17 = ptrtoint ptr %sect.0156 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sect.0156, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv37 = zext i16 %19 to i32
  %mul38 = mul nuw nsw i32 %conv37, 13
  %20 = ptrtoint ptr %count45 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %count45, align 4
  %conv46 = zext i16 %21 to i32
  %mul47 = mul nuw nsw i32 %conv46, 13
  br label %sw.epilog

sw.bb48:                                          ; preds = %while.body.sw.bb48_crit_edge, %while.body.sw.bb48_crit_edge194, %while.body.sw.bb48_crit_edge195, %while.body.sw.bb48_crit_edge196, %while.body.sw.bb48_crit_edge197
  %redir_value = getelementptr inbounds %struct.ice_prof_redir_section, ptr %sect.0156, i32 0, i32 2
  %22 = ptrtoint ptr %sect.0156 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sect.0156, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv51 = zext i16 %24 to i32
  %25 = ptrtoint ptr %count59 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %count59, align 4
  %conv60 = zext i16 %26 to i32
  br label %sw.epilog

sw.bb62:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %fv = getelementptr inbounds %struct.ice_sw_fv_section, ptr %sect.0156, i32 0, i32 2
  %27 = ptrtoint ptr %sect.0156 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sect.0156, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv65 = zext i16 %29 to i32
  %30 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fvw, align 2
  %conv69 = zext i16 %31 to i32
  %mul70 = shl nuw nsw i32 %conv69, 2
  %mul71 = mul i32 %mul70, %conv65
  %32 = ptrtoint ptr %count79 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %count79, align 4
  %conv80 = zext i16 %33 to i32
  %mul87 = mul i32 %mul70, %conv80
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb62, %sw.bb48, %sw.bb33, %sw.bb17, %sw.bb
  %src.0 = phi ptr [ %fv, %sw.bb62 ], [ %redir_value, %sw.bb48 ], [ %entry34, %sw.bb33 ], [ %value18, %sw.bb17 ], [ %value, %sw.bb ]
  %dst.0.in = phi ptr [ %t75, %sw.bb62 ], [ %prof_redir, %sw.bb48 ], [ %t41, %sw.bb33 ], [ %t26, %sw.bb17 ], [ %t, %sw.bb ]
  %sect_len.0 = phi i32 [ %mul71, %sw.bb62 ], [ %conv51, %sw.bb48 ], [ %mul38, %sw.bb33 ], [ %mul22, %sw.bb17 ], [ %conv, %sw.bb ]
  %dst_len.0 = phi i32 [ %mul87, %sw.bb62 ], [ %conv60, %sw.bb48 ], [ %mul47, %sw.bb33 ], [ %mul32, %sw.bb17 ], [ %conv15, %sw.bb ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_len.0, i32 %offset.0157)
  %cmp = icmp ult i32 %dst_len.0, %offset.0157
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end90

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end90:                                         ; preds = %sw.epilog
  %34 = ptrtoint ptr %dst.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %dst.0 = load ptr, ptr %dst.0.in, align 4
  %add = add i32 %sect_len.0, %offset.0157
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %dst_len.0)
  %cmp91 = icmp ugt i32 %add, %dst_len.0
  %sub = sub i32 %dst_len.0, %offset.0157
  %spec.select = select i1 %cmp91, i32 %sub, i32 %sect_len.0
  %add.ptr95 = getelementptr i8, ptr %dst.0, i32 %offset.0157
  %35 = call ptr @memcpy(ptr %add.ptr95, ptr %src.0, i32 %spec.select)
  %add96 = add i32 %spec.select, %offset.0157
  %call97 = call fastcc ptr @ice_pkg_enum_section(ptr noundef null, ptr noundef nonnull %state, i32 noundef %sid)
  %tobool9.not = icmp eq ptr %call97, null
  br i1 %tobool9.not, label %if.end90.cleanup_crit_edge, label %if.end90.while.body_crit_edge

if.end90.while.body_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end90.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %while.body.lr.ph.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %do.body
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %state) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_free_hw_tbls(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr12.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %ice_free_vsig_tbl.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %ice_free_vsig_tbl.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv
  %is_list_init = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 7
  %0 = ptrtoint ptr %is_list_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_list_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body
  %prof_map_lock.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 7
  tail call void @mutex_lock_nested(ptr noundef %prof_map_lock.i, i32 noundef 0) #16
  %prof_map.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 5
  %2 = ptrtoint ptr %prof_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prof_map.i, align 4
  %cmp.not30.i = icmp eq ptr %3, %prof_map.i
  br i1 %cmp.not30.i, label %if.then.ice_free_prof_map.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.ice_free_prof_map.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_prof_map.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %del.031.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %del.031.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %del.031.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %del.031.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %del.031.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %del.031.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %del.031.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %del.031.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %del.031.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %del.031.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr12.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef %del.031.i) #16
  %cmp.not.i = icmp eq ptr %tmp.0.i, %prof_map.i
  br i1 %cmp.not.i, label %list_del.exit.i.ice_free_prof_map.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.ice_free_prof_map.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_prof_map.exit

ice_free_prof_map.exit:                           ; preds = %list_del.exit.i.ice_free_prof_map.exit_crit_edge, %if.then.ice_free_prof_map.exit_crit_edge
  %15 = ptrtoint ptr %prof_map.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %prof_map.i, ptr %prof_map.i, align 4
  %prev.i29.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %prof_map.i, ptr %prev.i29.i, align 4
  tail call void @mutex_unlock(ptr noundef %prof_map_lock.i) #16
  tail call void @mutex_destroy(ptr noundef %prof_map_lock.i) #16
  %17 = trunc i32 %indvars.iv to i8
  tail call fastcc void @ice_free_flow_profs(ptr noundef %hw, i8 noundef zeroext %17)
  %arrayidx7 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 %indvars.iv
  tail call void @mutex_destroy(ptr noundef %arrayidx7) #16
  %18 = ptrtoint ptr %is_list_init to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_list_init, align 1
  br label %if.end

if.end:                                           ; preds = %ice_free_prof_map.exit, %for.body.if.end_crit_edge
  %xlt2.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1
  %19 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xlt2.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.ice_free_vsig_tbl.exit_crit_edge, label %if.end.for.body.i203_crit_edge

if.end.for.body.i203_crit_edge:                   ; preds = %if.end
  br label %for.body.i203

if.end.ice_free_vsig_tbl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_vsig_tbl.exit

for.body.i203:                                    ; preds = %for.inc.i.for.body.i203_crit_edge, %if.end.for.body.i203_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i203_crit_edge ], [ 1, %if.end.for.body.i203_crit_edge ]
  %21 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xlt2.i, align 4
  %in_use.i = getelementptr %struct.ice_vsig_entry, ptr %22, i32 %indvars.iv.i, i32 2
  %23 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool8.not.i = icmp eq i8 %24, 0
  br i1 %tobool8.not.i, label %for.body.i203.for.inc.i_crit_edge, label %if.then9.i

for.body.i203.for.inc.i_crit_edge:                ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #18
  %25 = trunc i32 %indvars.iv.i to i16
  %call.i = tail call fastcc i32 @ice_vsig_free(ptr noundef %hw, i32 noundef %indvars.iv, i16 noundef zeroext %25) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i203.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 768
  br i1 %exitcond.not.i, label %for.inc.i.ice_free_vsig_tbl.exit_crit_edge, label %for.inc.i.for.body.i203_crit_edge

for.inc.i.for.body.i203_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i203

for.inc.i.ice_free_vsig_tbl.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_vsig_tbl.exit

ice_free_vsig_tbl.exit:                           ; preds = %for.inc.i.ice_free_vsig_tbl.exit_crit_edge, %if.end.ice_free_vsig_tbl.exit_crit_edge
  %26 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr12.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %ptypes = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 1
  %28 = ptrtoint ptr %ptypes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptypes, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %29) #16
  %30 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr12.i, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  tail call void @devm_kfree(ptr noundef %dev20, ptr noundef %33) #16
  %34 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr12.i, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %t = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 2
  %36 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %t, align 4
  tail call void @devm_kfree(ptr noundef %dev29, ptr noundef %37) #16
  %38 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr12.i, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %t42 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1, i32 2
  %40 = ptrtoint ptr %t42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %t42, align 4
  tail call void @devm_kfree(ptr noundef %dev38, ptr noundef %41) #16
  %42 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr12.i, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xlt2.i, align 4
  tail call void @devm_kfree(ptr noundef %dev47, ptr noundef %45) #16
  %46 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr12.i, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %vsis = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1, i32 1
  %48 = ptrtoint ptr %vsis to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vsis, align 4
  tail call void @devm_kfree(ptr noundef %dev56, ptr noundef %49) #16
  %50 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr12.i, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %t69 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 2, i32 3
  %52 = ptrtoint ptr %t69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t69, align 4
  tail call void @devm_kfree(ptr noundef %dev65, ptr noundef %53) #16
  %54 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr12.i, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %prof_redir = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 3
  %56 = ptrtoint ptr %prof_redir to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prof_redir, align 4
  tail call void @devm_kfree(ptr noundef %dev74, ptr noundef %57) #16
  %58 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr12.i, align 8
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %t88 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 6
  %60 = ptrtoint ptr %t88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %t88, align 4
  tail call void @devm_kfree(ptr noundef %dev83, ptr noundef %61) #16
  %62 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr12.i, align 8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %ref_count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 3
  %64 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ref_count, align 4
  tail call void @devm_kfree(ptr noundef %dev93, ptr noundef %65) #16
  %66 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr12.i, align 8
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %written = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 8
  %68 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %written, align 4
  tail call void @devm_kfree(ptr noundef %dev102, ptr noundef %69) #16
  %70 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr12.i, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %mask_ena = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 4
  %72 = ptrtoint ptr %mask_ena to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mask_ena, align 4
  tail call void @devm_kfree(ptr noundef %dev111, ptr noundef %73) #16
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %ice_free_vsig_tbl.exit.for.body_crit_edge

ice_free_vsig_tbl.exit.for.body_crit_edge:        ; preds = %ice_free_vsig_tbl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %ice_free_vsig_tbl.exit
  %rss_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71
  %74 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rss_list_head, align 4
  %cmp126.not209 = icmp eq ptr %75, %rss_list_head
  br i1 %cmp126.not209, label %for.end.for.end141_crit_edge, label %for.end.for.body128_crit_edge

for.end.for.body128_crit_edge:                    ; preds = %for.end
  br label %for.body128

for.end.for.end141_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end141

for.body128:                                      ; preds = %list_del.exit.for.body128_crit_edge, %for.end.for.body128_crit_edge
  %r.0210 = phi ptr [ %rt.0, %list_del.exit.for.body128_crit_edge ], [ %75, %for.end.for.body128_crit_edge ]
  %76 = ptrtoint ptr %r.0210 to i32
  call void @__asan_load4_noabort(i32 %76)
  %rt.0 = load ptr, ptr %r.0210, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r.0210) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body128.list_del.exit_crit_edge

for.body128.list_del.exit_crit_edge:              ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i204 = getelementptr inbounds %struct.list_head, ptr %r.0210, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i204 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i204, align 4
  %79 = ptrtoint ptr %r.0210 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %r.0210, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body128.list_del.exit_crit_edge
  %83 = ptrtoint ptr %r.0210 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %r.0210, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %r.0210, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %85 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr12.i, align 8
  %dev134 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev134, ptr noundef %r.0210) #16
  %cmp126.not = icmp eq ptr %rt.0, %rss_list_head
  br i1 %cmp126.not, label %list_del.exit.for.end141_crit_edge, label %list_del.exit.for.body128_crit_edge

list_del.exit.for.body128_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body128

list_del.exit.for.end141_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end141

for.end141:                                       ; preds = %list_del.exit.for.end141_crit_edge, %for.end.for.end141_crit_edge
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @mutex_destroy(ptr noundef %rss_locks) #16
  tail call fastcc void @ice_shutdown_prof_masks(ptr noundef %hw, i32 noundef 3) #16
  tail call fastcc void @ice_shutdown_prof_masks(ptr noundef %hw, i32 noundef 2) #16
  %blk142 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 61
  %87 = call ptr @memset(ptr %blk142, i32 0, i32 2760)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_free_flow_profs(ptr noundef %hw, i8 noundef zeroext %blk_idx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %blk_idx to i32
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 %idxprom
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #16
  %arrayidx2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx2, align 8
  %cmp.not75 = icmp eq ptr %1, %arrayidx2
  br i1 %cmp.not75, label %entry.for.end43_crit_edge, label %for.body.lr.ph

entry.for.end43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end43

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr36 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %p.076 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.078, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.076 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.078 = load ptr, ptr %p.076, align 8
  %entries = getelementptr inbounds %struct.ice_flow_prof, ptr %p.076, i32 0, i32 5
  %3 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entries, align 4
  %cmp24.not72 = icmp eq ptr %4, %entries
  br i1 %cmp24.not72, label %for.body.for.end_crit_edge, label %for.body.for.body26_crit_edge

for.body.for.body26_crit_edge:                    ; preds = %for.body
  br label %for.body26

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body.for.body26_crit_edge
  %e.073 = phi ptr [ %t.0, %for.body26.for.body26_crit_edge ], [ %4, %for.body.for.body26_crit_edge ]
  %5 = ptrtoint ptr %e.073 to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.0 = load ptr, ptr %e.073, align 8
  %6 = ptrtoint ptr %e.073 to i32
  %conv27 = zext i32 %6 to i64
  %call = tail call i32 @ice_flow_rem_entry(ptr noundef %hw, i32 noundef %idxprom, i64 noundef %conv27) #16
  %cmp24.not = icmp eq ptr %t.0, %entries
  br i1 %cmp24.not, label %for.body26.for.end_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body26

for.body26.for.end_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body26.for.end_crit_edge, %for.body.for.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.076) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.076, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %p.076 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.076, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %p.076 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %p.076, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.076, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %entries_lock = getelementptr inbounds %struct.ice_flow_prof, ptr %p.076, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %entries_lock) #16
  %15 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr36, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %p.076) #16
  %cmp.not = icmp eq ptr %tmp.078, %arrayidx2
  br i1 %cmp.not, label %list_del.exit.for.end43_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end43_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end43

for.end43:                                        ; preds = %list_del.exit.for.end43_crit_edge, %entry.for.end43_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx) #16
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx2, ptr %arrayidx2, align 4
  %prev.i71 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 %idxprom, i32 1
  %18 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx2, ptr %prev.i71, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_clear_hw_tbls(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr12.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %ice_free_vsig_tbl.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %ice_free_vsig_tbl.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv
  %prof_redir2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 3
  %xlt214 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1
  %is_list_init = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 7
  %0 = ptrtoint ptr %is_list_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_list_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body
  %prof_map_lock.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 7
  tail call void @mutex_lock_nested(ptr noundef %prof_map_lock.i, i32 noundef 0) #16
  %prof_map.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 5
  %2 = ptrtoint ptr %prof_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prof_map.i, align 4
  %cmp.not30.i = icmp eq ptr %3, %prof_map.i
  br i1 %cmp.not30.i, label %if.then.ice_free_prof_map.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.ice_free_prof_map.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_prof_map.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %del.031.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %del.031.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %del.031.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %del.031.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %del.031.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %del.031.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %del.031.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %del.031.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %del.031.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %del.031.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr12.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef %del.031.i) #16
  %cmp.not.i = icmp eq ptr %tmp.0.i, %prof_map.i
  br i1 %cmp.not.i, label %list_del.exit.i.ice_free_prof_map.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.ice_free_prof_map.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_prof_map.exit

ice_free_prof_map.exit:                           ; preds = %list_del.exit.i.ice_free_prof_map.exit_crit_edge, %if.then.ice_free_prof_map.exit_crit_edge
  %15 = ptrtoint ptr %prof_map.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %prof_map.i, ptr %prof_map.i, align 4
  %prev.i29.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %prof_map.i, ptr %prev.i29.i, align 4
  tail call void @mutex_unlock(ptr noundef %prof_map_lock.i) #16
  %17 = trunc i32 %indvars.iv to i8
  tail call fastcc void @ice_free_flow_profs(ptr noundef %hw, i8 noundef zeroext %17)
  br label %if.end

if.end:                                           ; preds = %ice_free_prof_map.exit, %for.body.if.end_crit_edge
  %18 = ptrtoint ptr %xlt214 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xlt214, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.ice_free_vsig_tbl.exit_crit_edge, label %if.end.for.body.i97_crit_edge

if.end.for.body.i97_crit_edge:                    ; preds = %if.end
  br label %for.body.i97

if.end.ice_free_vsig_tbl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_vsig_tbl.exit

for.body.i97:                                     ; preds = %for.inc.i.for.body.i97_crit_edge, %if.end.for.body.i97_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i97_crit_edge ], [ 1, %if.end.for.body.i97_crit_edge ]
  %20 = ptrtoint ptr %xlt214 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xlt214, align 4
  %in_use.i = getelementptr %struct.ice_vsig_entry, ptr %21, i32 %indvars.iv.i, i32 2
  %22 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not.i = icmp eq i8 %23, 0
  br i1 %tobool8.not.i, label %for.body.i97.for.inc.i_crit_edge, label %if.then9.i

for.body.i97.for.inc.i_crit_edge:                 ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #18
  %24 = trunc i32 %indvars.iv.i to i16
  %call.i = tail call fastcc i32 @ice_vsig_free(ptr noundef %hw, i32 noundef %indvars.iv, i16 noundef zeroext %24) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i97.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 768
  br i1 %exitcond.not.i, label %for.inc.i.ice_free_vsig_tbl.exit_crit_edge, label %for.inc.i.for.body.i97_crit_edge

for.inc.i.for.body.i97_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i97

for.inc.i.ice_free_vsig_tbl.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_vsig_tbl.exit

ice_free_vsig_tbl.exit:                           ; preds = %for.inc.i.ice_free_vsig_tbl.exit_crit_edge, %if.end.ice_free_vsig_tbl.exit_crit_edge
  %ptypes = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 1
  %25 = ptrtoint ptr %ptypes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptypes, align 4
  %count = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 4
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %count, align 4
  %conv23 = zext i16 %28 to i32
  %mul = shl nuw nsw i32 %conv23, 3
  %29 = call ptr @memset(ptr %26, i32 0, i32 %mul)
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 2048)
  %t = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 2
  %33 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t, align 4
  %35 = load i16, ptr %count, align 4
  %conv25 = zext i16 %35 to i32
  %36 = call ptr @memset(ptr %34, i32 0, i32 %conv25)
  %vsis = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1, i32 1
  %37 = ptrtoint ptr %vsis to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vsis, align 4
  %count27 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1, i32 4
  %39 = ptrtoint ptr %count27 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %count27, align 4
  %conv28 = zext i16 %40 to i32
  %mul29 = mul nuw nsw i32 %conv28, 12
  %41 = call ptr @memset(ptr %38, i32 0, i32 %mul29)
  %42 = ptrtoint ptr %xlt214 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xlt214, align 4
  %44 = load i16, ptr %count27, align 4
  %conv31 = zext i16 %44 to i32
  %mul32 = shl nuw nsw i32 %conv31, 4
  %45 = call ptr @memset(ptr %43, i32 0, i32 %mul32)
  %t33 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 1, i32 2
  %46 = ptrtoint ptr %t33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %t33, align 4
  %48 = load i16, ptr %count27, align 4
  %conv35 = zext i16 %48 to i32
  %mul36 = shl nuw nsw i32 %conv35, 1
  %49 = call ptr @memset(ptr %47, i32 0, i32 %mul36)
  %t37 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 2, i32 3
  %50 = ptrtoint ptr %t37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t37, align 4
  %count38 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 2, i32 1
  %52 = ptrtoint ptr %count38 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %count38, align 4
  %conv39 = zext i16 %53 to i32
  %mul40 = mul nuw nsw i32 %conv39, 13
  %54 = call ptr @memset(ptr %51, i32 0, i32 %mul40)
  %55 = ptrtoint ptr %prof_redir2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prof_redir2, align 4
  %count42 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 3, i32 2
  %57 = ptrtoint ptr %count42 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %count42, align 4
  %conv43 = zext i16 %58 to i32
  %59 = call ptr @memset(ptr %56, i32 0, i32 %conv43)
  %t45 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 6
  %60 = ptrtoint ptr %t45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %t45, align 4
  %count46 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 1
  %62 = ptrtoint ptr %count46 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %count46, align 4
  %conv47 = zext i16 %63 to i32
  %mul48 = shl nuw nsw i32 %conv47, 2
  %fvw = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 2
  %64 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %fvw, align 2
  %conv49 = zext i16 %65 to i32
  %mul50 = mul i32 %mul48, %conv49
  %66 = call ptr @memset(ptr %61, i32 0, i32 %mul50)
  %ref_count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 3
  %67 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ref_count, align 4
  %69 = load i16, ptr %count46, align 4
  %conv52 = zext i16 %69 to i32
  %mul53 = shl nuw nsw i32 %conv52, 1
  %70 = call ptr @memset(ptr %68, i32 0, i32 %mul53)
  %written = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 8
  %71 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %written, align 4
  %73 = load i16, ptr %count46, align 4
  %conv55 = zext i16 %73 to i32
  %74 = call ptr @memset(ptr %72, i32 0, i32 %conv55)
  %mask_ena = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv, i32 4, i32 4
  %75 = ptrtoint ptr %mask_ena to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mask_ena, align 4
  %77 = load i16, ptr %count46, align 4
  %conv58 = zext i16 %77 to i32
  %mul59 = shl nuw nsw i32 %conv58, 2
  %78 = call ptr @memset(ptr %76, i32 0, i32 %mul59)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %ice_free_vsig_tbl.exit.for.body_crit_edge

ice_free_vsig_tbl.exit.for.body_crit_edge:        ; preds = %ice_free_vsig_tbl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %ice_free_vsig_tbl.exit
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_hw_tbls(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @__mutex_init(ptr noundef %rss_locks, ptr noundef nonnull @.str.8, ptr noundef nonnull @ice_init_hw_tbls.__key) #16
  %rss_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71
  %0 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %rss_list_head, ptr %rss_list_head, align 4
  %prev.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rss_list_head, ptr %prev.i, align 4
  tail call fastcc void @ice_init_prof_masks(ptr noundef %hw, i32 noundef 3) #16
  tail call fastcc void @ice_init_prof_masks(ptr noundef %hw, i32 noundef 2) #16
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc239.for.body_crit_edge, %entry
  %indvars.iv429 = phi i32 [ 0, %entry ], [ %indvars.iv.next430, %for.inc239.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429
  %prof_redir2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 3
  %prof6 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 2
  %xlt214 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 1
  %es18 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4
  %is_list_init = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 7
  %2 = ptrtoint ptr %is_list_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_list_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc239_crit_edge

for.body.for.inc239_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc239

if.end:                                           ; preds = %for.body
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 %indvars.iv429
  tail call void @__mutex_init(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @ice_init_flow_profs.__key) #16
  %arrayidx2.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 %indvars.iv429
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx2.i, ptr %arrayidx2.i, align 4
  %prev.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 %indvars.iv429, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx2.i, ptr %prev.i.i, align 4
  %prof_map_lock = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 7
  tail call void @__mutex_init(ptr noundef %prof_map_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @ice_init_hw_tbls.__key.9) #16
  %prof_map = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 5
  %6 = ptrtoint ptr %prof_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %prof_map, ptr %prof_map, align 4
  %prev.i343 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i343 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %prof_map, ptr %prev.i343, align 4
  %8 = ptrtoint ptr %is_list_init to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_list_init, align 1
  %arrayidx30 = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429
  %overwrite = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 8
  %9 = ptrtoint ptr %overwrite to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %overwrite, align 2
  %overwrite34 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 6
  %11 = ptrtoint ptr %overwrite34 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %overwrite34, align 4
  %reverse = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 9
  %12 = ptrtoint ptr %reverse to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reverse, align 1
  %reverse37 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 9
  %14 = ptrtoint ptr %reverse37 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %reverse37, align 4
  %arrayidx39 = getelementptr [5 x [5 x i32]], ptr @ice_blk_sids, i32 0, i32 %indvars.iv429
  %15 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx39, align 4
  %sid = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sid, align 4
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx30, align 2
  %count = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 4
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %count, align 4
  %conv45 = zext i16 %19 to i32
  %21 = shl nuw nsw i32 %conv45, 3
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %21, i32 noundef 3520) #16
  %ptypes = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 1
  %24 = ptrtoint ptr %ptypes to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %ptypes, align 4
  %tobool47.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool47.not, label %if.end.err_crit_edge, label %if.end49

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end49:                                         ; preds = %if.end
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %call5.i.i344 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev54, i32 noundef 2048, i32 noundef 3520) #16
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i344, ptr %arrayidx, align 4
  %tobool57.not = icmp eq ptr %call5.i.i344, null
  br i1 %tobool57.not, label %if.end49.err_crit_edge, label %devm_kcalloc.exit350

if.end49.err_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

devm_kcalloc.exit350:                             ; preds = %if.end49
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count, align 4
  %conv66 = zext i16 %29 to i32
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call5.i.i347 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev64, i32 noundef %conv66, i32 noundef 3520) #16
  %t = getelementptr inbounds %struct.ice_xlt1, ptr %arrayidx, i32 0, i32 2
  %32 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i347, ptr %t, align 4
  %tobool69.not = icmp eq ptr %call5.i.i347, null
  br i1 %tobool69.not, label %devm_kcalloc.exit350.err_crit_edge, label %if.end71

devm_kcalloc.exit350.err_crit_edge:               ; preds = %devm_kcalloc.exit350
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end71:                                         ; preds = %devm_kcalloc.exit350
  %arrayidx74 = getelementptr [5 x [5 x i32]], ptr @ice_blk_sids, i32 0, i32 %indvars.iv429, i32 1
  %33 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx74, align 4
  %sid75 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 1, i32 3
  %35 = ptrtoint ptr %sid75 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sid75, align 4
  %xlt278 = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 1
  %36 = ptrtoint ptr %xlt278 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %xlt278, align 2
  %count79 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 1, i32 4
  %38 = ptrtoint ptr %count79 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %count79, align 4
  %conv86 = zext i16 %37 to i32
  %39 = mul nuw nsw i32 %conv86, 12
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %call5.i.i351 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev84, i32 noundef %39, i32 noundef 3520) #16
  %vsis = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 1, i32 1
  %42 = ptrtoint ptr %vsis to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call5.i.i351, ptr %vsis, align 4
  %tobool89.not = icmp eq ptr %call5.i.i351, null
  br i1 %tobool89.not, label %if.end71.err_crit_edge, label %devm_kcalloc.exit358

if.end71.err_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

devm_kcalloc.exit358:                             ; preds = %if.end71
  %43 = ptrtoint ptr %count79 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %count79, align 4
  %conv98 = zext i16 %44 to i32
  %45 = shl nuw nsw i32 %conv98, 4
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %call5.i.i355 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev96, i32 noundef %45, i32 noundef 3520) #16
  %48 = ptrtoint ptr %xlt214 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call5.i.i355, ptr %xlt214, align 4
  %tobool101.not = icmp eq ptr %call5.i.i355, null
  br i1 %tobool101.not, label %devm_kcalloc.exit358.err_crit_edge, label %for.cond104.preheader

devm_kcalloc.exit358.err_crit_edge:               ; preds = %devm_kcalloc.exit358
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

for.cond104.preheader:                            ; preds = %devm_kcalloc.exit358
  %49 = ptrtoint ptr %count79 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %count79, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp108422.not = icmp eq i16 %50, 0
  br i1 %cmp108422.not, label %for.cond104.preheader.devm_kcalloc.exit363_crit_edge, label %for.cond104.preheader.for.body110_crit_edge

for.cond104.preheader.for.body110_crit_edge:      ; preds = %for.cond104.preheader
  br label %for.body110

for.cond104.preheader.devm_kcalloc.exit363_crit_edge: ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %devm_kcalloc.exit363

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %for.cond104.preheader.for.body110_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body110.for.body110_crit_edge ], [ 0, %for.cond104.preheader.for.body110_crit_edge ]
  %51 = ptrtoint ptr %xlt214 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xlt214, align 4
  %arrayidx113 = getelementptr %struct.ice_vsig_entry, ptr %52, i32 %indvars.iv
  %53 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx113, ptr %arrayidx113, align 4
  %prev.i359 = getelementptr inbounds %struct.list_head, ptr %arrayidx113, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i359 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx113, ptr %prev.i359, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %55 = ptrtoint ptr %count79 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %count79, align 4
  %57 = zext i16 %56 to i32
  %cmp108 = icmp ult i32 %indvars.iv.next, %57
  br i1 %cmp108, label %for.body110.for.body110_crit_edge, label %for.body110.devm_kcalloc.exit363_crit_edge

for.body110.devm_kcalloc.exit363_crit_edge:       ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #18
  br label %devm_kcalloc.exit363

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body110

devm_kcalloc.exit363:                             ; preds = %for.body110.devm_kcalloc.exit363_crit_edge, %for.cond104.preheader.devm_kcalloc.exit363_crit_edge
  %.lcssa = phi i16 [ 0, %for.cond104.preheader.devm_kcalloc.exit363_crit_edge ], [ %56, %for.body110.devm_kcalloc.exit363_crit_edge ]
  %conv107 = zext i16 %.lcssa to i32
  %58 = shl nuw nsw i32 %conv107, 1
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 8
  %dev118 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %call5.i.i360 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev118, i32 noundef %58, i32 noundef 3520) #16
  %t122 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 1, i32 2
  %61 = ptrtoint ptr %t122 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i360, ptr %t122, align 4
  %tobool124.not = icmp eq ptr %call5.i.i360, null
  br i1 %tobool124.not, label %devm_kcalloc.exit363.err_crit_edge, label %if.end126

devm_kcalloc.exit363.err_crit_edge:               ; preds = %devm_kcalloc.exit363
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end126:                                        ; preds = %devm_kcalloc.exit363
  %arrayidx129 = getelementptr [5 x [5 x i32]], ptr @ice_blk_sids, i32 0, i32 %indvars.iv429, i32 2
  %62 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx129, align 4
  %64 = ptrtoint ptr %prof6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %prof6, align 4
  %prof_tcam = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 2
  %65 = ptrtoint ptr %prof_tcam to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %prof_tcam, align 2
  %count133 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 2, i32 1
  %67 = ptrtoint ptr %count133 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %count133, align 4
  %prof_id = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 3
  %68 = ptrtoint ptr %prof_id to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %prof_id, align 2
  %max_prof_id = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 2, i32 2
  %70 = ptrtoint ptr %max_prof_id to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %max_prof_id, align 2
  %prof_cdid_bits = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 4
  %71 = ptrtoint ptr %prof_cdid_bits to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %prof_cdid_bits, align 2
  %cdid_bits = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 2, i32 4
  %73 = ptrtoint ptr %cdid_bits to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %cdid_bits, align 4
  %conv144 = zext i16 %66 to i32
  %74 = mul nuw nsw i32 %conv144, 13
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr, align 8
  %dev142 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %call5.i.i364 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev142, i32 noundef %74, i32 noundef 3520) #16
  %t146 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 2, i32 3
  %77 = ptrtoint ptr %t146 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call5.i.i364, ptr %t146, align 4
  %tobool148.not = icmp eq ptr %call5.i.i364, null
  br i1 %tobool148.not, label %if.end126.err_crit_edge, label %if.end150

if.end126.err_crit_edge:                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end150:                                        ; preds = %if.end126
  %arrayidx153 = getelementptr [5 x [5 x i32]], ptr @ice_blk_sids, i32 0, i32 %indvars.iv429, i32 3
  %78 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx153, align 4
  %sid154 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 3, i32 1
  %80 = ptrtoint ptr %sid154 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %sid154, align 4
  %prof_redir157 = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 5
  %81 = ptrtoint ptr %prof_redir157 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %prof_redir157, align 2
  %count158 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 3, i32 2
  %83 = ptrtoint ptr %count158 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %count158, align 4
  %conv165 = zext i16 %82 to i32
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr, align 8
  %dev163 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %call5.i.i368 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev163, i32 noundef %conv165, i32 noundef 3520) #16
  %86 = ptrtoint ptr %prof_redir2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call5.i.i368, ptr %prof_redir2, align 4
  %tobool169.not = icmp eq ptr %call5.i.i368, null
  br i1 %tobool169.not, label %if.end150.err_crit_edge, label %if.end171

if.end150.err_crit_edge:                          ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end171:                                        ; preds = %if.end150
  %arrayidx174 = getelementptr [5 x [5 x i32]], ptr @ice_blk_sids, i32 0, i32 %indvars.iv429, i32 4
  %87 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx174, align 4
  %89 = ptrtoint ptr %es18 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %es18, align 4
  %es178 = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 6
  %90 = ptrtoint ptr %es178 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %es178, align 2
  %count179 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 1
  %92 = ptrtoint ptr %count179 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %count179, align 4
  %fvw = getelementptr [5 x %struct.ice_blk_size_details], ptr @blk_sizes, i32 0, i32 %indvars.iv429, i32 7
  %93 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %fvw, align 2
  %fvw182 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 2
  %95 = ptrtoint ptr %fvw182 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %fvw182, align 2
  %conv189 = zext i16 %91 to i32
  %conv191 = zext i16 %94 to i32
  %mul = mul nuw i32 %conv191, %conv189
  %96 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #16
  %97 = extractvalue { i32, i1 } %96, 1
  br i1 %97, label %devm_kcalloc.exit375.thread, label %devm_kcalloc.exit375, !prof !160

devm_kcalloc.exit375.thread:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #18
  %t193408 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 6
  %98 = ptrtoint ptr %t193408 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %t193408, align 4
  br label %err

devm_kcalloc.exit375:                             ; preds = %if.end171
  %99 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr, align 8
  %dev187 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %101 = extractvalue { i32, i1 } %96, 0
  %call5.i.i372 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev187, i32 noundef %101, i32 noundef 3520) #16
  %t193 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 6
  %102 = ptrtoint ptr %t193 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call5.i.i372, ptr %t193, align 4
  %tobool195.not = icmp eq ptr %call5.i.i372, null
  br i1 %tobool195.not, label %devm_kcalloc.exit375.err_crit_edge, label %devm_kcalloc.exit379

devm_kcalloc.exit375.err_crit_edge:               ; preds = %devm_kcalloc.exit375
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

devm_kcalloc.exit379:                             ; preds = %devm_kcalloc.exit375
  %103 = ptrtoint ptr %count179 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %count179, align 4
  %conv204 = zext i16 %104 to i32
  %105 = shl nuw nsw i32 %conv204, 1
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr, align 8
  %dev202 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %call5.i.i376 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev202, i32 noundef %105, i32 noundef 3520) #16
  %ref_count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 3
  %108 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call5.i.i376, ptr %ref_count, align 4
  %tobool207.not = icmp eq ptr %call5.i.i376, null
  br i1 %tobool207.not, label %devm_kcalloc.exit379.err_crit_edge, label %devm_kcalloc.exit383

devm_kcalloc.exit379.err_crit_edge:               ; preds = %devm_kcalloc.exit379
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

devm_kcalloc.exit383:                             ; preds = %devm_kcalloc.exit379
  %109 = ptrtoint ptr %count179 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %count179, align 4
  %conv216 = zext i16 %110 to i32
  %111 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr, align 8
  %dev214 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %call5.i.i380 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev214, i32 noundef %conv216, i32 noundef 3520) #16
  %written = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 8
  %113 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call5.i.i380, ptr %written, align 4
  %tobool219.not = icmp eq ptr %call5.i.i380, null
  br i1 %tobool219.not, label %devm_kcalloc.exit383.err_crit_edge, label %devm_kcalloc.exit387

devm_kcalloc.exit383.err_crit_edge:               ; preds = %devm_kcalloc.exit383
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

devm_kcalloc.exit387:                             ; preds = %devm_kcalloc.exit383
  %114 = ptrtoint ptr %count179 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %count179, align 4
  %conv228 = zext i16 %115 to i32
  %116 = shl nuw nsw i32 %conv228, 2
  %117 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr, align 8
  %dev226 = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  %call5.i.i384 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev226, i32 noundef %116, i32 noundef 3520) #16
  %mask_ena = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %indvars.iv429, i32 4, i32 4
  %119 = ptrtoint ptr %mask_ena to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call5.i.i384, ptr %mask_ena, align 4
  %tobool231.not = icmp eq ptr %call5.i.i384, null
  br i1 %tobool231.not, label %devm_kcalloc.exit387.err_crit_edge, label %devm_kcalloc.exit387.for.inc239_crit_edge

devm_kcalloc.exit387.for.inc239_crit_edge:        ; preds = %devm_kcalloc.exit387
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc239

devm_kcalloc.exit387.err_crit_edge:               ; preds = %devm_kcalloc.exit387
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

for.inc239:                                       ; preds = %devm_kcalloc.exit387.for.inc239_crit_edge, %for.body.for.inc239_crit_edge
  %indvars.iv.next430 = add nuw nsw i32 %indvars.iv429, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next430, 5
  br i1 %exitcond.not, label %for.inc239.cleanup242_crit_edge, label %for.inc239.for.body_crit_edge

for.inc239.for.body_crit_edge:                    ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc239.cleanup242_crit_edge:                  ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup242

err:                                              ; preds = %devm_kcalloc.exit387.err_crit_edge, %devm_kcalloc.exit383.err_crit_edge, %devm_kcalloc.exit379.err_crit_edge, %devm_kcalloc.exit375.err_crit_edge, %devm_kcalloc.exit375.thread, %if.end150.err_crit_edge, %if.end126.err_crit_edge, %devm_kcalloc.exit363.err_crit_edge, %devm_kcalloc.exit358.err_crit_edge, %if.end71.err_crit_edge, %devm_kcalloc.exit350.err_crit_edge, %if.end49.err_crit_edge, %if.end.err_crit_edge
  tail call void @ice_free_hw_tbls(ptr noundef %hw)
  br label %cleanup242

cleanup242:                                       ; preds = %err, %for.inc239.cleanup242_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %for.inc239.cleanup242_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_prof(ptr noundef %hw, i32 noundef %blk, i64 noundef %id, ptr noundef %ptypes, ptr nocapture noundef readonly %attr, i16 noundef zeroext %attr_cnt, ptr noundef %es, ptr noundef readonly %masks) local_unnamed_addr #1 align 64 {
entry:
  %get_prof.i = alloca i16, align 2
  %ptgs_used = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ptgs_used) #16
  %0 = call ptr @memset(ptr %ptgs_used, i32 0, i32 128)
  %prof_map_lock = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 7
  tail call void @mutex_lock_nested(ptr noundef %prof_map_lock, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %blk)
  %cmp.i = icmp eq i32 %blk, 2
  br i1 %cmp.i, label %if.end.i.thread, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %count.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 1
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %count.i, align 4
  %3 = and i16 %2, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp536.not.i = icmp eq i16 %3, 0
  br i1 %cmp536.not.i, label %for.cond.preheader.i.if.then_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %fvw.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 2
  %4 = ptrtoint ptr %fvw.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fvw.i, align 2
  %conv8.i = zext i16 %5 to i32
  %t.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 6
  %6 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t.i, align 4
  %mul13.i = shl nuw nsw i32 %conv8.i, 2
  %tobool16.not.i = icmp eq ptr %masks, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12.not.i.i = icmp eq i16 %5, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %cmp12.not.i.i
  %first.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 1
  %count.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 2
  %mask_ena.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 4
  %wide.trip.count.i = zext i16 %3 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = trunc i32 %indvars.iv.i to i16
  %mul.i = mul i16 %5, %8
  %idxprom.i = zext i16 %mul.i to i32
  %arrayidx10.i = getelementptr %struct.ice_fv_word, ptr %7, i32 %idxprom.i
  %bcmp.i = tail call i32 @bcmp(ptr %arrayidx10.i, ptr %es, i32 %mul13.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i
  br i1 %or.cond.i, label %if.end15.i.ice_find_prof_id_with_mask.exit_crit_edge, label %for.body.lr.ph.i.i

if.end15.i.ice_find_prof_id_with_mask.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_prof_id_with_mask.exit

for.body.lr.ph.i.i:                               ; preds = %if.end15.i
  %9 = ptrtoint ptr %first.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %first.i.i.i, align 4
  %conv11.i.i.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count.i.i.i, align 2
  %conv15.i.i.i = zext i16 %12 to i32
  %add.i.i.i = add nuw nsw i32 %conv15.i.i.i, %conv11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp1693.not.i.i.i = icmp eq i16 %12, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cmp16.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %cmp.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr i16, ptr %masks, i32 %indvars.iv.i.i
  %13 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx4.i.i, align 2
  %15 = add i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %switch.selectcmp.i.i.i = icmp ult i16 %15, 2
  br i1 %cmp1693.not.i.i.i, label %for.body.i.i.for.end.thread.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.body.i.i.for.end.thread.i.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.thread.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body.i.i
  %16 = ptrtoint ptr %mask_ena.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask_ena.i.i.i, align 4
  %arrayidx20.i.i.i = getelementptr i32, ptr %17, i32 %indvars.iv.i
  %18 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %conv695.i.i.i = phi i32 [ %conv11.i.i.i, %for.body.lr.ph.i.i.i ], [ %conv6.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %i.094.i.i.i = phi i16 [ %10, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %conv695.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then22.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.then22.i.i.i:                                  ; preds = %for.body.i.i.i
  %in_use.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv695.i.i.i, i32 3
  %20 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_use.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool30.not.i.i.i, label %if.then22.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then22.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then22.i.i.i
  %idx37.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv695.i.i.i, i32 1
  %22 = ptrtoint ptr %idx37.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %idx37.i.i.i, align 2
  %24 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i.i, i32 %24)
  %cmp40.i.i.i = icmp eq i32 %indvars.iv.i.i, %24
  br i1 %cmp40.i.i.i, label %for.end.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %if.then22.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add i16 %i.094.i.i.i, 1
  %conv6.i.i.i = zext i16 %inc.i.i.i to i32
  %cmp16.i.i.i = icmp ugt i32 %add.i.i.i, %conv6.i.i.i
  br i1 %cmp16.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.for.end.thread.i.i.i_crit_edge

for.inc.i.i.i.for.end.thread.i.i.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.thread.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %arrayidx28.le.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv695.i.i.i
  %25 = ptrtoint ptr %arrayidx28.le.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx28.le.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %14)
  %cmp52.i.i.i = icmp ne i16 %26, %14
  %brmerge.i.i.i = select i1 %switch.selectcmp.i.i.i, i1 true, i1 %cmp52.i.i.i
  br i1 %brmerge.i.i.i, label %for.end.i.i.i.ice_prof_has_mask.exit.i_crit_edge, label %for.end.i.i.i.for.inc.i.i_crit_edge

for.end.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.end.i.i.i.ice_prof_has_mask.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_prof_has_mask.exit.i

for.end.thread.i.i.i:                             ; preds = %for.inc.i.i.i.for.end.thread.i.i.i_crit_edge, %for.body.i.i.for.end.thread.i.i.i_crit_edge
  br i1 %switch.selectcmp.i.i.i, label %for.end.thread.i.i.i.for.inc.i.i_crit_edge, label %for.end.thread.i.i.i.ice_prof_has_mask.exit.i_crit_edge

for.end.thread.i.i.i.ice_prof_has_mask.exit.i_crit_edge: ; preds = %for.end.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_prof_has_mask.exit.i

for.end.thread.i.i.i.for.inc.i.i_crit_edge:       ; preds = %for.end.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.end.thread.i.i.i.for.inc.i.i_crit_edge, %for.end.i.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i.i, i32 %conv8.i)
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %conv8.i
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %conv8.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ice_prof_has_mask.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.ice_prof_has_mask.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_prof_has_mask.exit.i

ice_prof_has_mask.exit.i:                         ; preds = %for.inc.i.i.ice_prof_has_mask.exit.i_crit_edge, %for.end.thread.i.i.i.ice_prof_has_mask.exit.i_crit_edge, %for.end.i.i.i.ice_prof_has_mask.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp16.i.i, %for.end.i.i.i.ice_prof_has_mask.exit.i_crit_edge ], [ %cmp16.i.i, %for.end.thread.i.i.i.ice_prof_has_mask.exit.i_crit_edge ], [ %cmp.i.i, %for.inc.i.i.ice_prof_has_mask.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %ice_prof_has_mask.exit.i.for.inc.i_crit_edge, label %ice_prof_has_mask.exit.i.ice_find_prof_id_with_mask.exit_crit_edge

ice_prof_has_mask.exit.i.ice_find_prof_id_with_mask.exit_crit_edge: ; preds = %ice_prof_has_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_prof_id_with_mask.exit

ice_prof_has_mask.exit.i.for.inc.i_crit_edge:     ; preds = %ice_prof_has_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %ice_prof_has_mask.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

ice_find_prof_id_with_mask.exit:                  ; preds = %ice_prof_has_mask.exit.i.ice_find_prof_id_with_mask.exit_crit_edge, %if.end15.i.ice_find_prof_id_with_mask.exit_crit_edge
  %27 = trunc i32 %indvars.iv.i to i8
  %28 = trunc i32 %indvars.iv.i to i16
  %.pre = and i16 %28, 255
  br label %if.end17

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %for.cond.preheader.i.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %get_prof.i) #16
  %29 = ptrtoint ptr %get_prof.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %get_prof.i, align 2, !annotation !154
  %30 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %blk, label %if.then.ice_alloc_prof_id.exit.thread_crit_edge [
    i32 2, label %if.then.if.end.i_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.ice_alloc_prof_id.exit.thread_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_alloc_prof_id.exit.thread

sw.bb1.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb1.i.i, %if.then.if.end.i_crit_edge
  %storemerge.i.i = phi i16 [ 96, %sw.bb1.i.i ], [ 88, %if.then.if.end.i_crit_edge ]
  %call1.i = call i32 @ice_alloc_hw_res(ptr noundef %hw, i16 noundef zeroext %storemerge.i.i, i16 noundef zeroext 1, i1 noundef zeroext false, ptr noundef nonnull %get_prof.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i161 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i161, label %if.end.if.end11_crit_edge, label %if.end.i.ice_alloc_prof_id.exit.thread_crit_edge

if.end.i.ice_alloc_prof_id.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_alloc_prof_id.exit.thread

if.end.i.thread:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %get_prof.i) #16
  %31 = ptrtoint ptr %get_prof.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %get_prof.i, align 2, !annotation !154
  %call1.i207 = call i32 @ice_alloc_hw_res(ptr noundef %hw, i16 noundef zeroext 88, i16 noundef zeroext 1, i1 noundef zeroext false, ptr noundef nonnull %get_prof.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i207)
  %tobool.not.i161208 = icmp eq i32 %call1.i207, 0
  br i1 %tobool.not.i161208, label %if.then6, label %if.end.i.thread.ice_alloc_prof_id.exit.thread_crit_edge

if.end.i.thread.ice_alloc_prof_id.exit.thread_crit_edge: ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_alloc_prof_id.exit.thread

ice_alloc_prof_id.exit.thread:                    ; preds = %if.end.i.thread.ice_alloc_prof_id.exit.thread_crit_edge, %if.end.i.ice_alloc_prof_id.exit.thread_crit_edge, %if.then.ice_alloc_prof_id.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.then.ice_alloc_prof_id.exit.thread_crit_edge ], [ %call1.i, %if.end.i.ice_alloc_prof_id.exit.thread_crit_edge ], [ %call1.i207, %if.end.i.thread.ice_alloc_prof_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %get_prof.i) #16
  br label %err_ice_add_prof

if.end.if.end11_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %get_prof.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %get_prof.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %get_prof.i) #16
  %conv.i = trunc i16 %33 to i8
  %.pre247 = and i16 %33, 255
  br label %if.end11

if.then6:                                         ; preds = %if.end.i.thread
  %34 = ptrtoint ptr %get_prof.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %get_prof.i, align 2
  %conv.i209 = trunc i16 %35 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %get_prof.i) #16
  %conv = and i16 %35, 255
  %call7 = call fastcc i32 @ice_update_fd_swap(ptr noundef %hw, i16 noundef zeroext %conv, ptr noundef %es)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.err_ice_add_prof_crit_edge

if.then6.err_ice_add_prof_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %conv12.pre-phi = phi i16 [ %.pre247, %if.end.if.end11_crit_edge ], [ %conv, %if.then6.if.end11_crit_edge ]
  %prof_id.1204 = phi i8 [ %conv.i, %if.end.if.end11_crit_edge ], [ %conv.i209, %if.then6.if.end11_crit_edge ]
  %call13 = call fastcc i32 @ice_update_prof_masking(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %conv12.pre-phi, ptr noundef %masks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.err_ice_add_prof_crit_edge

if.end11.err_ice_add_prof_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof

if.end16:                                         ; preds = %if.end11
  %fvw.i162 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 2
  %36 = ptrtoint ptr %fvw.i162 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fvw.i162, align 2
  %conv2.i = zext i16 %37 to i32
  %conv3.i = mul i16 %37, %conv12.pre-phi
  %tobool.not.i163 = icmp eq ptr %es, null
  br i1 %tobool.not.i163, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i164 = zext i8 %prof_id.1204 to i32
  %t.i165 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 6
  %38 = ptrtoint ptr %t.i165 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t.i165, align 4
  %idxprom.i166 = zext i16 %conv3.i to i32
  %arrayidx7.i = getelementptr %struct.ice_fv_word, ptr %39, i32 %idxprom.i166
  %mul13.i167 = shl nuw nsw i32 %conv2.i, 2
  %40 = call ptr @memset(ptr %arrayidx7.i, i32 0, i32 %mul13.i167)
  %written.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 8
  %41 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %written.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %42, i32 %conv.i164
  %43 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx18.i, align 1
  br label %if.end17

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %t22.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 6
  %44 = ptrtoint ptr %t22.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %t22.i, align 4
  %idxprom23.i = zext i16 %conv3.i to i32
  %arrayidx24.i = getelementptr %struct.ice_fv_word, ptr %45, i32 %idxprom23.i
  %mul30.i = shl nuw nsw i32 %conv2.i, 2
  %46 = call ptr @memcpy(ptr %arrayidx24.i, ptr %es, i32 %mul30.i)
  br label %if.end17

if.end17:                                         ; preds = %if.else.i, %if.then.i, %ice_find_prof_id_with_mask.exit
  %.pre-phi = phi i16 [ %conv12.pre-phi, %if.else.i ], [ %conv12.pre-phi, %if.then.i ], [ %.pre, %ice_find_prof_id_with_mask.exit ]
  %prof_id.2 = phi i8 [ %prof_id.1204, %if.else.i ], [ %prof_id.1204, %if.then.i ], [ %27, %ice_find_prof_id_with_mask.exit ]
  %count.i169 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 1
  %47 = ptrtoint ptr %count.i169 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %count.i169, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %.pre-phi)
  %cmp.i170 = icmp ult i16 %48, %.pre-phi
  br i1 %cmp.i170, label %if.end17.ice_prof_inc_ref.exit_crit_edge, label %if.end.i173

if.end17.ice_prof_inc_ref.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_prof_inc_ref.exit

if.end.i173:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i171 = zext i8 %prof_id.2 to i32
  %ref_count.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 3
  %49 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ref_count.i, align 4
  %arrayidx7.i172 = getelementptr i16, ptr %50, i32 %conv.i171
  %51 = ptrtoint ptr %arrayidx7.i172 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx7.i172, align 2
  %inc.i = add i16 %52, 1
  store i16 %inc.i, ptr %arrayidx7.i172, align 2
  br label %ice_prof_inc_ref.exit

ice_prof_inc_ref.exit:                            ; preds = %if.end.i173, %if.end17.ice_prof_inc_ref.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #16
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %ice_prof_inc_ref.exit.err_ice_add_prof_crit_edge, label %if.end22

ice_prof_inc_ref.exit.err_ice_add_prof_crit_edge: ; preds = %ice_prof_inc_ref.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof

if.end22:                                         ; preds = %ice_prof_inc_ref.exit
  %profile_cookie = getelementptr inbounds %struct.ice_prof_map, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %profile_cookie to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %id, ptr %profile_cookie, align 8
  %prof_id23 = getelementptr inbounds %struct.ice_prof_map, ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %prof_id23 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %prof_id.2, ptr %prof_id23, align 8
  %ptg_cnt = getelementptr inbounds %struct.ice_prof_map, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ptg_cnt, align 1
  %context = getelementptr inbounds %struct.ice_prof_map, ptr %call.i, i32 0, i32 2
  %58 = ptrtoint ptr %context to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %context, align 8
  %ptypes.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %attr_cnt)
  %cmp37.not.i = icmp eq i16 %attr_cnt, 0
  %wide.trip.count.i178 = zext i16 %attr_cnt to i32
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup91.land.rhs_crit_edge, %if.end22
  %indvars.iv = phi i32 [ 0, %if.end22 ], [ %indvars.iv.next, %cleanup91.land.rhs_crit_edge ]
  %bytes.0240 = phi i32 [ 128, %if.end22 ], [ %bytes.1, %cleanup91.land.rhs_crit_edge ]
  %59 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ptg_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %60)
  %cmp27 = icmp ult i8 %60, 32
  br i1 %cmp27, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %arrayidx29 = getelementptr i8, ptr %ptypes, i32 %indvars.iv
  %61 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool30.not = icmp eq i8 %62, 0
  br i1 %tobool30.not, label %while.body.cleanup91_crit_edge, label %if.end32

while.body.cleanup91_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup91

if.end32:                                         ; preds = %while.body
  %call35 = call i32 @_find_next_bit_be(ptr noundef %arrayidx29, i32 noundef 8, i32 noundef 0) #16
  %conv37236 = and i32 %call35, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv37236)
  %cmp38237 = icmp ult i32 %conv37236, 8
  br i1 %cmp38237, label %for.body.lr.ph, label %if.end32.cleanup91_crit_edge

if.end32.cleanup91_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup91

for.body.lr.ph:                                   ; preds = %if.end32
  %mul = shl nuw nsw i32 %indvars.iv, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv37238 = phi i32 [ %conv37236, %for.body.lr.ph ], [ %conv37, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %conv37238, %mul
  %conv42 = trunc i32 %add to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %conv42)
  %cmp.i174 = icmp ugt i16 %conv42, 1023
  br i1 %cmp.i174, label %for.body.for.inc_crit_edge, label %if.end46

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end46:                                         ; preds = %for.body
  %63 = ptrtoint ptr %ptypes.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ptypes.i, align 4
  %ptg4.i = getelementptr %struct.ice_ptg_ptype, ptr %64, i32 %add, i32 1
  %65 = ptrtoint ptr %ptg4.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ptg4.i, align 4
  %conv47 = zext i8 %66 to i32
  %div3.i = lshr i32 %conv47, 5
  %arrayidx.i = getelementptr i32, ptr %ptgs_used, i32 %div3.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv47, 31
  %69 = shl nuw i32 1, %and.i
  %70 = and i32 %69, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool50.not = icmp eq i32 %70, 0
  br i1 %tobool50.not, label %if.end52, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end52:                                         ; preds = %if.end46
  %or.i = or i32 %69, %68
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or.i, ptr %arrayidx.i, align 4
  br i1 %cmp37.not.i, label %if.end52.if.then61_crit_edge, label %if.end52.for.body.i182.outer_crit_edge

if.end52.for.body.i182.outer_crit_edge:           ; preds = %if.end52
  br label %for.body.i182.outer

if.end52.if.then61_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then61

for.body.i182.outer:                              ; preds = %for.inc.i188.thread.for.body.i182.outer_crit_edge, %if.end52.for.body.i182.outer_crit_edge
  %indvars.iv.i180.ph = phi i32 [ %indvars.iv.next.i186226, %for.inc.i188.thread.for.body.i182.outer_crit_edge ], [ 0, %if.end52.for.body.i182.outer_crit_edge ]
  %found.0.off038.i.ph = phi i1 [ true, %for.inc.i188.thread.for.body.i182.outer_crit_edge ], [ false, %if.end52.for.body.i182.outer_crit_edge ]
  br label %for.body.i182

for.body.i182:                                    ; preds = %for.inc.i188.for.body.i182_crit_edge, %for.body.i182.outer
  %indvars.iv.i180 = phi i32 [ %indvars.iv.next.i186, %for.inc.i188.for.body.i182_crit_edge ], [ %indvars.iv.i180.ph, %for.body.i182.outer ]
  %arrayidx.i181 = getelementptr %struct.ice_ptype_attributes, ptr %attr, i32 %indvars.iv.i180
  %72 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i181, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %conv42)
  %cmp6.i = icmp eq i16 %73, %conv42
  br i1 %cmp6.i, label %if.then.i185, label %for.inc.i188

if.then.i185:                                     ; preds = %for.body.i182
  %74 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ptg_cnt, align 1
  %idxprom9.i = zext i8 %75 to i32
  %arrayidx10.i183 = getelementptr %struct.ice_prof_map, ptr %call.i, i32 0, i32 5, i32 %idxprom9.i
  %76 = ptrtoint ptr %arrayidx10.i183 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %66, ptr %arrayidx10.i183, align 1
  %attrib.i = getelementptr %struct.ice_ptype_attributes, ptr %attr, i32 %indvars.iv.i180, i32 1
  %77 = ptrtoint ptr %attrib.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %attrib.i, align 4
  %arrayidx16.i = getelementptr %struct.ice_prof_map, ptr %call.i, i32 0, i32 6, i32 %idxprom9.i
  %arrayidx.i.i = getelementptr [4 x %struct.ice_ptype_attrib_info], ptr @ice_ptype_attributes, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %arrayidx.i.i, align 2
  %81 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %arrayidx16.i, align 2
  %inc.i184 = add i8 %75, 1
  store i8 %inc.i184, ptr %ptg_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %inc.i184)
  %cmp19.i = icmp ugt i8 %inc.i184, 31
  br i1 %cmp19.i, label %if.then.i185.cleanup91_crit_edge, label %for.inc.i188.thread

if.then.i185.cleanup91_crit_edge:                 ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup91

for.inc.i188:                                     ; preds = %for.body.i182
  %indvars.iv.next.i186 = add nuw nsw i32 %indvars.iv.i180, 1
  %exitcond.not.i187 = icmp eq i32 %indvars.iv.next.i186, %wide.trip.count.i178
  br i1 %exitcond.not.i187, label %for.end.i, label %for.inc.i188.for.body.i182_crit_edge

for.inc.i188.for.body.i182_crit_edge:             ; preds = %for.inc.i188
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i182

for.inc.i188.thread:                              ; preds = %if.then.i185
  %indvars.iv.next.i186226 = add nuw nsw i32 %indvars.iv.i180, 1
  %exitcond.not.i187227 = icmp eq i32 %indvars.iv.next.i186226, %wide.trip.count.i178
  br i1 %exitcond.not.i187227, label %for.inc.i188.thread.for.inc_crit_edge, label %for.inc.i188.thread.for.body.i182.outer_crit_edge

for.inc.i188.thread.for.body.i182.outer_crit_edge: ; preds = %for.inc.i188.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i182.outer

for.inc.i188.thread.for.inc_crit_edge:            ; preds = %for.inc.i188.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.end.i:                                        ; preds = %for.inc.i188
  br i1 %found.0.off038.i.ph, label %for.end.i.for.inc_crit_edge, label %for.end.i.if.then61_crit_edge

for.end.i.if.then61_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then61

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then61:                                        ; preds = %for.end.i.if.then61_crit_edge, %if.end52.if.then61_crit_edge
  %82 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ptg_cnt, align 1
  %idxprom64 = zext i8 %83 to i32
  %arrayidx65 = getelementptr %struct.ice_prof_map, ptr %call.i, i32 0, i32 5, i32 %idxprom64
  %84 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %66, ptr %arrayidx65, align 1
  %arrayidx69 = getelementptr %struct.ice_prof_map, ptr %call.i, i32 0, i32 6, i32 %idxprom64
  %85 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %arrayidx69, align 2
  %mask = getelementptr %struct.ice_prof_map, ptr %call.i, i32 0, i32 6, i32 %idxprom64, i32 1
  %86 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %mask, align 2
  %inc75 = add i8 %83, 1
  store i8 %inc75, ptr %ptg_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %inc75)
  %cmp77 = icmp ugt i8 %inc75, 31
  br i1 %cmp77, label %if.then61.cleanup91_crit_edge, label %if.then61.for.inc_crit_edge

if.then61.for.inc_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then61.cleanup91_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup91

for.inc:                                          ; preds = %if.then61.for.inc_crit_edge, %for.end.i.for.inc_crit_edge, %for.inc.i188.thread.for.inc_crit_edge, %if.end46.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add86 = add nuw nsw i32 %conv37238, 1
  %call87 = call i32 @_find_next_bit_be(ptr noundef %arrayidx29, i32 noundef 8, i32 noundef %add86) #16
  %conv37 = and i32 %call87, 255
  %cmp38 = icmp ult i32 %conv37, 8
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.cleanup91_crit_edge

for.inc.cleanup91_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup91

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup91:                                        ; preds = %for.inc.cleanup91_crit_edge, %if.then61.cleanup91_crit_edge, %if.then.i185.cleanup91_crit_edge, %if.end32.cleanup91_crit_edge, %while.body.cleanup91_crit_edge
  %bytes.1 = add nsw i32 %bytes.0240, -1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %tobool24.not = icmp eq i32 %bytes.1, 0
  br i1 %tobool24.not, label %cleanup91.while.end_crit_edge, label %cleanup91.land.rhs_crit_edge

cleanup91.land.rhs_crit_edge:                     ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

cleanup91.while.end_crit_edge:                    ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %cleanup91.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %prof_map = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 5
  %87 = ptrtoint ptr %prof_map to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prof_map, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %prof_map, ptr noundef %88) #16
  br i1 %call.i.i, label %if.end.i.i, label %while.end.err_ice_add_prof_crit_edge

while.end.err_ice_add_prof_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %88, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %prof_map, ptr %prev3.i.i, align 4
  %92 = ptrtoint ptr %prof_map to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call.i, ptr %prof_map, align 4
  br label %err_ice_add_prof

err_ice_add_prof:                                 ; preds = %if.end.i.i, %while.end.err_ice_add_prof_crit_edge, %ice_prof_inc_ref.exit.err_ice_add_prof_crit_edge, %if.end11.err_ice_add_prof_crit_edge, %if.then6.err_ice_add_prof_crit_edge, %ice_alloc_prof_id.exit.thread
  %status.0 = phi i32 [ %call7, %if.then6.err_ice_add_prof_crit_edge ], [ %call13, %if.end11.err_ice_add_prof_crit_edge ], [ -12, %ice_prof_inc_ref.exit.err_ice_add_prof_crit_edge ], [ %retval.0.i.ph, %ice_alloc_prof_id.exit.thread ], [ 0, %while.end.err_ice_add_prof_crit_edge ], [ 0, %if.end.i.i ]
  call void @mutex_unlock(ptr noundef %prof_map_lock) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ptgs_used) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_update_fd_swap(ptr nocapture noundef readonly %hw, i16 noundef zeroext %prof_id, ptr nocapture noundef %es) unnamed_addr #1 align 64 {
entry:
  %pair_list.sroa.0 = alloca i32, align 4
  %pair_start = alloca [16 x i8], align 1
  %used = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pair_list.sroa.0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pair_start) #16
  %0 = call ptr @memset(ptr %pair_start, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %used) #16
  %1 = call ptr @memset(ptr %used, i32 0, i32 48)
  %2 = ptrtoint ptr %pair_list.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pair_list.sroa.0, align 4
  %fvw = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 2, i32 4, i32 2
  %3 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fvw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp496.not = icmp eq i16 %4, 0
  br i1 %cmp496.not, label %entry.for.cond47.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.inc44.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %first_free.0.lcssa = phi i8 [ -2, %entry.for.cond47.preheader_crit_edge ], [ %first_free.1, %for.inc44.for.cond47.preheader_crit_edge ]
  br label %for.body51

for.body:                                         ; preds = %for.inc44.for.body_crit_edge, %entry.for.body_crit_edge
  %conv501 = phi i32 [ %conv, %for.inc44.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %first_free.0500 = phi i8 [ %first_free.1, %for.inc44.for.body_crit_edge ], [ -2, %entry.for.body_crit_edge ]
  %i.0498 = phi i8 [ %inc45, %for.inc44.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %pair_list.promoted495497 = phi i32 [ %pair_list.promoted493, %for.inc44.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %first_free.0500)
  %cmp5 = icmp eq i8 %first_free.0500, -2
  br i1 %cmp5, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx7 = getelementptr %struct.ice_fv_word, ptr %es, i32 %conv501
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp9.not = icmp eq i8 %6, -1
  %sub = add i8 %i.0498, -1
  %spec.select = select i1 %cmp9.not, i8 -2, i8 %sub
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body.if.end_crit_edge
  %first_free.1 = phi i8 [ %first_free.0500, %for.body.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %arrayidx19 = getelementptr %struct.ice_fv_word, ptr %es, i32 %conv501
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx19, align 1
  %off = getelementptr %struct.ice_fv_word, ptr %es, i32 %conv501, i32 1
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.inc.for.body17_crit_edge ]
  %pair_list.promoted494 = phi i32 [ %pair_list.promoted495497, %if.end ], [ %pair_list.promoted493, %for.inc.for.body17_crit_edge ]
  %or.i488489 = phi i32 [ %pair_list.promoted495497, %if.end ], [ %or.i487, %for.inc.for.body17_crit_edge ]
  %arrayidx23 = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx23, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp26 = icmp eq i8 %8, %10
  br i1 %cmp26, label %land.lhs.true28, label %for.body17.for.inc_crit_edge

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true28:                                  ; preds = %for.body17
  %11 = ptrtoint ptr %off to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %off, align 1
  %off34 = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %indvars.iv, i32 2
  %13 = ptrtoint ptr %off34 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %off34, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp36 = icmp eq i16 %12, %14
  br i1 %cmp36, label %if.then38, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  %shl.i = shl nuw i32 1, %indvars.iv
  %or.i = or i32 %or.i488489, %shl.i
  %15 = ptrtoint ptr %pair_list.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %pair_list.sroa.0, align 4
  %arrayidx42 = getelementptr [16 x i8], ptr %pair_start, i32 0, i32 %indvars.iv
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %i.0498, ptr %arrayidx42, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %land.lhs.true28.for.inc_crit_edge, %for.body17.for.inc_crit_edge
  %pair_list.promoted493 = phi i32 [ %pair_list.promoted494, %for.body17.for.inc_crit_edge ], [ %pair_list.promoted494, %land.lhs.true28.for.inc_crit_edge ], [ %or.i, %if.then38 ]
  %or.i487 = phi i32 [ %or.i488489, %for.body17.for.inc_crit_edge ], [ %or.i488489, %land.lhs.true28.for.inc_crit_edge ], [ %or.i, %if.then38 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.inc44, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17

for.inc44:                                        ; preds = %for.inc
  %inc45 = add i8 %i.0498, 1
  %conv = zext i8 %inc45 to i32
  %17 = zext i8 %inc45 to i16
  %cmp = icmp ugt i16 %4, %17
  br i1 %cmp, label %for.inc44.for.body_crit_edge, label %for.inc44.for.cond47.preheader_crit_edge

for.inc44.for.cond47.preheader_crit_edge:         ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond47.preheader

for.inc44.for.body_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body51:                                       ; preds = %for.inc132.for.body51_crit_edge, %for.cond47.preheader
  %indvars.iv533 = phi i32 [ 0, %for.cond47.preheader ], [ %indvars.iv.next534, %for.inc132.for.body51_crit_edge ]
  %first_free.2510 = phi i8 [ %first_free.0.lcssa, %for.cond47.preheader ], [ %first_free.5.ph, %for.inc132.for.body51_crit_edge ]
  %mask_sel.0509 = phi i32 [ 0, %for.cond47.preheader ], [ %mask_sel.4.ph, %for.inc132.for.body51_crit_edge ]
  %add = or i32 %indvars.iv533, 1
  %18 = ptrtoint ptr %pair_list.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %pair_list.sroa.0.0.pair_list.sroa.0.0. = load volatile i32, ptr %pair_list.sroa.0, align 4
  %shr.i = lshr i32 %pair_list.sroa.0.0.pair_list.sroa.0.0., %add
  %and1.i = and i32 %shr.i, 1
  %pair_list.sroa.0.0.pair_list.sroa.0.0.545 = load volatile i32, ptr %pair_list.sroa.0, align 4
  %shr.i461 = lshr i32 %pair_list.sroa.0.0.pair_list.sroa.0.0.545, %indvars.iv533
  %and1.i462 = and i32 %shr.i461, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i462, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i462, %and1.i
  br i1 %tobool.not, label %for.body51.for.inc132_crit_edge, label %if.then61

for.body51.for.inc132_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc132

if.then61:                                        ; preds = %for.body51
  %conv68 = sext i8 %first_free.2510 to i32
  %add69 = add nsw i32 %conv68, 1
  %indvars.iv533.masked = and i32 %indvars.iv533, 254
  %idxprom70 = or i32 %and1.i462, %indvars.iv533.masked
  %count = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %idxprom70, i32 1
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %count, align 1
  %conv72 = sext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %conv72)
  %cmp73 = icmp slt i32 %add69, %conv72
  br i1 %cmp73, label %if.then61.cleanup345_crit_edge, label %for.body85.lr.ph

if.then61.cleanup345_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup345

for.body85.lr.ph:                                 ; preds = %if.then61
  %arrayidx71 = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %idxprom70
  %21 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx71, align 2
  %off96 = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %idxprom70, i32 2
  %23 = ptrtoint ptr %off96 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %off96, align 2
  br label %for.body85

for.body85:                                       ; preds = %if.end111.for.body85_crit_edge, %for.body85.lr.ph
  %mask_sel.1505 = phi i32 [ %mask_sel.0509, %for.body85.lr.ph ], [ %or, %if.end111.for.body85_crit_edge ]
  %k.0504 = phi i8 [ 0, %for.body85.lr.ph ], [ %inc116, %if.end111.for.body85_crit_edge ]
  %conv78 = zext i8 %k.0504 to i32
  %sub91 = sub nsw i32 %conv68, %conv78
  %arrayidx92 = getelementptr %struct.ice_fv_word, ptr %es, i32 %sub91
  %25 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %arrayidx92, align 1
  %conv78.tr = zext i8 %k.0504 to i16
  %26 = shl nuw nsw i16 %conv78.tr, 1
  %conv100 = add i16 %24, %26
  %off105 = getelementptr %struct.ice_fv_word, ptr %es, i32 %sub91, i32 1
  %27 = ptrtoint ptr %off105 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %conv100, ptr %off105, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv68, i32 %conv78)
  %cmp108 = icmp slt i32 %conv68, %conv78
  br i1 %cmp108, label %for.body85.cleanup345_crit_edge, label %if.end111

for.body85.cleanup345_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup345

if.end111:                                        ; preds = %for.body85
  %shl = shl nuw i32 1, %sub91
  %or = or i32 %shl, %mask_sel.1505
  %inc116 = add nuw i8 %k.0504, 1
  %cmp83 = icmp ult i8 %inc116, %20
  br i1 %cmp83, label %if.end111.for.body85_crit_edge, label %cleanup

if.end111.for.body85_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body85

cleanup:                                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx119 = getelementptr [16 x i8], ptr %pair_start, i32 0, i32 %idxprom70
  %28 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %first_free.2510, ptr %arrayidx119, align 1
  %sub125 = sub i8 %first_free.2510, %20
  br label %for.inc132

for.inc132:                                       ; preds = %cleanup, %for.body51.for.inc132_crit_edge
  %mask_sel.4.ph = phi i32 [ %mask_sel.0509, %for.body51.for.inc132_crit_edge ], [ %or, %cleanup ]
  %first_free.5.ph = phi i8 [ %first_free.2510, %for.body51.for.inc132_crit_edge ], [ %sub125, %cleanup ]
  %indvars.iv.next534 = add nuw nsw i32 %indvars.iv533, 2
  %cmp49 = icmp ult i32 %indvars.iv533, 14
  br i1 %cmp49, label %for.inc132.for.body51_crit_edge, label %for.end136

for.inc132.for.body51_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body51

for.end136:                                       ; preds = %for.inc132
  %29 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fvw, align 2
  %conv141 = zext i16 %30 to i32
  %sub142 = add nsw i32 %conv141, -1
  %sext516 = shl i32 %sub142, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %sext516)
  %cmp145518 = icmp sgt i32 %sext516, -16777216
  br i1 %cmp145518, label %while.body.lr.ph, label %for.end136.for.cond232.preheader_crit_edge

for.end136.for.cond232.preheader_crit_edge:       ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond232.preheader

while.body.lr.ph:                                 ; preds = %for.end136
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %first_free.0.lcssa)
  %cmp153 = icmp ne i8 %first_free.0.lcssa, -2
  %conv152 = sext i8 %first_free.0.lcssa to i32
  br label %while.body

for.cond232.preheaderthread-pre-split:            ; preds = %cleanup229
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr = load i16, ptr %fvw, align 2
  br label %for.cond232.preheader

for.cond232.preheader:                            ; preds = %for.cond232.preheaderthread-pre-split, %for.end136.for.cond232.preheader_crit_edge
  %32 = phi i16 [ %.pr, %for.cond232.preheaderthread-pre-split ], [ %30, %for.end136.for.cond232.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %32)
  %cmp239525.not = icmp ult i16 %32, 4
  %.pre = zext i16 %prof_id to i32
  %.pre546 = shl nuw nsw i32 %.pre, 2
  br i1 %cmp239525.not, label %for.cond232.preheader.for.end344_crit_edge, label %for.cond242.preheader.lr.ph

for.cond232.preheader.for.end344_crit_edge:       ; preds = %for.cond232.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end344

for.cond242.preheader.lr.ph:                      ; preds = %for.cond232.preheader
  %add.ptr290 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.cond242.preheader

while.body:                                       ; preds = %cleanup229.while.body_crit_edge, %while.body.lr.ph
  %conv144520.in = phi i32 [ %sext516, %while.body.lr.ph ], [ %sext, %cleanup229.while.body_crit_edge ]
  %si.0519 = phi i32 [ %sub142, %while.body.lr.ph ], [ %si.1, %cleanup229.while.body_crit_edge ]
  %conv144520547 = lshr exact i32 %conv144520.in, 24
  %33 = trunc i32 %si.0519 to i8
  %conv149 = or i8 %33, -128
  %arrayidx151 = getelementptr [48 x i8], ptr %used, i32 0, i32 %conv144520547
  %34 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv149, ptr %arrayidx151, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv144520547, i32 %conv152)
  %cmp157.not = icmp sgt i32 %conv144520547, %conv152
  %or.cond = select i1 %cmp153, i1 %cmp157.not, i1 false
  br i1 %or.cond, label %for.cond165.preheader, label %if.then159

for.cond165.preheader:                            ; preds = %while.body
  %arrayidx171 = getelementptr %struct.ice_fv_word, ptr %es, i32 %conv144520547
  %35 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx171, align 1
  %off183 = getelementptr %struct.ice_fv_word, ptr %es, i32 %conv144520547, i32 1
  br label %for.body169

if.then159:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub162 = add nsw i32 %conv144520547, -1
  br label %cleanup229

for.body169:                                      ; preds = %for.inc222.for.body169_crit_edge, %for.cond165.preheader
  %indvars.iv535 = phi i32 [ 0, %for.cond165.preheader ], [ %indvars.iv.next536, %for.inc222.for.body169_crit_edge ]
  %arrayidx175 = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %indvars.iv535
  %37 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx175, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp178 = icmp eq i8 %36, %38
  br i1 %cmp178, label %land.lhs.true180, label %for.body169.for.inc222_crit_edge

for.body169.for.inc222_crit_edge:                 ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc222

land.lhs.true180:                                 ; preds = %for.body169
  %39 = ptrtoint ptr %off183 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %off183, align 1
  %off187 = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %indvars.iv535, i32 2
  %41 = ptrtoint ptr %off187 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %off187, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp189 = icmp eq i16 %40, %42
  br i1 %cmp189, label %for.body205.lr.ph, label %land.lhs.true180.for.inc222_crit_edge

land.lhs.true180.for.inc222_crit_edge:            ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc222

for.body205.lr.ph:                                ; preds = %land.lhs.true180
  %rem = and i32 %indvars.iv535, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool194.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool194.not, i32 1, i32 255
  %add195 = add nuw i32 %cond, %indvars.iv535
  %idxprom197 = and i32 %add195, 255
  %count199 = getelementptr [16 x %struct.ice_fd_src_dst_pair], ptr @ice_fd_pairs, i32 0, i32 %idxprom197, i32 1
  %43 = ptrtoint ptr %count199 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %count199, align 1
  %arrayidx207 = getelementptr [16 x i8], ptr %pair_start, i32 0, i32 %idxprom197
  %45 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx207, align 1
  %umax = call i8 @llvm.umax.i8(i8 %44, i8 1)
  %wide.trip.count = zext i8 %umax to i32
  br label %for.body205

for.body205:                                      ; preds = %for.body205.for.body205_crit_edge, %for.body205.lr.ph
  %indvars.iv538 = phi i32 [ 0, %for.body205.lr.ph ], [ %indvars.iv.next539, %for.body205.for.body205_crit_edge ]
  %47 = trunc i32 %indvars.iv538 to i8
  %sub210 = sub i8 %46, %47
  %or211 = or i8 %sub210, -128
  %sub215 = sub nsw i32 %conv144520547, %indvars.iv538
  %arrayidx216 = getelementptr [48 x i8], ptr %used, i32 0, i32 %sub215
  %48 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or211, ptr %arrayidx216, align 1
  %indvars.iv.next539 = add nuw nsw i32 %indvars.iv538, 1
  %exitcond540.not = icmp eq i32 %indvars.iv.next539, %wide.trip.count
  br i1 %exitcond540.not, label %for.body205.for.end224_crit_edge, label %for.body205.for.body205_crit_edge

for.body205.for.body205_crit_edge:                ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body205

for.body205.for.end224_crit_edge:                 ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end224

for.inc222:                                       ; preds = %land.lhs.true180.for.inc222_crit_edge, %for.body169.for.inc222_crit_edge
  %indvars.iv.next536 = add nuw nsw i32 %indvars.iv535, 1
  %exitcond537.not = icmp eq i32 %indvars.iv.next536, 16
  br i1 %exitcond537.not, label %for.inc222.for.end224_crit_edge, label %for.inc222.for.body169_crit_edge

for.inc222.for.body169_crit_edge:                 ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body169

for.inc222.for.end224_crit_edge:                  ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end224

for.end224:                                       ; preds = %for.inc222.for.end224_crit_edge, %for.body205.for.end224_crit_edge
  %indexes_used.0 = phi i8 [ %44, %for.body205.for.end224_crit_edge ], [ 1, %for.inc222.for.end224_crit_edge ]
  %conv225 = zext i8 %indexes_used.0 to i32
  %sub227 = sub nsw i32 %conv144520547, %conv225
  br label %cleanup229

cleanup229:                                       ; preds = %for.end224, %if.then159
  %si.1 = phi i32 [ %sub162, %if.then159 ], [ %sub227, %for.end224 ]
  %sext = shl i32 %si.1, 24
  %cmp145 = icmp sgt i32 %sext, -16777216
  br i1 %cmp145, label %cleanup229.while.body_crit_edge, label %for.cond232.preheaderthread-pre-split

cleanup229.while.body_crit_edge:                  ; preds = %cleanup229
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

for.cond242.preheader:                            ; preds = %do.end341.for.cond242.preheader_crit_edge, %for.cond242.preheader.lr.ph
  %conv233527 = phi i32 [ 0, %for.cond242.preheader.lr.ph ], [ %conv233, %do.end341.for.cond242.preheader_crit_edge ]
  %j.2526 = phi i8 [ 0, %for.cond242.preheader.lr.ph ], [ %inc343, %do.end341.for.cond242.preheader_crit_edge ]
  %mul249 = shl i8 %j.2526, 2
  %49 = zext i8 %mul249 to i32
  %arrayidx254 = getelementptr [48 x i8], ptr %used, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx254, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool256.not = icmp eq i8 %51, 0
  br i1 %tobool256.not, label %for.cond242.preheader.if.end273_crit_edge, label %land.lhs.true257

for.cond242.preheader.if.end273_crit_edge:        ; preds = %for.cond242.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end273

land.lhs.true257:                                 ; preds = %for.cond242.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %conv255 = zext i8 %51 to i32
  %shl259 = shl nuw i32 1, %49
  %and = and i32 %shl259, %mask_sel.4.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool260.not = icmp eq i32 %and, 0
  %spec.select551 = select i1 %tobool260.not, i32 %conv255, i32 0
  %spec.select552 = select i1 %tobool260.not, i32 159, i32 0
  br label %if.end273

if.end273:                                        ; preds = %land.lhs.true257, %for.cond242.preheader.if.end273_crit_edge
  %raw_swap.1 = phi i32 [ 0, %for.cond242.preheader.if.end273_crit_edge ], [ %spec.select551, %land.lhs.true257 ]
  %raw_in.1 = phi i32 [ 0, %for.cond242.preheader.if.end273_crit_edge ], [ %spec.select552, %land.lhs.true257 ]
  %52 = or i32 %49, 1
  %arrayidx254.1 = getelementptr [48 x i8], ptr %used, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx254.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx254.1, align 1
  %conv255.1 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool256.not.1 = icmp eq i8 %54, 0
  br i1 %tobool256.not.1, label %if.end273.if.end273.1_crit_edge, label %land.lhs.true257.1

if.end273.if.end273.1_crit_edge:                  ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end273.1

land.lhs.true257.1:                               ; preds = %if.end273
  %shl259.1 = shl nuw i32 1, %52
  %and.1 = and i32 %shl259.1, %mask_sel.4.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool260.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool260.not.1, label %if.then261.1, label %land.lhs.true257.1.if.end273.1_crit_edge

land.lhs.true257.1.if.end273.1_crit_edge:         ; preds = %land.lhs.true257.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end273.1

if.then261.1:                                     ; preds = %land.lhs.true257.1
  call void @__sanitizer_cov_trace_pc() #18
  %shl267.1 = shl nuw nsw i32 %conv255.1, 8
  %or268.1 = or i32 %shl267.1, %raw_swap.1
  %or272.1 = or i32 %raw_in.1, 40704
  br label %if.end273.1

if.end273.1:                                      ; preds = %if.then261.1, %land.lhs.true257.1.if.end273.1_crit_edge, %if.end273.if.end273.1_crit_edge
  %raw_swap.1.1 = phi i32 [ %raw_swap.1, %land.lhs.true257.1.if.end273.1_crit_edge ], [ %or268.1, %if.then261.1 ], [ %raw_swap.1, %if.end273.if.end273.1_crit_edge ]
  %raw_in.1.1 = phi i32 [ %raw_in.1, %land.lhs.true257.1.if.end273.1_crit_edge ], [ %or272.1, %if.then261.1 ], [ %raw_in.1, %if.end273.if.end273.1_crit_edge ]
  %55 = or i32 %49, 2
  %arrayidx254.2 = getelementptr [48 x i8], ptr %used, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx254.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx254.2, align 1
  %conv255.2 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool256.not.2 = icmp eq i8 %57, 0
  br i1 %tobool256.not.2, label %if.end273.1.if.end273.2_crit_edge, label %land.lhs.true257.2

if.end273.1.if.end273.2_crit_edge:                ; preds = %if.end273.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end273.2

land.lhs.true257.2:                               ; preds = %if.end273.1
  %shl259.2 = shl nuw i32 1, %55
  %and.2 = and i32 %shl259.2, %mask_sel.4.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool260.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool260.not.2, label %if.then261.2, label %land.lhs.true257.2.if.end273.2_crit_edge

land.lhs.true257.2.if.end273.2_crit_edge:         ; preds = %land.lhs.true257.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end273.2

if.then261.2:                                     ; preds = %land.lhs.true257.2
  call void @__sanitizer_cov_trace_pc() #18
  %shl267.2 = shl nuw nsw i32 %conv255.2, 16
  %or268.2 = or i32 %shl267.2, %raw_swap.1.1
  %or272.2 = or i32 %raw_in.1.1, 10420224
  br label %if.end273.2

if.end273.2:                                      ; preds = %if.then261.2, %land.lhs.true257.2.if.end273.2_crit_edge, %if.end273.1.if.end273.2_crit_edge
  %raw_swap.1.2 = phi i32 [ %raw_swap.1.1, %land.lhs.true257.2.if.end273.2_crit_edge ], [ %or268.2, %if.then261.2 ], [ %raw_swap.1.1, %if.end273.1.if.end273.2_crit_edge ]
  %raw_in.1.2 = phi i32 [ %raw_in.1.1, %land.lhs.true257.2.if.end273.2_crit_edge ], [ %or272.2, %if.then261.2 ], [ %raw_in.1.1, %if.end273.1.if.end273.2_crit_edge ]
  %58 = or i32 %49, 3
  %arrayidx254.3 = getelementptr [48 x i8], ptr %used, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx254.3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx254.3, align 1
  %conv255.3 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool256.not.3 = icmp eq i8 %60, 0
  br i1 %tobool256.not.3, label %if.end273.2.if.end273.3_crit_edge, label %land.lhs.true257.3

if.end273.2.if.end273.3_crit_edge:                ; preds = %if.end273.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end273.3

land.lhs.true257.3:                               ; preds = %if.end273.2
  %shl259.3 = shl nuw i32 1, %58
  %and.3 = and i32 %shl259.3, %mask_sel.4.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool260.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool260.not.3, label %if.then261.3, label %land.lhs.true257.3.if.end273.3_crit_edge

land.lhs.true257.3.if.end273.3_crit_edge:         ; preds = %land.lhs.true257.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end273.3

if.then261.3:                                     ; preds = %land.lhs.true257.3
  call void @__sanitizer_cov_trace_pc() #18
  %shl267.3 = shl nuw i32 %conv255.3, 24
  %or268.3 = or i32 %shl267.3, %raw_swap.1.2
  %or272.3 = or i32 %raw_in.1.2, -1627389952
  br label %if.end273.3

if.end273.3:                                      ; preds = %if.then261.3, %land.lhs.true257.3.if.end273.3_crit_edge, %if.end273.2.if.end273.3_crit_edge
  %raw_swap.1.3 = phi i32 [ %raw_swap.1.2, %land.lhs.true257.3.if.end273.3_crit_edge ], [ %or268.3, %if.then261.3 ], [ %raw_swap.1.2, %if.end273.2.if.end273.3_crit_edge ]
  %raw_in.1.3 = phi i32 [ %raw_in.1.2, %land.lhs.true257.3.if.end273.3_crit_edge ], [ %or272.3, %if.then261.3 ], [ %raw_in.1.2, %if.end273.2.if.end273.3_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !161
  tail call void @arm_heavy_mb() #16
  %61 = tail call i32 @llvm.bswap.i32(i32 %raw_swap.1.3)
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 8
  %mul280 = shl nuw nsw i32 %conv233527, 9
  %add281 = add nuw nsw i32 %mul280, %.pre546
  %add282 = add nuw nsw i32 %add281, 4272128
  %add.ptr = getelementptr i8, ptr %63, i32 %add282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %61) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_update_fd_swap.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_update_fd_swap, %if.then288)) #16
          to label %do.body302 [label %if.then288], !srcloc !155

if.then288:                                       ; preds = %if.end273.3
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %add.ptr290 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr290, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_update_fd_swap.__UNIQUE_ID_ddebug641, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %.pre, i32 noundef %conv233527, i32 noundef %add282, i32 noundef %raw_swap.1.3) #16
  br label %do.body302

do.body302:                                       ; preds = %if.then288, %if.end273.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !162
  tail call void @arm_heavy_mb() #16
  %66 = tail call i32 @llvm.bswap.i32(i32 %raw_in.1.3)
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 8
  %add311 = add nuw nsw i32 %add281, 4268032
  %add.ptr312 = getelementptr i8, ptr %68, i32 %add311
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312, i32 %66) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_update_fd_swap.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_update_fd_swap, %if.then325)) #16
          to label %do.end341 [label %if.then325], !srcloc !155

if.then325:                                       ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #18
  %69 = ptrtoint ptr %add.ptr290 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr290, align 8
  %dev330 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_update_fd_swap.__UNIQUE_ID_ddebug642, ptr noundef %dev330, ptr noundef nonnull @.str.46, i32 noundef %.pre, i32 noundef %conv233527, i32 noundef %add311, i32 noundef %raw_in.1.3) #16
  br label %do.end341

do.end341:                                        ; preds = %if.then325, %do.body302
  %inc343 = add i8 %j.2526, 1
  %conv233 = zext i8 %inc343 to i32
  %71 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fvw, align 2
  %73 = lshr i16 %72, 2
  %74 = zext i8 %inc343 to i16
  %cmp239 = icmp ugt i16 %73, %74
  br i1 %cmp239, label %do.end341.for.cond242.preheader_crit_edge, label %do.end341.for.end344_crit_edge

do.end341.for.end344_crit_edge:                   ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end344

do.end341.for.cond242.preheader_crit_edge:        ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond242.preheader

for.end344:                                       ; preds = %do.end341.for.end344_crit_edge, %for.cond232.preheader.for.end344_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !163
  tail call void @arm_heavy_mb() #16
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 8
  %add.i = add nuw nsw i32 %.pre546, 4260864
  %add.ptr.i466 = getelementptr i8, ptr %76, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i466, i32 0) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_update_fd_mask.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_update_fd_swap, %if.then.i)) #16
          to label %cleanup345 [label %if.then.i], !srcloc !155

if.then.i:                                        ; preds = %for.end344
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr5.i = getelementptr i8, ptr %hw, i32 -2960
  %77 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr5.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_update_fd_mask.__UNIQUE_ID_ddebug640, ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef %.pre, i32 noundef %add.i, i32 noundef 0) #16
  br label %cleanup345

cleanup345:                                       ; preds = %if.then.i, %for.end344, %for.body85.cleanup345_crit_edge, %if.then61.cleanup345_crit_edge
  %retval.4 = phi i32 [ 0, %for.end344 ], [ 0, %if.then.i ], [ -5, %for.body85.cleanup345_crit_edge ], [ -28, %if.then61.cleanup345_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %used) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pair_start) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pair_list.sroa.0)
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_update_prof_masking(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %prof_id, ptr nocapture noundef readonly %masks) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %blk, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %fvw = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 2
  %1 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %fvw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp491.not = icmp eq i16 %2, 0
  br i1 %cmp491.not, label %for.cond.preheader.if.end38_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end38_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %masks.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5
  %first.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 1
  %count.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %ena_mask.093 = phi i32 [ 0, %for.body.lr.ph ], [ %ena_mask.1, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr i16, ptr %masks, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx6, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %4, label %if.end.i [
    i16 0, label %for.body.for.inc_crit_edge
    i16 -1, label %for.body.for.inc_crit_edge142
  ]

for.body.for.inc_crit_edge142:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %masks.i, i32 noundef 0) #16
  %6 = ptrtoint ptr %first.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %first.i, align 4
  %conv10.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count.i, align 2
  %conv14.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv14.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp15167.not.i = icmp eq i16 %9, 0
  br i1 %cmp15167.not.i, label %if.end.i.for.cond24.preheader_crit_edge, label %if.end.i.for.body.i.outer_crit_edge

if.end.i.for.body.i.outer_crit_edge:              ; preds = %if.end.i
  br label %for.body.i.outer

if.end.i.for.cond24.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond24.preheader

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %if.end.i.for.body.i.outer_crit_edge
  %conv172.i.ph = phi i32 [ %conv.i77, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %conv10.i, %if.end.i.for.body.i.outer_crit_edge ]
  %i.0170.i.ph = phi i16 [ %inc.i76, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %7, %if.end.i.for.body.i.outer_crit_edge ]
  %unused_idx.0169.i.ph = phi i16 [ %spec.select157.i, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %if.end.i.for.body.i.outer_crit_edge ]
  %found_unused.0.off0168.i.ph = phi i1 [ true, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ false, %if.end.i.for.body.i.outer_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %conv172.i = phi i32 [ %conv.i, %for.inc.i.for.body.i_crit_edge ], [ %conv172.i.ph, %for.body.i.outer ]
  %i.0170.i = phi i16 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %i.0170.i.ph, %for.body.i.outer ]
  %in_use.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv172.i, i32 3
  %10 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_use.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %for.inc.i.thread, label %if.then22.i

if.then22.i:                                      ; preds = %for.body.i
  %arrayidx21.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv172.i
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %4)
  %cmp32.i = icmp eq i16 %13, %4
  br i1 %cmp32.i, label %land.lhs.true34.i, label %if.then22.i.for.inc.i_crit_edge

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true34.i:                                ; preds = %if.then22.i
  %idx41.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv172.i, i32 1
  %14 = ptrtoint ptr %idx41.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx41.i, align 2
  %16 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %16)
  %cmp44.i = icmp eq i32 %indvars.iv, %16
  br i1 %cmp44.i, label %if.end59.i, label %land.lhs.true34.i.for.inc.i_crit_edge

land.lhs.true34.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true34.i.for.inc.i_crit_edge, %if.then22.i.for.inc.i_crit_edge
  %inc.i = add i16 %i.0170.i, 1
  %conv.i = zext i16 %inc.i to i32
  %cmp15.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp15.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %for.body.i
  %spec.select157.i = select i1 %found_unused.0.off0168.i.ph, i16 %unused_idx.0169.i.ph, i16 %i.0170.i
  %inc.i76 = add i16 %i.0170.i, 1
  %conv.i77 = zext i16 %inc.i76 to i32
  %cmp15.i78 = icmp ugt i32 %add.i, %conv.i77
  br i1 %cmp15.i78, label %for.inc.i.thread.for.body.i.outer_crit_edge, label %for.inc.i.thread.if.then61.i_crit_edge

for.inc.i.thread.if.then61.i_crit_edge:           ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then61.i

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.outer

for.end.i:                                        ; preds = %for.inc.i
  br i1 %found_unused.0.off0168.i.ph, label %for.end.i.if.then61.i_crit_edge, label %for.end.i.for.cond24.preheader_crit_edge

for.end.i.for.cond24.preheader_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond24.preheader

for.end.i.if.then61.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then61.i

if.end59.i:                                       ; preds = %land.lhs.true34.i
  br i1 %found_unused.0.off0168.i.ph, label %if.end59.i.if.then61.i_crit_edge, label %if.end59.if.end89_crit_edge.i

if.end59.i.if.then61.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then61.i

if.end59.if.end89_crit_edge.i:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #18
  %.pre.i = zext i16 %i.0170.i to i32
  br label %if.then18

if.then61.i:                                      ; preds = %if.end59.i.if.then61.i_crit_edge, %for.end.i.if.then61.i_crit_edge, %for.inc.i.thread.if.then61.i_crit_edge
  %copy_idx.0.mux161181.i = phi i16 [ %i.0170.i, %if.end59.i.if.then61.i_crit_edge ], [ %unused_idx.0169.i.ph, %for.end.i.if.then61.i_crit_edge ], [ %spec.select157.i, %for.inc.i.thread.if.then61.i_crit_edge ]
  %idxprom66.i = zext i16 %copy_idx.0.mux161181.i to i32
  %arrayidx67.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %idxprom66.i
  %in_use68.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %idxprom66.i, i32 3
  %17 = ptrtoint ptr %in_use68.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %in_use68.i, align 2
  %18 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %4, ptr %arrayidx67.i, align 4
  %idx82.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %idxprom66.i, i32 1
  %19 = trunc i32 %indvars.iv to i16
  %20 = ptrtoint ptr %idx82.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %idx82.i, align 2
  %ref.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %idxprom66.i, i32 2
  %21 = ptrtoint ptr %ref.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %ref.i, align 4
  tail call fastcc void @ice_write_prof_mask_reg(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %copy_idx.0.mux161181.i, i16 noundef zeroext %19, i16 noundef zeroext %4) #16
  br label %if.then18

for.cond24.preheader:                             ; preds = %for.end.i.for.cond24.preheader_crit_edge, %if.end.i.for.cond24.preheader_crit_edge
  tail call void @mutex_unlock(ptr noundef %masks.i) #16
  br label %for.body28

if.then18:                                        ; preds = %if.then61.i, %if.end59.if.end89_crit_edge.i
  %copy_idx.0.mux161180.i = phi i16 [ %i.0170.i, %if.end59.if.end89_crit_edge.i ], [ %copy_idx.0.mux161181.i, %if.then61.i ]
  %idxprom94.pre-phi.i = phi i32 [ %.pre.i, %if.end59.if.end89_crit_edge.i ], [ %idxprom66.i, %if.then61.i ]
  %ref96.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %idxprom94.pre-phi.i, i32 2
  %22 = ptrtoint ptr %ref96.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ref96.i, align 4
  %inc97.i = add i16 %23, 1
  store i16 %inc97.i, ptr %ref96.i, align 4
  tail call void @mutex_unlock(ptr noundef %masks.i) #16
  %conv19 = zext i16 %copy_idx.0.mux161180.i to i32
  %shl = shl nuw i32 1, %conv19
  %or = or i32 %shl, %ena_mask.093
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge142
  %ena_mask.1 = phi i32 [ %or, %if.then18 ], [ %ena_mask.093, %for.body.for.inc_crit_edge ], [ %ena_mask.093, %for.body.for.inc_crit_edge142 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %24 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fvw, align 2
  %26 = zext i16 %25 to i32
  %cmp4 = icmp ult i32 %indvars.iv.next, %26
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.if.end38_crit_edge

for.inc.if.end38_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body28:                                       ; preds = %for.inc35.for.body28_crit_edge, %for.cond24.preheader
  %indvars.iv109 = phi i32 [ 0, %for.cond24.preheader ], [ %indvars.iv.next110, %for.inc35.for.body28_crit_edge ]
  %shl30 = shl nuw i32 1, %indvars.iv109
  %and = and i32 %shl30, %ena_mask.093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.body28.for.inc35_crit_edge, label %if.then32

for.body28.for.inc35_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc35

if.then32:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #18
  %27 = trunc i32 %indvars.iv109 to i16
  tail call fastcc void @ice_free_prof_mask(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %27)
  br label %for.inc35

for.inc35:                                        ; preds = %if.then32, %for.body28.for.inc35_crit_edge
  %indvars.iv.next110 = add nuw nsw i32 %indvars.iv109, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next110, 32
  br i1 %exitcond.not, label %for.inc35.cleanup_crit_edge, label %for.inc35.for.body28_crit_edge

for.inc35.for.body28_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body28

for.inc35.cleanup_crit_edge:                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end38:                                         ; preds = %for.inc.if.end38_crit_edge, %for.cond.preheader.if.end38_crit_edge
  %ena_mask.0.lcssa = phi i32 [ 0, %for.cond.preheader.if.end38_crit_edge ], [ %ena_mask.1, %for.inc.if.end38_crit_edge ]
  %28 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %blk, label %do.body.i [
    i32 3, label %if.end38.do.body8.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end38.do.body8.i_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8.i

sw.bb1.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8.i

do.body.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_update_prof_masking, %if.then.i)) #16
          to label %ice_write_prof_mask_enable_res.exit [label %if.then.i], !srcloc !155

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug633, ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %blk) #16
  br label %ice_write_prof_mask_enable_res.exit

do.body8.i:                                       ; preds = %sw.bb1.i, %if.end38.do.body8.i_crit_edge
  %.sink.i = phi i32 [ 4260864, %sw.bb1.i ], [ 4259840, %if.end38.do.body8.i_crit_edge ]
  %conv.i72 = zext i16 %prof_id to i32
  %mul.i = shl nuw nsw i32 %conv.i72, 2
  %add.i73 = add nuw nsw i32 %.sink.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !164
  tail call void @arm_heavy_mb() #16
  %31 = tail call i32 @llvm.bswap.i32(i32 %ena_mask.0.lcssa) #16
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %add.ptr11.i = getelementptr i8, ptr %33, i32 %add.i73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %31) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_update_prof_masking, %if.then24.i)) #16
          to label %ice_write_prof_mask_enable_res.exit [label %if.then24.i], !srcloc !155

if.then24.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr27.i = getelementptr i8, ptr %hw, i32 -2960
  %34 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr27.i, align 8
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug634, ptr noundef %dev29.i, ptr noundef nonnull @.str.52, i32 noundef %blk, i32 noundef %conv.i72, i32 noundef %add.i73, i32 noundef %ena_mask.0.lcssa) #16
  br label %ice_write_prof_mask_enable_res.exit

ice_write_prof_mask_enable_res.exit:              ; preds = %if.then24.i, %do.body8.i, %if.then.i, %do.body.i
  %mask_ena = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 4
  %36 = ptrtoint ptr %mask_ena to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mask_ena, align 4
  %idxprom42 = zext i16 %prof_id to i32
  %arrayidx43 = getelementptr i32, ptr %37, i32 %idxprom42
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %ena_mask.0.lcssa, ptr %arrayidx43, align 4
  br label %cleanup

cleanup:                                          ; preds = %ice_write_prof_mask_enable_res.exit, %for.inc35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ice_write_prof_mask_enable_res.exit ], [ 0, %entry.cleanup_crit_edge ], [ -5, %for.inc35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rem_prof(ptr noundef %hw, i32 noundef %blk, i64 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  %tmp_prof_id.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %prof_map_lock = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 7
  tail call void @mutex_lock_nested(ptr noundef %prof_map_lock, i32 noundef 0) #16
  %prof_map.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %map.0.in.i = phi ptr [ %prof_map.i, %entry ], [ %map.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %map.0.i, %prof_map.i
  br i1 %cmp.not.i, label %for.cond.i.err_ice_rem_prof_crit_edge, label %for.body.i

for.cond.i.err_ice_rem_prof_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof

for.body.i:                                       ; preds = %for.cond.i
  %profile_cookie.i = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %profile_cookie.i, align 8
  %cmp7.i = icmp eq i64 %2, %id
  br i1 %cmp7.i, label %ice_search_prof_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ice_search_prof_id.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %map.0.i, null
  br i1 %tobool.not, label %ice_search_prof_id.exit.err_ice_rem_prof_crit_edge, label %if.end

ice_search_prof_id.exit.err_ice_rem_prof_crit_edge: ; preds = %ice_search_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof

if.end:                                           ; preds = %ice_search_prof_id.exit
  %3 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %profile_cookie.i, align 8
  %call2 = tail call fastcc i32 @ice_rem_flow_all(ptr noundef %hw, i32 noundef %blk, i64 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_ice_rem_prof_crit_edge

if.end.err_ice_rem_prof_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof

if.end5:                                          ; preds = %if.end
  %prof_id = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %prof_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prof_id, align 8
  %count.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 1
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count.i, align 4
  %9 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %9)
  %cmp.i = icmp ult i16 %8, %9
  br i1 %cmp.i, label %if.end5.ice_prof_dec_ref.exit_crit_edge, label %if.end.i

if.end5.ice_prof_dec_ref.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_prof_dec_ref.exit

if.end.i:                                         ; preds = %if.end5
  %conv.i = zext i8 %6 to i32
  %ref_count.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 3
  %10 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ref_count.i, align 4
  %arrayidx7.i = getelementptr i16, ptr %11, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp9.not.i = icmp eq i16 %13, 0
  br i1 %cmp9.not.i, label %if.end.i.ice_prof_dec_ref.exit_crit_edge, label %if.then11.i

if.end.i.ice_prof_dec_ref.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_prof_dec_ref.exit

if.then11.i:                                      ; preds = %if.end.i
  %dec.i = add i16 %13, -1
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %dec.i, ptr %arrayidx7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool.not.i, label %if.then18.i, label %if.then11.i.ice_prof_dec_ref.exit_crit_edge

if.then11.i.ice_prof_dec_ref.exit_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_prof_dec_ref.exit

if.then18.i:                                      ; preds = %if.then11.i
  %fvw.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 2
  %15 = ptrtoint ptr %fvw.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fvw.i.i, align 2
  %conv2.i.i = zext i16 %16 to i32
  %conv3.i.i = mul i16 %16, %9
  %t.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 6
  %17 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t.i.i, align 4
  %idxprom.i.i = zext i16 %conv3.i.i to i32
  %arrayidx7.i.i = getelementptr %struct.ice_fv_word, ptr %18, i32 %idxprom.i.i
  %mul13.i.i = shl nuw nsw i32 %conv2.i.i, 2
  %19 = call ptr @memset(ptr %arrayidx7.i.i, i32 0, i32 %mul13.i.i)
  %written.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 8
  %20 = ptrtoint ptr %written.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %written.i.i, align 4
  %arrayidx18.i.i = getelementptr i8, ptr %21, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx18.i.i, align 1
  %23 = and i32 %blk, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch.i.i = icmp eq i32 %23, 2
  br i1 %switch.i.i, label %if.end.i.i, label %if.then18.i.ice_free_prof_masks.exit.i_crit_edge

if.then18.i.ice_free_prof_masks.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_prof_masks.exit.i

if.end.i.i:                                       ; preds = %if.then18.i
  %mask_ena.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 4
  %24 = ptrtoint ptr %mask_ena.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mask_ena.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %25, i32 %conv.i
  %26 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %indvars.iv.i.i = phi i32 [ 0, %if.end.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %indvars.iv.i.i
  %and.i.i = and i32 %shl.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then7.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %28 = trunc i32 %indvars.iv.i.i to i16
  tail call fastcc void @ice_free_prof_mask(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %28) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ice_free_prof_masks.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.ice_free_prof_masks.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_prof_masks.exit.i

ice_free_prof_masks.exit.i:                       ; preds = %for.inc.i.i.ice_free_prof_masks.exit.i_crit_edge, %if.then18.i.ice_free_prof_masks.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp_prof_id.i.i) #16
  %29 = ptrtoint ptr %tmp_prof_id.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %9, ptr %tmp_prof_id.i.i, align 2
  %30 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %blk, label %ice_free_prof_masks.exit.i.ice_free_prof_id.exit.i_crit_edge [
    i32 2, label %ice_free_prof_masks.exit.i.if.end.i3.i_crit_edge
    i32 3, label %sw.bb1.i.i.i
  ]

ice_free_prof_masks.exit.i.if.end.i3.i_crit_edge: ; preds = %ice_free_prof_masks.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i3.i

ice_free_prof_masks.exit.i.ice_free_prof_id.exit.i_crit_edge: ; preds = %ice_free_prof_masks.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_prof_id.exit.i

sw.bb1.i.i.i:                                     ; preds = %ice_free_prof_masks.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i3.i

if.end.i3.i:                                      ; preds = %sw.bb1.i.i.i, %ice_free_prof_masks.exit.i.if.end.i3.i_crit_edge
  %storemerge.i.i.i = phi i16 [ 96, %sw.bb1.i.i.i ], [ 88, %ice_free_prof_masks.exit.i.if.end.i3.i_crit_edge ]
  %call1.i.i = call i32 @ice_free_hw_res(ptr noundef %hw, i16 noundef zeroext %storemerge.i.i.i, i16 noundef zeroext 1, ptr noundef nonnull %tmp_prof_id.i.i) #16
  br label %ice_free_prof_id.exit.i

ice_free_prof_id.exit.i:                          ; preds = %if.end.i3.i, %ice_free_prof_masks.exit.i.ice_free_prof_id.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_prof_id.i.i) #16
  br label %ice_prof_dec_ref.exit

ice_prof_dec_ref.exit:                            ; preds = %ice_free_prof_id.exit.i, %if.then11.i.ice_prof_dec_ref.exit_crit_edge, %if.end.i.ice_prof_dec_ref.exit_crit_edge, %if.end5.ice_prof_dec_ref.exit_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %map.0.i) #16
  br i1 %call.i.i, label %if.end.i.i25, label %ice_prof_dec_ref.exit.list_del.exit_crit_edge

ice_prof_dec_ref.exit.list_del.exit_crit_edge:    ; preds = %ice_prof_dec_ref.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i25:                                     ; preds = %ice_prof_dec_ref.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %map.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %map.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i25, %ice_prof_dec_ref.exit.list_del.exit_crit_edge
  %37 = ptrtoint ptr %map.0.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %map.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %map.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %map.0.i) #16
  br label %err_ice_rem_prof

err_ice_rem_prof:                                 ; preds = %list_del.exit, %if.end.err_ice_rem_prof_crit_edge, %ice_search_prof_id.exit.err_ice_rem_prof_crit_edge, %for.cond.i.err_ice_rem_prof_crit_edge
  %status.0 = phi i32 [ %call2, %if.end.err_ice_rem_prof_crit_edge ], [ 0, %list_del.exit ], [ -2, %ice_search_prof_id.exit.err_ice_rem_prof_crit_edge ], [ -2, %for.cond.i.err_ice_rem_prof_crit_edge ]
  call void @mutex_unlock(ptr noundef %prof_map_lock) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_flow_all(ptr noundef %hw, i32 noundef %blk, i64 noundef %id) unnamed_addr #1 align 64 {
entry:
  %chg = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chg) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %chg, i32 0, i32 1
  %1 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chg, ptr %chg, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chg, ptr %0, align 4
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %add.ptr26.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 1, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xlt2, align 4
  %in_use = getelementptr %struct.ice_vsig_entry, ptr %4, i32 %indvars.iv, i32 2
  %5 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx3.i = getelementptr %struct.ice_vsig_entry, ptr %4, i32 %indvars.iv
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %ent.0.in.i = phi ptr [ %arrayidx3.i, %if.then ], [ %ent.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %ent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ent.0.i = load ptr, ptr %ent.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ent.0.i, %arrayidx3.i
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %profile_cookie.i = getelementptr inbounds %struct.ice_vsig_prof, ptr %ent.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %profile_cookie.i, align 8
  %cmp12.i = icmp eq i64 %9, %id
  br i1 %cmp12.i, label %if.then4, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_has_prof_vsig.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_rem_flow_all, %ice_has_prof_vsig.exit.thread50)) #16
          to label %for.inc [label %ice_has_prof_vsig.exit.thread50], !srcloc !155

ice_has_prof_vsig.exit.thread50:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr26.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_has_prof_vsig.__UNIQUE_ID_ddebug638, ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %indvars.iv) #16
  br label %for.inc

if.then4:                                         ; preds = %for.body.i
  %12 = trunc i32 %indvars.iv to i16
  %call5 = call fastcc i32 @ice_rem_prof_id_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %12, i64 noundef %id, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.for.inc_crit_edge, label %if.then4.err_ice_rem_flow_all_crit_edge

if.then4.err_ice_rem_flow_all_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_flow_all

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then4.for.inc_crit_edge, %ice_has_prof_vsig.exit.thread50, %do.body.i, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 768
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = call fastcc i32 @ice_upd_prof_hw(ptr noundef %hw, i32 noundef %blk, ptr noundef nonnull %chg)
  br label %err_ice_rem_flow_all

err_ice_rem_flow_all:                             ; preds = %for.end, %if.then4.err_ice_rem_flow_all_crit_edge
  %status.0 = phi i32 [ %call10, %for.end ], [ %call5, %if.then4.err_ice_rem_flow_all_crit_edge ]
  %13 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chg, align 4
  %cmp18.not53 = icmp eq ptr %14, %chg
  br i1 %cmp18.not53, label %err_ice_rem_flow_all.for.end31_crit_edge, label %err_ice_rem_flow_all.for.body20_crit_edge

err_ice_rem_flow_all.for.body20_crit_edge:        ; preds = %err_ice_rem_flow_all
  br label %for.body20

err_ice_rem_flow_all.for.end31_crit_edge:         ; preds = %err_ice_rem_flow_all
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end31

for.body20:                                       ; preds = %list_del.exit.for.body20_crit_edge, %err_ice_rem_flow_all.for.body20_crit_edge
  %del.054 = phi ptr [ %tmp.0, %list_del.exit.for.body20_crit_edge ], [ %14, %err_ice_rem_flow_all.for.body20_crit_edge ]
  %15 = ptrtoint ptr %del.054 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0 = load ptr, ptr %del.054, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %del.054) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body20.list_del.exit_crit_edge

for.body20.list_del.exit_crit_edge:               ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %del.054, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %del.054 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %del.054, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body20.list_del.exit_crit_edge
  %22 = ptrtoint ptr %del.054 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %del.054, align 4
  %prev.i49 = getelementptr inbounds %struct.list_head, ptr %del.054, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i49, align 4
  %24 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr26.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef %del.054) #16
  %cmp18.not = icmp eq ptr %tmp.0, %chg
  br i1 %cmp18.not, label %list_del.exit.for.end31_crit_edge, label %list_del.exit.for.body20_crit_edge

list_del.exit.for.body20_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body20

list_del.exit.for.end31_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end31

for.end31:                                        ; preds = %list_del.exit.for.end31_crit_edge, %err_ice_rem_flow_all.for.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chg) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_prof_id_flow(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i64 noundef %hdl) local_unnamed_addr #1 align 64 {
entry:
  %lst.i = alloca %struct.list_head, align 4
  %union_lst = alloca %struct.list_head, align 4
  %chg = alloca %struct.list_head, align 4
  %vsig = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %union_lst) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %union_lst, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chg) #16
  %1 = getelementptr inbounds %struct.list_head, ptr %chg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsig) #16
  %2 = ptrtoint ptr %vsig to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %vsig, align 2, !annotation !154
  %3 = ptrtoint ptr %union_lst to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %union_lst, ptr %union_lst, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %union_lst, ptr %0, align 4
  %5 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %chg, ptr %chg, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %chg, ptr %1, align 4
  %prof_map_lock.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 7
  call void @mutex_lock_nested(ptr noundef %prof_map_lock.i, i32 noundef 0) #16
  %prof_map.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %map.0.in.i.i = phi ptr [ %prof_map.i.i, %entry ], [ %map.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %map.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %map.0.i.i = load ptr, ptr %map.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %map.0.i.i, %prof_map.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.ice_get_prof.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.ice_get_prof.exit.thread_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_get_prof.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %profile_cookie.i.i = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %profile_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %profile_cookie.i.i, align 8
  %cmp7.i.i = icmp eq i64 %9, %hdl
  br i1 %cmp7.i.i, label %ice_search_prof_id.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

ice_search_prof_id.exit.i:                        ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %map.0.i.i, null
  br i1 %tobool.not.i, label %ice_search_prof_id.exit.i.ice_get_prof.exit.thread_crit_edge, label %for.cond.preheader.i

ice_search_prof_id.exit.i.ice_get_prof.exit.thread_crit_edge: ; preds = %ice_search_prof_id.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_get_prof.exit.thread

for.cond.preheader.i:                             ; preds = %ice_search_prof_id.exit.i
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %ptg_cnt.i = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %ptg_cnt.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ptg_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp58.not.i = icmp eq i8 %11, 0
  br i1 %cmp58.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %written.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 8
  %prof_id.i = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %written.i, align 4
  %14 = ptrtoint ptr %prof_id.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prof_id.i, align 8
  %idxprom.i = zext i8 %15 to i32
  %arrayidx7.i = getelementptr i8, ptr %13, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 32, i32 noundef 3520) #16
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.then9.i.ice_get_prof.exit.thread_crit_edge, label %if.end13.i

if.then9.i.ice_get_prof.exit.thread_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_get_prof.exit.thread

if.end13.i:                                       ; preds = %if.then9.i
  %type.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type.i, align 4
  %ptype.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %ptype.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %ptype.i, align 4
  %arrayidx15.i = getelementptr %struct.ice_prof_map, ptr %map.0.i.i, i32 0, i32 5, i32 %indvars.iv.i
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15.i, align 1
  %ptg16.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %ptg16.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ptg16.i, align 2
  %add_ptg.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %add_ptg.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %add_ptg.i, align 4
  %add_prof.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %add_prof.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %add_prof.i, align 1
  %27 = ptrtoint ptr %prof_id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %prof_id.i, align 8
  %prof_id18.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %prof_id18.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %prof_id18.i, align 1
  %30 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %written.i, align 4
  %32 = load i8, ptr %prof_id.i, align 8
  %idxprom24.i = zext i8 %32 to i32
  %arrayidx25.i = getelementptr i8, ptr %31, i32 %idxprom24.i
  %33 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx25.i, align 1
  %34 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chg, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef nonnull %chg, ptr noundef %35) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %chg, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call.i.i, ptr %chg, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.end13.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %40 = ptrtoint ptr %ptg_cnt.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ptg_cnt.i, align 1
  %42 = zext i8 %41 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %42
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

ice_get_prof.exit.thread:                         ; preds = %if.then9.i.ice_get_prof.exit.thread_crit_edge, %ice_search_prof_id.exit.i.ice_get_prof.exit.thread_crit_edge, %for.cond.i.i.ice_get_prof.exit.thread_crit_edge
  %status.0.i.ph = phi i32 [ -2, %ice_search_prof_id.exit.i.ice_get_prof.exit.thread_crit_edge ], [ -12, %if.then9.i.ice_get_prof.exit.thread_crit_edge ], [ -2, %for.cond.i.i.ice_get_prof.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %prof_map_lock.i) #16
  br label %cleanup121

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %prof_map_lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi)
  %cmp.i199 = icmp ugt i16 %vsi, 767
  br i1 %cmp.i199, label %if.end.if.else59_crit_edge, label %land.lhs.true

if.end.if.else59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else59

land.lhs.true:                                    ; preds = %if.end
  %conv.i = zext i16 %vsi to i32
  %vsis.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 1
  %43 = ptrtoint ptr %vsis.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vsis.i, align 4
  %vsig4.i = getelementptr %struct.ice_vsig_vsi, ptr %44, i32 %conv.i, i32 3
  %45 = ptrtoint ptr %vsig4.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vsig4.i, align 2
  %47 = ptrtoint ptr %vsig to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vsig, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool3.not = icmp eq i16 %46, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else59_crit_edge, label %if.then4

land.lhs.true.if.else59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else59

if.then4:                                         ; preds = %land.lhs.true
  %conv.i200 = zext i16 %46 to i32
  %and.i = and i16 %46, 8191
  %xlt2.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %48 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xlt2.i, align 4
  %idxprom.i201 = zext i16 %and.i to i32
  %arrayidx3.i = getelementptr %struct.ice_vsig_entry, ptr %49, i32 %idxprom.i201
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i202.for.cond.i_crit_edge, %if.then4
  %ent.0.in.i = phi ptr [ %arrayidx3.i, %if.then4 ], [ %ent.0.i, %for.body.i202.for.cond.i_crit_edge ]
  %50 = ptrtoint ptr %ent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %ent.0.i = load ptr, ptr %ent.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ent.0.i, %arrayidx3.i
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i202

for.body.i202:                                    ; preds = %for.cond.i
  %profile_cookie.i = getelementptr inbounds %struct.ice_vsig_prof, ptr %ent.0.i, i32 0, i32 1
  %51 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %profile_cookie.i, align 8
  %cmp12.i = icmp eq i64 %52, %hdl
  br i1 %cmp12.i, label %for.body.i202.err_ice_add_prof_id_flow_crit_edge, label %for.body.i202.for.cond.i_crit_edge

for.body.i202.for.cond.i_crit_edge:               ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.body.i202.err_ice_add_prof_id_flow_crit_edge: ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

do.body.i:                                        ; preds = %for.cond.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_has_prof_vsig.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_prof_id_flow, %ice_has_prof_vsig.exit.thread254)) #16
          to label %if.end7 [label %ice_has_prof_vsig.exit.thread254], !srcloc !155

ice_has_prof_vsig.exit.thread254:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %dev.i203 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_has_prof_vsig.__UNIQUE_ID_ddebug638, ptr noundef %dev.i203, ptr noundef nonnull @.str.54, i32 noundef %conv.i200) #16
  br label %if.end7

if.end7:                                          ; preds = %ice_has_prof_vsig.exit.thread254, %do.body.i
  %55 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xlt2.i, align 4
  %in_use.i = getelementptr %struct.ice_vsig_entry, ptr %56, i32 %idxprom.i201, i32 2
  %57 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i206 = icmp eq i8 %58, 0
  br i1 %tobool.not.i206, label %if.end7.err_ice_add_prof_id_flow_crit_edge, label %if.end.i207

if.end7.err_ice_add_prof_id_flow_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end.i207:                                      ; preds = %if.end7
  %first_vsi.i = getelementptr %struct.ice_vsig_entry, ptr %56, i32 %idxprom.i201, i32 1
  %59 = ptrtoint ptr %first_vsi.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %ptr.017.i = load ptr, ptr %first_vsi.i, align 4
  %tobool10.not18.i = icmp eq ptr %ptr.017.i, null
  br i1 %tobool10.not18.i, label %if.end.i207.if.end11_crit_edge, label %if.end.i207.while.body.i_crit_edge

if.end.i207.while.body.i_crit_edge:               ; preds = %if.end.i207
  br label %while.body.i

if.end.i207.if.end11_crit_edge:                   ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i207.while.body.i_crit_edge
  %ref.0 = phi i16 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i207.while.body.i_crit_edge ]
  %ptr.019.i = phi ptr [ %ptr.0.i, %while.body.i.while.body.i_crit_edge ], [ %ptr.017.i, %if.end.i207.while.body.i_crit_edge ]
  %inc.i = add i16 %ref.0, 1
  %60 = ptrtoint ptr %ptr.019.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %ptr.0.i = load ptr, ptr %ptr.019.i, align 4
  %tobool10.not.i = icmp eq ptr %ptr.0.i, null
  br i1 %tobool10.not.i, label %if.end11.loopexit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end11.loopexit:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ref.0)
  %phi.cmp = icmp eq i16 %ref.0, 0
  br label %if.end11

if.end11:                                         ; preds = %if.end11.loopexit, %if.end.i207.if.end11_crit_edge
  %ref.1.ph = phi i1 [ false, %if.end.i207.if.end11_crit_edge ], [ %phi.cmp, %if.end11.loopexit ]
  %call14 = call fastcc i32 @ice_get_profs_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %46, ptr noundef nonnull %union_lst)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.err_ice_add_prof_id_flow_crit_edge

if.end11.err_ice_add_prof_id_flow_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end17:                                         ; preds = %if.end11
  %call18 = call fastcc i32 @ice_add_prof_to_lst(ptr noundef %hw, i32 noundef %blk, ptr noundef nonnull %union_lst, i64 noundef %hdl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_ice_add_prof_id_flow_crit_edge

if.end17.err_ice_add_prof_id_flow_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end21:                                         ; preds = %if.end17
  %call22 = call fastcc i32 @ice_find_dup_props_vsig(ptr noundef %hw, i32 noundef %blk, ptr noundef nonnull %union_lst, ptr noundef nonnull %vsig)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  %61 = ptrtoint ptr %vsig to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vsig, align 2
  %call25 = call fastcc i32 @ice_move_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %62, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.err_ice_add_prof_id_flow_crit_edge

if.then24.err_ice_add_prof_id_flow_crit_edge:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end28:                                         ; preds = %if.then24
  br i1 %ref.1.ph, label %if.then30, label %if.end28.if.then74_crit_edge

if.end28.if.then74_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then74

if.then30:                                        ; preds = %if.end28
  %call31 = call fastcc i32 @ice_rem_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %46, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.then74_crit_edge, label %if.then30.err_ice_add_prof_id_flow_crit_edge

if.then30.err_ice_add_prof_id_flow_crit_edge:     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.then30.if.then74_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then74

if.else:                                          ; preds = %if.end21
  br i1 %ref.1.ph, label %if.then37, label %if.else46

if.then37:                                        ; preds = %if.else
  %63 = ptrtoint ptr %vsig to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vsig, align 2
  %call38 = call fastcc i32 @ice_add_prof_id_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %64, i64 noundef %hdl, i1 noundef zeroext false, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.err_ice_add_prof_id_flow_crit_edge

if.then37.err_ice_add_prof_id_flow_crit_edge:     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end41:                                         ; preds = %if.then37
  %call42 = call fastcc i32 @ice_adj_prof_priorities(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %64, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.if.then74_crit_edge, label %if.end41.err_ice_add_prof_id_flow_crit_edge

if.end41.err_ice_add_prof_id_flow_crit_edge:      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end41.if.then74_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then74

if.else46:                                        ; preds = %if.else
  %call47 = call fastcc i32 @ice_create_vsig_from_lst(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, ptr noundef nonnull %union_lst, ptr noundef nonnull %vsig, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.else46.err_ice_add_prof_id_flow_crit_edge

if.else46.err_ice_add_prof_id_flow_crit_edge:     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end50:                                         ; preds = %if.else46
  %65 = ptrtoint ptr %vsig to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vsig, align 2
  %call51 = call fastcc i32 @ice_adj_prof_priorities(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %66, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.if.then74_crit_edge, label %if.end50.err_ice_add_prof_id_flow_crit_edge

if.end50.err_ice_add_prof_id_flow_crit_edge:      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end50.if.then74_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then74

if.else59:                                        ; preds = %land.lhs.true.if.else59_crit_edge, %if.end.if.else59_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lst.i) #16
  %67 = getelementptr inbounds %struct.list_head, ptr %lst.i, i32 0, i32 1
  %68 = ptrtoint ptr %lst.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %lst.i, ptr %lst.i, align 4
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %lst.i, ptr %67, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 344) #19
  %tobool.not.i209 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i209, label %ice_find_prof_vsig.exit.thread, label %if.end.i212

ice_find_prof_vsig.exit.thread:                   ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lst.i) #16
  br label %if.else66

if.end.i212:                                      ; preds = %if.else59
  %profile_cookie.i210 = getelementptr inbounds %struct.ice_vsig_prof, ptr %call7.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %profile_cookie.i210 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %hdl, ptr %profile_cookie.i210, align 8
  %72 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lst.i, align 4
  %call.i.i.i211 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %lst.i, ptr noundef %73) #16
  br i1 %call.i.i.i211, label %if.end.i.i.i215, label %if.end.i212.list_add.exit.i_crit_edge

if.end.i212.list_add.exit.i_crit_edge:            ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit.i

if.end.i.i.i215:                                  ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i213 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i213, align 4
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %call7.i.i.i, align 8
  %prev3.i.i.i214 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %lst.i, ptr %prev3.i.i.i214, align 4
  %77 = ptrtoint ptr %lst.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call7.i.i.i, ptr %lst.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i215, %if.end.i212.list_add.exit.i_crit_edge
  %count.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 4
  %78 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp26.not.i.i = icmp eq i16 %79, 0
  br i1 %cmp26.not.i.i, label %list_add.exit.i.ice_find_dup_props_vsig.exit.i_crit_edge, label %for.body.lr.ph.i.i

list_add.exit.i.ice_find_dup_props_vsig.exit.i_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_dup_props_vsig.exit.i

for.body.lr.ph.i.i:                               ; preds = %list_add.exit.i
  %xlt22.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %80 = ptrtoint ptr %xlt22.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xlt22.i.i, align 4
  %wide.trip.count.i.i = zext i16 %79 to i32
  br label %for.body.i.i216

for.body.i.i216:                                  ; preds = %for.inc.i.i.for.body.i.i216_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i216_crit_edge ]
  %in_use.i.i = getelementptr %struct.ice_vsig_entry, ptr %81, i32 %indvars.iv.i.i, i32 2
  %82 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %in_use.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i, label %for.body.i.i216.for.inc.i.i_crit_edge, label %for.body.i.i216.for.cond.i.i.i_crit_edge

for.body.i.i216.for.cond.i.i.i_crit_edge:         ; preds = %for.body.i.i216
  br label %for.cond.i.i.i

for.body.i.i216.for.inc.i.i_crit_edge:            ; preds = %for.body.i.i216
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.i216.for.cond.i.i.i_crit_edge
  %count.0.i.i.i = phi i16 [ %inc.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %for.body.i.i216.for.cond.i.i.i_crit_edge ]
  %tmp1.0.in.i.i.i = phi ptr [ %tmp1.0.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ], [ %lst.i, %for.body.i.i216.for.cond.i.i.i_crit_edge ]
  %84 = ptrtoint ptr %tmp1.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %tmp1.0.i.i.i = load ptr, ptr %tmp1.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %tmp1.0.i.i.i, %lst.i
  %inc.i.i.i = add i16 %count.0.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %for.cond11.i.preheader.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.i

for.cond11.i.preheader.i.i:                       ; preds = %for.cond.i.i.i
  %arrayidx5.i.i = getelementptr %struct.ice_vsig_entry, ptr %81, i32 %indvars.iv.i.i
  br label %for.cond11.i.i.i

for.cond11.i.i.i:                                 ; preds = %for.cond11.i.i.i.for.cond11.i.i.i_crit_edge, %for.cond11.i.preheader.i.i
  %chk_count.0.i.i.i = phi i16 [ %inc16.i.i.i, %for.cond11.i.i.i.for.cond11.i.i.i_crit_edge ], [ 0, %for.cond11.i.preheader.i.i ]
  %tmp2.0.in.i.i.i = phi ptr [ %tmp2.0.i.i.i, %for.cond11.i.i.i.for.cond11.i.i.i_crit_edge ], [ %arrayidx5.i.i, %for.cond11.i.preheader.i.i ]
  %85 = ptrtoint ptr %tmp2.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %tmp2.0.i.i.i = load ptr, ptr %tmp2.0.in.i.i.i, align 4
  %cmp13.not.i.i.i = icmp eq ptr %tmp2.0.i.i.i, %arrayidx5.i.i
  %inc16.i.i.i = add i16 %chk_count.0.i.i.i, 1
  br i1 %cmp13.not.i.i.i, label %for.end23.i.i.i, label %for.cond11.i.i.i.for.cond11.i.i.i_crit_edge

for.cond11.i.i.i.for.cond11.i.i.i_crit_edge:      ; preds = %for.cond11.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond11.i.i.i

for.end23.i.i.i:                                  ; preds = %for.cond11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.0.i.i.i)
  %tobool.not.i.i.i = icmp ne i16 %count.0.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %count.0.i.i.i, i16 %chk_count.0.i.i.i)
  %cmp25.not.i.i.i = icmp eq i16 %count.0.i.i.i, %chk_count.0.i.i.i
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 %cmp25.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %for.end23.i.i.i.while.cond.i.i.i_crit_edge, label %for.end23.i.i.i.for.inc.i.i_crit_edge

for.end23.i.i.i.for.inc.i.i_crit_edge:            ; preds = %for.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.end23.i.i.i.while.cond.i.i.i_crit_edge:       ; preds = %for.end23.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %for.end23.i.i.i.while.cond.i.i.i_crit_edge
  %count.1.i.i.i = phi i16 [ %dec.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %count.0.i.i.i, %for.end23.i.i.i.while.cond.i.i.i_crit_edge ]
  %tmp2.1.in.i.i.i = phi ptr [ %tmp2.1.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %arrayidx5.i.i, %for.end23.i.i.i.while.cond.i.i.i_crit_edge ]
  %tmp1.1.in.i.i.i = phi ptr [ %tmp1.1.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %lst.i, %for.end23.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.1.i.i.i)
  %tobool35.not.i.i.i = icmp eq i16 %count.1.i.i.i, 0
  br i1 %tobool35.not.i.i.i, label %if.then.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %dec.i.i.i = add i16 %count.1.i.i.i, -1
  %86 = ptrtoint ptr %tmp2.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %tmp2.1.i.i.i = load ptr, ptr %tmp2.1.in.i.i.i, align 4
  %87 = ptrtoint ptr %tmp1.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %tmp1.1.i.i.i = load ptr, ptr %tmp1.1.in.i.i.i, align 4
  %profile_cookie.i.i.i = getelementptr inbounds %struct.ice_vsig_prof, ptr %tmp2.1.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %profile_cookie.i.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %profile_cookie.i.i.i, align 8
  %profile_cookie36.i.i.i = getelementptr inbounds %struct.ice_vsig_prof, ptr %tmp1.1.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %profile_cookie36.i.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %profile_cookie36.i.i.i, align 8
  %cmp37.not.i.i.i = icmp eq i64 %89, %91
  br i1 %cmp37.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %while.body.i.i.i.for.inc.i.i_crit_edge

while.body.i.i.i.for.inc.i.i_crit_edge:           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i.i

if.then.i.i:                                      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %92 = trunc i32 %indvars.iv.i.i to i16
  %and.i.i = and i16 %92, 8191
  %pf_id.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %93 = ptrtoint ptr %pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %pf_id.i.i, align 1
  %conv13.i.i = zext i8 %94 to i16
  %shl.i.i = shl i16 %conv13.i.i, 13
  %or.i.i = or i16 %shl.i.i, %and.i.i
  %95 = ptrtoint ptr %vsig to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %or.i.i, ptr %vsig, align 2
  br label %ice_find_dup_props_vsig.exit.i

for.inc.i.i:                                      ; preds = %while.body.i.i.i.for.inc.i.i_crit_edge, %for.end23.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i216.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ice_find_dup_props_vsig.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i216_crit_edge

for.inc.i.i.for.body.i.i216_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i216

for.inc.i.i.ice_find_dup_props_vsig.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_dup_props_vsig.exit.i

ice_find_dup_props_vsig.exit.i:                   ; preds = %for.inc.i.i.ice_find_dup_props_vsig.exit.i_crit_edge, %if.then.i.i, %list_add.exit.i.ice_find_dup_props_vsig.exit.i_crit_edge
  %tobool3.not.i = phi i1 [ false, %list_add.exit.i.ice_find_dup_props_vsig.exit.i_crit_edge ], [ true, %if.then.i.i ], [ false, %for.inc.i.i.ice_find_dup_props_vsig.exit.i_crit_edge ]
  %call.i.i10.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #16
  br i1 %call.i.i10.i, label %if.end.i.i11.i, label %ice_find_dup_props_vsig.exit.i.ice_find_prof_vsig.exit_crit_edge

ice_find_dup_props_vsig.exit.i.ice_find_prof_vsig.exit_crit_edge: ; preds = %ice_find_dup_props_vsig.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_find_prof_vsig.exit

if.end.i.i11.i:                                   ; preds = %ice_find_dup_props_vsig.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i.i, align 4
  %98 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %ice_find_prof_vsig.exit

ice_find_prof_vsig.exit:                          ; preds = %if.end.i.i11.i, %ice_find_dup_props_vsig.exit.i.ice_find_prof_vsig.exit_crit_edge
  %102 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i12.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i12.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i12.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lst.i) #16
  br i1 %tobool3.not.i, label %if.then61, label %ice_find_prof_vsig.exit.if.else66_crit_edge

ice_find_prof_vsig.exit.if.else66_crit_edge:      ; preds = %ice_find_prof_vsig.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else66

if.then61:                                        ; preds = %ice_find_prof_vsig.exit
  %104 = ptrtoint ptr %vsig to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vsig, align 2
  %call62 = call fastcc i32 @ice_move_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %105, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then61.if.then74_crit_edge, label %if.then61.err_ice_add_prof_id_flow_crit_edge

if.then61.err_ice_add_prof_id_flow_crit_edge:     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.then61.if.then74_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then74

if.else66:                                        ; preds = %ice_find_prof_vsig.exit.if.else66_crit_edge, %ice_find_prof_vsig.exit.thread
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 8
  %dev.i219 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %call.i.i220 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i219, i32 noundef 32, i32 noundef 3520) #16
  %tobool.not.i221 = icmp eq ptr %call.i.i220, null
  br i1 %tobool.not.i221, label %if.else66.err_ice_add_prof_id_flow_crit_edge, label %if.end.i222

if.else66.err_ice_add_prof_id_flow_crit_edge:     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_flow

if.end.i222:                                      ; preds = %if.else66
  %xlt2.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %108 = ptrtoint ptr %xlt2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %xlt2.i.i, align 4
  br label %for.body.i.i226

for.body.i.i226:                                  ; preds = %for.inc.i.i231.for.body.i.i226_crit_edge, %if.end.i222
  %indvars.iv.i.i223 = phi i32 [ 1, %if.end.i222 ], [ %indvars.iv.next.i.i229, %for.inc.i.i231.for.body.i.i226_crit_edge ]
  %in_use.i.i224 = getelementptr %struct.ice_vsig_entry, ptr %109, i32 %indvars.iv.i.i223, i32 2
  %110 = ptrtoint ptr %in_use.i.i224 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %in_use.i.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i.i225 = icmp eq i8 %111, 0
  br i1 %tobool.not.i.i225, label %if.then.i.i228, label %for.inc.i.i231

if.then.i.i228:                                   ; preds = %for.body.i.i226
  %112 = trunc i32 %indvars.iv.i.i223 to i16
  %idxprom.i.i.i = and i32 %indvars.iv.i.i223, 65535
  %in_use.i.i.i = getelementptr %struct.ice_vsig_entry, ptr %109, i32 %idxprom.i.i.i, i32 2
  %113 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %in_use.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i.i.i227 = icmp eq i8 %114, 0
  br i1 %tobool.not.i.i.i227, label %if.then.i.i.i, label %if.then.i.i228.ice_vsig_alloc.exit.i_crit_edge

if.then.i.i228.ice_vsig_alloc.exit.i_crit_edge:   ; preds = %if.then.i.i228
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_vsig_alloc.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i228
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx3.i.i.i = getelementptr %struct.ice_vsig_entry, ptr %109, i32 %idxprom.i.i.i
  %115 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %arrayidx3.i.i.i, ptr %arrayidx3.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx3.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %arrayidx3.i.i.i, ptr %prev.i.i.i.i, align 4
  %117 = ptrtoint ptr %xlt2.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %xlt2.i.i, align 4
  %in_use16.i.i.i = getelementptr %struct.ice_vsig_entry, ptr %118, i32 %idxprom.i.i.i, i32 2
  %119 = ptrtoint ptr %in_use16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %in_use16.i.i.i, align 4
  br label %ice_vsig_alloc.exit.i

for.inc.i.i231:                                   ; preds = %for.body.i.i226
  %indvars.iv.next.i.i229 = add nuw nsw i32 %indvars.iv.i.i223, 1
  %exitcond.not.i.i230 = icmp eq i32 %indvars.iv.next.i.i229, 768
  br i1 %exitcond.not.i.i230, label %for.inc.i.i231.err_ice_create_prof_id_vsig.i_crit_edge, label %for.inc.i.i231.for.body.i.i226_crit_edge

for.inc.i.i231.for.body.i.i226_crit_edge:         ; preds = %for.inc.i.i231
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i226

for.inc.i.i231.err_ice_create_prof_id_vsig.i_crit_edge: ; preds = %for.inc.i.i231
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_create_prof_id_vsig.i

ice_vsig_alloc.exit.i:                            ; preds = %if.then.i.i.i, %if.then.i.i228.ice_vsig_alloc.exit.i_crit_edge
  %pf_id.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %120 = ptrtoint ptr %pf_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pf_id.i.i.i, align 1
  %conv20.i.i.i = zext i8 %121 to i16
  %shl.i.i.i = shl i16 %conv20.i.i.i, 13
  %or.i.i.i = or i16 %shl.i.i.i, %112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i.i.i)
  %tobool2.not.i = icmp eq i16 %or.i.i.i, 0
  br i1 %tobool2.not.i, label %ice_vsig_alloc.exit.i.err_ice_create_prof_id_vsig.i_crit_edge, label %if.end4.i

ice_vsig_alloc.exit.i.err_ice_create_prof_id_vsig.i_crit_edge: ; preds = %ice_vsig_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_create_prof_id_vsig.i

if.end4.i:                                        ; preds = %ice_vsig_alloc.exit.i
  %call5.i = call fastcc i32 @ice_move_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %or.i.i.i, ptr noundef nonnull %chg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.err_ice_create_prof_id_vsig.i_crit_edge

if.end4.i.err_ice_create_prof_id_vsig.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_create_prof_id_vsig.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call fastcc i32 @ice_add_prof_id_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %or.i.i.i, i64 noundef %hdl, i1 noundef zeroext false, ptr noundef nonnull %chg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i232 = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i232, label %if.end12.i, label %if.end8.i.err_ice_create_prof_id_vsig.i_crit_edge

if.end8.i.err_ice_create_prof_id_vsig.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_create_prof_id_vsig.i

if.end12.i:                                       ; preds = %if.end8.i
  %type.i233 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i220, i32 0, i32 1
  %122 = ptrtoint ptr %type.i233 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 3, ptr %type.i233, align 4
  %vsi13.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i220, i32 0, i32 9
  %123 = ptrtoint ptr %vsi13.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %vsi, ptr %vsi13.i, align 4
  %orig_vsig.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i220, i32 0, i32 11
  %124 = ptrtoint ptr %orig_vsig.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %orig_vsig.i, align 4
  %vsig.i = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i.i220, i32 0, i32 10
  %125 = ptrtoint ptr %vsig.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %or.i.i.i, ptr %vsig.i, align 2
  %126 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %chg, align 4
  %call.i.i.i234 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i220, ptr noundef nonnull %chg, ptr noundef %127) #16
  br i1 %call.i.i.i234, label %if.end.i.i.i237, label %if.end12.i.if.then74_crit_edge

if.end12.i.if.then74_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then74

if.end.i.i.i237:                                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i235 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i235 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i.i220, ptr %prev1.i.i.i235, align 4
  %129 = ptrtoint ptr %call.i.i220 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %127, ptr %call.i.i220, align 4
  %prev3.i.i.i236 = getelementptr inbounds %struct.list_head, ptr %call.i.i220, i32 0, i32 1
  %130 = ptrtoint ptr %prev3.i.i.i236 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %chg, ptr %prev3.i.i.i236, align 4
  %131 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %call.i.i220, ptr %chg, align 4
  br label %if.then74

err_ice_create_prof_id_vsig.i:                    ; preds = %if.end8.i.err_ice_create_prof_id_vsig.i_crit_edge, %if.end4.i.err_ice_create_prof_id_vsig.i_crit_edge, %ice_vsig_alloc.exit.i.err_ice_create_prof_id_vsig.i_crit_edge, %for.inc.i.i231.err_ice_create_prof_id_vsig.i_crit_edge
  %status.0.i238 = phi i32 [ %call5.i, %if.end4.i.err_ice_create_prof_id_vsig.i_crit_edge ], [ %call9.i, %if.end8.i.err_ice_create_prof_id_vsig.i_crit_edge ], [ -5, %ice_vsig_alloc.exit.i.err_ice_create_prof_id_vsig.i_crit_edge ], [ -5, %for.inc.i.i231.err_ice_create_prof_id_vsig.i_crit_edge ]
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i, align 8
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev18.i, ptr noundef nonnull %call.i.i220) #16
  br label %err_ice_add_prof_id_flow

if.then74:                                        ; preds = %if.end.i.i.i237, %if.end12.i.if.then74_crit_edge, %if.then61.if.then74_crit_edge, %if.end50.if.then74_crit_edge, %if.end41.if.then74_crit_edge, %if.then30.if.then74_crit_edge, %if.end28.if.then74_crit_edge
  %call75 = call fastcc i32 @ice_upd_prof_hw(ptr noundef %hw, i32 noundef %blk, ptr noundef nonnull %chg)
  br label %err_ice_add_prof_id_flow

err_ice_add_prof_id_flow:                         ; preds = %if.then74, %err_ice_create_prof_id_vsig.i, %if.else66.err_ice_add_prof_id_flow_crit_edge, %if.then61.err_ice_add_prof_id_flow_crit_edge, %if.end50.err_ice_add_prof_id_flow_crit_edge, %if.else46.err_ice_add_prof_id_flow_crit_edge, %if.end41.err_ice_add_prof_id_flow_crit_edge, %if.then37.err_ice_add_prof_id_flow_crit_edge, %if.then30.err_ice_add_prof_id_flow_crit_edge, %if.then24.err_ice_add_prof_id_flow_crit_edge, %if.end17.err_ice_add_prof_id_flow_crit_edge, %if.end11.err_ice_add_prof_id_flow_crit_edge, %if.end7.err_ice_add_prof_id_flow_crit_edge, %for.body.i202.err_ice_add_prof_id_flow_crit_edge
  %status.3 = phi i32 [ %call62, %if.then61.err_ice_add_prof_id_flow_crit_edge ], [ %call75, %if.then74 ], [ %status.0.i238, %err_ice_create_prof_id_vsig.i ], [ -12, %if.else66.err_ice_add_prof_id_flow_crit_edge ], [ -2, %if.end7.err_ice_add_prof_id_flow_crit_edge ], [ %call51, %if.end50.err_ice_add_prof_id_flow_crit_edge ], [ %call47, %if.else46.err_ice_add_prof_id_flow_crit_edge ], [ %call42, %if.end41.err_ice_add_prof_id_flow_crit_edge ], [ %call38, %if.then37.err_ice_add_prof_id_flow_crit_edge ], [ %call31, %if.then30.err_ice_add_prof_id_flow_crit_edge ], [ %call25, %if.then24.err_ice_add_prof_id_flow_crit_edge ], [ %call18, %if.end17.err_ice_add_prof_id_flow_crit_edge ], [ %call14, %if.end11.err_ice_add_prof_id_flow_crit_edge ], [ -17, %for.body.i202.err_ice_add_prof_id_flow_crit_edge ]
  %134 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chg, align 4
  %cmp83.not269 = icmp eq ptr %135, %chg
  br i1 %cmp83.not269, label %err_ice_add_prof_id_flow.for.end_crit_edge, label %err_ice_add_prof_id_flow.for.body_crit_edge

err_ice_add_prof_id_flow.for.body_crit_edge:      ; preds = %err_ice_add_prof_id_flow
  br label %for.body

err_ice_add_prof_id_flow.for.end_crit_edge:       ; preds = %err_ice_add_prof_id_flow
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %err_ice_add_prof_id_flow.for.body_crit_edge
  %del.0270 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %135, %err_ice_add_prof_id_flow.for.body_crit_edge ]
  %136 = ptrtoint ptr %del.0270 to i32
  call void @__asan_load4_noabort(i32 %136)
  %tmp.0 = load ptr, ptr %del.0270, align 4
  %call.i.i240 = call zeroext i1 @__list_del_entry_valid(ptr noundef %del.0270) #16
  br i1 %call.i.i240, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %del.0270, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i, align 4
  %139 = ptrtoint ptr %del.0270 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %del.0270, align 4
  %prev1.i.i.i241 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i241 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i241, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %143 = ptrtoint ptr %del.0270 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 256 to ptr), ptr %del.0270, align 4
  %prev.i242 = getelementptr inbounds %struct.list_head, ptr %del.0270, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i242 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i242, align 4
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef %del.0270) #16
  %cmp83.not = icmp eq ptr %tmp.0, %chg
  br i1 %cmp83.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %err_ice_add_prof_id_flow.for.end_crit_edge
  %147 = ptrtoint ptr %union_lst to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %union_lst, align 4
  %cmp104.not272 = icmp eq ptr %148, %union_lst
  br i1 %cmp104.not272, label %for.end.cleanup121_crit_edge, label %for.end.for.body107_crit_edge

for.end.for.body107_crit_edge:                    ; preds = %for.end
  br label %for.body107

for.end.cleanup121_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup121

for.body107:                                      ; preds = %list_del.exit248.for.body107_crit_edge, %for.end.for.body107_crit_edge
  %del1.0273 = phi ptr [ %tmp1.0, %list_del.exit248.for.body107_crit_edge ], [ %148, %for.end.for.body107_crit_edge ]
  %149 = ptrtoint ptr %del1.0273 to i32
  call void @__asan_load4_noabort(i32 %149)
  %tmp1.0 = load ptr, ptr %del1.0273, align 8
  %call.i.i243 = call zeroext i1 @__list_del_entry_valid(ptr noundef %del1.0273) #16
  br i1 %call.i.i243, label %if.end.i.i246, label %for.body107.list_del.exit248_crit_edge

for.body107.list_del.exit248_crit_edge:           ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit248

if.end.i.i246:                                    ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i244 = getelementptr inbounds %struct.list_head, ptr %del1.0273, i32 0, i32 1
  %150 = ptrtoint ptr %prev.i.i244 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i.i244, align 4
  %152 = ptrtoint ptr %del1.0273 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %del1.0273, align 4
  %prev1.i.i.i245 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev1.i.i.i245 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev1.i.i.i245, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %153, ptr %151, align 4
  br label %list_del.exit248

list_del.exit248:                                 ; preds = %if.end.i.i246, %for.body107.list_del.exit248_crit_edge
  %156 = ptrtoint ptr %del1.0273 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 256 to ptr), ptr %del1.0273, align 4
  %prev.i247 = getelementptr inbounds %struct.list_head, ptr %del1.0273, i32 0, i32 1
  %157 = ptrtoint ptr %prev.i247 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i247, align 4
  %158 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %add.ptr.i, align 8
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev113, ptr noundef %del1.0273) #16
  %cmp104.not = icmp eq ptr %tmp1.0, %union_lst
  br i1 %cmp104.not, label %list_del.exit248.cleanup121_crit_edge, label %list_del.exit248.for.body107_crit_edge

list_del.exit248.for.body107_crit_edge:           ; preds = %list_del.exit248
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body107

list_del.exit248.cleanup121_crit_edge:            ; preds = %list_del.exit248
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup121

cleanup121:                                       ; preds = %list_del.exit248.cleanup121_crit_edge, %for.end.cleanup121_crit_edge, %ice_get_prof.exit.thread
  %retval.0 = phi i32 [ %status.0.i.ph, %ice_get_prof.exit.thread ], [ %status.3, %for.end.cleanup121_crit_edge ], [ %status.3, %list_del.exit248.cleanup121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsig) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chg) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %union_lst) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_profs_vsig(ptr nocapture noundef readonly %hw, i32 noundef %blk, i16 noundef zeroext %vsig, ptr noundef %lst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %vsig, 8191
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %1 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xlt2, align 4
  %idxprom = zext i16 %0 to i32
  %arrayidx3 = getelementptr %struct.ice_vsig_entry, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ent1.072 = load ptr, ptr %arrayidx3, align 4
  %cmp.not74 = icmp eq ptr %ent1.072, %arrayidx3
  br i1 %cmp.not74, label %entry.cleanup49_crit_edge, label %for.body.lr.ph

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr14 = getelementptr i8, ptr %hw, i32 -2960
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lst, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ent1.075 = phi ptr [ %ent1.072, %for.body.lr.ph ], [ %ent1.0, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr14, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef %ent1.075, i32 noundef 344, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %err_ice_get_profs_vsig, label %if.end

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %7, ptr noundef %lst) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %prev.i, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lst, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge
  %12 = ptrtoint ptr %ent1.075 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ent1.0 = load ptr, ptr %ent1.075, align 4
  %13 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xlt2, align 4
  %arrayidx9 = getelementptr %struct.ice_vsig_entry, ptr %14, i32 %idxprom
  %cmp.not = icmp eq ptr %ent1.0, %arrayidx9
  br i1 %cmp.not, label %cleanup.cleanup49_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.cleanup49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

err_ice_get_profs_vsig:                           ; preds = %for.body
  %15 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lst, align 4
  %cmp32.not76 = icmp eq ptr %16, %lst
  br i1 %cmp32.not76, label %err_ice_get_profs_vsig.cleanup49_crit_edge, label %err_ice_get_profs_vsig.for.body35_crit_edge

err_ice_get_profs_vsig.for.body35_crit_edge:      ; preds = %err_ice_get_profs_vsig
  br label %for.body35

err_ice_get_profs_vsig.cleanup49_crit_edge:       ; preds = %err_ice_get_profs_vsig
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

for.body35:                                       ; preds = %list_del.exit.for.body35_crit_edge, %err_ice_get_profs_vsig.for.body35_crit_edge
  %ent1.177 = phi ptr [ %ent2.0, %list_del.exit.for.body35_crit_edge ], [ %16, %err_ice_get_profs_vsig.for.body35_crit_edge ]
  %17 = ptrtoint ptr %ent1.177 to i32
  call void @__asan_load4_noabort(i32 %17)
  %ent2.0 = load ptr, ptr %ent1.177, align 8
  %call.i.i67 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent1.177) #16
  br i1 %call.i.i67, label %if.end.i.i68, label %for.body35.list_del.exit_crit_edge

for.body35.list_del.exit_crit_edge:               ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i68:                                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ent1.177, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %ent1.177 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ent1.177, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i68, %for.body35.list_del.exit_crit_edge
  %24 = ptrtoint ptr %ent1.177 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %ent1.177, align 4
  %prev.i69 = getelementptr inbounds %struct.list_head, ptr %ent1.177, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i69, align 4
  %26 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr14, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev41, ptr noundef %ent1.177) #16
  %cmp32.not = icmp eq ptr %ent2.0, %lst
  br i1 %cmp32.not, label %list_del.exit.cleanup49_crit_edge, label %list_del.exit.for.body35_crit_edge

list_del.exit.for.body35_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body35

list_del.exit.cleanup49_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

cleanup49:                                        ; preds = %list_del.exit.cleanup49_crit_edge, %err_ice_get_profs_vsig.cleanup49_crit_edge, %cleanup.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ -12, %err_ice_get_profs_vsig.cleanup49_crit_edge ], [ 0, %entry.cleanup49_crit_edge ], [ -12, %list_del.exit.cleanup49_crit_edge ], [ 0, %cleanup.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_prof_to_lst(ptr noundef %hw, i32 noundef %blk, ptr noundef %lst, i64 noundef %hdl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %prof_map_lock = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 7
  tail call void @mutex_lock_nested(ptr noundef %prof_map_lock, i32 noundef 0) #16
  %prof_map.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %map.0.in.i = phi ptr [ %prof_map.i, %entry ], [ %map.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %map.0.i, %prof_map.i
  br i1 %cmp.not.i, label %for.cond.i.err_ice_add_prof_to_lst_crit_edge, label %for.body.i

for.cond.i.err_ice_add_prof_to_lst_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_to_lst

for.body.i:                                       ; preds = %for.cond.i
  %profile_cookie.i = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %profile_cookie.i, align 8
  %cmp7.i = icmp eq i64 %2, %hdl
  br i1 %cmp7.i, label %ice_search_prof_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ice_search_prof_id.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %map.0.i, null
  br i1 %tobool.not, label %ice_search_prof_id.exit.err_ice_add_prof_to_lst_crit_edge, label %if.end

ice_search_prof_id.exit.err_ice_add_prof_to_lst_crit_edge: ; preds = %ice_search_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_to_lst

if.end:                                           ; preds = %ice_search_prof_id.exit
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 344, i32 noundef 3520) #16
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.err_ice_add_prof_to_lst_crit_edge, label %if.end5

if.end.err_ice_add_prof_to_lst_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_to_lst

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %profile_cookie.i, align 8
  %profile_cookie6 = getelementptr inbounds %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %profile_cookie6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %profile_cookie6, align 8
  %prof_id = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %prof_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prof_id, align 8
  %prof_id7 = getelementptr inbounds %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %prof_id7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %prof_id7, align 8
  %ptg_cnt = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 4
  %11 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ptg_cnt, align 1
  %tcam_count = getelementptr inbounds %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %tcam_count to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %tcam_count, align 1
  %14 = load i8, ptr %ptg_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp53.not = icmp eq i8 %14, 0
  br i1 %cmp53.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %15 = ptrtoint ptr %prof_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %prof_id, align 8
  %arrayidx12 = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv
  %prof_id13 = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv, i32 3
  %17 = ptrtoint ptr %prof_id13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %prof_id13, align 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %arrayidx12, align 2
  %arrayidx18 = getelementptr %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 5, i32 %indvars.iv
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx18, align 1
  %ptg22 = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv, i32 2
  %21 = ptrtoint ptr %ptg22 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ptg22, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %22 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ptg_cnt, align 1
  %24 = zext i8 %23 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %25 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lst, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %lst, ptr noundef %26) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.end.err_ice_add_prof_to_lst_crit_edge

for.end.err_ice_add_prof_to_lst_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_to_lst

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %lst, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %lst to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call.i, ptr %lst, align 4
  br label %err_ice_add_prof_to_lst

err_ice_add_prof_to_lst:                          ; preds = %if.end.i.i, %for.end.err_ice_add_prof_to_lst_crit_edge, %if.end.err_ice_add_prof_to_lst_crit_edge, %ice_search_prof_id.exit.err_ice_add_prof_to_lst_crit_edge, %for.cond.i.err_ice_add_prof_to_lst_crit_edge
  %status.0 = phi i32 [ -2, %ice_search_prof_id.exit.err_ice_add_prof_to_lst_crit_edge ], [ -12, %if.end.err_ice_add_prof_to_lst_crit_edge ], [ 0, %for.end.err_ice_add_prof_to_lst_crit_edge ], [ 0, %if.end.i.i ], [ -2, %for.cond.i.err_ice_add_prof_to_lst_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %prof_map_lock) #16
  ret i32 %status.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_find_dup_props_vsig(ptr nocapture noundef readonly %hw, i32 noundef %blk, ptr noundef readonly %chs, ptr nocapture noundef writeonly %vsig) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp26.not = icmp eq i16 %1, 0
  br i1 %cmp26.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %xlt22 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %2 = ptrtoint ptr %xlt22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xlt22, align 4
  %wide.trip.count = zext i16 %1 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %in_use = getelementptr %struct.ice_vsig_entry, ptr %3, i32 %indvars.iv, i32 2
  %4 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %count.0.i = phi i16 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.body.for.cond.i_crit_edge ]
  %tmp1.0.in.i = phi ptr [ %tmp1.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %chs, %for.body.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %tmp1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp1.0.i = load ptr, ptr %tmp1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp1.0.i, %chs
  %inc.i = add i16 %count.0.i, 1
  br i1 %cmp.not.i, label %for.cond11.i.preheader, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.cond11.i.preheader:                           ; preds = %for.cond.i
  %arrayidx5 = getelementptr %struct.ice_vsig_entry, ptr %3, i32 %indvars.iv
  br label %for.cond11.i

for.cond11.i:                                     ; preds = %for.cond11.i.for.cond11.i_crit_edge, %for.cond11.i.preheader
  %chk_count.0.i = phi i16 [ %inc16.i, %for.cond11.i.for.cond11.i_crit_edge ], [ 0, %for.cond11.i.preheader ]
  %tmp2.0.in.i = phi ptr [ %tmp2.0.i, %for.cond11.i.for.cond11.i_crit_edge ], [ %arrayidx5, %for.cond11.i.preheader ]
  %7 = ptrtoint ptr %tmp2.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp2.0.i = load ptr, ptr %tmp2.0.in.i, align 4
  %cmp13.not.i = icmp eq ptr %tmp2.0.i, %arrayidx5
  %inc16.i = add i16 %chk_count.0.i, 1
  br i1 %cmp13.not.i, label %for.end23.i, label %for.cond11.i.for.cond11.i_crit_edge

for.cond11.i.for.cond11.i_crit_edge:              ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond11.i

for.end23.i:                                      ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.0.i)
  %tobool.not.i = icmp ne i16 %count.0.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %count.0.i, i16 %chk_count.0.i)
  %cmp25.not.i = icmp eq i16 %count.0.i, %chk_count.0.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp25.not.i, i1 false
  br i1 %or.cond.i, label %for.end23.i.while.cond.i_crit_edge, label %for.end23.i.for.inc_crit_edge

for.end23.i.for.inc_crit_edge:                    ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.end23.i.while.cond.i_crit_edge:               ; preds = %for.end23.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.end23.i.while.cond.i_crit_edge
  %count.1.i = phi i16 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %count.0.i, %for.end23.i.while.cond.i_crit_edge ]
  %tmp2.1.in.i = phi ptr [ %tmp2.1.i, %while.body.i.while.cond.i_crit_edge ], [ %arrayidx5, %for.end23.i.while.cond.i_crit_edge ]
  %tmp1.1.in.i = phi ptr [ %tmp1.1.i, %while.body.i.while.cond.i_crit_edge ], [ %chs, %for.end23.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.1.i)
  %tobool35.not.i = icmp eq i16 %count.1.i, 0
  br i1 %tobool35.not.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i16 %count.1.i, -1
  %8 = ptrtoint ptr %tmp2.1.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp2.1.i = load ptr, ptr %tmp2.1.in.i, align 4
  %9 = ptrtoint ptr %tmp1.1.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp1.1.i = load ptr, ptr %tmp1.1.in.i, align 4
  %profile_cookie.i = getelementptr inbounds %struct.ice_vsig_prof, ptr %tmp2.1.i, i32 0, i32 1
  %10 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %profile_cookie.i, align 8
  %profile_cookie36.i = getelementptr inbounds %struct.ice_vsig_prof, ptr %tmp1.1.i, i32 0, i32 1
  %12 = ptrtoint ptr %profile_cookie36.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %profile_cookie36.i, align 8
  %cmp37.not.i = icmp eq i64 %11, %13
  br i1 %cmp37.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.inc_crit_edge

while.body.i.for.inc_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

if.then:                                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = trunc i32 %indvars.iv to i16
  %and = and i16 %14, 8191
  %pf_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %15 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pf_id, align 1
  %conv13 = zext i8 %16 to i16
  %shl = shl i16 %conv13, 13
  %or = or i16 %shl, %and
  %17 = ptrtoint ptr %vsig to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or, ptr %vsig, align 2
  br label %cleanup

for.inc:                                          ; preds = %while.body.i.for.inc_crit_edge, %for.end23.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_move_vsi(ptr nocapture noundef readonly %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %vsig, ptr noundef %chg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi)
  %cmp.i = icmp ugt i16 %vsi, 767
  br i1 %cmp.i, label %if.end.if.then7_crit_edge, label %if.end5

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end5:                                          ; preds = %if.end
  %conv.i = zext i16 %vsi to i32
  %vsis.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 1
  %2 = ptrtoint ptr %vsis.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsis.i, align 4
  %vsig4.i = getelementptr %struct.ice_vsig_vsi, ptr %3, i32 %conv.i, i32 3
  %4 = ptrtoint ptr %vsig4.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vsig4.i, align 2
  %call4 = tail call fastcc i32 @ice_vsig_add_mv_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %vsig)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end13, label %if.end5.if.then7_crit_edge

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %status.042 = phi i32 [ %call4, %if.end5.if.then7_crit_edge ], [ -22, %if.end.if.then7_crit_edge ]
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev12, ptr noundef nonnull %call.i) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %type = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %type, align 4
  %vsi14 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %vsi14 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %vsi, ptr %vsi14, align 4
  %orig_vsig15 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %orig_vsig15 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %orig_vsig15, align 4
  %vsig16 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %vsig16 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %vsig, ptr %vsig16, align 2
  %12 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chg, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %chg, ptr noundef %13) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chg, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call.i, ptr %chg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end13.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.042, %if.then7 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsig, ptr noundef %chg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %vsig, 8191
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %1 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xlt2, align 4
  %idxprom = zext i16 %0 to i32
  %arrayidx3 = getelementptr %struct.ice_vsig_entry, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx3, align 4
  %cmp.not96 = icmp eq ptr %4, %arrayidx3
  br i1 %cmp.not96, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr20 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %d.097 = phi ptr [ %4, %for.body.lr.ph ], [ %t.099, %list_del.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %d.097 to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.099 = load ptr, ptr %d.097, align 8
  %call = tail call fastcc i32 @ice_rem_prof_id(ptr noundef %hw, i32 noundef %blk, ptr noundef %d.097)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup53_crit_edge

for.body.cleanup53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup53

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %d.097) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %d.097, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %d.097 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d.097, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %d.097 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %d.097, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %d.097, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr20, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %d.097) #16
  %16 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xlt2, align 4
  %arrayidx14 = getelementptr %struct.ice_vsig_entry, ptr %17, i32 %idxprom
  %cmp.not = icmp eq ptr %t.099, %arrayidx14
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %2, %entry.for.end_crit_edge ], [ %17, %list_del.exit.for.end_crit_edge ]
  %first_vsi = getelementptr %struct.ice_vsig_entry, ptr %.lcssa, i32 %idxprom, i32 1
  %18 = ptrtoint ptr %first_vsi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %first_vsi, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %for.end.if.end51_crit_edge, label %do.body.preheader

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

do.body.preheader:                                ; preds = %for.end
  %add.ptr37 = getelementptr i8, ptr %hw, i32 -2960
  %vsis = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %vsi_cur.0 = phi ptr [ %21, %do.cond.do.body_crit_edge ], [ %19, %do.body.preheader ]
  %20 = ptrtoint ptr %vsi_cur.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vsi_cur.0, align 4
  %22 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr37, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev39, i32 noundef 32, i32 noundef 3520) #16
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %do.body.cleanup53_crit_edge, label %if.end43

do.body.cleanup53_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup53

if.end43:                                         ; preds = %do.body
  %type = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %type, align 4
  %orig_vsig = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %orig_vsig to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %vsig, ptr %orig_vsig, align 4
  %vsig44 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %vsig44 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %vsig44, align 2
  %27 = ptrtoint ptr %vsis to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vsis, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %vsi_cur.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %conv48 = trunc i32 %sub.ptr.div to i16
  %vsi = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %vsi to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv48, ptr %vsi, align 4
  %30 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chg, align 4
  %call.i.i88 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %chg, ptr noundef %31) #16
  br i1 %call.i.i88, label %if.end.i.i89, label %if.end43.do.cond_crit_edge

if.end43.do.cond_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

if.end.i.i89:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %chg, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call.i, ptr %chg, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.i.i89, %if.end43.do.cond_crit_edge
  %tobool50.not = icmp eq ptr %21, null
  br i1 %tobool50.not, label %do.cond.if.end51_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.cond.if.end51_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.end51:                                         ; preds = %do.cond.if.end51_crit_edge, %for.end.if.end51_crit_edge
  %call52 = tail call fastcc i32 @ice_vsig_free(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsig)
  br label %cleanup53

cleanup53:                                        ; preds = %if.end51, %do.body.cleanup53_crit_edge, %for.body.cleanup53_crit_edge
  %retval.2 = phi i32 [ %call52, %if.end51 ], [ -12, %do.body.cleanup53_crit_edge ], [ %call, %for.body.cleanup53_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_prof_id_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsig, i64 noundef %hdl, i1 noundef zeroext %rev, ptr noundef %chg) unnamed_addr #1 align 64 {
entry:
  %vl_msk = alloca [5 x i8], align 1
  %dc_msk = alloca [5 x i8], align 1
  %nm_msk = alloca [5 x i8], align 1
  %tcam_idx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %vl_msk) #16
  %0 = call ptr @memset(ptr %vl_msk, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dc_msk) #16
  %1 = call ptr @memcpy(ptr %dc_msk, ptr @__const.ice_prof_tcam_ena_dis.dc_msk, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %nm_msk) #16
  %2 = call ptr @memset(ptr %nm_msk, i32 0, i32 5)
  %conv.i = zext i16 %vsig to i32
  %and.i = and i16 %vsig, 8191
  %xlt2.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %3 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xlt2.i, align 4
  %idxprom.i = zext i16 %and.i to i32
  %arrayidx3.i = getelementptr %struct.ice_vsig_entry, ptr %4, i32 %idxprom.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %ent.0.in.i = phi ptr [ %arrayidx3.i, %entry ], [ %ent.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %ent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ent.0.i = load ptr, ptr %ent.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ent.0.i, %arrayidx3.i
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %profile_cookie.i = getelementptr inbounds %struct.ice_vsig_prof, ptr %ent.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %profile_cookie.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %profile_cookie.i, align 8
  %cmp12.i = icmp eq i64 %7, %hdl
  br i1 %cmp12.i, label %for.body.i.cleanup129_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.body.i.cleanup129_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup129

do.body.i:                                        ; preds = %for.cond.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_has_prof_vsig.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_prof_id_vsig, %ice_has_prof_vsig.exit.thread233)) #16
          to label %if.end [label %ice_has_prof_vsig.exit.thread233], !srcloc !155

ice_has_prof_vsig.exit.thread233:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr26.i = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr26.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_has_prof_vsig.__UNIQUE_ID_ddebug638, ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %conv.i) #16
  br label %if.end

if.end:                                           ; preds = %ice_has_prof_vsig.exit.thread233, %do.body.i
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 344, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup129_crit_edge, label %if.end3

if.end.cleanup129_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup129

if.end3:                                          ; preds = %if.end
  %prof_map_lock = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 7
  tail call void @mutex_lock_nested(ptr noundef %prof_map_lock, i32 noundef 0) #16
  %prof_map.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 5
  br label %for.cond.i218

for.cond.i218:                                    ; preds = %for.body.i220.for.cond.i218_crit_edge, %if.end3
  %map.0.in.i = phi ptr [ %prof_map.i, %if.end3 ], [ %map.0.i, %for.body.i220.for.cond.i218_crit_edge ]
  %12 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %cmp.not.i217 = icmp eq ptr %map.0.i, %prof_map.i
  br i1 %cmp.not.i217, label %for.cond.i218.err_ice_add_prof_id_vsig_crit_edge, label %for.body.i220

for.cond.i218.err_ice_add_prof_id_vsig_crit_edge: ; preds = %for.cond.i218
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_vsig

for.body.i220:                                    ; preds = %for.cond.i218
  %profile_cookie.i219 = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %profile_cookie.i219 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %profile_cookie.i219, align 8
  %cmp7.i = icmp eq i64 %14, %hdl
  br i1 %cmp7.i, label %ice_search_prof_id.exit, label %for.body.i220.for.cond.i218_crit_edge

for.body.i220.for.cond.i218_crit_edge:            ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i218

ice_search_prof_id.exit:                          ; preds = %for.body.i220
  %tobool6.not = icmp eq ptr %map.0.i, null
  br i1 %tobool6.not, label %ice_search_prof_id.exit.err_ice_add_prof_id_vsig_crit_edge, label %if.end8

ice_search_prof_id.exit.err_ice_add_prof_id_vsig_crit_edge: ; preds = %ice_search_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_add_prof_id_vsig

if.end8:                                          ; preds = %ice_search_prof_id.exit
  %15 = ptrtoint ptr %profile_cookie.i219 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %profile_cookie.i219, align 8
  %profile_cookie9 = getelementptr inbounds %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %profile_cookie9 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %profile_cookie9, align 8
  %prof_id = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %prof_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %prof_id, align 8
  %prof_id10 = getelementptr inbounds %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %prof_id10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %prof_id10, align 8
  %ptg_cnt = getelementptr inbounds %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ptg_cnt, align 1
  %tcam_count = getelementptr inbounds %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %tcam_count to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tcam_count, align 1
  %24 = load i8, ptr %ptg_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp245.not = icmp eq i8 %24, 0
  br i1 %cmp245.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %t.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tcam_idx) #16
  %25 = ptrtoint ptr %tcam_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %tcam_idx, align 2, !annotation !154
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %call.i221 = call noalias ptr @devm_kmalloc(ptr noundef %dev18, i32 noundef 32, i32 noundef 3520) #16
  %tobool20.not = icmp eq ptr %call.i221, null
  br i1 %tobool20.not, label %for.body.cleanup.thread_crit_edge, label %if.end22

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end22:                                         ; preds = %for.body
  %mask = getelementptr %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 6, i32 %indvars.iv, i32 1
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp25 = icmp eq i16 %29, 0
  %30 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %blk, label %if.end22.cleanup.thread.sink.split_crit_edge [
    i32 2, label %if.end22.ice_alloc_tcam_ent.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.end22.ice_alloc_tcam_ent.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_alloc_tcam_ent.exit

if.end22.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.sink.split

sw.bb1.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_alloc_tcam_ent.exit

ice_alloc_tcam_ent.exit:                          ; preds = %sw.bb1.i.i, %if.end22.ice_alloc_tcam_ent.exit_crit_edge
  %storemerge.i.i = phi i16 [ 97, %sw.bb1.i.i ], [ 89, %if.end22.ice_alloc_tcam_ent.exit_crit_edge ]
  %call1.i = call i32 @ice_alloc_hw_res(ptr noundef %hw, i16 noundef zeroext %storemerge.i.i, i16 noundef zeroext 1, i1 noundef zeroext %cmp25, ptr noundef nonnull %tcam_idx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool28.not = icmp eq i32 %call1.i, 0
  br i1 %tobool28.not, label %if.end35, label %ice_alloc_tcam_ent.exit.cleanup.thread.sink.split_crit_edge

ice_alloc_tcam_ent.exit.cleanup.thread.sink.split_crit_edge: ; preds = %ice_alloc_tcam_ent.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.sink.split

if.end35:                                         ; preds = %ice_alloc_tcam_ent.exit
  %arrayidx23 = getelementptr %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 6, i32 %indvars.iv
  %arrayidx37 = getelementptr %struct.ice_prof_map, ptr %map.0.i, i32 0, i32 5, i32 %indvars.iv
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx37, align 1
  %arrayidx39 = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv
  %ptg40 = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv, i32 2
  %33 = ptrtoint ptr %ptg40 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %ptg40, align 2
  %34 = ptrtoint ptr %prof_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %prof_id, align 8
  %prof_id45 = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv, i32 3
  %36 = ptrtoint ptr %prof_id45 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %prof_id45, align 1
  %37 = ptrtoint ptr %tcam_idx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tcam_idx, align 2
  %39 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx39, align 2
  %attr53 = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv, i32 1
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx23, align 2
  %42 = ptrtoint ptr %attr53 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %attr53, align 2
  %in_use = getelementptr %struct.ice_vsig_prof, ptr %call.i, i32 0, i32 4, i32 %indvars.iv, i32 4
  %43 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %in_use, align 2
  %type = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i221, i32 0, i32 1
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %type, align 4
  %add_tcam_idx = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i221, i32 0, i32 4
  %45 = ptrtoint ptr %add_tcam_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %add_tcam_idx, align 2
  %prof_id64 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i221, i32 0, i32 8
  %46 = ptrtoint ptr %prof_id64 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %35, ptr %prof_id64, align 1
  %ptg69 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i221, i32 0, i32 7
  %47 = ptrtoint ptr %ptg69 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %32, ptr %ptg69, align 2
  %vsig70 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i221, i32 0, i32 10
  %48 = ptrtoint ptr %vsig70 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %vsig, ptr %vsig70, align 2
  %tcam_idx75 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i221, i32 0, i32 12
  %49 = ptrtoint ptr %tcam_idx75 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %38, ptr %tcam_idx75, align 2
  %50 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t.i, align 4
  %idxprom.i222 = zext i16 %38 to i32
  %key.i = getelementptr %struct.ice_prof_tcam_entry, ptr %51, i32 %idxprom.i222, i32 1
  %call.i223 = call fastcc i32 @ice_prof_gen_key(ptr noundef %hw, i32 noundef %blk, i8 noundef zeroext %32, i16 noundef zeroext %vsig, i16 noundef zeroext 0, ptr noundef nonnull %vl_msk, ptr noundef nonnull %dc_msk, ptr noundef nonnull %nm_msk, ptr noundef %key.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool.not.i = icmp eq i32 %call.i223, 0
  br i1 %tobool.not.i, label %if.end98, label %if.end35.cleanup.thread.sink.split_crit_edge

if.end35.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.sink.split

if.end98:                                         ; preds = %if.end35
  %52 = call i16 @llvm.bswap.i16(i16 %38) #16
  %53 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %t.i, align 4
  %arrayidx8.i = getelementptr %struct.ice_prof_tcam_entry, ptr %54, i32 %idxprom.i222
  %55 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %52, ptr %arrayidx8.i, align 1
  %56 = load ptr, ptr %t.i, align 4
  %prof_id15.i = getelementptr %struct.ice_prof_tcam_entry, ptr %56, i32 %idxprom.i222, i32 2
  %57 = ptrtoint ptr %prof_id15.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %35, ptr %prof_id15.i, align 1
  %58 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chg, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i221, ptr noundef %chg, ptr noundef %59) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end98.for.inc_crit_edge

if.end98.for.inc_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i221, ptr %prev1.i.i, align 4
  %61 = ptrtoint ptr %call.i221 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %call.i221, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i221, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %chg, ptr %prev3.i.i, align 4
  %63 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call.i221, ptr %chg, align 4
  br label %for.inc

cleanup.thread.sink.split:                        ; preds = %if.end35.cleanup.thread.sink.split_crit_edge, %ice_alloc_tcam_ent.exit.cleanup.thread.sink.split_crit_edge, %if.end22.cleanup.thread.sink.split_crit_edge
  %status.1.ph.ph = phi i32 [ %call1.i, %ice_alloc_tcam_ent.exit.cleanup.thread.sink.split_crit_edge ], [ -22, %if.end22.cleanup.thread.sink.split_crit_edge ], [ %call.i223, %if.end35.cleanup.thread.sink.split_crit_edge ]
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev34, ptr noundef nonnull %call.i221) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %for.body.cleanup.thread_crit_edge
  %status.1.ph = phi i32 [ %status.1.ph.ph, %cleanup.thread.sink.split ], [ -12, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcam_idx) #16
  br label %err_ice_add_prof_id_vsig

for.inc:                                          ; preds = %if.end.i.i, %if.end98.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcam_idx) #16
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %66 = ptrtoint ptr %ptg_cnt to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ptg_cnt, align 1
  %68 = zext i8 %67 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %68
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %69 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xlt2.i, align 4
  %arrayidx106 = getelementptr %struct.ice_vsig_entry, ptr %70, i32 %idxprom.i
  br i1 %rev, label %if.then102, label %if.else

if.then102:                                       ; preds = %for.end
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx106, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i, align 4
  %call.i.i225 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %72, ptr noundef %arrayidx106) #16
  br i1 %call.i.i225, label %if.then102.if.end115.sink.split_crit_edge, label %if.then102.if.end115_crit_edge

if.then102.if.end115_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then102.if.end115.sink.split_crit_edge:        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.sink.split

if.else:                                          ; preds = %for.end
  %73 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx106, align 4
  %call.i.i228 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %arrayidx106, ptr noundef %74) #16
  br i1 %call.i.i228, label %if.end.i.i231, label %if.else.if.end115_crit_edge

if.else.if.end115_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.end.i.i231:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i229 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  br label %if.end115.sink.split

if.end115.sink.split:                             ; preds = %if.end.i.i231, %if.then102.if.end115.sink.split_crit_edge
  %prev1.i.i229.sink = phi ptr [ %prev1.i.i229, %if.end.i.i231 ], [ %prev.i, %if.then102.if.end115.sink.split_crit_edge ]
  %.sink = phi ptr [ %74, %if.end.i.i231 ], [ %arrayidx106, %if.then102.if.end115.sink.split_crit_edge ]
  %arrayidx106.sink258 = phi ptr [ %arrayidx106, %if.end.i.i231 ], [ %72, %if.then102.if.end115.sink.split_crit_edge ]
  %75 = ptrtoint ptr %prev1.i.i229.sink to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %prev1.i.i229.sink, align 4
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %.sink, ptr %call.i, align 4
  %prev3.i.i230 = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i230 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx106.sink258, ptr %prev3.i.i230, align 4
  %78 = ptrtoint ptr %arrayidx106.sink258 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call.i, ptr %arrayidx106.sink258, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.end115.sink.split, %if.else.if.end115_crit_edge, %if.then102.if.end115_crit_edge
  call void @mutex_unlock(ptr noundef %prof_map_lock) #16
  br label %cleanup129

err_ice_add_prof_id_vsig:                         ; preds = %cleanup.thread, %ice_search_prof_id.exit.err_ice_add_prof_id_vsig_crit_edge, %for.cond.i218.err_ice_add_prof_id_vsig_crit_edge
  %status.2 = phi i32 [ -2, %ice_search_prof_id.exit.err_ice_add_prof_id_vsig_crit_edge ], [ %status.1.ph, %cleanup.thread ], [ -2, %for.cond.i218.err_ice_add_prof_id_vsig_crit_edge ]
  call void @mutex_unlock(ptr noundef %prof_map_lock) #16
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 8
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev128, ptr noundef nonnull %call.i) #16
  br label %cleanup129

cleanup129:                                       ; preds = %err_ice_add_prof_id_vsig, %if.end115, %if.end.cleanup129_crit_edge, %for.body.i.cleanup129_crit_edge
  %retval.0 = phi i32 [ %status.2, %err_ice_add_prof_id_vsig ], [ 0, %if.end115 ], [ -12, %if.end.cleanup129_crit_edge ], [ -17, %for.body.i.cleanup129_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nm_msk) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dc_msk) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vl_msk) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_adj_prof_priorities(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsig, ptr noundef %chg) unnamed_addr #1 align 64 {
entry:
  %ptgs_used = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ptgs_used) #16
  %0 = call ptr @memset(ptr %ptgs_used, i32 0, i32 128)
  %1 = and i16 %vsig, 8191
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %2 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xlt2, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx3 = getelementptr %struct.ice_vsig_entry, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %t.0113 = load ptr, ptr %arrayidx3, align 4
  %cmp.not115 = icmp eq ptr %t.0113, %arrayidx3
  br i1 %cmp.not115, label %entry.cleanup70_crit_edge, label %entry.for.cond12.preheader_crit_edge

entry.for.cond12.preheader_crit_edge:             ; preds = %entry
  br label %for.cond12.preheader

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

for.cond.loopexit:                                ; preds = %if.end56.for.cond.loopexit_crit_edge, %for.cond12.preheader.for.cond.loopexit_crit_edge
  %5 = ptrtoint ptr %t.0116 to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.0 = load ptr, ptr %t.0116, align 4
  %6 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xlt2, align 4
  %arrayidx9 = getelementptr %struct.ice_vsig_entry, ptr %7, i32 %idxprom
  %cmp.not = icmp eq ptr %t.0, %arrayidx9
  br i1 %cmp.not, label %for.cond.loopexit.cleanup70_crit_edge, label %for.cond.loopexit.for.cond12.preheader_crit_edge

for.cond.loopexit.for.cond12.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond12.preheader

for.cond.loopexit.cleanup70_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

for.cond12.preheader:                             ; preds = %for.cond.loopexit.for.cond12.preheader_crit_edge, %entry.for.cond12.preheader_crit_edge
  %t.0116 = phi ptr [ %t.0, %for.cond.loopexit.for.cond12.preheader_crit_edge ], [ %t.0113, %entry.for.cond12.preheader_crit_edge ]
  %tcam_count = getelementptr inbounds %struct.ice_vsig_prof, ptr %t.0116, i32 0, i32 3
  %8 = ptrtoint ptr %tcam_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tcam_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp15111.not = icmp eq i8 %9, 0
  br i1 %cmp15111.not, label %for.cond12.preheader.for.cond.loopexit_crit_edge, label %for.cond12.preheader.for.body17_crit_edge

for.cond12.preheader.for.body17_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body17

for.cond12.preheader.for.cond.loopexit_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

for.body17:                                       ; preds = %if.end56.for.body17_crit_edge, %for.cond12.preheader.for.body17_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end56.for.body17_crit_edge ], [ 0, %for.cond12.preheader.for.body17_crit_edge ]
  %arrayidx19 = getelementptr %struct.ice_vsig_prof, ptr %t.0116, i32 0, i32 4, i32 %indvars.iv
  %ptg = getelementptr %struct.ice_vsig_prof, ptr %t.0116, i32 0, i32 4, i32 %indvars.iv, i32 2
  %10 = ptrtoint ptr %ptg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ptg, align 2
  %conv20 = zext i8 %11 to i32
  %div3.i = lshr i32 %conv20, 5
  %arrayidx.i = getelementptr i32, ptr %ptgs_used, i32 %div3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv20, 31
  %14 = shl nuw i32 1, %and.i
  %15 = and i32 %14, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %for.body17.if.else_crit_edge, label %land.lhs.true

for.body17.if.else_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %for.body17
  %in_use = getelementptr %struct.ice_vsig_prof, ptr %t.0116, i32 0, i32 4, i32 %indvars.iv, i32 4
  %16 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %in_use, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool26.not = icmp eq i8 %17, 0
  br i1 %tobool26.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call30 = tail call fastcc i32 @ice_prof_tcam_ena_dis(ptr noundef %hw, i32 noundef %blk, i1 noundef zeroext false, i16 noundef zeroext %vsig, ptr noundef %arrayidx19, ptr noundef %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then.if.end56_crit_edge, label %if.then.cleanup70_crit_edge

if.then.cleanup70_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

if.then.if.end56_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body17.if.else_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %20 = and i32 %19, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool40.not = icmp eq i32 %20, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true41:                                  ; preds = %if.else
  %in_use45 = getelementptr %struct.ice_vsig_prof, ptr %t.0116, i32 0, i32 4, i32 %indvars.iv, i32 4
  %21 = ptrtoint ptr %in_use45 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %in_use45, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool46.not = icmp eq i8 %22, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true41.if.end56_crit_edge

land.lhs.true41.if.end56_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then47:                                        ; preds = %land.lhs.true41
  %call51 = tail call fastcc i32 @ice_prof_tcam_ena_dis(ptr noundef %hw, i32 noundef %blk, i1 noundef zeroext true, i16 noundef zeroext %vsig, ptr noundef %arrayidx19, ptr noundef %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then47.if.end56_crit_edge, label %if.then47.cleanup70_crit_edge

if.then47.cleanup70_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

if.then47.if.end56_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.end56:                                         ; preds = %if.then47.if.end56_crit_edge, %land.lhs.true41.if.end56_crit_edge, %if.else.if.end56_crit_edge, %if.then.if.end56_crit_edge
  %23 = ptrtoint ptr %ptg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ptg, align 2
  %conv61 = zext i8 %24 to i32
  %rem.i = and i32 %conv61, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv61, 5
  %add.ptr.i = getelementptr i32, ptr %ptgs_used, i32 %div2.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %26
  store i32 %or.i, ptr %add.ptr.i, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %27 = ptrtoint ptr %tcam_count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tcam_count, align 1
  %29 = zext i8 %28 to i32
  %cmp15 = icmp ult i32 %indvars.iv.next, %29
  br i1 %cmp15, label %if.end56.for.body17_crit_edge, label %if.end56.for.cond.loopexit_crit_edge

if.end56.for.cond.loopexit_crit_edge:             ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

if.end56.for.body17_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17

cleanup70:                                        ; preds = %if.then47.cleanup70_crit_edge, %if.then.cleanup70_crit_edge, %for.cond.loopexit.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup70_crit_edge ], [ %call30, %if.then.cleanup70_crit_edge ], [ %call51, %if.then47.cleanup70_crit_edge ], [ 0, %for.cond.loopexit.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ptgs_used) #16
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_create_vsig_from_lst(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, ptr noundef readonly %lst, ptr nocapture noundef writeonly %new_vsig, ptr noundef %chg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %xlt2.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %0 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xlt2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 1, %entry ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %in_use.i = getelementptr %struct.ice_vsig_entry, ptr %1, i32 %indvars.iv.i, i32 2
  %2 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %4 = trunc i32 %indvars.iv.i to i16
  %idxprom.i.i = and i32 %indvars.iv.i, 65535
  %in_use.i.i = getelementptr %struct.ice_vsig_entry, ptr %1, i32 %idxprom.i.i, i32 2
  %5 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_use.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.ice_vsig_alloc.exit_crit_edge

if.then.i.ice_vsig_alloc.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_vsig_alloc.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx3.i.i = getelementptr %struct.ice_vsig_entry, ptr %1, i32 %idxprom.i.i
  %7 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx3.i.i, ptr %arrayidx3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx3.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx3.i.i, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xlt2.i, align 4
  %in_use16.i.i = getelementptr %struct.ice_vsig_entry, ptr %10, i32 %idxprom.i.i, i32 2
  %11 = ptrtoint ptr %in_use16.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %in_use16.i.i, align 4
  br label %ice_vsig_alloc.exit

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 768
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ice_vsig_alloc.exit:                              ; preds = %if.then.i.i, %if.then.i.ice_vsig_alloc.exit_crit_edge
  %pf_id.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %12 = ptrtoint ptr %pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pf_id.i.i, align 1
  %conv20.i.i = zext i8 %13 to i16
  %shl.i.i = shl i16 %conv20.i.i, 13
  %or.i.i = or i16 %shl.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i.i)
  %tobool.not = icmp eq i16 %or.i.i, 0
  br i1 %tobool.not, label %ice_vsig_alloc.exit.cleanup_crit_edge, label %if.end

ice_vsig_alloc.exit.cleanup_crit_edge:            ; preds = %ice_vsig_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %ice_vsig_alloc.exit
  %call1 = tail call fastcc i32 @ice_move_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %or.i.i, ptr noundef %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.for.cond_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %t.0.in = phi ptr [ %t.0, %for.body.for.cond_crit_edge ], [ %lst, %if.end.for.cond_crit_edge ]
  %14 = ptrtoint ptr %t.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %t.0 = load ptr, ptr %t.0.in, align 4
  %cmp.not = icmp eq ptr %t.0, %lst
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %profile_cookie = getelementptr inbounds %struct.ice_vsig_prof, ptr %t.0, i32 0, i32 1
  %15 = ptrtoint ptr %profile_cookie to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %profile_cookie, align 8
  %call5 = tail call fastcc i32 @ice_add_prof_id_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %or.i.i, i64 noundef %16, i1 noundef zeroext true, ptr noundef %chg)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %new_vsig to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or.i.i, ptr %new_vsig, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ice_vsig_alloc.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -5, %ice_vsig_alloc.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %for.body.cleanup_crit_edge ], [ -5, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_upd_prof_hw(ptr noundef %hw, i32 noundef %blk, ptr noundef readonly %chgs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0255 = load ptr, ptr %chgs, align 4
  %cmp.not256 = icmp eq ptr %tmp.0255, %chgs
  br i1 %cmp.not256, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.0261 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.0255, %entry.for.body_crit_edge ]
  %xlt1.0260 = phi i16 [ %xlt1.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %xlt2.0259 = phi i16 [ %xlt2.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tcam.0258 = phi i16 [ %tcam.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %es.0257 = phi i16 [ %es.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.0261, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %2, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %for.body.sw.bb8_crit_edge
    i32 5, label %for.body.sw.bb8_crit_edge277
    i32 4, label %for.body.sw.bb8_crit_edge278
  ]

for.body.sw.bb8_crit_edge278:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb8

for.body.sw.bb8_crit_edge277:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb8

for.body.sw.bb8_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %add_ptg = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.0261, i32 0, i32 2
  %4 = ptrtoint ptr %add_ptg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add_ptg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %inc = zext i1 %tobool.not to i16
  %spec.select = add i16 %xlt1.0260, %inc
  %add_prof = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.0261, i32 0, i32 5
  %6 = ptrtoint ptr %add_prof to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add_prof, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp ne i8 %7, 0
  %inc4 = zext i1 %tobool2.not to i16
  %spec.select134 = add i16 %es.0257, %inc4
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %inc7 = add i16 %tcam.0258, 1
  br label %for.inc

sw.bb8:                                           ; preds = %for.body.sw.bb8_crit_edge, %for.body.sw.bb8_crit_edge277, %for.body.sw.bb8_crit_edge278
  %inc9 = add i16 %xlt2.0259, 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb8, %sw.bb6, %sw.bb, %for.body.for.inc_crit_edge
  %es.1 = phi i16 [ %es.0257, %for.body.for.inc_crit_edge ], [ %es.0257, %sw.bb8 ], [ %es.0257, %sw.bb6 ], [ %spec.select134, %sw.bb ]
  %tcam.1 = phi i16 [ %tcam.0258, %for.body.for.inc_crit_edge ], [ %tcam.0258, %sw.bb8 ], [ %inc7, %sw.bb6 ], [ %tcam.0258, %sw.bb ]
  %xlt2.1 = phi i16 [ %xlt2.0259, %for.body.for.inc_crit_edge ], [ %inc9, %sw.bb8 ], [ %xlt2.0259, %sw.bb6 ], [ %xlt2.0259, %sw.bb ]
  %xlt1.2 = phi i16 [ %xlt1.0260, %for.body.for.inc_crit_edge ], [ %xlt1.0260, %sw.bb8 ], [ %xlt1.0260, %sw.bb6 ], [ %spec.select, %sw.bb ]
  %8 = ptrtoint ptr %tmp.0261 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0 = load ptr, ptr %tmp.0261, align 4
  %cmp.not = icmp eq ptr %tmp.0, %chgs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %es.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %es.1, %for.inc.for.end_crit_edge ]
  %tcam.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %tcam.1, %for.inc.for.end_crit_edge ]
  %xlt2.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %xlt2.1, %for.inc.for.end_crit_edge ]
  %xlt1.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %xlt1.2, %for.inc.for.end_crit_edge ]
  %add = add i16 %tcam.0.lcssa, %es.0.lcssa
  %add17 = add i16 %add, %xlt2.0.lcssa
  %add19 = add i16 %add17, %xlt1.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add19)
  %tobool21.not = icmp eq i16 %add19, 0
  br i1 %tobool21.not, label %for.end.cleanup_crit_edge, label %if.end23

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 4098, i32 noundef 3520) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end23.cleanup_crit_edge, label %if.end.i136

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i136:                                      ; preds = %if.end23
  %data_end.i = getelementptr inbounds %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1024, ptr %data_end.i, align 2
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i = icmp eq i16 %13, 0
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i136.error_tmp_crit_edge

if.end.i136.error_tmp_crit_edge:                  ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end5.i:                                        ; preds = %if.end.i136
  %reserved_section_table_entries.i = getelementptr inbounds %struct.ice_buf_build, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %reserved_section_table_entries.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reserved_section_table_entries.i, align 2
  %conv6.i = zext i16 %15 to i32
  %conv7.i = zext i16 %add19 to i32
  %add.i = add nuw nsw i32 %conv6.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %add.i)
  %cmp8.i = icmp ugt i32 %add.i, 511
  br i1 %cmp8.i, label %if.end5.i.error_tmp_crit_edge, label %if.end30

if.end5.i.error_tmp_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end30:                                         ; preds = %if.end5.i
  %conv16.i = trunc i32 %add.i to i16
  %16 = ptrtoint ptr %reserved_section_table_entries.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv16.i, ptr %reserved_section_table_entries.i, align 2
  %17 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data_end.i, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #16
  %20 = shl i16 %add19, 3
  %conv21.i = add i16 %19, %20
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv21.i) #16
  %22 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %data_end.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %es.0.lcssa)
  %tobool31.not = icmp eq i16 %es.0.lcssa, 0
  br i1 %tobool31.not, label %if.end30.if.end37_crit_edge, label %if.then32

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  %23 = ptrtoint ptr %chgs to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.057.i = load ptr, ptr %chgs, align 4
  %cmp.not58.i = icmp eq ptr %tmp.057.i, %chgs
  br i1 %cmp.not58.i, label %if.then32.if.end37_crit_edge, label %for.body.lr.ph.i

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

for.body.lr.ph.i:                                 ; preds = %if.then32
  %fvw.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 2
  %24 = ptrtoint ptr %fvw.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fvw.i, align 2
  %mul.i = shl i16 %25, 2
  %arrayidx1.i.i = getelementptr [5 x [9 x i32]], ptr @ice_sect_lkup, i32 0, i32 %blk, i32 6
  %conv18.i = add i16 %mul.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18.i)
  %tobool3.not.i.i = icmp eq i16 %conv18.i, 0
  %conv8.i.i = zext i16 %conv18.i to i32
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #16
  %conv17.i = zext i16 %mul.i to i32
  %t.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 4, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.059.i = phi ptr [ %tmp.057.i, %for.body.lr.ph.i ], [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.059.i, i32 0, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp5.i = icmp eq i32 %28, 1
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add_prof.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.059.i, i32 0, i32 5
  %29 = ptrtoint ptr %add_prof.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add_prof.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i138 = icmp eq i8 %30, 0
  br i1 %tobool.not.i138, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %prof_id.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.059.i, i32 0, i32 8
  %31 = ptrtoint ptr %prof_id.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %prof_id.i, align 1
  %33 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.i.i, align 4
  br i1 %tobool3.not.i.i, label %if.then.i.error_tmp_crit_edge, label %if.end.i.i

if.then.i.error_tmp_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end.i.i:                                       ; preds = %if.then.i
  %35 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %data_end.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #16
  %add.i.i = add i16 %37, 3
  %and.i.i = and i16 %add.i.i, -4
  %conv7.i.i = zext i16 %and.i.i to i32
  %add9.i.i = add nuw nsw i32 %conv7.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add9.i.i)
  %cmp.i.i = icmp ugt i32 %add9.i.i, 4096
  br i1 %cmp.i.i, label %if.end.i.i.error_tmp_crit_edge, label %if.end12.i.i

if.end.i.i.error_tmp_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end12.i.i:                                     ; preds = %if.end.i.i
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %call.i.i, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #16
  %41 = ptrtoint ptr %reserved_section_table_entries.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %reserved_section_table_entries.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp15.i.i = icmp ult i16 %40, %42
  br i1 %cmp15.i.i, label %ice_pkg_buf_alloc_section.exit.i, label %if.end12.i.i.error_tmp_crit_edge

if.end12.i.i.error_tmp_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

ice_pkg_buf_alloc_section.exit.i:                 ; preds = %if.end12.i.i
  %conv13.i.i = zext i16 %40 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %conv7.i.i
  %43 = tail call i16 @llvm.bswap.i16(i16 %and.i.i) #16
  %arrayidx.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i
  %offset.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i, i32 1
  %44 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %offset.i.i, align 4
  %size22.i.i = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i, i32 2
  %45 = ptrtoint ptr %size22.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %26, ptr %size22.i.i, align 2
  %46 = tail call i32 @llvm.bswap.i32(i32 %34) #16
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx.i.i, align 4
  %conv30.i.i = trunc i32 %add9.i.i to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv30.i.i) #16
  %49 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %data_end.i, align 2
  %add33.i.i = add nuw i16 %40, 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %add33.i.i) #16
  %51 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %call.i.i, align 4
  %tobool20.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool20.not.i, label %ice_pkg_buf_alloc_section.exit.i.error_tmp_crit_edge, label %if.end.i139

ice_pkg_buf_alloc_section.exit.i.error_tmp_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end.i139:                                      ; preds = %ice_pkg_buf_alloc_section.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv8.i = zext i8 %32 to i16
  %mul14.i = mul i16 %25, %conv8.i
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 256, ptr %add.ptr.i.i, align 2
  %53 = ptrtoint ptr %prof_id.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %prof_id.i, align 1
  %conv23.i = zext i8 %54 to i16
  %55 = shl nuw i16 %conv23.i, 8
  %offset.i = getelementptr inbounds %struct.ice_pkg_es, ptr %add.ptr.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %offset.i, align 2
  %es24.i = getelementptr inbounds %struct.ice_pkg_es, ptr %add.ptr.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %t.i, align 4
  %idxprom.i = zext i16 %mul14.i to i32
  %arrayidx28.i = getelementptr %struct.ice_fv_word, ptr %58, i32 %idxprom.i
  %59 = call ptr @memcpy(ptr %es24.i, ptr %arrayidx28.i, i32 %conv17.i)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i139, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %60 = ptrtoint ptr %tmp.059.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %tmp.0.i = load ptr, ptr %tmp.059.i, align 4
  %cmp.not.i140 = icmp eq ptr %tmp.0.i, %chgs
  br i1 %cmp.not.i140, label %for.inc.i.if.end37_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end37_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.end37:                                         ; preds = %for.inc.i.if.end37_crit_edge, %if.then32.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tcam.0.lcssa)
  %tobool38.not = icmp eq i16 %tcam.0.lcssa, 0
  br i1 %tobool38.not, label %if.end37.if.end44_crit_edge, label %if.then39

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then39:                                        ; preds = %if.end37
  %arrayidx1.i.i141 = getelementptr [5 x [9 x i32]], ptr @ice_sect_lkup, i32 0, i32 %blk, i32 4
  %61 = ptrtoint ptr %chgs to i32
  call void @__asan_load4_noabort(i32 %61)
  %tmp.041.i = load ptr, ptr %chgs, align 4
  %cmp.not42.i = icmp eq ptr %tmp.041.i, %chgs
  br i1 %cmp.not42.i, label %if.then39.if.end44_crit_edge, label %for.body.lr.ph.i146

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

for.body.lr.ph.i146:                              ; preds = %if.then39
  %t.i145 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 2, i32 3
  br label %for.body.i148

for.body.i148:                                    ; preds = %for.inc.i172.for.body.i148_crit_edge, %for.body.lr.ph.i146
  %tmp.043.i = phi ptr [ %tmp.041.i, %for.body.lr.ph.i146 ], [ %tmp.0.i170, %for.inc.i172.for.body.i148_crit_edge ]
  %type.i147 = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.043.i, i32 0, i32 1
  %62 = ptrtoint ptr %type.i147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp2.i = icmp eq i32 %63, 2
  br i1 %cmp2.i, label %land.lhs.true.i150, label %for.body.i148.for.inc.i172_crit_edge

for.body.i148.for.inc.i172_crit_edge:             ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172

land.lhs.true.i150:                               ; preds = %for.body.i148
  %add_tcam_idx.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.043.i, i32 0, i32 4
  %64 = ptrtoint ptr %add_tcam_idx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add_tcam_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i149 = icmp eq i8 %65, 0
  br i1 %tobool.not.i149, label %land.lhs.true.i150.for.inc.i172_crit_edge, label %if.end.i.i157

land.lhs.true.i150.for.inc.i172_crit_edge:        ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172

if.end.i.i157:                                    ; preds = %land.lhs.true.i150
  %66 = ptrtoint ptr %arrayidx1.i.i141 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx1.i.i141, align 4
  %68 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %data_end.i, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #16
  %add.i.i152 = add i16 %70, 3
  %and.i.i153 = and i16 %add.i.i152, -4
  %conv7.i.i154 = zext i16 %and.i.i153 to i32
  %add9.i.i155 = add i16 %and.i.i153, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 4081, i16 %and.i.i153)
  %cmp.i.i156 = icmp ugt i16 %and.i.i153, 4081
  br i1 %cmp.i.i156, label %if.end.i.i157.error_tmp_crit_edge, label %if.end12.i.i159

if.end.i.i157.error_tmp_crit_edge:                ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end12.i.i159:                                  ; preds = %if.end.i.i157
  %71 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %call.i.i, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #16
  %74 = ptrtoint ptr %reserved_section_table_entries.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %reserved_section_table_entries.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp15.i.i158 = icmp ult i16 %73, %75
  br i1 %cmp15.i.i158, label %ice_pkg_buf_alloc_section.exit.i166, label %if.end12.i.i159.error_tmp_crit_edge

if.end12.i.i159.error_tmp_crit_edge:              ; preds = %if.end12.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

ice_pkg_buf_alloc_section.exit.i166:              ; preds = %if.end12.i.i159
  %conv13.i.i160 = zext i16 %73 to i32
  %add.ptr.i.i161 = getelementptr i8, ptr %call.i.i, i32 %conv7.i.i154
  %76 = tail call i16 @llvm.bswap.i16(i16 %and.i.i153) #16
  %arrayidx.i.i162 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i160
  %offset.i.i163 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i160, i32 1
  %77 = ptrtoint ptr %offset.i.i163 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %offset.i.i163, align 4
  %size22.i.i164 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i160, i32 2
  %78 = ptrtoint ptr %size22.i.i164 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 3840, ptr %size22.i.i164, align 2
  %79 = tail call i32 @llvm.bswap.i32(i32 %67) #16
  %80 = ptrtoint ptr %arrayidx.i.i162 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx.i.i162, align 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %add9.i.i155) #16
  %82 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %data_end.i, align 2
  %add33.i.i165 = add nuw i16 %73, 1
  %83 = tail call i16 @llvm.bswap.i16(i16 %add33.i.i165) #16
  %84 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %call.i.i, align 4
  %tobool6.not.i = icmp eq ptr %add.ptr.i.i161, null
  br i1 %tobool6.not.i, label %ice_pkg_buf_alloc_section.exit.i166.error_tmp_crit_edge, label %if.end.i169

ice_pkg_buf_alloc_section.exit.i166.error_tmp_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit.i166
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end.i169:                                      ; preds = %ice_pkg_buf_alloc_section.exit.i166
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %add.ptr.i.i161 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 256, ptr %add.ptr.i.i161, align 2
  %tcam_idx.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.043.i, i32 0, i32 12
  %86 = ptrtoint ptr %tcam_idx.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tcam_idx.i, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #16
  %entry8.i = getelementptr inbounds %struct.ice_prof_id_section, ptr %add.ptr.i.i161, i32 0, i32 1
  %89 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %entry8.i, align 2
  %prof_id.i167 = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.043.i, i32 0, i32 8
  %90 = ptrtoint ptr %prof_id.i167 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %prof_id.i167, align 1
  %prof_id11.i = getelementptr inbounds %struct.ice_prof_id_section, ptr %add.ptr.i.i161, i32 7
  %92 = ptrtoint ptr %prof_id11.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %prof_id11.i, align 2
  %key.i = getelementptr inbounds %struct.ice_prof_id_section, ptr %add.ptr.i.i161, i32 2
  %93 = ptrtoint ptr %t.i145 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %t.i145, align 4
  %95 = ptrtoint ptr %tcam_idx.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %tcam_idx.i, align 2
  %idxprom.i168 = zext i16 %96 to i32
  %key18.i = getelementptr %struct.ice_prof_tcam_entry, ptr %94, i32 %idxprom.i168, i32 1
  %97 = call ptr @memcpy(ptr %key.i, ptr %key18.i, i32 10)
  br label %for.inc.i172

for.inc.i172:                                     ; preds = %if.end.i169, %land.lhs.true.i150.for.inc.i172_crit_edge, %for.body.i148.for.inc.i172_crit_edge
  %98 = ptrtoint ptr %tmp.043.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %tmp.0.i170 = load ptr, ptr %tmp.043.i, align 4
  %cmp.not.i171 = icmp eq ptr %tmp.0.i170, %chgs
  br i1 %cmp.not.i171, label %for.inc.i172.if.end44_crit_edge, label %for.inc.i172.for.body.i148_crit_edge

for.inc.i172.for.body.i148_crit_edge:             ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i148

for.inc.i172.if.end44_crit_edge:                  ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end44:                                         ; preds = %for.inc.i172.if.end44_crit_edge, %if.then39.if.end44_crit_edge, %if.end37.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xlt1.0.lcssa)
  %tobool45.not = icmp eq i16 %xlt1.0.lcssa, 0
  br i1 %tobool45.not, label %if.end44.if.end51_crit_edge, label %if.then46

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then46:                                        ; preds = %if.end44
  %arrayidx1.i.i174 = getelementptr [5 x [9 x i32]], ptr @ice_sect_lkup, i32 0, i32 %blk, i32 2
  %99 = ptrtoint ptr %chgs to i32
  call void @__asan_load4_noabort(i32 %99)
  %tmp.027.i = load ptr, ptr %chgs, align 4
  %cmp.not28.i = icmp eq ptr %tmp.027.i, %chgs
  br i1 %cmp.not28.i, label %if.then46.if.end51_crit_edge, label %if.then46.for.body.i181_crit_edge

if.then46.for.body.i181_crit_edge:                ; preds = %if.then46
  br label %for.body.i181

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

for.body.i181:                                    ; preds = %for.inc.i205.for.body.i181_crit_edge, %if.then46.for.body.i181_crit_edge
  %tmp.029.i = phi ptr [ %tmp.0.i203, %for.inc.i205.for.body.i181_crit_edge ], [ %tmp.027.i, %if.then46.for.body.i181_crit_edge ]
  %type.i179 = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.029.i, i32 0, i32 1
  %100 = ptrtoint ptr %type.i179 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type.i179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp2.i180 = icmp eq i32 %101, 1
  br i1 %cmp2.i180, label %land.lhs.true.i183, label %for.body.i181.for.inc.i205_crit_edge

for.body.i181.for.inc.i205_crit_edge:             ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i205

land.lhs.true.i183:                               ; preds = %for.body.i181
  %add_ptg.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.029.i, i32 0, i32 2
  %102 = ptrtoint ptr %add_ptg.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %add_ptg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i182 = icmp eq i8 %103, 0
  br i1 %tobool.not.i182, label %land.lhs.true.i183.for.inc.i205_crit_edge, label %if.end.i.i190

land.lhs.true.i183.for.inc.i205_crit_edge:        ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i205

if.end.i.i190:                                    ; preds = %land.lhs.true.i183
  %104 = ptrtoint ptr %arrayidx1.i.i174 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx1.i.i174, align 4
  %106 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %data_end.i, align 2
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #16
  %add.i.i185 = add i16 %108, 3
  %and.i.i186 = and i16 %add.i.i185, -4
  %conv7.i.i187 = zext i16 %and.i.i186 to i32
  %add9.i.i188 = add i16 %and.i.i186, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 4091, i16 %and.i.i186)
  %cmp.i.i189 = icmp ugt i16 %and.i.i186, 4091
  br i1 %cmp.i.i189, label %if.end.i.i190.error_tmp_crit_edge, label %if.end12.i.i192

if.end.i.i190.error_tmp_crit_edge:                ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end12.i.i192:                                  ; preds = %if.end.i.i190
  %109 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %call.i.i, align 4
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #16
  %112 = ptrtoint ptr %reserved_section_table_entries.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %reserved_section_table_entries.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %111, i16 %113)
  %cmp15.i.i191 = icmp ult i16 %111, %113
  br i1 %cmp15.i.i191, label %ice_pkg_buf_alloc_section.exit.i200, label %if.end12.i.i192.error_tmp_crit_edge

if.end12.i.i192.error_tmp_crit_edge:              ; preds = %if.end12.i.i192
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

ice_pkg_buf_alloc_section.exit.i200:              ; preds = %if.end12.i.i192
  %conv13.i.i193 = zext i16 %111 to i32
  %add.ptr.i.i194 = getelementptr i8, ptr %call.i.i, i32 %conv7.i.i187
  %114 = tail call i16 @llvm.bswap.i16(i16 %and.i.i186) #16
  %arrayidx.i.i195 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i193
  %offset.i.i196 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i193, i32 1
  %115 = ptrtoint ptr %offset.i.i196 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %offset.i.i196, align 4
  %size22.i.i197 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i193, i32 2
  %116 = ptrtoint ptr %size22.i.i197 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1280, ptr %size22.i.i197, align 2
  %117 = tail call i32 @llvm.bswap.i32(i32 %105) #16
  %118 = ptrtoint ptr %arrayidx.i.i195 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx.i.i195, align 4
  %119 = tail call i16 @llvm.bswap.i16(i16 %add9.i.i188) #16
  %120 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %data_end.i, align 2
  %add33.i.i198 = add nuw i16 %111, 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %add33.i.i198) #16
  %122 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %call.i.i, align 4
  %tobool6.not.i199 = icmp eq ptr %add.ptr.i.i194, null
  br i1 %tobool6.not.i199, label %ice_pkg_buf_alloc_section.exit.i200.error_tmp_crit_edge, label %if.end.i202

ice_pkg_buf_alloc_section.exit.i200.error_tmp_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit.i200
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end.i202:                                      ; preds = %ice_pkg_buf_alloc_section.exit.i200
  call void @__sanitizer_cov_trace_pc() #18
  %123 = ptrtoint ptr %add.ptr.i.i194 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 256, ptr %add.ptr.i.i194, align 2
  %ptype.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.029.i, i32 0, i32 6
  %124 = ptrtoint ptr %ptype.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %ptype.i, align 4
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #16
  %offset.i201 = getelementptr inbounds %struct.ice_xlt1_section, ptr %add.ptr.i.i194, i32 0, i32 1
  %127 = ptrtoint ptr %offset.i201 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %offset.i201, align 2
  %ptg.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.029.i, i32 0, i32 7
  %128 = ptrtoint ptr %ptg.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ptg.i, align 2
  %value.i = getelementptr inbounds %struct.ice_xlt1_section, ptr %add.ptr.i.i194, i32 0, i32 2
  %130 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %value.i, align 2
  br label %for.inc.i205

for.inc.i205:                                     ; preds = %if.end.i202, %land.lhs.true.i183.for.inc.i205_crit_edge, %for.body.i181.for.inc.i205_crit_edge
  %131 = ptrtoint ptr %tmp.029.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %tmp.0.i203 = load ptr, ptr %tmp.029.i, align 4
  %cmp.not.i204 = icmp eq ptr %tmp.0.i203, %chgs
  br i1 %cmp.not.i204, label %for.inc.i205.if.end51_crit_edge, label %for.inc.i205.for.body.i181_crit_edge

for.inc.i205.for.body.i181_crit_edge:             ; preds = %for.inc.i205
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i181

for.inc.i205.if.end51_crit_edge:                  ; preds = %for.inc.i205
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.end51:                                         ; preds = %for.inc.i205.if.end51_crit_edge, %if.then46.if.end51_crit_edge, %if.end44.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xlt2.0.lcssa)
  %tobool52.not = icmp eq i16 %xlt2.0.lcssa, 0
  br i1 %tobool52.not, label %if.end51.ice_pkg_buf_get_active_sections.exit_crit_edge, label %if.then53

if.end51.ice_pkg_buf_get_active_sections.exit_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_buf_get_active_sections.exit

if.then53:                                        ; preds = %if.end51
  %arrayidx1.i.i207 = getelementptr [5 x [9 x i32]], ptr @ice_sect_lkup, i32 0, i32 %blk, i32 3
  %132 = ptrtoint ptr %chgs to i32
  call void @__asan_load4_noabort(i32 %132)
  %tmp.021.i = load ptr, ptr %chgs, align 4
  %cmp.not22.i = icmp eq ptr %tmp.021.i, %chgs
  br i1 %cmp.not22.i, label %if.then53.ice_pkg_buf_get_active_sections.exit_crit_edge, label %if.then53.for.body.i213_crit_edge

if.then53.for.body.i213_crit_edge:                ; preds = %if.then53
  br label %for.body.i213

if.then53.ice_pkg_buf_get_active_sections.exit_crit_edge: ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_buf_get_active_sections.exit

for.body.i213:                                    ; preds = %for.inc.i235.for.body.i213_crit_edge, %if.then53.for.body.i213_crit_edge
  %tmp.023.i = phi ptr [ %tmp.0.i233, %for.inc.i235.for.body.i213_crit_edge ], [ %tmp.021.i, %if.then53.for.body.i213_crit_edge ]
  %type.i212 = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.023.i, i32 0, i32 1
  %133 = ptrtoint ptr %type.i212 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %type.i212, align 4
  %.off.i = add i32 %134, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end.i.i219, label %for.body.i213.for.inc.i235_crit_edge

for.body.i213.for.inc.i235_crit_edge:             ; preds = %for.body.i213
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i235

if.end.i.i219:                                    ; preds = %for.body.i213
  %135 = ptrtoint ptr %arrayidx1.i.i207 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx1.i.i207, align 4
  %137 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %data_end.i, align 2
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #16
  %add.i.i214 = add i16 %139, 3
  %and.i.i215 = and i16 %add.i.i214, -4
  %conv7.i.i216 = zext i16 %and.i.i215 to i32
  %add9.i.i217 = add i16 %and.i.i215, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4090, i16 %and.i.i215)
  %cmp.i.i218 = icmp ugt i16 %and.i.i215, 4090
  br i1 %cmp.i.i218, label %if.end.i.i219.error_tmp_crit_edge, label %if.end12.i.i221

if.end.i.i219.error_tmp_crit_edge:                ; preds = %if.end.i.i219
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end12.i.i221:                                  ; preds = %if.end.i.i219
  %140 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %call.i.i, align 4
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #16
  %143 = ptrtoint ptr %reserved_section_table_entries.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %reserved_section_table_entries.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %142, i16 %144)
  %cmp15.i.i220 = icmp ult i16 %142, %144
  br i1 %cmp15.i.i220, label %ice_pkg_buf_alloc_section.exit.i229, label %if.end12.i.i221.error_tmp_crit_edge

if.end12.i.i221.error_tmp_crit_edge:              ; preds = %if.end12.i.i221
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

ice_pkg_buf_alloc_section.exit.i229:              ; preds = %if.end12.i.i221
  %conv13.i.i222 = zext i16 %142 to i32
  %add.ptr.i.i223 = getelementptr i8, ptr %call.i.i, i32 %conv7.i.i216
  %145 = tail call i16 @llvm.bswap.i16(i16 %and.i.i215) #16
  %arrayidx.i.i224 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i222
  %offset.i.i225 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i222, i32 1
  %146 = ptrtoint ptr %offset.i.i225 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %offset.i.i225, align 4
  %size22.i.i226 = getelementptr %struct.ice_buf_hdr, ptr %call.i.i, i32 0, i32 2, i32 %conv13.i.i222, i32 2
  %147 = ptrtoint ptr %size22.i.i226 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 1536, ptr %size22.i.i226, align 2
  %148 = tail call i32 @llvm.bswap.i32(i32 %136) #16
  %149 = ptrtoint ptr %arrayidx.i.i224 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx.i.i224, align 4
  %150 = tail call i16 @llvm.bswap.i16(i16 %add9.i.i217) #16
  %151 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %data_end.i, align 2
  %add33.i.i227 = add nuw i16 %142, 1
  %152 = tail call i16 @llvm.bswap.i16(i16 %add33.i.i227) #16
  %153 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %call.i.i, align 4
  %tobool.not.i228 = icmp eq ptr %add.ptr.i.i223, null
  br i1 %tobool.not.i228, label %ice_pkg_buf_alloc_section.exit.i229.error_tmp_crit_edge, label %if.end.i232

ice_pkg_buf_alloc_section.exit.i229.error_tmp_crit_edge: ; preds = %ice_pkg_buf_alloc_section.exit.i229
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end.i232:                                      ; preds = %ice_pkg_buf_alloc_section.exit.i229
  call void @__sanitizer_cov_trace_pc() #18
  %154 = ptrtoint ptr %add.ptr.i.i223 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 256, ptr %add.ptr.i.i223, align 2
  %vsi.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.023.i, i32 0, i32 9
  %155 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %vsi.i, align 4
  %157 = tail call i16 @llvm.bswap.i16(i16 %156) #16
  %offset.i230 = getelementptr inbounds %struct.ice_xlt2_section, ptr %add.ptr.i.i223, i32 0, i32 1
  %158 = ptrtoint ptr %offset.i230 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %offset.i230, align 2
  %vsig.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.023.i, i32 0, i32 10
  %159 = ptrtoint ptr %vsig.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %vsig.i, align 2
  %161 = tail call i16 @llvm.bswap.i16(i16 %160) #16
  %value.i231 = getelementptr inbounds %struct.ice_xlt2_section, ptr %add.ptr.i.i223, i32 0, i32 2
  %162 = ptrtoint ptr %value.i231 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %value.i231, align 2
  br label %for.inc.i235

for.inc.i235:                                     ; preds = %if.end.i232, %for.body.i213.for.inc.i235_crit_edge
  %163 = ptrtoint ptr %tmp.023.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %tmp.0.i233 = load ptr, ptr %tmp.023.i, align 4
  %cmp.not.i234 = icmp eq ptr %tmp.0.i233, %chgs
  br i1 %cmp.not.i234, label %for.inc.i235.ice_pkg_buf_get_active_sections.exit_crit_edge, label %for.inc.i235.for.body.i213_crit_edge

for.inc.i235.for.body.i213_crit_edge:             ; preds = %for.inc.i235
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i213

for.inc.i235.ice_pkg_buf_get_active_sections.exit_crit_edge: ; preds = %for.inc.i235
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_buf_get_active_sections.exit

ice_pkg_buf_get_active_sections.exit:             ; preds = %for.inc.i235.ice_pkg_buf_get_active_sections.exit_crit_edge, %if.then53.ice_pkg_buf_get_active_sections.exit_crit_edge, %if.end51.ice_pkg_buf_get_active_sections.exit_crit_edge
  %164 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %call.i.i, align 4
  %166 = tail call i16 @llvm.bswap.i16(i16 %165) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool60.not = icmp ne i16 %165, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %166, i16 %add19)
  %cmp63.not = icmp eq i16 %166, %add19
  %or.cond = select i1 %tobool60.not, i1 %cmp63.not, i1 false
  br i1 %or.cond, label %if.end66, label %ice_pkg_buf_get_active_sections.exit.error_tmp_crit_edge

ice_pkg_buf_get_active_sections.exit.error_tmp_crit_edge: ; preds = %ice_pkg_buf_get_active_sections.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

if.end66:                                         ; preds = %ice_pkg_buf_get_active_sections.exit
  %call68 = tail call fastcc i32 @ice_update_pkg(ptr noundef %hw, ptr noundef %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call68)
  %cmp69 = icmp eq i32 %call68, -5
  br i1 %cmp69, label %do.body, label %if.end66.error_tmp_crit_edge

if.end66.error_tmp_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_tmp

do.body:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_upd_prof_hw.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_upd_prof_hw, %if.then78)) #16
          to label %error_tmp [label %if.then78], !srcloc !155

if.then78:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %167 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_upd_prof_hw.__UNIQUE_ID_ddebug639, ptr noundef %dev, ptr noundef nonnull @.str.58) #16
  br label %error_tmp

error_tmp:                                        ; preds = %if.then78, %do.body, %if.end66.error_tmp_crit_edge, %ice_pkg_buf_get_active_sections.exit.error_tmp_crit_edge, %ice_pkg_buf_alloc_section.exit.i229.error_tmp_crit_edge, %if.end12.i.i221.error_tmp_crit_edge, %if.end.i.i219.error_tmp_crit_edge, %ice_pkg_buf_alloc_section.exit.i200.error_tmp_crit_edge, %if.end12.i.i192.error_tmp_crit_edge, %if.end.i.i190.error_tmp_crit_edge, %ice_pkg_buf_alloc_section.exit.i166.error_tmp_crit_edge, %if.end12.i.i159.error_tmp_crit_edge, %if.end.i.i157.error_tmp_crit_edge, %ice_pkg_buf_alloc_section.exit.i.error_tmp_crit_edge, %if.end12.i.i.error_tmp_crit_edge, %if.end.i.i.error_tmp_crit_edge, %if.then.i.error_tmp_crit_edge, %if.end5.i.error_tmp_crit_edge, %if.end.i136.error_tmp_crit_edge
  %status.0 = phi i32 [ -5, %if.then78 ], [ %call68, %if.end66.error_tmp_crit_edge ], [ -22, %ice_pkg_buf_get_active_sections.exit.error_tmp_crit_edge ], [ -5, %do.body ], [ -5, %if.end.i136.error_tmp_crit_edge ], [ -5, %if.end5.i.error_tmp_crit_edge ], [ -28, %if.end12.i.i221.error_tmp_crit_edge ], [ -28, %if.end.i.i219.error_tmp_crit_edge ], [ -28, %ice_pkg_buf_alloc_section.exit.i229.error_tmp_crit_edge ], [ -28, %if.end12.i.i192.error_tmp_crit_edge ], [ -28, %if.end.i.i190.error_tmp_crit_edge ], [ -28, %ice_pkg_buf_alloc_section.exit.i200.error_tmp_crit_edge ], [ -28, %if.end12.i.i159.error_tmp_crit_edge ], [ -28, %if.end.i.i157.error_tmp_crit_edge ], [ -28, %ice_pkg_buf_alloc_section.exit.i166.error_tmp_crit_edge ], [ -28, %if.end12.i.i.error_tmp_crit_edge ], [ -28, %if.end.i.i.error_tmp_crit_edge ], [ -28, %if.then.i.error_tmp_crit_edge ], [ -28, %ice_pkg_buf_alloc_section.exit.i.error_tmp_crit_edge ]
  %169 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i, align 8
  %dev.i240 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i240, ptr noundef %call.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %error_tmp, %if.end23.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %error_tmp ], [ 0, %for.end.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rem_prof_id_flow(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i64 noundef %hdl) local_unnamed_addr #1 align 64 {
entry:
  %chg = alloca %struct.list_head, align 4
  %copy = alloca %struct.list_head, align 4
  %vsig = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chg) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %chg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %copy) #16
  %1 = getelementptr inbounds %struct.list_head, ptr %copy, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsig) #16
  %2 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %copy, ptr %copy, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %copy, ptr %1, align 4
  %4 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %chg, ptr %chg, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chg, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi)
  %cmp.i = icmp ugt i16 %vsi, 767
  br i1 %cmp.i, label %entry.err_ice_rem_prof_id_flow_crit_edge, label %land.lhs.true

entry.err_ice_rem_prof_id_flow_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

land.lhs.true:                                    ; preds = %entry
  %conv.i = zext i16 %vsi to i32
  %vsis.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 1
  %6 = ptrtoint ptr %vsis.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsis.i, align 4
  %vsig4.i = getelementptr %struct.ice_vsig_vsi, ptr %7, i32 %conv.i, i32 3
  %8 = ptrtoint ptr %vsig4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vsig4.i, align 2
  %10 = ptrtoint ptr %vsig to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vsig, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool1.not = icmp eq i16 %9, 0
  br i1 %tobool1.not, label %land.lhs.true.err_ice_rem_prof_id_flow_crit_edge, label %if.then

land.lhs.true.err_ice_rem_prof_id_flow_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.then:                                          ; preds = %land.lhs.true
  %11 = and i16 %9, 8191
  %xlt2.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %12 = ptrtoint ptr %xlt2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xlt2.i, align 4
  %idxprom.i = zext i16 %11 to i32
  %arrayidx3.i = getelementptr %struct.ice_vsig_entry, ptr %13, i32 %idxprom.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then
  %p.0.in.i = phi ptr [ %arrayidx3.i, %if.then ], [ %p.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %count.0.i = phi i16 [ 0, %if.then ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx3.i
  %inc.i = add i16 %count.0.i, 1
  br i1 %cmp.not.i, label %ice_vsig_prof_id_count.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ice_vsig_prof_id_count.exit:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %count.0.i)
  %cmp = icmp eq i16 %count.0.i, 1
  %in_use.i = getelementptr %struct.ice_vsig_entry, ptr %13, i32 %idxprom.i, i32 2
  %15 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %ice_vsig_prof_id_count.exit.err_ice_rem_prof_id_flow_crit_edge, label %if.end.i180

ice_vsig_prof_id_count.exit.err_ice_rem_prof_id_flow_crit_edge: ; preds = %ice_vsig_prof_id_count.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.end.i180:                                      ; preds = %ice_vsig_prof_id_count.exit
  %first_vsi.i = getelementptr %struct.ice_vsig_entry, ptr %13, i32 %idxprom.i, i32 1
  %17 = ptrtoint ptr %first_vsi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %ptr.017.i = load ptr, ptr %first_vsi.i, align 4
  %tobool10.not18.i = icmp eq ptr %ptr.017.i, null
  br i1 %tobool10.not18.i, label %if.end.i180.if.else29_crit_edge, label %if.end.i180.while.body.i_crit_edge

if.end.i180.while.body.i_crit_edge:               ; preds = %if.end.i180
  br label %while.body.i

if.end.i180.if.else29_crit_edge:                  ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else29

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i180.while.body.i_crit_edge
  %ref.0 = phi i16 [ %inc.i181, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i180.while.body.i_crit_edge ]
  %ptr.019.i = phi ptr [ %ptr.0.i, %while.body.i.while.body.i_crit_edge ], [ %ptr.017.i, %if.end.i180.while.body.i_crit_edge ]
  %inc.i181 = add i16 %ref.0, 1
  %18 = ptrtoint ptr %ptr.019.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %ptr.0.i = load ptr, ptr %ptr.019.i, align 4
  %tobool10.not.i = icmp eq ptr %ptr.0.i, null
  br i1 %tobool10.not.i, label %if.end, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ref.0)
  %cmp9 = icmp eq i16 %ref.0, 0
  br i1 %cmp9, label %if.then13, label %if.end.if.else29_crit_edge

if.end.if.else29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else29

if.then13:                                        ; preds = %if.end
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then13
  %call16 = call fastcc i32 @ice_rem_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %9, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.then70_crit_edge, label %if.then15.err_ice_rem_prof_id_flow_crit_edge

if.then15.err_ice_rem_prof_id_flow_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.then15.if.then70_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then70

if.else:                                          ; preds = %if.then13
  %call20 = call fastcc i32 @ice_rem_prof_id_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %9, i64 noundef %hdl, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.else.err_ice_rem_prof_id_flow_crit_edge

if.else.err_ice_rem_prof_id_flow_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.end23:                                         ; preds = %if.else
  %call24 = call fastcc i32 @ice_adj_prof_priorities(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %9, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.then70_crit_edge, label %if.end23.err_ice_rem_prof_id_flow_crit_edge

if.end23.err_ice_rem_prof_id_flow_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.end23.if.then70_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then70

if.else29:                                        ; preds = %if.end.if.else29_crit_edge, %if.end.i180.if.else29_crit_edge
  %call30 = call fastcc i32 @ice_get_profs_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %9, ptr noundef nonnull %copy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.else29.err_ice_rem_prof_id_flow_crit_edge

if.else29.err_ice_rem_prof_id_flow_crit_edge:     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.end33:                                         ; preds = %if.else29
  %call34 = call fastcc i32 @ice_rem_prof_from_list(ptr noundef %hw, ptr noundef nonnull %copy, i64 noundef %hdl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.err_ice_rem_prof_id_flow_crit_edge

if.end33.err_ice_rem_prof_id_flow_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.end37:                                         ; preds = %if.end33
  %19 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %copy, align 4
  %cmp.i183.not = icmp eq ptr %20, %copy
  br i1 %cmp.i183.not, label %if.then40, label %if.else45

if.then40:                                        ; preds = %if.end37
  %call41 = call fastcc i32 @ice_move_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext 0, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.then70_crit_edge, label %if.then40.err_ice_rem_prof_id_flow_crit_edge

if.then40.err_ice_rem_prof_id_flow_crit_edge:     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.then40.if.then70_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then70

if.else45:                                        ; preds = %if.end37
  %call46 = call fastcc i32 @ice_find_dup_props_vsig(ptr noundef %hw, i32 noundef %blk, ptr noundef nonnull %copy, ptr noundef nonnull %vsig)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.else45
  %21 = ptrtoint ptr %vsig to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vsig, align 2
  %call49 = call fastcc i32 @ice_move_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %22, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.then70_crit_edge, label %if.then48.err_ice_rem_prof_id_flow_crit_edge

if.then48.err_ice_rem_prof_id_flow_crit_edge:     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.then48.if.then70_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then70

if.else53:                                        ; preds = %if.else45
  %call54 = call fastcc i32 @ice_create_vsig_from_lst(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, ptr noundef nonnull %copy, ptr noundef nonnull %vsig, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.else53.err_ice_rem_prof_id_flow_crit_edge

if.else53.err_ice_rem_prof_id_flow_crit_edge:     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.end57:                                         ; preds = %if.else53
  %23 = ptrtoint ptr %vsig to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vsig, align 2
  %call58 = call fastcc i32 @ice_adj_prof_priorities(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %24, ptr noundef nonnull %chg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end57.if.then70_crit_edge, label %if.end57.err_ice_rem_prof_id_flow_crit_edge

if.end57.err_ice_rem_prof_id_flow_crit_edge:      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ice_rem_prof_id_flow

if.end57.if.then70_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then70

if.then70:                                        ; preds = %if.end57.if.then70_crit_edge, %if.then48.if.then70_crit_edge, %if.then40.if.then70_crit_edge, %if.end23.if.then70_crit_edge, %if.then15.if.then70_crit_edge
  %call71 = call fastcc i32 @ice_upd_prof_hw(ptr noundef %hw, i32 noundef %blk, ptr noundef nonnull %chg)
  br label %err_ice_rem_prof_id_flow

err_ice_rem_prof_id_flow:                         ; preds = %if.then70, %if.end57.err_ice_rem_prof_id_flow_crit_edge, %if.else53.err_ice_rem_prof_id_flow_crit_edge, %if.then48.err_ice_rem_prof_id_flow_crit_edge, %if.then40.err_ice_rem_prof_id_flow_crit_edge, %if.end33.err_ice_rem_prof_id_flow_crit_edge, %if.else29.err_ice_rem_prof_id_flow_crit_edge, %if.end23.err_ice_rem_prof_id_flow_crit_edge, %if.else.err_ice_rem_prof_id_flow_crit_edge, %if.then15.err_ice_rem_prof_id_flow_crit_edge, %ice_vsig_prof_id_count.exit.err_ice_rem_prof_id_flow_crit_edge, %land.lhs.true.err_ice_rem_prof_id_flow_crit_edge, %entry.err_ice_rem_prof_id_flow_crit_edge
  %status.3 = phi i32 [ %call71, %if.then70 ], [ -2, %land.lhs.true.err_ice_rem_prof_id_flow_crit_edge ], [ -2, %entry.err_ice_rem_prof_id_flow_crit_edge ], [ -2, %ice_vsig_prof_id_count.exit.err_ice_rem_prof_id_flow_crit_edge ], [ %call58, %if.end57.err_ice_rem_prof_id_flow_crit_edge ], [ %call54, %if.else53.err_ice_rem_prof_id_flow_crit_edge ], [ %call49, %if.then48.err_ice_rem_prof_id_flow_crit_edge ], [ %call41, %if.then40.err_ice_rem_prof_id_flow_crit_edge ], [ %call34, %if.end33.err_ice_rem_prof_id_flow_crit_edge ], [ %call30, %if.else29.err_ice_rem_prof_id_flow_crit_edge ], [ %call24, %if.end23.err_ice_rem_prof_id_flow_crit_edge ], [ %call20, %if.else.err_ice_rem_prof_id_flow_crit_edge ], [ %call16, %if.then15.err_ice_rem_prof_id_flow_crit_edge ]
  %25 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chg, align 4
  %cmp79.not206 = icmp eq ptr %26, %chg
  br i1 %cmp79.not206, label %err_ice_rem_prof_id_flow.for.end_crit_edge, label %for.body.lr.ph

err_ice_rem_prof_id_flow.for.end_crit_edge:       ; preds = %err_ice_rem_prof_id_flow
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %err_ice_rem_prof_id_flow
  %add.ptr84 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %del.0207 = phi ptr [ %26, %for.body.lr.ph ], [ %tmp.0, %list_del.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %del.0207 to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp.0 = load ptr, ptr %del.0207, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %del.0207) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %del.0207, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %del.0207 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %del.0207, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %34 = ptrtoint ptr %del.0207 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %del.0207, align 4
  %prev.i185 = getelementptr inbounds %struct.list_head, ptr %del.0207, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i185, align 4
  %36 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr84, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef %del.0207) #16
  %cmp79.not = icmp eq ptr %tmp.0, %chg
  br i1 %cmp79.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %err_ice_rem_prof_id_flow.for.end_crit_edge
  %38 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %copy, align 4
  %cmp100.not209 = icmp eq ptr %39, %copy
  br i1 %cmp100.not209, label %for.end.cleanup117_crit_edge, label %for.body103.lr.ph

for.end.cleanup117_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup117

for.body103.lr.ph:                                ; preds = %for.end
  %add.ptr107 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body103

for.body103:                                      ; preds = %list_del.exit191.for.body103_crit_edge, %for.body103.lr.ph
  %del1.0210 = phi ptr [ %39, %for.body103.lr.ph ], [ %tmp1.0, %list_del.exit191.for.body103_crit_edge ]
  %40 = ptrtoint ptr %del1.0210 to i32
  call void @__asan_load4_noabort(i32 %40)
  %tmp1.0 = load ptr, ptr %del1.0210, align 8
  %call.i.i186 = call zeroext i1 @__list_del_entry_valid(ptr noundef %del1.0210) #16
  br i1 %call.i.i186, label %if.end.i.i189, label %for.body103.list_del.exit191_crit_edge

for.body103.list_del.exit191_crit_edge:           ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit191

if.end.i.i189:                                    ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i187 = getelementptr inbounds %struct.list_head, ptr %del1.0210, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i187 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i187, align 4
  %43 = ptrtoint ptr %del1.0210 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %del1.0210, align 4
  %prev1.i.i.i188 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i188, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit191

list_del.exit191:                                 ; preds = %if.end.i.i189, %for.body103.list_del.exit191_crit_edge
  %47 = ptrtoint ptr %del1.0210 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %del1.0210, align 4
  %prev.i190 = getelementptr inbounds %struct.list_head, ptr %del1.0210, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i190 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i190, align 4
  %49 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr107, align 8
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev109, ptr noundef %del1.0210) #16
  %cmp100.not = icmp eq ptr %tmp1.0, %copy
  br i1 %cmp100.not, label %list_del.exit191.cleanup117_crit_edge, label %list_del.exit191.for.body103_crit_edge

list_del.exit191.for.body103_crit_edge:           ; preds = %list_del.exit191
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body103

list_del.exit191.cleanup117_crit_edge:            ; preds = %list_del.exit191
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup117

cleanup117:                                       ; preds = %list_del.exit191.cleanup117_crit_edge, %for.end.cleanup117_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsig) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %copy) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chg) #16
  ret i32 %status.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_prof_id_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsig, i64 noundef %hdl, ptr noundef %chg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %vsig, 8191
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %1 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xlt2, align 4
  %idxprom = zext i16 %0 to i32
  %arrayidx3 = getelementptr %struct.ice_vsig_entry, ptr %2, i32 %idxprom
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %p.0.in = phi ptr [ %arrayidx3, %entry ], [ %p.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.not = icmp eq ptr %p.0, %arrayidx3
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %profile_cookie = getelementptr inbounds %struct.ice_vsig_prof, ptr %p.0, i32 0, i32 1
  %4 = ptrtoint ptr %profile_cookie to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %profile_cookie, align 8
  %cmp17 = icmp eq i64 %5, %hdl
  br i1 %cmp17, label %for.body.for.cond.i_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %p.0.in.i = phi ptr [ %p.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %arrayidx3, %for.body.for.cond.i_crit_edge ]
  %count.0.i = phi i16 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.body.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx3
  %inc.i = add i16 %count.0.i, 1
  br i1 %cmp.not.i, label %ice_vsig_prof_id_count.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ice_vsig_prof_id_count.exit:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %count.0.i)
  %cmp20 = icmp eq i16 %count.0.i, 1
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %ice_vsig_prof_id_count.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = tail call fastcc i32 @ice_rem_vsig(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsig, ptr noundef %chg)
  br label %cleanup

if.end:                                           ; preds = %ice_vsig_prof_id_count.exit
  %call24 = tail call fastcc i32 @ice_rem_prof_id(ptr noundef %hw, i32 noundef %blk, ptr noundef %p.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.then25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then25:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then25.list_del.exit_crit_edge

if.then25.list_del.exit_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then25.list_del.exit_crit_edge
  %13 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr29 = getelementptr i8, ptr %hw, i32 -2960
  %15 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr29, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %p.0) #16
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end.cleanup_crit_edge, %if.then22, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then22 ], [ 0, %list_del.exit ], [ %call24, %if.end.cleanup_crit_edge ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_prof_from_list(ptr nocapture noundef readonly %hw, ptr noundef readonly %lst, i64 noundef %hdl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ent.0.in = phi ptr [ %lst, %entry ], [ %ent.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ent.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ent.0 = load ptr, ptr %ent.0.in, align 4
  %cmp.not = icmp eq ptr %ent.0, %lst
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %profile_cookie = getelementptr inbounds %struct.ice_vsig_prof, ptr %ent.0, i32 0, i32 1
  %1 = ptrtoint ptr %profile_cookie to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %profile_cookie, align 8
  %cmp7 = icmp eq i64 %2, %hdl
  br i1 %cmp7, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.0) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ent.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %ent.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ent.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %ent.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %ent.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ent.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr11 = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr11, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %ent.0) #16
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_pkg_enum_section(ptr noundef %ice_seg, ptr nocapture noundef %state, i32 noundef %sect_type) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ice_seg, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sect_type, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc zeroext i1 @ice_pkg_advance_sect(ptr noundef %ice_seg, ptr noundef %state)
  br i1 %call, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %buf = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 3
  %sect_idx = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 4
  %type4 = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type4, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %6 = ptrtoint ptr %sect_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sect_idx, align 4
  %arrayidx90 = getelementptr %struct.ice_buf_hdr, ptr %5, i32 0, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp.not91 = icmp eq i32 %9, %3
  br i1 %cmp.not91, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buf_idx7.i.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %ice_pkg_advance_sect.exit.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i32 [ %7, %while.body.lr.ph ], [ %37, %ice_pkg_advance_sect.exit.while.body_crit_edge ]
  %11 = phi ptr [ %5, %while.body.lr.ph ], [ %35, %ice_pkg_advance_sect.exit.while.body_crit_edge ]
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %while.body.cleanup_crit_edge, label %if.then6.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6.i:                                       ; preds = %while.body
  %inc.i = add i32 %10, 1
  %12 = ptrtoint ptr %sect_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc.i, ptr %sect_idx, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %11, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #16
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %if.then6.i.ice_pkg_advance_sect.exit_crit_edge, label %if.end6.i.i

if.then6.i.ice_pkg_advance_sect.exit_crit_edge:   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_advance_sect.exit

if.end6.i.i:                                      ; preds = %if.then6.i
  %16 = ptrtoint ptr %buf_idx7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_idx7.i.i, align 4
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr %buf_idx7.i.i, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %22)
  %cmp.i.i = icmp ult i32 %inc.i.i, %22
  br i1 %cmp.i.i, label %if.then9.i.i, label %if.end6.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge

if.end6.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %buf_array11.i.i = getelementptr inbounds %struct.ice_buf_table, ptr %19, i32 0, i32 1
  %add.ptr.i.i = getelementptr %struct.ice_buf, ptr %buf_array11.i.i, i32 %inc.i.i
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i23.i.i = icmp ne i16 %24, 0
  %25 = and i16 %24, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp5.not.i24.i.i = icmp eq i16 %25, 0
  %or.cond.i25.i.i = and i1 %cmp.i23.i.i, %cmp5.not.i24.i.i
  br i1 %or.cond.i25.i.i, label %return.sink.split.i.i, label %if.then9.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge

if.then9.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread.i

return.sink.split.i.i:                            ; preds = %if.then9.i.i
  %data_end7.i26.i.i = getelementptr inbounds %struct.ice_buf_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %data_end7.i26.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data_end7.i26.i.i, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #16
  %29 = add i16 %28, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4085, i16 %29)
  %30 = icmp ult i16 %29, -4085
  br i1 %30, label %return.sink.split.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge, label %ice_pkg_enum_buf.exit.i

return.sink.split.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge: ; preds = %return.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread.i

ice_pkg_enum_buf.exit.thread.i:                   ; preds = %return.sink.split.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge, %if.then9.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge, %if.end6.i.i.ice_pkg_enum_buf.exit.thread.i_crit_edge
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %buf, align 4
  br label %cleanup

ice_pkg_enum_buf.exit.i:                          ; preds = %return.sink.split.i.i
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i.i, ptr %buf, align 4
  %tobool14.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool14.not.i, label %ice_pkg_enum_buf.exit.i.cleanup_crit_edge, label %if.end16.i

ice_pkg_enum_buf.exit.i.cleanup_crit_edge:        ; preds = %ice_pkg_enum_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16.i:                                       ; preds = %ice_pkg_enum_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %sect_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sect_idx, align 4
  br label %ice_pkg_advance_sect.exit

ice_pkg_advance_sect.exit:                        ; preds = %if.end16.i, %if.then6.i.ice_pkg_advance_sect.exit_crit_edge
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf, align 4
  %36 = ptrtoint ptr %sect_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sect_idx, align 4
  %arrayidx = getelementptr %struct.ice_buf_hdr, ptr %35, i32 0, i32 2, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %39, %3
  br i1 %cmp.not, label %ice_pkg_advance_sect.exit.while.end_crit_edge, label %ice_pkg_advance_sect.exit.while.body_crit_edge

ice_pkg_advance_sect.exit.while.body_crit_edge:   ; preds = %ice_pkg_advance_sect.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

ice_pkg_advance_sect.exit.while.end_crit_edge:    ; preds = %ice_pkg_advance_sect.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %ice_pkg_advance_sect.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa85 = phi ptr [ %5, %while.cond.preheader.while.end_crit_edge ], [ %35, %ice_pkg_advance_sect.exit.while.end_crit_edge ]
  %.lcssa82 = phi i32 [ %7, %while.cond.preheader.while.end_crit_edge ], [ %37, %ice_pkg_advance_sect.exit.while.end_crit_edge ]
  %offset12 = getelementptr %struct.ice_buf_hdr, ptr %.lcssa85, i32 0, i32 2, i32 %.lcssa82, i32 1
  %40 = ptrtoint ptr %offset12 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %offset12, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = add i16 %42, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4084, i16 %43)
  %44 = icmp ult i16 %43, -4084
  br i1 %44, label %while.end.cleanup_crit_edge, label %if.end19

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %while.end
  %conv = zext i16 %42 to i32
  %size24 = getelementptr %struct.ice_buf_hdr, ptr %.lcssa85, i32 0, i32 2, i32 %.lcssa82, i32 2
  %45 = ptrtoint ptr %size24 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %size24, align 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv25 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp26 = icmp eq i16 %46, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4084, i16 %47)
  %cmp30 = icmp ugt i16 %47, 4084
  %or.cond77 = select i1 %cmp26, i1 true, i1 %cmp30
  %add = add nuw nsw i32 %conv25, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp36 = icmp ugt i32 %add, 4096
  %or.cond78 = select i1 %or.cond77, i1 true, i1 %cmp36
  br i1 %or.cond78, label %if.end19.cleanup_crit_edge, label %if.end39

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end39:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %sect_type45 = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 6
  %48 = ptrtoint ptr %sect_type45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %2, ptr %sect_type45, align 4
  %49 = ptrtoint ptr %offset12 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %offset12, align 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %conv52 = zext i16 %51 to i32
  %add.ptr = getelementptr i8, ptr %.lcssa85, i32 %conv52
  %sect = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 5
  %52 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr, ptr %sect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end19.cleanup_crit_edge, %while.end.cleanup_crit_edge, %ice_pkg_enum_buf.exit.i.cleanup_crit_edge, %ice_pkg_enum_buf.exit.thread.i, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end39 ], [ null, %if.end.cleanup_crit_edge ], [ null, %while.end.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ], [ null, %ice_pkg_enum_buf.exit.thread.i ], [ null, %while.body.cleanup_crit_edge ], [ null, %ice_pkg_enum_buf.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ice_pkg_advance_sect(ptr noundef %ice_seg, ptr nocapture noundef %state) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ice_seg, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then.i

land.lhs.true:                                    ; preds = %entry
  %buf = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then6

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then6:                                         ; preds = %land.lhs.true
  %sect_idx = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %sect_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sect_idx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sect_idx, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.then6.return_crit_edge, label %if.end6.i

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then.i:                                        ; preds = %entry
  %device_table.i.i = getelementptr inbounds %struct.ice_seg, ptr %ice_seg, i32 0, i32 2
  %device_table_count.i.i = getelementptr inbounds %struct.ice_seg, ptr %ice_seg, i32 0, i32 1
  %7 = ptrtoint ptr %device_table_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_table_count.i.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #16
  %add.ptr.i.i = getelementptr %struct.ice_device_id_entry, ptr %device_table.i.i, i32 %9
  %vers.i.i = getelementptr inbounds %struct.ice_nvm_table, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #16
  %add.ptr2.i.i = getelementptr i32, ptr %vers.i.i, i32 %12
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr2.i.i, ptr %state, align 4
  %tobool2.not.i = icmp eq ptr %add.ptr2.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.ice_pkg_enum_buf.exit.thread_crit_edge, label %if.end.i

if.then.i.ice_pkg_enum_buf.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %buf_idx.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 1
  %14 = ptrtoint ptr %buf_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buf_idx.i, align 4
  %buf_array.i = getelementptr inbounds %struct.ice_buf_table, ptr %add.ptr2.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %buf_array.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf_array.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i = icmp ne i16 %16, 0
  %17 = and i16 %16, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp5.not.i.i = icmp eq i16 %17, 0
  %or.cond.i.i = and i1 %cmp.i.i, %cmp5.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.return.sink.split.i_crit_edge, label %if.end.i.ice_pkg_enum_buf.exit.thread_crit_edge

if.end.i.ice_pkg_enum_buf.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split.i

if.end6.i:                                        ; preds = %if.then6
  %buf_idx7.i = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %buf_idx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_idx7.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %buf_idx7.i, align 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %24)
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %if.then9.i, label %if.end6.i.ice_pkg_enum_buf.exit.thread_crit_edge

if.end6.i.ice_pkg_enum_buf.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread

if.then9.i:                                       ; preds = %if.end6.i
  %buf_array11.i = getelementptr inbounds %struct.ice_buf_table, ptr %21, i32 0, i32 1
  %add.ptr.i = getelementptr %struct.ice_buf, ptr %buf_array11.i, i32 %inc.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.i23.i = icmp ne i16 %26, 0
  %27 = and i16 %26, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp5.not.i24.i = icmp eq i16 %27, 0
  %or.cond.i25.i = and i1 %cmp.i23.i, %cmp5.not.i24.i
  br i1 %or.cond.i25.i, label %if.then9.i.return.sink.split.i_crit_edge, label %if.then9.i.ice_pkg_enum_buf.exit.thread_crit_edge

if.then9.i.ice_pkg_enum_buf.exit.thread_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread

if.then9.i.return.sink.split.i_crit_edge:         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then9.i.return.sink.split.i_crit_edge, %if.end.i.return.sink.split.i_crit_edge
  %add.ptr.sink33.i = phi ptr [ %buf_array.i, %if.end.i.return.sink.split.i_crit_edge ], [ %add.ptr.i, %if.then9.i.return.sink.split.i_crit_edge ]
  %data_end7.i26.i = getelementptr inbounds %struct.ice_buf_hdr, ptr %add.ptr.sink33.i, i32 0, i32 1
  %28 = ptrtoint ptr %data_end7.i26.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_end7.i26.i, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #16
  %31 = add i16 %30, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4085, i16 %31)
  %32 = icmp ult i16 %31, -4085
  br i1 %32, label %return.sink.split.i.ice_pkg_enum_buf.exit.thread_crit_edge, label %ice_pkg_enum_buf.exit

return.sink.split.i.ice_pkg_enum_buf.exit.thread_crit_edge: ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_pkg_enum_buf.exit.thread

ice_pkg_enum_buf.exit.thread:                     ; preds = %return.sink.split.i.ice_pkg_enum_buf.exit.thread_crit_edge, %if.then9.i.ice_pkg_enum_buf.exit.thread_crit_edge, %if.end6.i.ice_pkg_enum_buf.exit.thread_crit_edge, %if.end.i.ice_pkg_enum_buf.exit.thread_crit_edge, %if.then.i.ice_pkg_enum_buf.exit.thread_crit_edge
  %buf1228 = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 3
  %33 = ptrtoint ptr %buf1228 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %buf1228, align 4
  br label %return

ice_pkg_enum_buf.exit:                            ; preds = %return.sink.split.i
  %buf12 = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 3
  %34 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.sink33.i, ptr %buf12, align 4
  %tobool14.not = icmp eq ptr %add.ptr.sink33.i, null
  br i1 %tobool14.not, label %ice_pkg_enum_buf.exit.return_crit_edge, label %if.end16

ice_pkg_enum_buf.exit.return_crit_edge:           ; preds = %ice_pkg_enum_buf.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end16:                                         ; preds = %ice_pkg_enum_buf.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sect_idx17 = getelementptr inbounds %struct.ice_pkg_enum, ptr %state, i32 0, i32 4
  %35 = ptrtoint ptr %sect_idx17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sect_idx17, align 4
  br label %return

return:                                           ; preds = %if.end16, %ice_pkg_enum_buf.exit.return_crit_edge, %ice_pkg_enum_buf.exit.thread, %if.then6.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end16 ], [ false, %land.lhs.true.return_crit_edge ], [ true, %if.then6.return_crit_edge ], [ false, %ice_pkg_enum_buf.exit.return_crit_edge ], [ false, %ice_pkg_enum_buf.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_send_cmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ice_label_enum_handler(i32 noundef %sect_type, ptr noundef readonly %section, i32 noundef %index, ptr noundef writeonly %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %section, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %index)
  %cmp = icmp ugt i32 %index, 61
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %offset, null
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %1 = ptrtoint ptr %section to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %section, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp9.not = icmp ugt i32 %conv, %index
  br i1 %cmp9.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %label = getelementptr inbounds %struct.ice_label_section, ptr %section, i32 0, i32 1
  %add.ptr = getelementptr %struct.ice_label, ptr %label, i32 %index
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end12 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ice_boost_tcam_handler(i32 noundef %sect_type, ptr noundef readonly %section, i32 noundef %index, ptr noundef writeonly %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %section, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sect_type)
  %cmp.not = icmp ne i32 %sect_type, 56
  %or.cond.not = or i1 %cmp.not, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %index)
  %cmp6 = icmp ugt i32 %index, 46
  %or.cond21 = or i1 %or.cond.not, %cmp6
  br i1 %or.cond21, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %entry
  %tobool9.not = icmp eq ptr %offset, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %1 = ptrtoint ptr %section to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %section, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp12.not = icmp ugt i32 %conv, %index
  br i1 %cmp12.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %tcam = getelementptr inbounds %struct.ice_boost_tcam_section, ptr %section, i32 0, i32 2
  %add.ptr = getelementptr %struct.ice_boost_tcam_entry, ptr %tcam, i32 %index
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end15 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_dwnld_cfg_bufs(ptr noundef %hw, ptr noundef %bufs, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bufs, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool1.not = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end:                                           ; preds = %entry
  %section_entry = getelementptr inbounds %struct.ice_buf_hdr, ptr %bufs, i32 0, i32 2
  %0 = ptrtoint ptr %section_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %section_entry, align 4
  %.mask = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool2.not = icmp eq i32 %.mask, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup48_crit_edge

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end4:                                          ; preds = %if.end
  %call.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 4, i32 noundef 2, i32 noundef 5000) #16
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call.i, label %if.end8 [
    i32 0, label %ice_acquire_global_cfg_lock.exit.thread102
    i32 -114, label %do.body.i
  ]

ice_acquire_global_cfg_lock.exit.thread102:       ; preds = %if.end4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ice_global_cfg_lock_sw, i32 noundef 0) #16
  %3 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %add.ptr = getelementptr %struct.ice_buf, ptr %bufs, i32 1
  br label %for.cond

do.body.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_acquire_global_cfg_lock.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dwnld_cfg_bufs, %ice_acquire_global_cfg_lock.exit.thread)) #16
          to label %cleanup48 [label %ice_acquire_global_cfg_lock.exit.thread], !srcloc !155

ice_acquire_global_cfg_lock.exit.thread:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_acquire_global_cfg_lock.__UNIQUE_ID_ddebug613, ptr noundef %dev.i, ptr noundef nonnull @.str.32) #16
  br label %cleanup48

if.end8:                                          ; preds = %if.end4
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %6 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_last_status, align 4
  %switch.tableidx = add i32 %7, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 5
  br i1 %8, label %switch.lookup, label %if.end8.cleanup48_crit_edge

if.end8.cleanup48_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

for.cond:                                         ; preds = %if.end44.for.cond_crit_edge, %ice_acquire_global_cfg_lock.exit.thread102
  %i.0 = phi i32 [ %add, %if.end44.for.cond_crit_edge ], [ 0, %ice_acquire_global_cfg_lock.exit.thread102 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %count)
  %exitcond.not = icmp eq i32 %i.0, %count
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %add = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp12 = icmp eq i32 %add, %count
  br i1 %cmp12, label %for.body.if.end26_crit_edge, label %if.then14

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then14:                                        ; preds = %for.body
  %add.ptr15 = getelementptr %struct.ice_buf, ptr %add.ptr, i32 %i.0
  %9 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool16.not = icmp eq i16 %10, 0
  br i1 %tobool16.not, label %if.then14.if.end26_crit_edge, label %if.then17

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %section_entry18 = getelementptr inbounds %struct.ice_buf_hdr, ptr %add.ptr15, i32 0, i32 2
  %11 = ptrtoint ptr %section_entry18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %section_entry18, align 4
  %.mask77 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask77)
  %tobool22.not = icmp ne i32 %.mask77, 0
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.then14.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %last.0.shrunk = phi i1 [ true, %for.body.if.end26_crit_edge ], [ false, %if.then14.if.end26_crit_edge ], [ %tobool22.not, %if.then17 ]
  %add.ptr27 = getelementptr %struct.ice_buf, ptr %bufs, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #16
  %13 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 3136) #16
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %desc.i, align 4
  %16 = or i16 %15, 4
  store i16 %16, ptr %desc.i, align 4
  br i1 %last.0.shrunk, label %if.then6.i80, label %if.end26.if.end11.i_crit_edge

if.end26.if.end11.i_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then6.i80:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 4
  %19 = or i8 %18, 1
  store i8 %19, ptr %3, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i80, %if.end26.if.end11.i_crit_edge
  %call.i81 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %add.ptr27, i16 noundef zeroext 4096, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i81)
  %cmp.i = icmp eq i32 %call.i81, -5
  br i1 %cmp.i, label %ice_aq_download_pkg.exit.thread, label %ice_aq_download_pkg.exit

ice_aq_download_pkg.exit.thread:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr27, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #16
  %error_info20.i = getelementptr inbounds %struct.ice_aqc_download_pkg_resp, ptr %add.ptr27, i32 0, i32 1
  %23 = ptrtoint ptr %error_info20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error_info20.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #16
  br label %do.body

ice_aq_download_pkg.exit:                         ; preds = %if.end11.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool30.not = icmp eq i32 %call.i81, 0
  br i1 %tobool30.not, label %if.end44, label %ice_aq_download_pkg.exit.do.body_crit_edge

ice_aq_download_pkg.exit.do.body_crit_edge:       ; preds = %ice_aq_download_pkg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %ice_aq_download_pkg.exit.do.body_crit_edge, %ice_aq_download_pkg.exit.thread
  %info.091 = phi i32 [ %25, %ice_aq_download_pkg.exit.thread ], [ 0, %ice_aq_download_pkg.exit.do.body_crit_edge ]
  %offset.090 = phi i32 [ %22, %ice_aq_download_pkg.exit.thread ], [ 0, %ice_aq_download_pkg.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dwnld_cfg_bufs.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dwnld_cfg_bufs, %if.then37)) #16
          to label %do.end [label %if.then37], !srcloc !155

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr39 = getelementptr i8, ptr %hw, i32 -2960
  %26 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr39, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dwnld_cfg_bufs.__UNIQUE_ID_ddebug616, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call.i81, i32 noundef %offset.090, i32 noundef %info.091) #16
  br label %do.end

do.end:                                           ; preds = %if.then37, %do.body
  %sq_last_status42 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %28 = ptrtoint ptr %sq_last_status42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sq_last_status42, align 4
  %switch.tableidx110 = add i32 %29, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx110)
  %30 = icmp ult i32 %switch.tableidx110, 5
  br i1 %30, label %switch.lookup109, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end44:                                         ; preds = %ice_aq_download_pkg.exit
  br i1 %last.0.shrunk, label %if.end44.for.end_crit_edge, label %if.end44.for.cond_crit_edge

if.end44.for.cond_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

switch.lookup109:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep111 = getelementptr inbounds [5 x i32], ptr @switch.table.ice_dwnld_cfg_bufs.59, i32 0, i32 %switch.tableidx110
  %31 = ptrtoint ptr %switch.gep111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load112 = load i32, ptr %switch.gep111, align 4
  br label %for.end

for.end:                                          ; preds = %switch.lookup109, %if.end44.for.end_crit_edge, %do.end.for.end_crit_edge, %for.cond.for.end_crit_edge
  %state.2 = phi i32 [ %switch.load112, %switch.lookup109 ], [ -12, %do.end.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ], [ 0, %if.end44.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ice_global_cfg_lock_sw) #16
  call void @ice_release_res(ptr noundef %hw, i32 noundef 4) #16
  br label %cleanup48

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ice_dwnld_cfg_bufs, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %switch.lookup, %for.end, %if.end8.cleanup48_crit_edge, %ice_acquire_global_cfg_lock.exit.thread, %do.body.i, %if.end.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ %state.2, %for.end ], [ -12, %entry.cleanup48_crit_edge ], [ 0, %if.end.cleanup48_crit_edge ], [ -1, %ice_acquire_global_cfg_lock.exit.thread ], [ -1, %do.body.i ], [ %switch.load, %switch.lookup ], [ -12, %if.end8.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ice_marker_ptype_tcam_handler(i32 noundef %sect_type, ptr noundef readonly %section, i32 noundef %index, ptr noundef writeonly %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %sect_type)
  %cmp.not = icmp ne i32 %sect_type, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %index)
  %cmp4 = icmp ugt i32 %index, 170
  %or.cond = or i1 %cmp.not, %cmp4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %offset, null
  br i1 %tobool.not, label %if.end6.if.end8_crit_edge, label %if.then7

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6.if.end8_crit_edge
  %1 = ptrtoint ptr %section to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %section, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp9.not = icmp ugt i32 %conv, %index
  br i1 %cmp9.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %tcam = getelementptr inbounds %struct.ice_marker_ptype_tcam_section, ptr %section, i32 0, i32 2
  %add.ptr = getelementptr %struct.ice_marker_ptype_tcam_entry, ptr %tcam, i32 %index
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end12 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_update_pkg(ptr noundef %hw, ptr noundef %bufs) unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 3, i32 noundef 2, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup17_crit_edge

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

for.cond.preheader:                               ; preds = %entry
  %data_end = getelementptr inbounds %struct.ice_buf_hdr, ptr %bufs, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = ptrtoint ptr %data_end to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data_end, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #16
  %4 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 3138) #16
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %desc.i, align 4
  %7 = or i16 %6, 4
  store i16 %7, ptr %desc.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 4
  %10 = or i8 %9, 1
  store i8 %10, ptr %0, align 4
  %call.i1 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bufs, i16 noundef zeroext %3, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i1)
  %cmp.i = icmp eq i32 %call.i1, -5
  br i1 %cmp.i, label %ice_aq_update_pkg.exit.thread, label %ice_aq_update_pkg.exit

ice_aq_update_pkg.exit.thread:                    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bufs, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #16
  %error_info20.i = getelementptr inbounds %struct.ice_aqc_download_pkg_resp, ptr %bufs, i32 0, i32 1
  %14 = ptrtoint ptr %error_info20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error_info20.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #16
  br label %do.body

ice_aq_update_pkg.exit:                           ; preds = %for.cond.preheader
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool4.not = icmp eq i32 %call.i1, 0
  br i1 %tobool4.not, label %ice_aq_update_pkg.exit.for.end_crit_edge, label %ice_aq_update_pkg.exit.do.body_crit_edge

ice_aq_update_pkg.exit.do.body_crit_edge:         ; preds = %ice_aq_update_pkg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

ice_aq_update_pkg.exit.for.end_crit_edge:         ; preds = %ice_aq_update_pkg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.body:                                          ; preds = %ice_aq_update_pkg.exit.do.body_crit_edge, %ice_aq_update_pkg.exit.thread
  %info.06 = phi i32 [ %16, %ice_aq_update_pkg.exit.thread ], [ 0, %ice_aq_update_pkg.exit.do.body_crit_edge ]
  %offset.05 = phi i32 [ %13, %ice_aq_update_pkg.exit.thread ], [ 0, %ice_aq_update_pkg.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_update_pkg.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_update_pkg, %cleanup.thread)) #16
          to label %for.end [label %cleanup.thread], !srcloc !155

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr13 = getelementptr i8, ptr %hw, i32 -2960
  %17 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr13, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_update_pkg.__UNIQUE_ID_ddebug615, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call.i1, i32 noundef %offset.05, i32 noundef %info.06) #16
  br label %for.end

for.end:                                          ; preds = %cleanup.thread, %do.body, %ice_aq_update_pkg.exit.for.end_crit_edge
  call void @ice_release_res(ptr noundef %hw, i32 noundef 3) #16
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ %call.i1, %for.end ], [ %call.i, %entry.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vsig_add_mv_vsi(ptr nocapture noundef readonly %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %vsig) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i16 %vsi to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi)
  %cmp = icmp ugt i16 %vsi, 767
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and = and i16 %vsig, 8191
  %conv4 = zext i16 %and to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %and)
  %cmp5 = icmp ugt i16 %and, 767
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %0 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xlt2, align 4
  %in_use = getelementptr %struct.ice_vsig_entry, ptr %1, i32 %conv4, i32 2
  %2 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsig)
  %cmp10.not = icmp eq i16 %vsig, 0
  %or.cond = or i1 %cmp10.not, %tobool.not
  br i1 %or.cond, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %vsis.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 1
  %4 = ptrtoint ptr %vsis.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsis.i, align 4
  %vsig4.i = getelementptr %struct.ice_vsig_vsi, ptr %5, i32 %conv2, i32 3
  %6 = ptrtoint ptr %vsig4.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsig4.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vsig)
  %cmp19 = icmp eq i16 %7, %vsig
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp24.not = icmp eq i16 %7, 0
  br i1 %cmp24.not, label %if.end22.if.end31_crit_edge, label %if.then26

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then26:                                        ; preds = %if.end22
  %call27 = tail call fastcc i32 @ice_vsig_remove_vsi(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %cmp33 = icmp eq i16 %and, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %vsis.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsis.i, align 4
  %vsig42 = getelementptr %struct.ice_vsig_vsi, ptr %9, i32 %conv2, i32 3
  %10 = ptrtoint ptr %vsig42 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %vsig, ptr %vsig42, align 2
  %11 = load ptr, ptr %vsis.i, align 4
  %changed = getelementptr %struct.ice_vsig_vsi, ptr %11, i32 %conv2, i32 2
  %12 = ptrtoint ptr %changed to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %changed, align 4
  %13 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xlt2, align 4
  %first_vsi = getelementptr %struct.ice_vsig_entry, ptr %14, i32 %conv4, i32 1
  %15 = ptrtoint ptr %first_vsi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %first_vsi, align 4
  %17 = load ptr, ptr %vsis.i, align 4
  %arrayidx60 = getelementptr %struct.ice_vsig_vsi, ptr %17, i32 %conv2
  store ptr %arrayidx60, ptr %first_vsi, align 4
  %18 = load ptr, ptr %vsis.i, align 4
  %arrayidx73 = getelementptr %struct.ice_vsig_vsi, ptr %18, i32 %conv2
  %19 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %arrayidx73, align 4
  %t = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 2
  %20 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t, align 4
  %arrayidx78 = getelementptr i16, ptr %21, i32 %conv2
  %22 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %vsig, ptr %arrayidx78, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end31.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %call27, %if.then26.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vsig_remove_vsi(ptr nocapture noundef readonly %hw, i32 noundef %blk, i16 noundef zeroext %vsi, i16 noundef zeroext %vsig) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i16 %vsi to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi)
  %cmp = icmp ugt i16 %vsi, 767
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = and i16 %vsig, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %0)
  %cmp5 = icmp ugt i16 %0, 767
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv4 = zext i16 %0 to i32
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %1 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xlt2, align 4
  %in_use = getelementptr %struct.ice_vsig_entry, ptr %2, i32 %conv4, i32 2
  %3 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp12 = icmp eq i16 %0, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %first_vsi = getelementptr %struct.ice_vsig_entry, ptr %2, i32 %conv4, i32 1
  %5 = ptrtoint ptr %first_vsi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %first_vsi, align 4
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %if.end15.cleanup_crit_edge, label %if.end24

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %vsis = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1, i32 1
  %7 = ptrtoint ptr %vsis to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsis, align 4
  %arrayidx29 = getelementptr %struct.ice_vsig_vsi, ptr %8, i32 %conv2
  %cmp3172 = icmp eq ptr %arrayidx29, %6
  br i1 %cmp3172, label %if.end24.if.then33_crit_edge, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  br label %if.end34

if.end24.if.then33_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

while.body:                                       ; preds = %if.end34
  %cmp31 = icmp eq ptr %arrayidx29, %15
  br i1 %cmp31, label %while.body.if.then33_crit_edge, label %while.body.if.end34_crit_edge

while.body.if.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

while.body.if.then33_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

if.then33:                                        ; preds = %while.body.if.then33_crit_edge, %if.end24.if.then33_crit_edge
  %vsi_head.066.lcssa = phi ptr [ %first_vsi, %if.end24.if.then33_crit_edge ], [ %vsi_cur.06773, %while.body.if.then33_crit_edge ]
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx29, align 4
  %11 = ptrtoint ptr %vsi_head.066.lcssa to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %vsi_head.066.lcssa, align 4
  %vsig40 = getelementptr %struct.ice_vsig_vsi, ptr %8, i32 %conv2, i32 3
  %12 = ptrtoint ptr %vsig40 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %vsig40, align 2
  %changed = getelementptr %struct.ice_vsig_vsi, ptr %8, i32 %conv2, i32 2
  %13 = ptrtoint ptr %changed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %changed, align 4
  store ptr null, ptr %arrayidx29, align 4
  br label %cleanup

if.end34:                                         ; preds = %while.body.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %vsi_cur.06773 = phi ptr [ %15, %while.body.if.end34_crit_edge ], [ %6, %if.end24.if.end34_crit_edge ]
  %14 = ptrtoint ptr %vsi_cur.06773 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsi_cur.06773, align 4
  %tobool30.not = icmp eq ptr %15, null
  br i1 %tobool30.not, label %if.end34.cleanup_crit_edge, label %while.body

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end34.cleanup_crit_edge, %if.then33, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then33 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ], [ -2, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_rem_entry(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vsig_free(ptr nocapture noundef readonly %hw, i32 noundef %blk, i16 noundef zeroext %vsig) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %vsig, 8191
  %conv2 = zext i16 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %0)
  %cmp = icmp ugt i16 %0, 767
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %xlt2 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 1
  %1 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xlt2, align 4
  %in_use = getelementptr %struct.ice_vsig_entry, ptr %2, i32 %conv2, i32 2
  %3 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %in_use, align 4
  %6 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xlt2, align 4
  %first_vsi = getelementptr %struct.ice_vsig_entry, ptr %7, i32 %conv2, i32 1
  %8 = ptrtoint ptr %first_vsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %first_vsi, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end7.if.end33_crit_edge, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  br label %do.body

if.end7.if.end33_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end7.do.body_crit_edge
  %vsi_cur.0 = phi ptr [ %11, %do.body.do.body_crit_edge ], [ %9, %if.end7.do.body_crit_edge ]
  %10 = ptrtoint ptr %vsi_cur.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsi_cur.0, align 4
  %vsig23 = getelementptr inbounds %struct.ice_vsig_vsi, ptr %vsi_cur.0, i32 0, i32 3
  %12 = ptrtoint ptr %vsig23 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %vsig23, align 2
  %changed = getelementptr inbounds %struct.ice_vsig_vsi, ptr %vsi_cur.0, i32 0, i32 2
  %13 = ptrtoint ptr %changed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %changed, align 4
  store ptr null, ptr %vsi_cur.0, align 4
  %tobool25.not = icmp eq ptr %11, null
  br i1 %tobool25.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xlt2, align 4
  %first_vsi32 = getelementptr %struct.ice_vsig_entry, ptr %15, i32 %conv2, i32 1
  %16 = ptrtoint ptr %first_vsi32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %first_vsi32, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end7.if.end33_crit_edge
  %17 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xlt2, align 4
  %arrayidx39 = getelementptr %struct.ice_vsig_entry, ptr %18, i32 %conv2
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx39, align 4
  %cmp53.not105 = icmp eq ptr %20, %arrayidx39
  br i1 %cmp53.not105, label %if.end33.for.end_crit_edge, label %for.body.lr.ph

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end33
  %add.ptr58 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %del.0106 = phi ptr [ %20, %for.body.lr.ph ], [ %dtmp.0, %list_del.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %del.0106 to i32
  call void @__asan_load4_noabort(i32 %21)
  %dtmp.0 = load ptr, ptr %del.0106, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %del.0106) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %del.0106, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %del.0106 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %del.0106, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %28 = ptrtoint ptr %del.0106 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %del.0106, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %del.0106, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %30 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr58, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %del.0106) #16
  %32 = ptrtoint ptr %xlt2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xlt2, align 4
  %arrayidx51 = getelementptr %struct.ice_vsig_entry, ptr %33, i32 %conv2
  %cmp53.not = icmp eq ptr %dtmp.0, %arrayidx51
  br i1 %cmp53.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end33.for.end_crit_edge
  %arrayidx51.lcssa = phi ptr [ %arrayidx39, %if.end33.for.end_crit_edge ], [ %dtmp.0, %list_del.exit.for.end_crit_edge ]
  %34 = ptrtoint ptr %arrayidx51.lcssa to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx51.lcssa, ptr %arrayidx51.lcssa, align 4
  %prev.i103 = getelementptr inbounds %struct.list_head, ptr %arrayidx51.lcssa, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx51.lcssa, ptr %prev.i103, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_shutdown_prof_masks(ptr noundef %hw, i32 noundef %blk) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %masks = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5
  tail call void @mutex_lock_nested(ptr noundef %masks, i32 noundef 0) #16
  %first = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 1
  %count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp67.not = icmp eq i16 %1, 0
  br i1 %cmp67.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %first, align 4
  %conv63 = zext i16 %3 to i32
  %add.ptr38.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %ice_write_prof_mask_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %conv69 = phi i32 [ %conv63, %for.body.lr.ph ], [ %conv, %ice_write_prof_mask_reg.exit.for.body_crit_edge ]
  %i.068 = phi i16 [ %3, %for.body.lr.ph ], [ %inc, %ice_write_prof_mask_reg.exit.for.body_crit_edge ]
  %4 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %blk, label %do.body.i [
    i32 3, label %for.body.do.body19.i_crit_edge
    i32 2, label %sw.bb5.i
  ]

for.body.do.body19.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19.i

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_shutdown_prof_masks, %if.then.i)) #16
          to label %ice_write_prof_mask_reg.exit [label %if.then.i], !srcloc !155

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr38.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %blk) #16
  br label %ice_write_prof_mask_reg.exit

do.body19.i:                                      ; preds = %sw.bb5.i, %for.body.do.body19.i_crit_edge
  %.sink.i = phi i32 [ 4261888, %sw.bb5.i ], [ 4258816, %for.body.do.body19.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %conv69, 2
  %add.i = add nuw nsw i32 %.sink.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !165
  tail call void @arm_heavy_mb() #16
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr22.i = getelementptr i8, ptr %8, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_shutdown_prof_masks, %if.then35.i)) #16
          to label %ice_write_prof_mask_reg.exit [label %if.then35.i], !srcloc !155

if.then35.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr38.i, align 8
  %dev40.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, ptr noundef %dev40.i, ptr noundef nonnull @.str.41, i32 noundef %blk, i32 noundef 0, i32 noundef %add.i, i32 noundef 0) #16
  br label %ice_write_prof_mask_reg.exit

ice_write_prof_mask_reg.exit:                     ; preds = %if.then35.i, %do.body19.i, %if.then.i, %do.body.i
  %arrayidx19 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv69
  %in_use = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv69, i32 3
  %11 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %in_use, align 2
  %idx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv69, i32 1
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %idx, align 2
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx19, align 4
  %inc = add i16 %i.068, 1
  %conv = zext i16 %inc to i32
  %14 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %first, align 4
  %conv9 = zext i16 %15 to i32
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count, align 2
  %conv13 = zext i16 %17 to i32
  %add = add nuw nsw i32 %conv13, %conv9
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %ice_write_prof_mask_reg.exit.for.body_crit_edge, label %ice_write_prof_mask_reg.exit.for.end_crit_edge

ice_write_prof_mask_reg.exit.for.end_crit_edge:   ; preds = %ice_write_prof_mask_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

ice_write_prof_mask_reg.exit.for.body_crit_edge:  ; preds = %ice_write_prof_mask_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %ice_write_prof_mask_reg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %masks) #16
  tail call void @mutex_destroy(ptr noundef %masks) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_write_prof_mask_reg(ptr nocapture noundef readonly %hw, i32 noundef %blk, i16 noundef zeroext %mask_idx, i16 noundef zeroext %idx, i16 noundef zeroext %mask) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %blk, label %do.body [
    i32 3, label %entry.do.body19_crit_edge
    i32 2, label %sw.bb5
  ]

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_prof_mask_reg, %if.then)) #16
          to label %cleanup [label %if.then], !srcloc !155

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %blk) #16
  br label %cleanup

do.body19:                                        ; preds = %sw.bb5, %entry.do.body19_crit_edge
  %.sink = phi i32 [ 4261888, %sw.bb5 ], [ 4258816, %entry.do.body19_crit_edge ]
  %conv = zext i16 %mask_idx to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, %.sink
  %3 = and i16 %idx, 31
  %and = zext i16 %3 to i32
  %conv2 = zext i16 %mask to i32
  %shl3 = shl nuw i32 %conv2, 16
  %or = or i32 %shl3, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !165
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr22 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %4) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_prof_mask_reg, %if.then35)) #16
          to label %cleanup [label %if.then35], !srcloc !155

if.then35:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr38 = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr38, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %conv41 = zext i16 %idx to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, ptr noundef %dev40, ptr noundef nonnull @.str.41, i32 noundef %blk, i32 noundef %conv41, i32 noundef %add, i32 noundef %or) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body19, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_init_prof_masks(ptr noundef %hw, i32 noundef %blk) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %masks = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5
  tail call void @__mutex_init(ptr noundef %masks, ptr noundef nonnull @.str.42, ptr noundef nonnull @ice_init_prof_masks.__key) #16
  %num_funcs = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 5
  %0 = ptrtoint ptr %num_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_funcs, align 4
  %div = udiv i32 32, %1
  %conv = trunc i32 %div to i16
  %count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %count, align 2
  %pf_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %3 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pf_id, align 1
  %conv5 = zext i8 %4 to i32
  %mul = mul nuw nsw i32 %div, %conv5
  %conv7 = trunc i32 %mul to i16
  %first = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 1
  %5 = ptrtoint ptr %first to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv7, ptr %first, align 4
  %masks14 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3
  %6 = call ptr @memset(ptr %masks14, i32 0, i32 256)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp54.not = icmp eq i16 %conv, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr38.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %ice_write_prof_mask_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %conv1956 = phi i32 [ %mul, %for.body.lr.ph ], [ %conv19, %ice_write_prof_mask_reg.exit.for.body_crit_edge ]
  %i.055 = phi i16 [ %conv7, %for.body.lr.ph ], [ %inc, %ice_write_prof_mask_reg.exit.for.body_crit_edge ]
  %7 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %blk, label %do.body.i [
    i32 3, label %for.body.do.body19.i_crit_edge
    i32 2, label %sw.bb5.i
  ]

for.body.do.body19.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19.i

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_prof_masks, %if.then.i)) #16
          to label %ice_write_prof_mask_reg.exit [label %if.then.i], !srcloc !155

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr38.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %blk) #16
  br label %ice_write_prof_mask_reg.exit

do.body19.i:                                      ; preds = %sw.bb5.i, %for.body.do.body19.i_crit_edge
  %.sink.i = phi i32 [ 4261888, %sw.bb5.i ], [ 4258816, %for.body.do.body19.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %conv1956, 2
  %add.i = add nuw nsw i32 %.sink.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !165
  tail call void @arm_heavy_mb() #16
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr22.i = getelementptr i8, ptr %11, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_prof_masks, %if.then35.i)) #16
          to label %ice_write_prof_mask_reg.exit [label %if.then35.i], !srcloc !155

if.then35.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr38.i, align 8
  %dev40.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, ptr noundef %dev40.i, ptr noundef nonnull @.str.41, i32 noundef %blk, i32 noundef 0, i32 noundef %add.i, i32 noundef 0) #16
  br label %ice_write_prof_mask_reg.exit

ice_write_prof_mask_reg.exit:                     ; preds = %if.then35.i, %do.body19.i, %if.then.i, %do.body.i
  %inc = add i16 %i.055, 1
  %conv19 = zext i16 %inc to i32
  %14 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %first, align 4
  %conv24 = zext i16 %15 to i32
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count, align 2
  %conv29 = zext i16 %17 to i32
  %add = add nuw nsw i32 %conv29, %conv24
  %cmp = icmp ugt i32 %add, %conv19
  br i1 %cmp, label %ice_write_prof_mask_reg.exit.for.body_crit_edge, label %ice_write_prof_mask_reg.exit.for.end_crit_edge

ice_write_prof_mask_reg.exit.for.end_crit_edge:   ; preds = %ice_write_prof_mask_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

ice_write_prof_mask_reg.exit.for.body_crit_edge:  ; preds = %ice_write_prof_mask_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %ice_write_prof_mask_reg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_alloc_hw_res(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_free_prof_mask(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %mask_idx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %blk, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i16 %mask_idx to i32
  %masks = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5
  %first = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 1
  %1 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %first, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %mask_idx)
  %cmp4.not = icmp ugt i16 %2, %mask_idx
  br i1 %cmp4.not, label %if.end.return_crit_edge, label %land.lhs.true6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true6:                                   ; preds = %if.end
  %conv3 = zext i16 %2 to i32
  %count = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 2
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 2
  %conv16 = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv16, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp17 = icmp ugt i32 %add, %conv
  br i1 %cmp17, label %if.end20, label %land.lhs.true6.return_crit_edge

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end20:                                         ; preds = %land.lhs.true6
  tail call void @mutex_lock_nested(ptr noundef %masks, i32 noundef 0) #16
  %arrayidx28 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv
  %in_use = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv, i32 3
  %5 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_use, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end20.exit_ice_free_prof_mask_crit_edge, label %if.end30

if.end20.exit_ice_free_prof_mask_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit_ice_free_prof_mask

if.end30:                                         ; preds = %if.end20
  %ref = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv, i32 2
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp38 = icmp ugt i16 %8, 1
  br i1 %cmp38, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add i16 %8, -1
  %9 = ptrtoint ptr %ref to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %dec, ptr %ref, align 4
  br label %exit_ice_free_prof_mask

if.end48:                                         ; preds = %if.end30
  %10 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %in_use, align 2
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %arrayidx28, align 4
  %idx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 5, i32 3, i32 %conv, i32 1
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %idx, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_free_prof_mask.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_free_prof_mask, %if.then71)) #16
          to label %do.end [label %if.then71], !srcloc !155

if.then71:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_free_prof_mask.__UNIQUE_ID_ddebug635, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %blk, i32 noundef %conv) #16
  br label %do.end

do.end:                                           ; preds = %if.then71, %if.end48
  %15 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %blk, label %do.body.i [
    i32 3, label %do.end.do.body19.i_crit_edge
    i32 2, label %sw.bb5.i
  ]

do.end.do.body19.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19.i

sw.bb5.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_free_prof_mask, %if.then.i)) #16
          to label %exit_ice_free_prof_mask [label %if.then.i], !srcloc !155

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %blk) #16
  br label %exit_ice_free_prof_mask

do.body19.i:                                      ; preds = %sw.bb5.i, %do.end.do.body19.i_crit_edge
  %.sink.i = phi i32 [ 4261888, %sw.bb5.i ], [ 4258816, %do.end.do.body19.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %conv, 2
  %add.i = add nuw nsw i32 %.sink.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !165
  tail call void @arm_heavy_mb() #16
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr22.i = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #16, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_free_prof_mask, %if.then35.i)) #16
          to label %exit_ice_free_prof_mask [label %if.then35.i], !srcloc !155

if.then35.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr38.i = getelementptr i8, ptr %hw, i32 -2960
  %20 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr38.i, align 8
  %dev40.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, ptr noundef %dev40.i, ptr noundef nonnull @.str.41, i32 noundef %blk, i32 noundef 0, i32 noundef %add.i, i32 noundef 0) #16
  br label %exit_ice_free_prof_mask

exit_ice_free_prof_mask:                          ; preds = %if.then35.i, %do.body19.i, %if.then.i, %do.body.i, %if.then40, %if.end20.exit_ice_free_prof_mask_crit_edge
  tail call void @mutex_unlock(ptr noundef %masks) #16
  br label %return

return:                                           ; preds = %exit_ice_free_prof_mask, %land.lhs.true6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_free_hw_res(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_prof_id(ptr noundef %hw, i32 noundef %blk, ptr nocapture noundef %prof) unnamed_addr #1 align 64 {
entry:
  %tcam_idx.addr.i.i = alloca i16, align 2
  %vl_msk.i = alloca [5 x i8], align 1
  %dc_msk.i = alloca [5 x i8], align 1
  %nm_msk.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_count = getelementptr inbounds %struct.ice_vsig_prof, ptr %prof, i32 0, i32 3
  %0 = ptrtoint ptr %tcam_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tcam_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp26.not = icmp eq i8 %1, 0
  br i1 %cmp26.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %t.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %in_use = getelementptr %struct.ice_vsig_prof, ptr %prof, i32 0, i32 4, i32 %indvars.iv, i32 4
  %2 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_use, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.ice_vsig_prof, ptr %prof, i32 0, i32 4, i32 %indvars.iv
  %4 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %in_use, align 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %vl_msk.i) #16
  %7 = call ptr @memset(ptr %vl_msk.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dc_msk.i) #16
  %8 = call ptr @memcpy(ptr %dc_msk.i, ptr @__const.ice_rel_tcam_idx.dc_msk, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %nm_msk.i) #16
  %9 = call ptr @memcpy(ptr %nm_msk.i, ptr @__const.ice_rel_tcam_idx.nm_msk, i32 5)
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t.i.i, align 4
  %idxprom.i.i = zext i16 %6 to i32
  %key.i.i = getelementptr %struct.ice_prof_tcam_entry, ptr %11, i32 %idxprom.i.i, i32 1
  %call.i.i = call fastcc i32 @ice_prof_gen_key(ptr noundef %hw, i32 noundef %blk, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %vl_msk.i, ptr noundef nonnull %dc_msk.i, ptr noundef nonnull %nm_msk.i, ptr noundef %key.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %ice_rel_tcam_idx.exit.thread

ice_rel_tcam_idx.exit.thread:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nm_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dc_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vl_msk.i) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %12 = call i16 @llvm.bswap.i16(i16 %6) #16
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %t.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.ice_prof_tcam_entry, ptr %14, i32 %idxprom.i.i
  %15 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %12, ptr %arrayidx8.i.i, align 1
  %16 = load ptr, ptr %t.i.i, align 4
  %prof_id15.i.i = getelementptr %struct.ice_prof_tcam_entry, ptr %16, i32 %idxprom.i.i, i32 2
  %17 = ptrtoint ptr %prof_id15.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %prof_id15.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tcam_idx.addr.i.i) #16
  %18 = ptrtoint ptr %tcam_idx.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %6, ptr %tcam_idx.addr.i.i, align 2
  %19 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %blk, label %ice_rel_tcam_idx.exit.thread23 [
    i32 2, label %if.end.i.ice_rel_tcam_idx.exit_crit_edge
    i32 3, label %sw.bb1.i.i.i
  ]

if.end.i.ice_rel_tcam_idx.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_rel_tcam_idx.exit

ice_rel_tcam_idx.exit.thread23:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcam_idx.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nm_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dc_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vl_msk.i) #16
  br label %cleanup

sw.bb1.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_rel_tcam_idx.exit

ice_rel_tcam_idx.exit:                            ; preds = %sw.bb1.i.i.i, %if.end.i.ice_rel_tcam_idx.exit_crit_edge
  %storemerge.i.i.i = phi i16 [ 97, %sw.bb1.i.i.i ], [ 89, %if.end.i.ice_rel_tcam_idx.exit_crit_edge ]
  %call1.i.i = call i32 @ice_free_hw_res(ptr noundef %hw, i16 noundef zeroext %storemerge.i.i.i, i16 noundef zeroext 1, ptr noundef nonnull %tcam_idx.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcam_idx.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nm_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dc_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vl_msk.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool10.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool10.not, label %ice_rel_tcam_idx.exit.for.inc_crit_edge, label %ice_rel_tcam_idx.exit.cleanup_crit_edge

ice_rel_tcam_idx.exit.cleanup_crit_edge:          ; preds = %ice_rel_tcam_idx.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ice_rel_tcam_idx.exit.for.inc_crit_edge:          ; preds = %ice_rel_tcam_idx.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %ice_rel_tcam_idx.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %20 = ptrtoint ptr %tcam_count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tcam_count, align 1
  %22 = zext i8 %21 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ice_rel_tcam_idx.exit.cleanup_crit_edge, %ice_rel_tcam_idx.exit.thread23, %ice_rel_tcam_idx.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %ice_rel_tcam_idx.exit.thread ], [ -5, %ice_rel_tcam_idx.exit.thread23 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %ice_rel_tcam_idx.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_prof_gen_key(ptr nocapture noundef readonly %hw, i32 noundef %blk, i8 noundef zeroext %ptg, i16 noundef zeroext %vsig, i16 noundef zeroext %flags, ptr noundef readonly %vl_msk, ptr noundef readonly %dc_msk, ptr noundef readonly %nm_msk, ptr nocapture noundef %key) unnamed_addr #1 align 64 {
entry:
  %inkey = alloca %struct.ice_prof_id_key, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %inkey) #16
  %0 = getelementptr inbounds %struct.ice_prof_id_key, ptr %inkey, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ice_prof_id_key, ptr %inkey, i32 0, i32 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ptg, ptr %0, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %vsig)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %1, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %flags)
  %6 = ptrtoint ptr %inkey to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %inkey, align 2
  %cdid_bits = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 2, i32 4
  %7 = ptrtoint ptr %cdid_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cdid_bits, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %8, label %do.body [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 2, label %sw.bb
    i8 4, label %sw.bb13
    i8 8, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %10 = and i16 %3, -193
  %11 = or i16 %10, 64
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %1, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %13 = and i16 %3, -241
  %14 = or i16 %13, 16
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %1, align 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %16 = and i16 %3, -256
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %1, align 1
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_prof_gen_key.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_prof_gen_key, %if.then)) #16
          to label %sw.epilog [label %if.then], !srcloc !155

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_prof_gen_key.__UNIQUE_ID_ddebug637, ptr noundef %dev, ptr noundef nonnull @.str.56) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb27, %sw.bb13, %sw.bb, %entry.sw.epilog_crit_edge
  %tobool9.not.i = icmp eq ptr %nm_msk, null
  br i1 %tobool9.not.i, label %sw.epilog.for.body.lr.ph.i_crit_edge, label %for.body.i.i

sw.epilog.for.body.lr.ph.i_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.lr.ph.i

for.body.i.i:                                     ; preds = %sw.epilog
  %20 = ptrtoint ptr %nm_msk to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nm_msk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %cond.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %conv87.i.i = zext i8 %21 to i32
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv87.i.i) #16
  %22 = trunc i32 %call.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp93.i.i = icmp ugt i16 %22, 1
  br i1 %cmp93.i.i, label %cond.false.i.i.ice_set_key.exit_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

cond.false.i.i.ice_set_key.exit_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %count.1.i.i = phi i16 [ %22, %cond.false.i.i.for.inc.i.i_crit_edge ], [ 0, %for.body.i.i.for.inc.i.i_crit_edge ]
  %arrayidx.i.i.1 = getelementptr i8, ptr %nm_msk, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.1 = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i.1, label %for.inc.i.i.for.inc.i.i.1_crit_edge, label %if.end.i.i.1

for.inc.i.i.for.inc.i.i.1_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.1

if.end.i.i.1:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %count.1.i.i)
  %cmp5.i.i.1 = icmp eq i16 %count.1.i.i, 1
  br i1 %cmp5.i.i.1, label %if.end.i.i.1.ice_set_key.exit_crit_edge, label %cond.false.i.i.1

if.end.i.i.1.ice_set_key.exit_crit_edge:          ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

cond.false.i.i.1:                                 ; preds = %if.end.i.i.1
  %conv87.i.i.1 = zext i8 %24 to i32
  %call.i.i.i.1 = tail call i32 @__sw_hweight8(i32 noundef %conv87.i.i.1) #16
  %25 = trunc i32 %call.i.i.i.1 to i16
  %conv90.i.i.1 = add i16 %count.1.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv90.i.i.1)
  %cmp93.i.i.1 = icmp ugt i16 %conv90.i.i.1, 1
  br i1 %cmp93.i.i.1, label %cond.false.i.i.1.ice_set_key.exit_crit_edge, label %cond.false.i.i.1.for.inc.i.i.1_crit_edge

cond.false.i.i.1.for.inc.i.i.1_crit_edge:         ; preds = %cond.false.i.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.1

cond.false.i.i.1.ice_set_key.exit_crit_edge:      ; preds = %cond.false.i.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

for.inc.i.i.1:                                    ; preds = %cond.false.i.i.1.for.inc.i.i.1_crit_edge, %for.inc.i.i.for.inc.i.i.1_crit_edge
  %count.1.i.i.1 = phi i16 [ %conv90.i.i.1, %cond.false.i.i.1.for.inc.i.i.1_crit_edge ], [ %count.1.i.i, %for.inc.i.i.for.inc.i.i.1_crit_edge ]
  %arrayidx.i.i.2 = getelementptr i8, ptr %nm_msk, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i.2 = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i.2, label %for.inc.i.i.1.for.inc.i.i.2_crit_edge, label %if.end.i.i.2

for.inc.i.i.1.for.inc.i.i.2_crit_edge:            ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.2

if.end.i.i.2:                                     ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %count.1.i.i.1)
  %cmp5.i.i.2 = icmp eq i16 %count.1.i.i.1, 1
  br i1 %cmp5.i.i.2, label %if.end.i.i.2.ice_set_key.exit_crit_edge, label %cond.false.i.i.2

if.end.i.i.2.ice_set_key.exit_crit_edge:          ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

cond.false.i.i.2:                                 ; preds = %if.end.i.i.2
  %conv87.i.i.2 = zext i8 %27 to i32
  %call.i.i.i.2 = tail call i32 @__sw_hweight8(i32 noundef %conv87.i.i.2) #16
  %28 = trunc i32 %call.i.i.i.2 to i16
  %conv90.i.i.2 = add i16 %count.1.i.i.1, %28
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv90.i.i.2)
  %cmp93.i.i.2 = icmp ugt i16 %conv90.i.i.2, 1
  br i1 %cmp93.i.i.2, label %cond.false.i.i.2.ice_set_key.exit_crit_edge, label %cond.false.i.i.2.for.inc.i.i.2_crit_edge

cond.false.i.i.2.for.inc.i.i.2_crit_edge:         ; preds = %cond.false.i.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.2

cond.false.i.i.2.ice_set_key.exit_crit_edge:      ; preds = %cond.false.i.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

for.inc.i.i.2:                                    ; preds = %cond.false.i.i.2.for.inc.i.i.2_crit_edge, %for.inc.i.i.1.for.inc.i.i.2_crit_edge
  %count.1.i.i.2 = phi i16 [ %conv90.i.i.2, %cond.false.i.i.2.for.inc.i.i.2_crit_edge ], [ %count.1.i.i.1, %for.inc.i.i.1.for.inc.i.i.2_crit_edge ]
  %arrayidx.i.i.3 = getelementptr i8, ptr %nm_msk, i32 3
  %29 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i.3 = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i.3, label %for.inc.i.i.2.for.inc.i.i.3_crit_edge, label %if.end.i.i.3

for.inc.i.i.2.for.inc.i.i.3_crit_edge:            ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.3

if.end.i.i.3:                                     ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %count.1.i.i.2)
  %cmp5.i.i.3 = icmp eq i16 %count.1.i.i.2, 1
  br i1 %cmp5.i.i.3, label %if.end.i.i.3.ice_set_key.exit_crit_edge, label %cond.false.i.i.3

if.end.i.i.3.ice_set_key.exit_crit_edge:          ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

cond.false.i.i.3:                                 ; preds = %if.end.i.i.3
  %conv87.i.i.3 = zext i8 %30 to i32
  %call.i.i.i.3 = tail call i32 @__sw_hweight8(i32 noundef %conv87.i.i.3) #16
  %31 = trunc i32 %call.i.i.i.3 to i16
  %conv90.i.i.3 = add i16 %count.1.i.i.2, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv90.i.i.3)
  %cmp93.i.i.3 = icmp ugt i16 %conv90.i.i.3, 1
  br i1 %cmp93.i.i.3, label %cond.false.i.i.3.ice_set_key.exit_crit_edge, label %cond.false.i.i.3.for.inc.i.i.3_crit_edge

cond.false.i.i.3.for.inc.i.i.3_crit_edge:         ; preds = %cond.false.i.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.3

cond.false.i.i.3.ice_set_key.exit_crit_edge:      ; preds = %cond.false.i.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

for.inc.i.i.3:                                    ; preds = %cond.false.i.i.3.for.inc.i.i.3_crit_edge, %for.inc.i.i.2.for.inc.i.i.3_crit_edge
  %count.1.i.i.3 = phi i16 [ %conv90.i.i.3, %cond.false.i.i.3.for.inc.i.i.3_crit_edge ], [ %count.1.i.i.2, %for.inc.i.i.2.for.inc.i.i.3_crit_edge ]
  %arrayidx.i.i.4 = getelementptr i8, ptr %nm_msk, i32 4
  %32 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.4 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i.4, label %for.inc.i.i.3.for.body.lr.ph.i_crit_edge, label %if.end.i.i.4

for.inc.i.i.3.for.body.lr.ph.i_crit_edge:         ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.lr.ph.i

if.end.i.i.4:                                     ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %count.1.i.i.3)
  %cmp5.i.i.4 = icmp eq i16 %count.1.i.i.3, 1
  br i1 %cmp5.i.i.4, label %if.end.i.i.4.ice_set_key.exit_crit_edge, label %cond.false.i.i.4

if.end.i.i.4.ice_set_key.exit_crit_edge:          ; preds = %if.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

cond.false.i.i.4:                                 ; preds = %if.end.i.i.4
  %conv87.i.i.4 = zext i8 %33 to i32
  %call.i.i.i.4 = tail call i32 @__sw_hweight8(i32 noundef %conv87.i.i.4) #16
  %34 = trunc i32 %call.i.i.i.4 to i16
  %conv90.i.i.4 = add i16 %count.1.i.i.3, %34
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv90.i.i.4)
  %cmp93.i.i.4 = icmp ugt i16 %conv90.i.i.4, 1
  br i1 %cmp93.i.i.4, label %cond.false.i.i.4.ice_set_key.exit_crit_edge, label %cond.false.i.i.4.for.body.lr.ph.i_crit_edge

cond.false.i.i.4.for.body.lr.ph.i_crit_edge:      ; preds = %cond.false.i.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.lr.ph.i

cond.false.i.i.4.ice_set_key.exit_crit_edge:      ; preds = %cond.false.i.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

for.body.lr.ph.i:                                 ; preds = %cond.false.i.i.4.for.body.lr.ph.i_crit_edge, %for.inc.i.i.3.for.body.lr.ph.i_crit_edge, %sw.epilog.for.body.lr.ph.i_crit_edge
  %tobool16.not.i = icmp eq ptr %vl_msk, null
  %tobool21.not.i = icmp eq ptr %dc_msk, null
  %add.ptr43.i = getelementptr i8, ptr %key, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %inkey, i32 %indvars.iv.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  br i1 %tobool16.not.i, label %for.body.i.cond.end.i_crit_edge, label %cond.true.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx18.i = getelementptr i8, ptr %vl_msk, i32 %indvars.iv.i
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx18.i, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %38, %cond.true.i ], [ -1, %for.body.i.cond.end.i_crit_edge ]
  br i1 %tobool21.not.i, label %cond.end.i.cond.end27.i_crit_edge, label %cond.true22.i

cond.end.i.cond.end27.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end27.i

cond.true22.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx24.i = getelementptr i8, ptr %dc_msk, i32 %indvars.iv.i
  %39 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx24.i, align 1
  br label %cond.end27.i

cond.end27.i:                                     ; preds = %cond.true22.i, %cond.end.i.cond.end27.i_crit_edge
  %cond28.i = phi i8 [ %40, %cond.true22.i ], [ 0, %cond.end.i.cond.end27.i_crit_edge ]
  br i1 %tobool9.not.i, label %cond.end27.i.cond.end36.i_crit_edge, label %cond.true31.i

cond.end27.i.cond.end36.i_crit_edge:              ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end36.i

cond.true31.i:                                    ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx33.i = getelementptr i8, ptr %nm_msk, i32 %indvars.iv.i
  %41 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx33.i, align 1
  br label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.true31.i, %cond.end27.i.cond.end36.i_crit_edge
  %cond37.i = phi i8 [ %42, %cond.true31.i ], [ 0, %cond.end27.i.cond.end36.i_crit_edge ]
  %add.ptr41.i = getelementptr i8, ptr %key, i32 %indvars.iv.i
  %add.ptr47.i = getelementptr i8, ptr %add.ptr43.i, i32 %indvars.iv.i
  %xor114.i.i = xor i8 %cond37.i, %cond28.i
  %or115.i.i = or i8 %cond37.i, %cond28.i
  call void @__sanitizer_cov_trace_cmp1(i8 %xor114.i.i, i8 %or115.i.i)
  %cmp.not.i.i = icmp eq i8 %xor114.i.i, %or115.i.i
  br i1 %cmp.not.i.i, label %if.end.i73.i, label %cond.end36.i.ice_set_key.exit_crit_edge

cond.end36.i.ice_set_key.exit_crit_edge:          ; preds = %cond.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

if.end.i73.i:                                     ; preds = %cond.end36.i
  %43 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr47.i, align 1
  %45 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr41.i, align 1
  br label %for.body.i75.i

for.body.i75.i:                                   ; preds = %if.end68.i.i.for.body.i75.i_crit_edge, %if.end.i73.i
  %or24117.i.i6 = phi i8 [ 0, %if.end.i73.i ], [ %or24117.i.i5, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %or18116.i.i4 = phi i8 [ 0, %if.end.i73.i ], [ %or18116.i.i3, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %i.0127.i.i = phi i8 [ 0, %if.end.i73.i ], [ %inc.i.i, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %in_key_inv.0126.i.i = phi i8 [ %44, %if.end.i73.i ], [ %64, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %in_key.0125.i.i = phi i8 [ %46, %if.end.i73.i ], [ %63, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %val.addr.0123.i.i = phi i8 [ %36, %if.end.i73.i ], [ %62, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %nvr_mtch.addr.0121.i.i = phi i8 [ %cond37.i, %if.end.i73.i ], [ %60, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %dont_care.addr.0119.i.i = phi i8 [ %cond28.i, %if.end.i73.i ], [ %59, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %valid.addr.0118.i.i = phi i8 [ %cond.i, %if.end.i73.i ], [ %61, %if.end68.i.i.for.body.i75.i_crit_edge ]
  %47 = lshr i8 %or18116.i.i4, 1
  %48 = lshr i8 %or24117.i.i6, 1
  %49 = and i8 %valid.addr.0118.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i74.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i74.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %for.body.i75.i
  call void @__sanitizer_cov_trace_pc() #18
  %50 = shl i8 %in_key.0125.i.i, 7
  %or18116.i.i = or i8 %47, %50
  %51 = shl i8 %in_key_inv.0126.i.i, 7
  %or24117.i.i = or i8 %48, %51
  br label %if.end68.i.i

if.else.i.i:                                      ; preds = %for.body.i75.i
  %52 = and i8 %dont_care.addr.0119.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool28.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool28.not.i.i, label %if.else36.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %53 = or i8 %47, -128
  %54 = or i8 %48, -128
  br label %if.end68.i.i

if.else36.i.i:                                    ; preds = %if.else.i.i
  %55 = and i8 %nvr_mtch.addr.0121.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool39.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool39.not.i.i, label %if.else47.i.i, label %if.else36.i.i.if.end68.i.i_crit_edge

if.else36.i.i.if.end68.i.i_crit_edge:             ; preds = %if.else36.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i.i

if.else47.i.i:                                    ; preds = %if.else36.i.i
  %56 = and i8 %val.addr.0123.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool50.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool50.not.i.i, label %if.else58.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = or i8 %48, -128
  br label %if.end68.i.i

if.else58.i.i:                                    ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %58 = or i8 %47, -128
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.else58.i.i, %if.then51.i.i, %if.else36.i.i.if.end68.i.i_crit_edge, %if.then29.i.i, %if.then14.i.i
  %or24117.i.i5 = phi i8 [ %48, %if.else58.i.i ], [ %57, %if.then51.i.i ], [ %48, %if.else36.i.i.if.end68.i.i_crit_edge ], [ %54, %if.then29.i.i ], [ %or24117.i.i, %if.then14.i.i ]
  %or18116.i.i3 = phi i8 [ %58, %if.else58.i.i ], [ %47, %if.then51.i.i ], [ %47, %if.else36.i.i.if.end68.i.i_crit_edge ], [ %53, %if.then29.i.i ], [ %or18116.i.i, %if.then14.i.i ]
  %59 = lshr i8 %dont_care.addr.0119.i.i, 1
  %60 = lshr i8 %nvr_mtch.addr.0121.i.i, 1
  %61 = lshr i8 %valid.addr.0118.i.i, 1
  %62 = lshr i8 %val.addr.0123.i.i, 1
  %63 = lshr i8 %in_key.0125.i.i, 1
  %64 = lshr i8 %in_key_inv.0126.i.i, 1
  %inc.i.i = add nuw nsw i8 %i.0127.i.i, 1
  %cmp6.i.i = icmp ult i8 %i.0127.i.i, 7
  br i1 %cmp6.i.i, label %if.end68.i.i.for.body.i75.i_crit_edge, label %for.inc.i

if.end68.i.i.for.body.i75.i_crit_edge:            ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i75.i

for.inc.i:                                        ; preds = %if.end68.i.i
  %65 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %or18116.i.i3, ptr %add.ptr41.i, align 1
  %66 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %or24117.i.i5, ptr %add.ptr47.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 5
  br i1 %exitcond.not.i, label %for.inc.i.ice_set_key.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.ice_set_key.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_set_key.exit

ice_set_key.exit:                                 ; preds = %for.inc.i.ice_set_key.exit_crit_edge, %cond.end36.i.ice_set_key.exit_crit_edge, %cond.false.i.i.4.ice_set_key.exit_crit_edge, %if.end.i.i.4.ice_set_key.exit_crit_edge, %cond.false.i.i.3.ice_set_key.exit_crit_edge, %if.end.i.i.3.ice_set_key.exit_crit_edge, %cond.false.i.i.2.ice_set_key.exit_crit_edge, %if.end.i.i.2.ice_set_key.exit_crit_edge, %cond.false.i.i.1.ice_set_key.exit_crit_edge, %if.end.i.i.1.ice_set_key.exit_crit_edge, %cond.false.i.i.ice_set_key.exit_crit_edge
  %retval.0.i1 = phi i32 [ -5, %cond.end36.i.ice_set_key.exit_crit_edge ], [ 0, %for.inc.i.ice_set_key.exit_crit_edge ], [ -5, %cond.false.i.i.ice_set_key.exit_crit_edge ], [ -5, %if.end.i.i.1.ice_set_key.exit_crit_edge ], [ -5, %cond.false.i.i.1.ice_set_key.exit_crit_edge ], [ -5, %if.end.i.i.2.ice_set_key.exit_crit_edge ], [ -5, %cond.false.i.i.2.ice_set_key.exit_crit_edge ], [ -5, %if.end.i.i.3.ice_set_key.exit_crit_edge ], [ -5, %cond.false.i.i.3.ice_set_key.exit_crit_edge ], [ -5, %if.end.i.i.4.ice_set_key.exit_crit_edge ], [ -5, %cond.false.i.i.4.ice_set_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %inkey) #16
  ret i32 %retval.0.i1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_prof_tcam_ena_dis(ptr noundef %hw, i32 noundef %blk, i1 noundef zeroext %enable, i16 noundef zeroext %vsig, ptr noundef %tcam, ptr noundef %chg) unnamed_addr #1 align 64 {
entry:
  %tcam_idx.addr.i.i = alloca i16, align 2
  %vl_msk.i = alloca [5 x i8], align 1
  %dc_msk.i = alloca [5 x i8], align 1
  %nm_msk.i = alloca [5 x i8], align 1
  %vl_msk = alloca [5 x i8], align 1
  %dc_msk = alloca [5 x i8], align 1
  %nm_msk = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %vl_msk) #16
  %0 = call ptr @memset(ptr %vl_msk, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dc_msk) #16
  %1 = call ptr @memcpy(ptr %dc_msk, ptr @__const.ice_prof_tcam_ena_dis.dc_msk, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %nm_msk) #16
  %2 = call ptr @memset(ptr %nm_msk, i32 0, i32 5)
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %tcam to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tcam, align 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %vl_msk.i) #16
  %5 = call ptr @memset(ptr %vl_msk.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dc_msk.i) #16
  %6 = call ptr @memcpy(ptr %dc_msk.i, ptr @__const.ice_rel_tcam_idx.dc_msk, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %nm_msk.i) #16
  %7 = call ptr @memcpy(ptr %nm_msk.i, ptr @__const.ice_rel_tcam_idx.nm_msk, i32 5)
  %t.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 2, i32 3
  %8 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t.i.i, align 4
  %idxprom.i.i = zext i16 %4 to i32
  %key.i.i = getelementptr %struct.ice_prof_tcam_entry, ptr %9, i32 %idxprom.i.i, i32 1
  %call.i.i = call fastcc i32 @ice_prof_gen_key(ptr noundef %hw, i32 noundef %blk, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %vl_msk.i, ptr noundef nonnull %dc_msk.i, ptr noundef nonnull %nm_msk.i, ptr noundef %key.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then.ice_rel_tcam_idx.exit_crit_edge

if.then.ice_rel_tcam_idx.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_rel_tcam_idx.exit

if.end.i:                                         ; preds = %if.then
  %10 = call i16 @llvm.bswap.i16(i16 %4) #16
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.ice_prof_tcam_entry, ptr %12, i32 %idxprom.i.i
  %13 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %10, ptr %arrayidx8.i.i, align 1
  %14 = load ptr, ptr %t.i.i, align 4
  %prof_id15.i.i = getelementptr %struct.ice_prof_tcam_entry, ptr %14, i32 %idxprom.i.i, i32 2
  %15 = ptrtoint ptr %prof_id15.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %prof_id15.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tcam_idx.addr.i.i) #16
  %16 = ptrtoint ptr %tcam_idx.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %4, ptr %tcam_idx.addr.i.i, align 2
  %17 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %blk, label %if.end.i.ice_free_tcam_ent.exit.i_crit_edge [
    i32 2, label %if.end.i.if.end.i.i_crit_edge
    i32 3, label %sw.bb1.i.i.i
  ]

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.i.ice_free_tcam_ent.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_free_tcam_ent.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.bb1.i.i.i, %if.end.i.if.end.i.i_crit_edge
  %storemerge.i.i.i = phi i16 [ 97, %sw.bb1.i.i.i ], [ 89, %if.end.i.if.end.i.i_crit_edge ]
  %call1.i.i = call i32 @ice_free_hw_res(ptr noundef %hw, i16 noundef zeroext %storemerge.i.i.i, i16 noundef zeroext 1, ptr noundef nonnull %tcam_idx.addr.i.i) #16
  br label %ice_free_tcam_ent.exit.i

ice_free_tcam_ent.exit.i:                         ; preds = %if.end.i.i, %if.end.i.ice_free_tcam_ent.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call1.i.i, %if.end.i.i ], [ -22, %if.end.i.ice_free_tcam_ent.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcam_idx.addr.i.i) #16
  br label %ice_rel_tcam_idx.exit

ice_rel_tcam_idx.exit:                            ; preds = %ice_free_tcam_ent.exit.i, %if.then.ice_rel_tcam_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %ice_free_tcam_ent.exit.i ], [ %call.i.i, %if.then.ice_rel_tcam_idx.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nm_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dc_msk.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vl_msk.i) #16
  %18 = ptrtoint ptr %tcam to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tcam, align 2
  %20 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chg, align 4
  %cmp.not28.i = icmp eq ptr %21, %chg
  br i1 %cmp.not28.i, label %ice_rel_tcam_idx.exit.ice_rem_chg_tcam_ent.exit_crit_edge, label %for.body.lr.ph.i

ice_rel_tcam_idx.exit.ice_rem_chg_tcam_ent.exit_crit_edge: ; preds = %ice_rel_tcam_idx.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_rem_chg_tcam_ent.exit

for.body.lr.ph.i:                                 ; preds = %ice_rel_tcam_idx.exit
  %add.ptr14.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.029.i = phi ptr [ %21, %for.body.lr.ph.i ], [ %pos.031.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %tmp.029.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %pos.031.i = load ptr, ptr %tmp.029.i, align 4
  %type.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.029.i, i32 0, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp7.i = icmp eq i32 %24, 2
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tcam_idx.i = getelementptr inbounds %struct.ice_chs_chg, ptr %tmp.029.i, i32 0, i32 12
  %25 = ptrtoint ptr %tcam_idx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tcam_idx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %19)
  %cmp9.i = icmp eq i16 %26, %19
  br i1 %cmp9.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.029.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.029.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %tmp.029.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tmp.029.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %tmp.029.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.029.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.029.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr14.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef %tmp.029.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %pos.031.i, %chg
  br i1 %cmp.not.i, label %for.inc.i.ice_rem_chg_tcam_ent.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.ice_rem_chg_tcam_ent.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_rem_chg_tcam_ent.exit

ice_rem_chg_tcam_ent.exit:                        ; preds = %for.inc.i.ice_rem_chg_tcam_ent.exit_crit_edge, %ice_rel_tcam_idx.exit.ice_rem_chg_tcam_ent.exit_crit_edge
  %37 = ptrtoint ptr %tcam to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %tcam, align 2
  %in_use = getelementptr inbounds %struct.ice_tcam_inf, ptr %tcam, i32 0, i32 4
  %38 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %in_use, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %attr = getelementptr inbounds %struct.ice_tcam_inf, ptr %tcam, i32 0, i32 1
  %mask = getelementptr inbounds %struct.ice_tcam_inf, ptr %tcam, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp = icmp eq i16 %40, 0
  %41 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %blk, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.ice_alloc_tcam_ent.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.end.ice_alloc_tcam_ent.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_alloc_tcam_ent.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ice_alloc_tcam_ent.exit

ice_alloc_tcam_ent.exit:                          ; preds = %sw.bb1.i.i, %if.end.ice_alloc_tcam_ent.exit_crit_edge
  %storemerge.i.i = phi i16 [ 97, %sw.bb1.i.i ], [ 89, %if.end.ice_alloc_tcam_ent.exit_crit_edge ]
  %call1.i = tail call i32 @ice_alloc_hw_res(ptr noundef %hw, i16 noundef zeroext %storemerge.i.i, i16 noundef zeroext 1, i1 noundef zeroext %cmp, ptr noundef %tcam) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %if.end8, label %ice_alloc_tcam_ent.exit.cleanup_crit_edge

ice_alloc_tcam_ent.exit.cleanup_crit_edge:        ; preds = %ice_alloc_tcam_ent.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %ice_alloc_tcam_ent.exit
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #16
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %44 = ptrtoint ptr %tcam to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tcam, align 2
  %prof_id = getelementptr inbounds %struct.ice_tcam_inf, ptr %tcam, i32 0, i32 3
  %46 = ptrtoint ptr %prof_id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %prof_id, align 1
  %ptg = getelementptr inbounds %struct.ice_tcam_inf, ptr %tcam, i32 0, i32 2
  %48 = ptrtoint ptr %ptg to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ptg, align 2
  %50 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %attr, align 2
  %t.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %blk, i32 2, i32 3
  %52 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t.i, align 4
  %idxprom.i = zext i16 %45 to i32
  %key.i = getelementptr %struct.ice_prof_tcam_entry, ptr %53, i32 %idxprom.i, i32 1
  %call.i73 = call fastcc i32 @ice_prof_gen_key(ptr noundef %hw, i32 noundef %blk, i8 noundef zeroext %49, i16 noundef zeroext %vsig, i16 noundef zeroext %51, ptr noundef nonnull %vl_msk, ptr noundef nonnull %dc_msk, ptr noundef nonnull %nm_msk, ptr noundef %key.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i, label %if.end20, label %err_ice_prof_tcam_ena_dis

if.end20:                                         ; preds = %if.end12
  %54 = call i16 @llvm.bswap.i16(i16 %45) #16
  %55 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %t.i, align 4
  %arrayidx8.i = getelementptr %struct.ice_prof_tcam_entry, ptr %56, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %54, ptr %arrayidx8.i, align 1
  %58 = load ptr, ptr %t.i, align 4
  %prof_id15.i = getelementptr %struct.ice_prof_tcam_entry, ptr %58, i32 %idxprom.i, i32 2
  %59 = ptrtoint ptr %prof_id15.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %47, ptr %prof_id15.i, align 1
  %in_use21 = getelementptr inbounds %struct.ice_tcam_inf, ptr %tcam, i32 0, i32 4
  %60 = ptrtoint ptr %in_use21 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %in_use21, align 2
  %type = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %type, align 4
  %add_tcam_idx = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 4
  %62 = ptrtoint ptr %add_tcam_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %add_tcam_idx, align 2
  %63 = ptrtoint ptr %prof_id to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %prof_id, align 1
  %prof_id23 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 8
  %65 = ptrtoint ptr %prof_id23 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %prof_id23, align 1
  %66 = ptrtoint ptr %ptg to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ptg, align 2
  %ptg25 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 7
  %68 = ptrtoint ptr %ptg25 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %ptg25, align 2
  %vsig26 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 10
  %69 = ptrtoint ptr %vsig26 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %vsig26, align 2
  %70 = ptrtoint ptr %tcam to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tcam, align 2
  %tcam_idx28 = getelementptr inbounds %struct.ice_chs_chg, ptr %call.i, i32 0, i32 12
  %72 = ptrtoint ptr %tcam_idx28 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %tcam_idx28, align 2
  %73 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chg, align 4
  %call.i.i76 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %chg, ptr noundef %74) #16
  br i1 %call.i.i76, label %if.end.i.i77, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i77:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %74, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %chg, ptr %prev3.i.i, align 4
  %78 = ptrtoint ptr %chg to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call.i, ptr %chg, align 4
  br label %cleanup

err_ice_prof_tcam_ena_dis:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev33, ptr noundef nonnull %call.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err_ice_prof_tcam_ena_dis, %if.end.i.i77, %if.end20.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %ice_alloc_tcam_ent.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ice_rem_chg_tcam_ent.exit
  %retval.0 = phi i32 [ %call.i73, %err_ice_prof_tcam_ena_dis ], [ %retval.0.i, %ice_rem_chg_tcam_ent.exit ], [ %call1.i, %ice_alloc_tcam_ent.exit.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %if.end.i.i77 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nm_msk) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dc_msk) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vl_msk) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !53, !55, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1567, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_init_pkg.__UNIQUE_ID_ddebug628, !1, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1588, i32 3}
!8 = !{ptr @ice_init_pkg.__UNIQUE_ID_ddebug629, !7, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1612, i32 3}
!11 = !{ptr @ice_init_pkg.__UNIQUE_ID_ddebug630, !10, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 2244, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 2267, i32 22}
!16 = !{ptr @ice_init_hw_tbls.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3850, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ice_init_hw_tbls.__key.9, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3865, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1166, i32 4}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug620, !23, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1173, i32 3}
!28 = !{ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug621, !27, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1181, i32 3}
!31 = !{ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug622, !30, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1188, i32 3}
!34 = !{ptr @ice_init_pkg_info.__UNIQUE_ID_ddebug623, !33, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 940, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ice_find_seg_in_pkg.__UNIQUE_ID_ddebug614, !36, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1379, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ice_chk_pkg_compat.__UNIQUE_ID_ddebug625, !40, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1387, i32 3}
!45 = !{ptr @ice_chk_pkg_compat.__UNIQUE_ID_ddebug626, !44, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1411, i32 4}
!48 = !{ptr @ice_chk_pkg_compat.__UNIQUE_ID_ddebug627, !47, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 12, i32 16}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 13, i32 17}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 14, i32 15}
!55 = distinct !{null, !56, !"tnls", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 11, i32 42}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1121, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ice_download_pkg.__UNIQUE_ID_ddebug617, !58, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1127, i32 2}
!63 = !{ptr @ice_download_pkg.__UNIQUE_ID_ddebug618, !62, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1133, i32 2}
!66 = !{ptr @ice_download_pkg.__UNIQUE_ID_ddebug619, !65, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1072, i32 4}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ice_dwnld_cfg_bufs.__UNIQUE_ID_ddebug616, !68, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 786, i32 3}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ice_acquire_global_cfg_lock.__UNIQUE_ID_ddebug613, !72, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 1240, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ice_get_pkg_info.__UNIQUE_ID_ddebug624, !76, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 2083, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 984, i32 4}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ice_update_pkg.__UNIQUE_ID_ddebug615, !82, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3551, i32 3}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ice_fill_tbl.__UNIQUE_ID_ddebug636, !86, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3077, i32 3}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug631, !90, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3083, i32 2}
!95 = !{ptr @ice_write_prof_mask_reg.__UNIQUE_ID_ddebug632, !94, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!96 = !{ptr @ice_init_prof_masks.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3128, i32 2}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ice_init_flow_profs.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3795, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @blk_sizes, !103, !"blk_sizes", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 2452, i32 42}
!104 = !{ptr @ice_blk_sids, !105, !"ice_blk_sids", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3422, i32 18}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4543, i32 3}
!108 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ice_update_fd_swap.__UNIQUE_ID_ddebug641, !107, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4549, i32 3}
!112 = !{ptr @ice_update_fd_swap.__UNIQUE_ID_ddebug642, !111, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!113 = !{ptr @ice_fd_pairs, !114, !"ice_fd_pairs", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4376, i32 41}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4366, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ice_update_fd_mask.__UNIQUE_ID_ddebug640, !116, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3254, i32 2}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ice_free_prof_mask.__UNIQUE_ID_ddebug635, !120, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3108, i32 3}
!125 = !{ptr @ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug633, !124, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 3114, i32 2}
!128 = !{ptr @ice_write_prof_mask_enable_res.__UNIQUE_ID_ddebug634, !127, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!129 = !{ptr @ice_ptype_attributes, !130, !"ice_ptype_attributes", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4560, i32 43}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4102, i32 2}
!133 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ice_has_prof_vsig.__UNIQUE_ID_ddebug638, !132, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4015, i32 3}
!137 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ice_prof_gen_key.__UNIQUE_ID_ddebug637, !136, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 4346, i32 3}
!141 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ice_upd_prof_hw.__UNIQUE_ID_ddebug639, !140, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!143 = !{ptr @ice_sect_lkup, !144, !"ice_sect_lkup", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/ice/ice_flex_pipe.c", i32 17, i32 18}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
!155 = !{i64 2148882131, i64 2148882136, i64 2148882149, i64 2148882193, i64 2148882227, i64 2148882248}
!156 = !{i64 2160287775}
!157 = !{i64 6901355}
!158 = !{i64 2160288396}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 2160507760}
!162 = !{i64 2160513703}
!163 = !{i64 2160494345}
!164 = !{i64 2160379390}
!165 = !{i64 2160368623}
