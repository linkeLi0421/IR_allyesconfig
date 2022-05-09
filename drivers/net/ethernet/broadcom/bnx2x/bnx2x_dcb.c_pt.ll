; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2x_func_state_params = type { ptr, i32, i32, %union.anon.145 }
%union.anon.145 = type { %struct.bnx2x_func_set_timesync_params, [32 x i8] }
%struct.bnx2x_func_set_timesync_params = type { i8, i8, i8, i8, i32, i64 }
%struct.bnx2x = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i32, %struct.mutex, ptr, i32, %struct.pfvf_acquire_resp_tlv, ptr, i32, %union.pf_vf_bulletin, %struct.pf_vf_bulletin_content, i16, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i16, i16, i32, [8 x %struct.attn_route], ptr, i32, i16, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, ptr, i32, i16, i16, ptr, %struct.atomic_t, i16, i16, i32, i32, i32, i8, i8, i8, ptr, i8, i32, %struct.delayed_work, %struct.delayed_work, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, i32, i16, i16, i32, %struct.link_params, %struct.link_vars, i32, %struct.bnx2x_link_report_data, i8, %struct.mdio_if_info, %struct.bnx2x_common, %struct.bnx2x_port, %struct.cmng_init, [4 x i32], i32, i32, i16, i8, i8, i8, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, i32, %struct.mutex, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, [32 x %struct.hw_context], ptr, i32, i8, ptr, i32, ptr, ptr, i32, %struct.cnic_eth_dev, %union.host_hc_status_block, i32, ptr, ptr, ptr, ptr, i16, i16, [6 x i8], %struct.mutex, %struct.bnx2x_vlan_mac_obj, i8, i32, %struct.spinlock, %struct.mutex, i32, %struct.semaphore, %struct.dmae_command, i32, i16, %struct.bnx2x_eth_stats, %struct.host_func_stats, %struct.bnx2x_eth_stats_old, %struct.bnx2x_net_stats_old, %struct.bnx2x_fw_port_stats_old, i8, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, i16, i32, i8, %struct.bnx2x_config_dcbx_params, %struct.bnx2x_dcbx_port_params, i32, %struct.bnx2x_credit_pool_obj, %struct.bnx2x_credit_pool_obj, %struct.bnx2x_rx_mode_obj, %struct.bnx2x_mcast_obj, %struct.bnx2x_rss_config_obj, %struct.bnx2x_func_sp_obj, i32, i32, i32, %struct.dcbx_features, i32, %struct.dcbx_features, i32, i32, i32, i32, i8, [8 x i8], i32, i32, [6 x i8], ptr, %struct.ptp_clock_info, %struct.work_struct, %struct.cyclecounter, %struct.timecounter, i8, ptr, i32, i8, i16, i16, %struct.bnx2x_link_report_data, %struct.list_head, i16, i16, i8, [2 x i16], i32, i32, i32, i32, i32 }
%struct.pfvf_acquire_resp_tlv = type { %struct.pfvf_tlv, %struct.pf_vf_pfdev_info, %struct.pf_vf_resc }
%struct.pfvf_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.channel_tlv = type { i16, i16 }
%struct.pf_vf_pfdev_info = type { i32, i32, [32 x i8], i16, i8, i8 }
%struct.pf_vf_resc = type { [16 x %struct.hw_sb_info], [16 x i8], i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], [2 x i8] }
%struct.hw_sb_info = type { i8, i8 }
%union.pf_vf_bulletin = type { %struct.pf_vf_bulletin_content, [464 x i8] }
%struct.pf_vf_bulletin_content = type { i32, i16, i16, i64, [6 x i8], [2 x i8], i16, [6 x i8], i16, [6 x i8], i32, [4 x i8] }
%struct.attn_route = type { [5 x i32] }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.link_params = type { i8, i8, [6 x i8], [2 x i16], [2 x i16], [2 x i16], i32, i32, [2 x i32], i32, i32, i32, i32, [3 x %struct.bnx2x_phy], i8, i8, i32, i16, i32, ptr, i16, i16, i32, i32 }
%struct.bnx2x_phy = type { i32, i8, i8, i16, [4 x i16], [4 x i16], i32, i32, i32, i32, i16, i16, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.link_vars = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i16, i32, i8, i8, i16 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.bnx2x_common = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bnx2x_port = type { i32, [2 x i32], [2 x i32], [2 x i32], i32, %struct.mutex, i32, %struct.nig_stats }
%struct.nig_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.124, %union.anon.127 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, i32 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.cmng_init = type { %struct.cmng_struct_per_port, %struct.cmng_vnic }
%struct.cmng_struct_per_port = type { %struct.rate_shaping_vars_per_port, %struct.fairness_vars_per_port, %struct.safc_struct_per_port, %struct.cmng_flags_per_port }
%struct.rate_shaping_vars_per_port = type { i32, i32 }
%struct.fairness_vars_per_port = type { i32, i32, i32, i32 }
%struct.safc_struct_per_port = type { i16, i8, i8, [4 x i8], [16 x i16] }
%struct.cmng_flags_per_port = type { i32, i32 }
%struct.cmng_vnic = type { [4 x %struct.rate_shaping_vars_per_vn], [4 x %struct.fairness_vars_per_vn] }
%struct.rate_shaping_vars_per_vn = type { %struct.rate_shaping_counter }
%struct.rate_shaping_counter = type { i32, i16, i16 }
%struct.fairness_vars_per_vn = type { [4 x i32], i32, i32 }
%struct.hw_context = type { ptr, i32, i32 }
%struct.cnic_eth_dev = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [6 x i8], i32, [8 x %struct.cnic_irq], ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], ptr }
%struct.cnic_irq = type { i32, ptr, i32, i32, i32 }
%union.host_hc_status_block = type { ptr }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj, %struct.list_head, i8, i8, i32, %struct.bnx2x_exe_queue_obj, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2x_raw_obj = type { i8, i8, i32, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.bnx2x_exe_queue_obj = type { %struct.list_head, %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.dmae_command = type { i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.bnx2x_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.139, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.host_func_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_eth_stats_old = type { i32, i32 }
%struct.bnx2x_net_stats_old = type { i32 }
%struct.bnx2x_fw_port_stats_old = type { i32, i32, i32, i32 }
%struct.bnx2x_config_dcbx_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i32, [4 x %struct.bnx2x_admin_priority_app_table], i32 }
%struct.bnx2x_admin_priority_app_table = type { i32, i32, i32, i32 }
%struct.bnx2x_dcbx_port_params = type { %struct.bnx2x_dcbx_pfc_params, %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_app_params }
%struct.bnx2x_dcbx_pfc_params = type { i32, i32 }
%struct.bnx2x_dcbx_pg_params = type { i32, i8, [3 x %struct.bnx2x_dcbx_cos_params] }
%struct.bnx2x_dcbx_cos_params = type { i32, i32, i8, i8 }
%struct.bnx2x_dcbx_app_params = type { i32, [3 x i32] }
%struct.bnx2x_credit_pool_obj = type { %struct.atomic_t, i32, [4 x i64], i32, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2x_rx_mode_obj = type { ptr, ptr }
%struct.bnx2x_mcast_obj = type { %struct.bnx2x_raw_obj, %union.anon.142, %struct.list_head, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [4 x i64], i32 }
%struct.bnx2x_rss_config_obj = type { %struct.bnx2x_raw_obj, i8, [128 x i8], i8, i8, ptr }
%struct.bnx2x_func_sp_obj = type { i32, i32, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.dcbx_features = type { %struct.dcbx_ets_feature, %struct.dcbx_pfc_feature, %struct.dcbx_app_priority_feature }
%struct.dcbx_ets_feature = type { i32, [2 x i32], [1 x i32] }
%struct.dcbx_pfc_feature = type { i8, i8, i8, i8 }
%struct.dcbx_app_priority_feature = type { i8, i8, i8, i8, [16 x %struct.dcbx_app_priority_entry] }
%struct.dcbx_app_priority_entry = type { i16, i8, i8 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.bnx2x_link_report_data = type { i16, i32 }
%struct.list_head = type { ptr, ptr }
%struct.priority_cos = type { i8, i8, i16 }
%struct.dcb_app = type { i8, i8, i16 }
%struct.bnx2x_ets_params = type { i8, [6 x %struct.bnx2x_ets_cos_params] }
%struct.bnx2x_ets_cos_params = type { i32, %union.anon.153 }
%union.anon.153 = type { %struct.bnx2x_ets_bw_params }
%struct.bnx2x_ets_bw_params = type { i8 }
%struct.bnx2x_nig_brb_pfc_port_params = type { i32, i32, i32, i32, i8, [6 x i32], i32, i32 }
%struct.lldp_remote_mib = type { i32, i32, %struct.dcbx_features, i32 }
%struct.lldp_local_mib = type { i32, i32, %struct.dcbx_features, i32 }
%struct.cos_help_data = type { [3 x %struct.cos_entry_help_data], i8 }
%struct.cos_entry_help_data = type { i32, i32, i8, i8 }
%struct.pg_help_data = type { [3 x %struct.pg_entry_help_data], i8 }
%struct.pg_entry_help_data = type { i8, i8, i32 }
%struct.lldp_admin_mib = type { i32, %struct.dcbx_features }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dcb_peer_app_info = type { i8, i8 }
%struct.cee_pg = type { i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cee_pfc = type { i8, i8, i8, i8 }

@bnx2x_dcbx_stop_hw_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015bnx2x: [%s:%d(%s)]STOP TRAFFIC\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_dcbx_stop_hw_tx\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_stop_hw_tx._entry_ptr = internal global ptr @bnx2x_dcbx_stop_hw_tx._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_stop_hw_tx._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013bnx2x: [%s:%d(%s)]Unable to hold traffic for HW configuration\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_stop_hw_tx._entry_ptr.6 = internal global ptr @bnx2x_dcbx_stop_hw_tx._entry.4, section ".printk_index", align 4
@bnx2x_dcbx_stop_hw_tx._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bnx2x: [%s:%d(%s)]driver assert\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_stop_hw_tx._entry_ptr.9 = internal global ptr @bnx2x_dcbx_stop_hw_tx._entry.7, section ".printk_index", align 4
@bnx2x_dcbx_resume_hw_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015bnx2x: [%s:%d(%s)]START TRAFFIC\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_dcbx_resume_hw_tx\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_resume_hw_tx._entry_ptr = internal global ptr @bnx2x_dcbx_resume_hw_tx._entry, section ".printk_index", align 4
@bnx2x_dcbx_resume_hw_tx._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013bnx2x: [%s:%d(%s)]Unable to resume traffic after HW configuration\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_resume_hw_tx._entry_ptr.14 = internal global ptr @bnx2x_dcbx_resume_hw_tx._entry.12, section ".printk_index", align 4
@bnx2x_dcbx_resume_hw_tx._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.11, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_resume_hw_tx._entry_ptr.16 = internal global ptr @bnx2x_dcbx_resume_hw_tx._entry.15, section ".printk_index", align 4
@bnx2x_dcbx_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015bnx2x: [%s:%d(%s)]BNX2X_DCBX_STATE_NEG_RECEIVED\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_dcbx_set_params\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_set_params._entry_ptr = internal global ptr @bnx2x_dcbx_set_params._entry, section ".printk_index", align 4
@bnx2x_dcbx_set_params._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015bnx2x: [%s:%d(%s)]BNX2X_DCBX_STATE_TX_PAUSED\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_set_params._entry_ptr.21 = internal global ptr @bnx2x_dcbx_set_params._entry.19, section ".printk_index", align 4
@bnx2x_dcbx_set_params._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015bnx2x: [%s:%d(%s)]BNX2X_DCBX_STATE_TX_RELEASED\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_set_params._entry_ptr.24 = internal global ptr @bnx2x_dcbx_set_params._entry.22, section ".printk_index", align 4
@bnx2x_dcbx_set_params._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2x: [%s:%d(%s)]Unknown DCBX_STATE\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_set_params._entry_ptr.27 = internal global ptr @bnx2x_dcbx_set_params._entry.25, section ".printk_index", align 4
@bnx2x_dcbx_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015bnx2x: [%s:%d(%s)]DCB state [%s:%s]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_dcbx_set_state\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_set_state._entry_ptr = internal global ptr @bnx2x_dcbx_set_state._entry, section ".printk_index", align 4
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"user-mode\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"on-chip static\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"on-chip with negotiation\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015bnx2x: [%s:%d(%s)]dcb_state %d bp->port.pmf %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2x_dcbx_init\00", [16 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_init._entry_ptr = internal global ptr @bnx2x_dcbx_init._entry, section ".printk_index", align 4
@bnx2x_dcbx_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_lldp_params_offset 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_init._entry_ptr.40 = internal global ptr @bnx2x_dcbx_init._entry.38, section ".printk_index", align 4
@bnx2x_dcbnl_ops = dso_local constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnx2x_dcbnl_get_state, ptr @bnx2x_dcbnl_set_state, ptr @bnx2x_dcbnl_get_perm_hw_addr, ptr @bnx2x_dcbnl_set_pg_tccfg_tx, ptr @bnx2x_dcbnl_set_pg_bwgcfg_tx, ptr @bnx2x_dcbnl_set_pg_tccfg_rx, ptr @bnx2x_dcbnl_set_pg_bwgcfg_rx, ptr @bnx2x_dcbnl_get_pg_tccfg_tx, ptr @bnx2x_dcbnl_get_pg_bwgcfg_tx, ptr @bnx2x_dcbnl_get_pg_tccfg_rx, ptr @bnx2x_dcbnl_get_pg_bwgcfg_rx, ptr @bnx2x_dcbnl_set_pfc_cfg, ptr @bnx2x_dcbnl_get_pfc_cfg, ptr @bnx2x_dcbnl_set_all, ptr @bnx2x_dcbnl_get_cap, ptr @bnx2x_dcbnl_get_numtcs, ptr @bnx2x_dcbnl_set_numtcs, ptr @bnx2x_dcbnl_get_pfc_state, ptr @bnx2x_dcbnl_set_pfc_state, ptr null, ptr null, ptr null, ptr null, ptr @bnx2x_dcbnl_set_app_up, ptr null, ptr @bnx2x_dcbnl_get_featcfg, ptr @bnx2x_dcbnl_set_featcfg, ptr @bnx2x_dcbnl_get_dcbx, ptr @bnx2x_dcbnl_set_dcbx, ptr @bnx2x_peer_appinfo, ptr @bnx2x_peer_apptable, ptr @bnx2x_cee_peer_getpg, ptr @bnx2x_cee_peer_getpfc, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_shmem_remote_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_remote_mib_offset 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bnx2x_dcbx_read_shmem_remote_mib\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_shmem_remote_mib._entry_ptr = internal global ptr @bnx2x_dcbx_read_shmem_remote_mib._entry, section ".printk_index", align 4
@bnx2x_dcbx_read_shmem_remote_mib._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013bnx2x: [%s:%d(%s)]FW doesn't support dcbx_remote_mib_offset\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_shmem_remote_mib._entry_ptr.45 = internal global ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.43, section ".printk_index", align 4
@bnx2x_dcbx_read_shmem_remote_mib._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013bnx2x: [%s:%d(%s)]Failed to read remote mib from FW\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_shmem_remote_mib._entry_ptr.48 = internal global ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.46, section ".printk_index", align 4
@bnx2x_dcbx_read_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2x: [%s:%d(%s)]MIB could not be read\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_dcbx_read_mib\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_mib._entry_ptr = internal global ptr @bnx2x_dcbx_read_mib._entry, section ".printk_index", align 4
@bnx2x_dcbx_read_shmem_neg_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_neg_res_offset 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bnx2x_dcbx_read_shmem_neg_results\00", [62 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_shmem_neg_results._entry_ptr = internal global ptr @bnx2x_dcbx_read_shmem_neg_results._entry, section ".printk_index", align 4
@bnx2x_dcbx_read_shmem_neg_results._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013bnx2x: [%s:%d(%s)]FW doesn't support dcbx_neg_res_offset\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_shmem_neg_results._entry_ptr.55 = internal global ptr @bnx2x_dcbx_read_shmem_neg_results._entry.53, section ".printk_index", align 4
@bnx2x_dcbx_read_shmem_neg_results._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bnx2x: [%s:%d(%s)]Failed to read local mib from FW\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_read_shmem_neg_results._entry_ptr.58 = internal global ptr @bnx2x_dcbx_read_shmem_neg_results._entry.56, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015bnx2x: [%s:%d(%s)]local_mib.error %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_dump_dcbx_drv_param\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr = internal global ptr @bnx2x_dump_dcbx_drv_param._entry, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015bnx2x: [%s:%d(%s)]local_mib.features.ets.enabled %x\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.63 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.61, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015bnx2x: [%s:%d(%s)]local_mib.features.ets.pg_bw_tbl[%d] %d\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.66 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.64, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015bnx2x: [%s:%d(%s)]local_mib.features.ets.pri_pg_tbl[%d] %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.69 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.67, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.pfc.pri_en_bitmap %x\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.72 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.70, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.pfc.pfc_caps %x\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.75 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.73, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.60, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.pfc.enabled %x\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.78 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.76, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.60, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.app.default_pri %x\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.81 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.79, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.60, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.app.tc_supported %x\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.84 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.82, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.60, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.app.enabled %x\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.87 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.85, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.60, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.app.app_pri_tbl[%x].app_id %x\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.90 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.88, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.60, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.app.app_pri_tbl[%x].pri_bitmap %x\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.93 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.91, section ".printk_index", align 4
@bnx2x_dump_dcbx_drv_param._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.60, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015bnx2x: [%s:%d(%s)]dcbx_features.app.app_pri_tbl[%x].appBitfield %x\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2x_dump_dcbx_drv_param._entry_ptr.96 = internal global ptr @bnx2x_dump_dcbx_drv_param._entry.94, section ".printk_index", align 4
@bnx2x_dcbx_get_ap_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_APP_ERROR\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_dcbx_get_ap_feature\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ap_feature._entry_ptr = internal global ptr @bnx2x_dcbx_get_ap_feature._entry, section ".printk_index", align 4
@bnx2x_dcbx_get_ap_feature._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_APP_MISMATCH\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ap_feature._entry_ptr.101 = internal global ptr @bnx2x_dcbx_get_ap_feature._entry.99, section ".printk_index", align 4
@bnx2x_dcbx_get_ap_feature._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_REMOTE_APP_TLV_NOT_FOUND\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ap_feature._entry_ptr.104 = internal global ptr @bnx2x_dcbx_get_ap_feature._entry.102, section ".printk_index", align 4
@bnx2x_dcbx_get_ap_feature._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.98, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015bnx2x: [%s:%d(%s)]ISCSI is using default priority.\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ap_feature._entry_ptr.107 = internal global ptr @bnx2x_dcbx_get_ap_feature._entry.105, section ".printk_index", align 4
@bnx2x_dcbx_get_ap_feature._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.98, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015bnx2x: [%s:%d(%s)]FCoE is using default priority.\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ap_feature._entry_ptr.110 = internal global ptr @bnx2x_dcbx_get_ap_feature._entry.108, section ".printk_index", align 4
@bnx2x_dcbx_get_ap_feature._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.98, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_APP_DISABLED\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ap_feature._entry_ptr.113 = internal global ptr @bnx2x_dcbx_get_ap_feature._entry.111, section ".printk_index", align 4
@bnx2x_dcbx_get_pfc_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_PFC_ERROR\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_dcbx_get_pfc_feature\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_pfc_feature._entry_ptr = internal global ptr @bnx2x_dcbx_get_pfc_feature._entry, section ".printk_index", align 4
@bnx2x_dcbx_get_pfc_feature._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_REMOTE_PFC_TLV_NOT_FOUND\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_pfc_feature._entry_ptr.118 = internal global ptr @bnx2x_dcbx_get_pfc_feature._entry.116, section ".printk_index", align 4
@bnx2x_dcbx_get_pfc_feature._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_PFC_DISABLED\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_pfc_feature._entry_ptr.121 = internal global ptr @bnx2x_dcbx_get_pfc_feature._entry.119, section ".printk_index", align 4
@bnx2x_dcbx_get_ets_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_ETS_ERROR\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_dcbx_get_ets_feature\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ets_feature._entry_ptr = internal global ptr @bnx2x_dcbx_get_ets_feature._entry, section ".printk_index", align 4
@bnx2x_dcbx_get_ets_feature._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_REMOTE_ETS_TLV_NOT_FOUND\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ets_feature._entry_ptr.126 = internal global ptr @bnx2x_dcbx_get_ets_feature._entry.124, section ".printk_index", align 4
@bnx2x_dcbx_get_ets_feature._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_ETS_ENABLE\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ets_feature._entry_ptr.129 = internal global ptr @bnx2x_dcbx_get_ets_feature._entry.127, section ".printk_index", align 4
@bnx2x_dcbx_get_ets_feature._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.123, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015bnx2x: [%s:%d(%s)]DCBX_LOCAL_ETS_DISABLED\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ets_feature._entry_ptr.132 = internal global ptr @bnx2x_dcbx_get_ets_feature._entry.130, section ".printk_index", align 4
@bnx2x_dcbx_get_ets_pri_pg_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015bnx2x: [%s:%d(%s)]set_configuration_ets_pg[%d] = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnx2x_dcbx_get_ets_pri_pg_tbl\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_ets_pri_pg_tbl._entry_ptr = internal global ptr @bnx2x_dcbx_get_ets_pri_pg_tbl._entry, section ".printk_index", align 4
@bnx2x_dcbx_get_num_pg_traf_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015bnx2x: [%s:%d(%s)]add_traf_type %d pg_found %s num_of_pg %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bnx2x_dcbx_get_num_pg_traf_type\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_get_num_pg_traf_type._entry_ptr = internal global ptr @bnx2x_dcbx_get_num_pg_traf_type._entry, section ".printk_index", align 4
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_fill_cos_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2x: [%s:%d(%s)]Invalid pg[%d] data %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_dcbx_fill_cos_params\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_fill_cos_params._entry_ptr = internal global ptr @bnx2x_dcbx_fill_cos_params._entry, section ".printk_index", align 4
@bnx2x_dcbx_fill_cos_params._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 1804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bnx2x: [%s:%d(%s)]Invalid pri_bitmask for %d\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_fill_cos_params._entry_ptr.143 = internal global ptr @bnx2x_dcbx_fill_cos_params._entry.141, section ".printk_index", align 4
@bnx2x_dcbx_fill_cos_params._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013bnx2x: [%s:%d(%s)]Inconsistent config for pausable COS %d\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_fill_cos_params._entry_ptr.146 = internal global ptr @bnx2x_dcbx_fill_cos_params._entry.144, section ".printk_index", align 4
@bnx2x_dcbx_fill_cos_params._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.140, ptr @.str.2, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013bnx2x: [%s:%d(%s)]Inconsistent config for nonpausable COS %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_fill_cos_params._entry_ptr.149 = internal global ptr @bnx2x_dcbx_fill_cos_params._entry.147, section ".printk_index", align 4
@bnx2x_dcbx_fill_cos_params._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.140, ptr @.str.2, i32 1824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015bnx2x: [%s:%d(%s)]COS %d PAUSABLE prijoinmask 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_fill_cos_params._entry_ptr.152 = internal global ptr @bnx2x_dcbx_fill_cos_params._entry.150, section ".printk_index", align 4
@bnx2x_dcbx_fill_cos_params._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.140, ptr @.str.2, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015bnx2x: [%s:%d(%s)]COS %d NONPAUSABLE prijoinmask 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_fill_cos_params._entry_ptr.155 = internal global ptr @bnx2x_dcbx_fill_cos_params._entry.153, section ".printk_index", align 4
@bnx2x_dcbx_cee_fill_cos_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013bnx2x: [%s:%d(%s)]Unable to reduce the number of PGs - we will disables ETS\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bnx2x_dcbx_cee_fill_cos_params\00", [33 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_cee_fill_cos_params._entry_ptr = internal global ptr @bnx2x_dcbx_cee_fill_cos_params._entry, section ".printk_index", align 4
@bnx2x_dcbx_join_pgs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bnx2x: [%s:%d(%s)]required_num_of_pg can't be zero\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_dcbx_join_pgs\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_join_pgs._entry_ptr = internal global ptr @bnx2x_dcbx_join_pgs._entry, section ".printk_index", align 4
@bnx2x_dcbx_spread_strict_pri._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013bnx2x: [%s:%d(%s)]Didn't succeed to spread strict priorities\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbx_spread_strict_pri\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_spread_strict_pri._entry_ptr = internal global ptr @bnx2x_dcbx_spread_strict_pri._entry, section ".printk_index", align 4
@bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bnx2x: [%s:%d(%s)]Wrong pg_help_data.num_of_pg\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bnx2x_dcbx_2cos_limit_cee_fill_cos_params\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry_ptr = internal global ptr @bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry, section ".printk_index", align 4
@bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013bnx2x: [%s:%d(%s)]Invalid value for pri_join_mask - could not find a priority\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry_ptr = internal global ptr @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry, section ".printk_index", align 4
@bnx2x_dcbx_separate_pauseable_from_non._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013bnx2x: [%s:%d(%s)]dcbx error: Both groups must have priorities\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bnx2x_dcbx_separate_pauseable_from_non\00", [57 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_separate_pauseable_from_non._entry_ptr = internal global ptr @bnx2x_dcbx_separate_pauseable_from_non._entry, section ".printk_index", align 4
@bnx2x_dcbx_map_nw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015bnx2x: [%s:%d(%s)]cos %d extended with 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2x_dcbx_map_nw\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_map_nw._entry_ptr = internal global ptr @bnx2x_dcbx_map_nw._entry, section ".printk_index", align 4
@bnx2x_update_drv_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.172, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015bnx2x: [%s:%d(%s)]drv_flags 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_update_drv_flags\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_update_drv_flags._entry_ptr = internal global ptr @bnx2x_update_drv_flags._entry, section ".printk_index", align 4
@bnx2x_dcbx_update_tc_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015bnx2x: [%s:%d(%s)]tx_mapping %d --> %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbx_update_tc_mapping\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_update_tc_mapping._entry_ptr = internal global ptr @bnx2x_dcbx_update_tc_mapping._entry, section ".printk_index", align 4
@bnx2x_dcbx_update_ets_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bnx2x: [%s:%d(%s)]COS can't be not BW and not SP\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbx_update_ets_config\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_update_ets_config._entry_ptr = internal global ptr @bnx2x_dcbx_update_ets_config._entry, section ".printk_index", align 4
@bnx2x_dcbx_update_ets_config._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_update_ets_config._entry_ptr.178 = internal global ptr @bnx2x_dcbx_update_ets_config._entry.177, section ".printk_index", align 4
@bnx2x_dcbx_update_ets_config._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.176, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bnx2x: [%s:%d(%s)]bnx2x_ets_e3b0_config failed\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_update_ets_config._entry_ptr.181 = internal global ptr @bnx2x_dcbx_update_ets_config._entry.179, section ".printk_index", align 4
@bnx2x_dcbx_2cos_limit_update_ets_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bnx2x: [%s:%d(%s)]Illegal number of COSes %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bnx2x_dcbx_2cos_limit_update_ets_config\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr = internal global ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry, section ".printk_index", align 4
@bnx2x_dcbx_2cos_limit_update_ets_config._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [184 x i8], [40 x i8] } { [184 x i8] c"\013bnx2x: [%s:%d(%s)]all COS should have at least bw_limit or strictets->cos_params[0].strict= %xets->cos_params[0].bw_tbl= %xets->cos_params[1].strict= %xets->cos_params[1].bw_tbl= %x\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr.186 = internal global ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.184, section ".printk_index", align 4
@bnx2x_dcbx_2cos_limit_update_ets_config._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.183, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2x: [%s:%d(%s)]update_ets_params failed\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr.189 = internal global ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.187, section ".printk_index", align 4
@bnx2x_dcbx_admin_mib_updated_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015bnx2x: [%s:%d(%s)]pg_bw_tbl[%d] = %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bnx2x_dcbx_admin_mib_updated_params\00", [60 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_admin_mib_updated_params._entry_ptr = internal global ptr @bnx2x_dcbx_admin_mib_updated_params._entry, section ".printk_index", align 4
@bnx2x_dcbx_admin_mib_updated_params._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015bnx2x: [%s:%d(%s)]pri_pg_tbl[%d] = %02x\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_admin_mib_updated_params._entry_ptr.194 = internal global ptr @bnx2x_dcbx_admin_mib_updated_params._entry.192, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015bnx2x: [%s:%d(%s)]pfc_fw_cfg->dcb_version %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2x_dcbx_print_cos_params\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr = internal global ptr @bnx2x_dcbx_print_cos_params._entry, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.2, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\015bnx2x: [%s:%d(%s)]pdev->params.dcbx_port_params.pfc.priority_non_pauseable_mask %x\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr.199 = internal global ptr @bnx2x_dcbx_print_cos_params._entry.197, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.196, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\015bnx2x: [%s:%d(%s)]pdev->params.dcbx_port_params.ets.cos_params[%d].pri_bitmask %x\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr.202 = internal global ptr @bnx2x_dcbx_print_cos_params._entry.200, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.196, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015bnx2x: [%s:%d(%s)]pdev->params.dcbx_port_params.ets.cos_params[%d].bw_tbl %x\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr.205 = internal global ptr @bnx2x_dcbx_print_cos_params._entry.203, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.196, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015bnx2x: [%s:%d(%s)]pdev->params.dcbx_port_params.ets.cos_params[%d].strict %x\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr.208 = internal global ptr @bnx2x_dcbx_print_cos_params._entry.206, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.196, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015bnx2x: [%s:%d(%s)]pdev->params.dcbx_port_params.ets.cos_params[%d].pauseable %x\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr.211 = internal global ptr @bnx2x_dcbx_print_cos_params._entry.209, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.196, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\015bnx2x: [%s:%d(%s)]pfc_fw_cfg->traffic_type_to_priority_cos[%d].priority %x\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr.214 = internal global ptr @bnx2x_dcbx_print_cos_params._entry.212, section ".printk_index", align 4
@bnx2x_dcbx_print_cos_params._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.196, ptr @.str.2, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015bnx2x: [%s:%d(%s)]pfc_fw_cfg->traffic_type_to_priority_cos[%d].cos %x\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2x_dcbx_print_cos_params._entry_ptr.217 = internal global ptr @bnx2x_dcbx_print_cos_params._entry.215, section ".printk_index", align 4
@bnx2x_dcbnl_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.2, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015bnx2x: [%s:%d(%s)]state = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_dcbnl_get_state\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_state._entry_ptr = internal global ptr @bnx2x_dcbnl_get_state._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015bnx2x: [%s:%d(%s)]state = %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_dcbnl_set_state\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_state._entry_ptr = internal global ptr @bnx2x_dcbnl_set_state._entry, section ".printk_index", align 4
@.str.222 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_state._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.221, ptr @.str.2, i32 1955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015bnx2x: [%s:%d(%s)]Can not set dcbx to enabled while it is disabled in nvm\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_state._entry_ptr.226 = internal global ptr @bnx2x_dcbnl_set_state._entry.224, section ".printk_index", align 4
@bnx2x_dcbnl_get_perm_hw_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.2, i32 1967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015bnx2x: [%s:%d(%s)]GET-PERM-ADDR\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbnl_get_perm_hw_addr\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_perm_hw_addr._entry_ptr = internal global ptr @bnx2x_dcbnl_get_perm_hw_addr._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_pg_tccfg_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.2, i32 1984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015bnx2x: [%s:%d(%s)]prio[%d] = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2x_dcbnl_set_pg_tccfg_tx\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_pg_tccfg_tx._entry_ptr = internal global ptr @bnx2x_dcbnl_set_pg_tccfg_tx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_pg_bwgcfg_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.2, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015bnx2x: [%s:%d(%s)]pgid[%d] = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbnl_set_pg_bwgcfg_tx\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_pg_bwgcfg_tx._entry_ptr = internal global ptr @bnx2x_dcbnl_set_pg_bwgcfg_tx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_pg_tccfg_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015bnx2x: [%s:%d(%s)]Nothing to set; No RX support\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2x_dcbnl_set_pg_tccfg_rx\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_pg_tccfg_rx._entry_ptr = internal global ptr @bnx2x_dcbnl_set_pg_tccfg_rx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_pg_bwgcfg_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.235, ptr @.str.2, i32 2030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbnl_set_pg_bwgcfg_rx\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_pg_bwgcfg_rx._entry_ptr = internal global ptr @bnx2x_dcbnl_set_pg_bwgcfg_rx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_pg_tccfg_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.2, i32 2038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015bnx2x: [%s:%d(%s)]prio = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2x_dcbnl_get_pg_tccfg_tx\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_pg_tccfg_tx._entry_ptr = internal global ptr @bnx2x_dcbnl_get_pg_tccfg_tx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_pg_bwgcfg_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.2, i32 2064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015bnx2x: [%s:%d(%s)]pgid = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbnl_get_pg_bwgcfg_tx\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_pg_bwgcfg_tx._entry_ptr = internal global ptr @bnx2x_dcbnl_get_pg_bwgcfg_tx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_pg_tccfg_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.2, i32 2079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015bnx2x: [%s:%d(%s)]Nothing to get; No RX support\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2x_dcbnl_get_pg_tccfg_rx\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_pg_tccfg_rx._entry_ptr = internal global ptr @bnx2x_dcbnl_get_pg_tccfg_rx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_pg_bwgcfg_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.242, ptr @.str.2, i32 2088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2x_dcbnl_get_pg_bwgcfg_rx\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_pg_bwgcfg_rx._entry_ptr = internal global ptr @bnx2x_dcbnl_get_pg_bwgcfg_rx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_pfc_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.243, ptr @.str.2, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_dcbnl_set_pfc_cfg\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_pfc_cfg._entry_ptr = internal global ptr @bnx2x_dcbnl_set_pfc_cfg._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_pfc_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.244, ptr @.str.2, i32 2114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_dcbnl_get_pfc_cfg\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_pfc_cfg._entry_ptr = internal global ptr @bnx2x_dcbnl_get_pfc_cfg._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.2, i32 2128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015bnx2x: [%s:%d(%s)]SET-ALL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_dcbnl_set_all\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_all._entry_ptr = internal global ptr @bnx2x_dcbnl_set_all._entry, section ".printk_index", align 4
@.str.247 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Handling parity error recovery. Try again later\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_all._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.246, ptr @.str.2, i32 2144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015bnx2x: [%s:%d(%s)]set_dcbx_params done\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_all._entry_ptr.250 = internal global ptr @bnx2x_dcbnl_set_all._entry.248, section ".printk_index", align 4
@bnx2x_dcbnl_get_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.252, ptr @.str.2, i32 2181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013bnx2x: [%s:%d(%s)]Non valid capability ID\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_dcbnl_get_cap\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_cap._entry_ptr = internal global ptr @bnx2x_dcbnl_get_cap._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_cap._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.252, ptr @.str.2, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015bnx2x: [%s:%d(%s)]DCB disabled\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_cap._entry_ptr.255 = internal global ptr @bnx2x_dcbnl_get_cap._entry.253, section ".printk_index", align 4
@bnx2x_dcbnl_get_cap._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.252, ptr @.str.2, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015bnx2x: [%s:%d(%s)]capid %d:%x\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_cap._entry_ptr.258 = internal global ptr @bnx2x_dcbnl_get_cap._entry.256, section ".printk_index", align 4
@bnx2x_dcbnl_get_numtcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.2, i32 2199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015bnx2x: [%s:%d(%s)]tcid %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_dcbnl_get_numtcs\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_numtcs._entry_ptr = internal global ptr @bnx2x_dcbnl_get_numtcs._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_numtcs._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.260, ptr @.str.2, i32 2212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2x: [%s:%d(%s)]Non valid TC-ID\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_numtcs._entry_ptr.263 = internal global ptr @bnx2x_dcbnl_get_numtcs._entry.261, section ".printk_index", align 4
@bnx2x_dcbnl_get_numtcs._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.260, ptr @.str.2, i32 2217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_numtcs._entry_ptr.265 = internal global ptr @bnx2x_dcbnl_get_numtcs._entry.264, section ".printk_index", align 4
@bnx2x_dcbnl_set_numtcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.2, i32 2227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015bnx2x: [%s:%d(%s)]num tcs = %d; Not supported\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_dcbnl_set_numtcs\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_numtcs._entry_ptr = internal global ptr @bnx2x_dcbnl_set_numtcs._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_pfc_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.268, ptr @.str.2, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_dcbnl_get_pfc_state\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_pfc_state._entry_ptr = internal global ptr @bnx2x_dcbnl_get_pfc_state._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_pfc_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.269, ptr @.str.2, i32 2245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_dcbnl_set_pfc_state\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_pfc_state._entry_ptr = internal global ptr @bnx2x_dcbnl_set_pfc_state._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_app_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.2, i32 2341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015bnx2x: [%s:%d(%s)]app_type %d, app_id %x, prio bitmap %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_dcbnl_set_app_up\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_app_up._entry_ptr = internal global ptr @bnx2x_dcbnl_set_app_up._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_app_up._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.271, ptr @.str.2, i32 2344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015bnx2x: [%s:%d(%s)]dcbnl call not valid\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_app_up._entry_ptr.274 = internal global ptr @bnx2x_dcbnl_set_app_up._entry.272, section ".printk_index", align 4
@bnx2x_dcbnl_set_app_up._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.271, ptr @.str.2, i32 2354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015bnx2x: [%s:%d(%s)]Wrong ID type\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_app_up._entry_ptr.277 = internal global ptr @bnx2x_dcbnl_set_app_up._entry.275, section ".printk_index", align 4
@bnx2x_set_admin_app_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.279, ptr @.str.2, i32 2324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bnx2x: [%s:%d(%s)]Application table is too large\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_set_admin_app_up\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_set_admin_app_up._entry_ptr = internal global ptr @bnx2x_set_admin_app_up._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_featcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.281, ptr @.str.2, i32 2406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015bnx2x: [%s:%d(%s)]featid %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_dcbnl_get_featcfg\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_featcfg._entry_ptr = internal global ptr @bnx2x_dcbnl_get_featcfg._entry, section ".printk_index", align 4
@bnx2x_dcbnl_get_featcfg._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.281, ptr @.str.2, i32 2435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2x: [%s:%d(%s)]Non valid feature-ID\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_featcfg._entry_ptr.284 = internal global ptr @bnx2x_dcbnl_get_featcfg._entry.282, section ".printk_index", align 4
@bnx2x_dcbnl_get_featcfg._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.281, ptr @.str.2, i32 2440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_get_featcfg._entry_ptr.286 = internal global ptr @bnx2x_dcbnl_get_featcfg._entry.285, section ".printk_index", align 4
@bnx2x_dcbnl_set_featcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.2, i32 2453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015bnx2x: [%s:%d(%s)]featid = %d flags = %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_dcbnl_set_featcfg\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_featcfg._entry_ptr = internal global ptr @bnx2x_dcbnl_set_featcfg._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_featcfg._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.288, ptr @.str.2, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_featcfg._entry_ptr.290 = internal global ptr @bnx2x_dcbnl_set_featcfg._entry.289, section ".printk_index", align 4
@bnx2x_dcbnl_set_featcfg._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.288, ptr @.str.2, i32 2481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_featcfg._entry_ptr.292 = internal global ptr @bnx2x_dcbnl_set_featcfg._entry.291, section ".printk_index", align 4
@bnx2x_dcbnl_set_dcbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.294, ptr @.str.2, i32 2376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015bnx2x: [%s:%d(%s)]state = %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_dcbnl_set_dcbx\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_dcbx._entry_ptr = internal global ptr @bnx2x_dcbnl_set_dcbx._entry, section ".printk_index", align 4
@bnx2x_dcbnl_set_dcbx._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.294, ptr @.str.2, i32 2382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013bnx2x: [%s:%d(%s)]Requested DCBX mode %x is beyond advertised capabilities\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_dcbx._entry_ptr.297 = internal global ptr @bnx2x_dcbnl_set_dcbx._entry.295, section ".printk_index", align 4
@bnx2x_dcbnl_set_dcbx._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.294, ptr @.str.2, i32 2387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013bnx2x: [%s:%d(%s)]DCB turned off, DCBX configuration is invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2x_dcbnl_set_dcbx._entry_ptr.300 = internal global ptr @bnx2x_dcbnl_set_dcbx._entry.298, section ".printk_index", align 4
@bnx2x_peer_appinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.302, ptr @.str.2, i32 2494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015bnx2x: [%s:%d(%s)]APP-INFO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_peer_appinfo\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_peer_appinfo._entry_ptr = internal global ptr @bnx2x_peer_appinfo._entry, section ".printk_index", align 4
@bnx2x_peer_apptable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.304, ptr @.str.2, i32 2513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015bnx2x: [%s:%d(%s)]APP-TABLE\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_peer_apptable\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_peer_apptable._entry_ptr = internal global ptr @bnx2x_peer_apptable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.305 = internal global [17 x i64] [i64 15, i64 16, i64 5693, i64 5694, i64 5695, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.306 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 15]
@__sancov_gen_cov_switch_values.307 = internal global [17 x i64] [i64 15, i64 16, i64 5693, i64 5694, i64 5695, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.308 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.310 = internal global [20 x i64] [i64 18, i64 16, i64 5693, i64 5694, i64 5695, i64 5730, i64 5731, i64 5743, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.311 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 32, i64 3260, i64 35078]
@__sancov_gen_cov_switch_values.313 = internal global [4 x i64] [i64 2, i64 32, i64 3260, i64 35078]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 3260, i64 35078]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 32, i64 3260, i64 35078]
@__sancov_gen_cov_switch_values.316 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.317 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.318 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.319 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.320 = internal global [17 x i64] [i64 15, i64 16, i64 5693, i64 5694, i64 5695, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.321 = internal global [17 x i64] [i64 15, i64 16, i64 5693, i64 5694, i64 5695, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.322 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.323 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.324 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.325 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.326 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.327 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.328 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 468, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 472, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 473, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 494, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 498, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 499, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 752, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 801, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 810, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 820, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 961, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1039, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1047, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [16 x i8] c"bnx2x_dcbnl_ops\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2553, i32 29 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 630, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 634, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 642, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 433, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 659, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 662, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 670, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 131, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 134, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 137, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 141, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 146, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 148, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 150, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 153, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 155, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 157, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 160, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 163, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 166, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 201, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 204, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 207, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 256, i32 5 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 262, i32 5 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 267, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 330, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 333, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 341, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 286, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 289, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 302, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 317, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1843, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1156, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1765, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1804, i32 5 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1811, i32 6 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1817, i32 6 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1823, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1826, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1711, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1455, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1662, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1614, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1349, i32 5 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1226, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 365, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant [51 x i8] c"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.801, i32 1361, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 734, i32 5 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 579, i32 5 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 588, i32 5 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 600, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 511, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 524, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 560, i32 4 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 901, i32 4 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 909, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1080, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1082, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1087, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1091, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1095, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1099, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1105, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1109, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1943, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1950, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1955, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1967, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 1984, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2009, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2023, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2030, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2038, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2064, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2079, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2088, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2097, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2114, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2128, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2135, i32 7 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2144, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2181, i32 4 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2186, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2190, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2199, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2212, i32 4 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2217, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2227, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2234, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2245, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2340, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2344, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2354, i32 3 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2324, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2406, i32 2 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2435, i32 4 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2440, i32 3 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2453, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2476, i32 4 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2481, i32 3 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2376, i32 2 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2381, i32 3 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2387, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2494, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1212 = private constant [51 x i8] c"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1212, i32 2513, i32 2 }
@llvm.compiler.used = appending global [414 x ptr] [ptr @bnx2x_dcbnl_get_cap._entry, ptr @bnx2x_dcbnl_get_cap._entry.253, ptr @bnx2x_dcbnl_get_cap._entry.256, ptr @bnx2x_dcbnl_get_cap._entry_ptr, ptr @bnx2x_dcbnl_get_cap._entry_ptr.255, ptr @bnx2x_dcbnl_get_cap._entry_ptr.258, ptr @bnx2x_dcbnl_get_featcfg._entry, ptr @bnx2x_dcbnl_get_featcfg._entry.282, ptr @bnx2x_dcbnl_get_featcfg._entry.285, ptr @bnx2x_dcbnl_get_featcfg._entry_ptr, ptr @bnx2x_dcbnl_get_featcfg._entry_ptr.284, ptr @bnx2x_dcbnl_get_featcfg._entry_ptr.286, ptr @bnx2x_dcbnl_get_numtcs._entry, ptr @bnx2x_dcbnl_get_numtcs._entry.261, ptr @bnx2x_dcbnl_get_numtcs._entry.264, ptr @bnx2x_dcbnl_get_numtcs._entry_ptr, ptr @bnx2x_dcbnl_get_numtcs._entry_ptr.263, ptr @bnx2x_dcbnl_get_numtcs._entry_ptr.265, ptr @bnx2x_dcbnl_get_perm_hw_addr._entry, ptr @bnx2x_dcbnl_get_perm_hw_addr._entry_ptr, ptr @bnx2x_dcbnl_get_pfc_cfg._entry, ptr @bnx2x_dcbnl_get_pfc_cfg._entry_ptr, ptr @bnx2x_dcbnl_get_pfc_state._entry, ptr @bnx2x_dcbnl_get_pfc_state._entry_ptr, ptr @bnx2x_dcbnl_get_pg_bwgcfg_rx._entry, ptr @bnx2x_dcbnl_get_pg_bwgcfg_rx._entry_ptr, ptr @bnx2x_dcbnl_get_pg_bwgcfg_tx._entry, ptr @bnx2x_dcbnl_get_pg_bwgcfg_tx._entry_ptr, ptr @bnx2x_dcbnl_get_pg_tccfg_rx._entry, ptr @bnx2x_dcbnl_get_pg_tccfg_rx._entry_ptr, ptr @bnx2x_dcbnl_get_pg_tccfg_tx._entry, ptr @bnx2x_dcbnl_get_pg_tccfg_tx._entry_ptr, ptr @bnx2x_dcbnl_get_state._entry, ptr @bnx2x_dcbnl_get_state._entry_ptr, ptr @bnx2x_dcbnl_set_all._entry, ptr @bnx2x_dcbnl_set_all._entry.248, ptr @bnx2x_dcbnl_set_all._entry_ptr, ptr @bnx2x_dcbnl_set_all._entry_ptr.250, ptr @bnx2x_dcbnl_set_app_up._entry, ptr @bnx2x_dcbnl_set_app_up._entry.272, ptr @bnx2x_dcbnl_set_app_up._entry.275, ptr @bnx2x_dcbnl_set_app_up._entry_ptr, ptr @bnx2x_dcbnl_set_app_up._entry_ptr.274, ptr @bnx2x_dcbnl_set_app_up._entry_ptr.277, ptr @bnx2x_dcbnl_set_dcbx._entry, ptr @bnx2x_dcbnl_set_dcbx._entry.295, ptr @bnx2x_dcbnl_set_dcbx._entry.298, ptr @bnx2x_dcbnl_set_dcbx._entry_ptr, ptr @bnx2x_dcbnl_set_dcbx._entry_ptr.297, ptr @bnx2x_dcbnl_set_dcbx._entry_ptr.300, ptr @bnx2x_dcbnl_set_featcfg._entry, ptr @bnx2x_dcbnl_set_featcfg._entry.289, ptr @bnx2x_dcbnl_set_featcfg._entry.291, ptr @bnx2x_dcbnl_set_featcfg._entry_ptr, ptr @bnx2x_dcbnl_set_featcfg._entry_ptr.290, ptr @bnx2x_dcbnl_set_featcfg._entry_ptr.292, ptr @bnx2x_dcbnl_set_numtcs._entry, ptr @bnx2x_dcbnl_set_numtcs._entry_ptr, ptr @bnx2x_dcbnl_set_pfc_cfg._entry, ptr @bnx2x_dcbnl_set_pfc_cfg._entry_ptr, ptr @bnx2x_dcbnl_set_pfc_state._entry, ptr @bnx2x_dcbnl_set_pfc_state._entry_ptr, ptr @bnx2x_dcbnl_set_pg_bwgcfg_rx._entry, ptr @bnx2x_dcbnl_set_pg_bwgcfg_rx._entry_ptr, ptr @bnx2x_dcbnl_set_pg_bwgcfg_tx._entry, ptr @bnx2x_dcbnl_set_pg_bwgcfg_tx._entry_ptr, ptr @bnx2x_dcbnl_set_pg_tccfg_rx._entry, ptr @bnx2x_dcbnl_set_pg_tccfg_rx._entry_ptr, ptr @bnx2x_dcbnl_set_pg_tccfg_tx._entry, ptr @bnx2x_dcbnl_set_pg_tccfg_tx._entry_ptr, ptr @bnx2x_dcbnl_set_state._entry, ptr @bnx2x_dcbnl_set_state._entry.224, ptr @bnx2x_dcbnl_set_state._entry_ptr, ptr @bnx2x_dcbnl_set_state._entry_ptr.226, ptr @bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry, ptr @bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry_ptr, ptr @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry, ptr @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry_ptr, ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry, ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.184, ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.187, ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr, ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr.186, ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr.189, ptr @bnx2x_dcbx_admin_mib_updated_params._entry, ptr @bnx2x_dcbx_admin_mib_updated_params._entry.192, ptr @bnx2x_dcbx_admin_mib_updated_params._entry_ptr, ptr @bnx2x_dcbx_admin_mib_updated_params._entry_ptr.194, ptr @bnx2x_dcbx_cee_fill_cos_params._entry, ptr @bnx2x_dcbx_cee_fill_cos_params._entry_ptr, ptr @bnx2x_dcbx_fill_cos_params._entry, ptr @bnx2x_dcbx_fill_cos_params._entry.141, ptr @bnx2x_dcbx_fill_cos_params._entry.144, ptr @bnx2x_dcbx_fill_cos_params._entry.147, ptr @bnx2x_dcbx_fill_cos_params._entry.150, ptr @bnx2x_dcbx_fill_cos_params._entry.153, ptr @bnx2x_dcbx_fill_cos_params._entry_ptr, ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.143, ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.146, ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.149, ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.152, ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.155, ptr @bnx2x_dcbx_get_ap_feature._entry, ptr @bnx2x_dcbx_get_ap_feature._entry.102, ptr @bnx2x_dcbx_get_ap_feature._entry.105, ptr @bnx2x_dcbx_get_ap_feature._entry.108, ptr @bnx2x_dcbx_get_ap_feature._entry.111, ptr @bnx2x_dcbx_get_ap_feature._entry.99, ptr @bnx2x_dcbx_get_ap_feature._entry_ptr, ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.101, ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.104, ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.107, ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.110, ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.113, ptr @bnx2x_dcbx_get_ets_feature._entry, ptr @bnx2x_dcbx_get_ets_feature._entry.124, ptr @bnx2x_dcbx_get_ets_feature._entry.127, ptr @bnx2x_dcbx_get_ets_feature._entry.130, ptr @bnx2x_dcbx_get_ets_feature._entry_ptr, ptr @bnx2x_dcbx_get_ets_feature._entry_ptr.126, ptr @bnx2x_dcbx_get_ets_feature._entry_ptr.129, ptr @bnx2x_dcbx_get_ets_feature._entry_ptr.132, ptr @bnx2x_dcbx_get_ets_pri_pg_tbl._entry, ptr @bnx2x_dcbx_get_ets_pri_pg_tbl._entry_ptr, ptr @bnx2x_dcbx_get_num_pg_traf_type._entry, ptr @bnx2x_dcbx_get_num_pg_traf_type._entry_ptr, ptr @bnx2x_dcbx_get_pfc_feature._entry, ptr @bnx2x_dcbx_get_pfc_feature._entry.116, ptr @bnx2x_dcbx_get_pfc_feature._entry.119, ptr @bnx2x_dcbx_get_pfc_feature._entry_ptr, ptr @bnx2x_dcbx_get_pfc_feature._entry_ptr.118, ptr @bnx2x_dcbx_get_pfc_feature._entry_ptr.121, ptr @bnx2x_dcbx_init._entry, ptr @bnx2x_dcbx_init._entry.38, ptr @bnx2x_dcbx_init._entry_ptr, ptr @bnx2x_dcbx_init._entry_ptr.40, ptr @bnx2x_dcbx_join_pgs._entry, ptr @bnx2x_dcbx_join_pgs._entry_ptr, ptr @bnx2x_dcbx_map_nw._entry, ptr @bnx2x_dcbx_map_nw._entry_ptr, ptr @bnx2x_dcbx_print_cos_params._entry, ptr @bnx2x_dcbx_print_cos_params._entry.197, ptr @bnx2x_dcbx_print_cos_params._entry.200, ptr @bnx2x_dcbx_print_cos_params._entry.203, ptr @bnx2x_dcbx_print_cos_params._entry.206, ptr @bnx2x_dcbx_print_cos_params._entry.209, ptr @bnx2x_dcbx_print_cos_params._entry.212, ptr @bnx2x_dcbx_print_cos_params._entry.215, ptr @bnx2x_dcbx_print_cos_params._entry_ptr, ptr @bnx2x_dcbx_print_cos_params._entry_ptr.199, ptr @bnx2x_dcbx_print_cos_params._entry_ptr.202, ptr @bnx2x_dcbx_print_cos_params._entry_ptr.205, ptr @bnx2x_dcbx_print_cos_params._entry_ptr.208, ptr @bnx2x_dcbx_print_cos_params._entry_ptr.211, ptr @bnx2x_dcbx_print_cos_params._entry_ptr.214, ptr @bnx2x_dcbx_print_cos_params._entry_ptr.217, ptr @bnx2x_dcbx_read_mib._entry, ptr @bnx2x_dcbx_read_mib._entry_ptr, ptr @bnx2x_dcbx_read_shmem_neg_results._entry, ptr @bnx2x_dcbx_read_shmem_neg_results._entry.53, ptr @bnx2x_dcbx_read_shmem_neg_results._entry.56, ptr @bnx2x_dcbx_read_shmem_neg_results._entry_ptr, ptr @bnx2x_dcbx_read_shmem_neg_results._entry_ptr.55, ptr @bnx2x_dcbx_read_shmem_neg_results._entry_ptr.58, ptr @bnx2x_dcbx_read_shmem_remote_mib._entry, ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.43, ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.46, ptr @bnx2x_dcbx_read_shmem_remote_mib._entry_ptr, ptr @bnx2x_dcbx_read_shmem_remote_mib._entry_ptr.45, ptr @bnx2x_dcbx_read_shmem_remote_mib._entry_ptr.48, ptr @bnx2x_dcbx_resume_hw_tx._entry, ptr @bnx2x_dcbx_resume_hw_tx._entry.12, ptr @bnx2x_dcbx_resume_hw_tx._entry.15, ptr @bnx2x_dcbx_resume_hw_tx._entry_ptr, ptr @bnx2x_dcbx_resume_hw_tx._entry_ptr.14, ptr @bnx2x_dcbx_resume_hw_tx._entry_ptr.16, ptr @bnx2x_dcbx_separate_pauseable_from_non._entry, ptr @bnx2x_dcbx_separate_pauseable_from_non._entry_ptr, ptr @bnx2x_dcbx_set_params._entry, ptr @bnx2x_dcbx_set_params._entry.19, ptr @bnx2x_dcbx_set_params._entry.22, ptr @bnx2x_dcbx_set_params._entry.25, ptr @bnx2x_dcbx_set_params._entry_ptr, ptr @bnx2x_dcbx_set_params._entry_ptr.21, ptr @bnx2x_dcbx_set_params._entry_ptr.24, ptr @bnx2x_dcbx_set_params._entry_ptr.27, ptr @bnx2x_dcbx_set_state._entry, ptr @bnx2x_dcbx_set_state._entry_ptr, ptr @bnx2x_dcbx_spread_strict_pri._entry, ptr @bnx2x_dcbx_spread_strict_pri._entry_ptr, ptr @bnx2x_dcbx_stop_hw_tx._entry, ptr @bnx2x_dcbx_stop_hw_tx._entry.4, ptr @bnx2x_dcbx_stop_hw_tx._entry.7, ptr @bnx2x_dcbx_stop_hw_tx._entry_ptr, ptr @bnx2x_dcbx_stop_hw_tx._entry_ptr.6, ptr @bnx2x_dcbx_stop_hw_tx._entry_ptr.9, ptr @bnx2x_dcbx_update_ets_config._entry, ptr @bnx2x_dcbx_update_ets_config._entry.177, ptr @bnx2x_dcbx_update_ets_config._entry.179, ptr @bnx2x_dcbx_update_ets_config._entry_ptr, ptr @bnx2x_dcbx_update_ets_config._entry_ptr.178, ptr @bnx2x_dcbx_update_ets_config._entry_ptr.181, ptr @bnx2x_dcbx_update_tc_mapping._entry, ptr @bnx2x_dcbx_update_tc_mapping._entry_ptr, ptr @bnx2x_dump_dcbx_drv_param._entry, ptr @bnx2x_dump_dcbx_drv_param._entry.61, ptr @bnx2x_dump_dcbx_drv_param._entry.64, ptr @bnx2x_dump_dcbx_drv_param._entry.67, ptr @bnx2x_dump_dcbx_drv_param._entry.70, ptr @bnx2x_dump_dcbx_drv_param._entry.73, ptr @bnx2x_dump_dcbx_drv_param._entry.76, ptr @bnx2x_dump_dcbx_drv_param._entry.79, ptr @bnx2x_dump_dcbx_drv_param._entry.82, ptr @bnx2x_dump_dcbx_drv_param._entry.85, ptr @bnx2x_dump_dcbx_drv_param._entry.88, ptr @bnx2x_dump_dcbx_drv_param._entry.91, ptr @bnx2x_dump_dcbx_drv_param._entry.94, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.63, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.66, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.69, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.72, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.75, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.78, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.81, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.84, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.87, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.90, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.93, ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.96, ptr @bnx2x_peer_appinfo._entry, ptr @bnx2x_peer_appinfo._entry_ptr, ptr @bnx2x_peer_apptable._entry, ptr @bnx2x_peer_apptable._entry_ptr, ptr @bnx2x_set_admin_app_up._entry, ptr @bnx2x_set_admin_app_up._entry_ptr, ptr @bnx2x_update_drv_flags._entry, ptr @bnx2x_update_drv_flags._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @bnx2x_dcbnl_ops, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.249, ptr @.str.251, ptr @.str.252, ptr @.str.254, ptr @.str.257, ptr @.str.259, ptr @.str.260, ptr @.str.262, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.273, ptr @.str.276, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.283, ptr @.str.287, ptr @.str.288, ptr @.str.293, ptr @.str.294, ptr @.str.296, ptr @.str.299, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304], section "llvm.metadata"
@0 = internal global [295 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_stop_hw_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_stop_hw_tx._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_stop_hw_tx._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_resume_hw_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_resume_hw_tx._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_resume_hw_tx._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_set_params._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_set_params._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_set_params._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_read_shmem_remote_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_read_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_read_shmem_neg_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_read_shmem_neg_results._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_read_shmem_neg_results._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dump_dcbx_drv_param._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ap_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ap_feature._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ap_feature._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ap_feature._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ap_feature._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ap_feature._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_pfc_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_pfc_feature._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_pfc_feature._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ets_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ets_feature._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ets_feature._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ets_feature._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_ets_pri_pg_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_get_num_pg_traf_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_fill_cos_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_fill_cos_params._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_fill_cos_params._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_fill_cos_params._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_fill_cos_params._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_fill_cos_params._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_cee_fill_cos_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_join_pgs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_spread_strict_pri._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_separate_pauseable_from_non._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_map_nw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_update_drv_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_update_tc_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_update_ets_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_update_ets_config._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_update_ets_config._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_admin_mib_updated_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_admin_mib_updated_params._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbx_print_cos_params._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_state._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_perm_hw_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_pg_tccfg_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_pg_bwgcfg_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_pg_tccfg_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_pg_bwgcfg_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_pg_tccfg_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_pg_bwgcfg_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_pg_tccfg_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_pg_bwgcfg_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_pfc_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_pfc_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_all._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_cap._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_cap._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_numtcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_numtcs._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_numtcs._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_numtcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_pfc_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_pfc_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_app_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_app_up._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_app_up._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_admin_app_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_featcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_featcfg._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_get_featcfg._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_featcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_featcfg._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_featcfg._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_dcbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_dcbx._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dcbnl_set_dcbx._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_peer_appinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_peer_apptable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_dcbx_stop_hw_tx(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %func_params = alloca %struct.bnx2x_func_state_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %func_params) #10
  %0 = getelementptr inbounds i8, ptr %func_params, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %func_obj = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 183
  %2 = ptrtoint ptr %func_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func_obj, ptr %func_params, align 8
  %cmd = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %cmd, align 4
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 2
  %4 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 132, ptr %ramrod_flags, align 8
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 468, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call9 = call i32 @bnx2x_func_state_change(ptr noundef %bp, ptr noundef nonnull %func_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end8.if.end49_crit_edge, label %do.end15

do.end8.if.end49_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %9 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev17, align 4
  %tobool18.not = icmp eq ptr %10, null
  %spec.select63 = select i1 %tobool18.not, ptr @.str.3, ptr %10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 472, ptr noundef nonnull %spec.select63) #13
  %panic = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 47
  %11 = ptrtoint ptr %panic to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %panic, align 4
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  %tobool36.not = icmp eq ptr %13, null
  %cond43 = select i1 %tobool36.not, ptr @.str.3, ptr %13
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 473, ptr noundef nonnull %cond43) #13
  call void @bnx2x_panic_dump(ptr noundef %bp, i1 noundef zeroext false) #10
  br label %if.end49

if.end49:                                         ; preds = %do.end15, %do.end8.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %func_params) #10
  ret i32 %call9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_func_state_change(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_panic_dump(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_dcbx_resume_hw_tx(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %func_params = alloca %struct.bnx2x_func_state_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %func_params) #10
  %0 = getelementptr inbounds i8, ptr %func_params, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %params = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3
  %func_obj = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 183
  %2 = ptrtoint ptr %func_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func_obj, ptr %func_params, align 8
  %cmd = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %cmd, align 4
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 2
  %4 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 132, ptr %ramrod_flags, align 8
  %traffic_type_priority.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1
  %shmem2_base.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %5 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shmem2_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.land.end.i_crit_edge, label %land.lhs.true.i

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %entry
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %7 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 %6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !545
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !546
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %10)
  %cmp.i = icmp ugt i32 %10, 188
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regview.i, align 8
  %13 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shmem2_base.i, align 4
  %add9.i = add i32 %14, 188
  %add.ptr10.i = getelementptr i8, ptr %12, i32 %add9.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !547
  %16 = and i32 %15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.i = icmp ne i32 %16, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %entry.land.end.i_crit_edge
  %17 = phi i1 [ false, %land.lhs.true.i.land.end.i_crit_edge ], [ false, %entry.land.end.i_crit_edge ], [ %tobool14.i, %land.rhs.i ]
  %18 = call ptr @memset(ptr %params, i32 0, i32 44)
  %dcbx_error.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 188
  %19 = ptrtoint ptr %dcbx_error.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dcbx_error.i, align 4
  %and15.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %brmerge.i = select i1 %tobool16.not.i, i1 true, i1 %17
  br i1 %brmerge.i, label %if.end.i, label %land.end.i.bnx2x_dcbx_fw_struct.exit_crit_edge

land.end.i.bnx2x_dcbx_fw_struct.exit_crit_edge:   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_fw_struct.exit

if.end.i:                                         ; preds = %land.end.i
  %dcb_version.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 177
  %21 = ptrtoint ptr %dcb_version.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dcb_version.i, align 8
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %dcb_version.i, align 8
  %conv.i = trunc i32 %inc.i to i8
  %dcb_version20.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 17
  %23 = ptrtoint ptr %dcb_version20.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %dcb_version20.i, align 1
  %dcb_enabled.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 16
  %24 = ptrtoint ptr %dcb_enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %dcb_enabled.i, align 8
  %num_of_cos.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 1
  %25 = ptrtoint ptr %traffic_type_priority.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %traffic_type_priority.i, align 4
  %conv24.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv24.i, ptr %params, align 8
  %28 = ptrtoint ptr %num_of_cos.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_of_cos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp3694.not.i = icmp eq i8 %29, 0
  br i1 %cmp3694.not.i, label %for.end.1.i.thread, label %for.body38.lr.ph.i

for.body38.lr.ph.i:                               ; preds = %if.end.i
  %conv30.i = and i32 %26, 255
  %shl.i = shl nuw i32 1, %conv30.i
  %conv43.i = and i32 %shl.i, 65535
  %cos49.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 0, i32 1
  %30 = zext i8 %29 to i32
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.inc.i.for.body38.i_crit_edge, %for.body38.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body38.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body38.i_crit_edge ]
  %pri_bitmask.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.i, i32 1
  %31 = ptrtoint ptr %pri_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pri_bitmask.i, align 4
  %and44.i = and i32 %conv43.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %for.body38.i.for.inc.i_crit_edge, label %if.then46.i

for.body38.i.for.inc.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then46.i:                                      ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = trunc i32 %indvars.iv.i to i8
  %34 = ptrtoint ptr %cos49.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %cos49.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then46.i, %for.body38.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next.i, %30
  br i1 %exitcond.not, label %for.body38.lr.ph.1.i, label %for.inc.i.for.body38.i_crit_edge

for.inc.i.for.body38.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i

for.body38.lr.ph.1.i:                             ; preds = %for.inc.i
  %arrayidx56.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 19
  %35 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv24.i, ptr %arrayidx56.i, align 1
  %arrayidx.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.1.i, align 4
  %conv24.1.i = trunc i32 %37 to i8
  %arrayidx26.1.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv24.1.i, ptr %arrayidx26.1.i, align 4
  %conv30.1.i = and i32 %37, 255
  %shl.1.i = shl nuw i32 1, %conv30.1.i
  %conv43.1.i = and i32 %shl.1.i, 65535
  %cos49.1.i = getelementptr inbounds %struct.priority_cos, ptr %params, i32 1, i32 1
  br label %for.body38.1.i

for.body38.1.i:                                   ; preds = %for.inc.1.i.for.body38.1.i_crit_edge, %for.body38.lr.ph.1.i
  %indvars.iv.1.i = phi i32 [ 0, %for.body38.lr.ph.1.i ], [ %indvars.iv.next.1.i, %for.inc.1.i.for.body38.1.i_crit_edge ]
  %pri_bitmask.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.1.i, i32 1
  %39 = ptrtoint ptr %pri_bitmask.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pri_bitmask.1.i, align 4
  %and44.1.i = and i32 %conv43.1.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.1.i)
  %tobool45.not.1.i = icmp eq i32 %and44.1.i, 0
  br i1 %tobool45.not.1.i, label %for.body38.1.i.for.inc.1.i_crit_edge, label %if.then46.1.i

for.body38.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body38.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then46.1.i:                                    ; preds = %for.body38.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = trunc i32 %indvars.iv.1.i to i8
  %42 = ptrtoint ptr %cos49.1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %cos49.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then46.1.i, %for.body38.1.i.for.inc.1.i_crit_edge
  %indvars.iv.next.1.i = add nuw nsw i32 %indvars.iv.1.i, 1
  %exitcond81.not = icmp eq i32 %indvars.iv.next.1.i, %30
  br i1 %exitcond81.not, label %for.body38.lr.ph.2.i, label %for.inc.1.i.for.body38.1.i_crit_edge

for.inc.1.i.for.body38.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.1.i

for.end.1.i.thread:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx56.i66 = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 19
  %43 = ptrtoint ptr %arrayidx56.i66 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv24.i, ptr %arrayidx56.i66, align 1
  %arrayidx.1.i67 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i67, align 4
  %conv24.1.i68 = trunc i32 %45 to i8
  %arrayidx26.1.i69 = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx26.1.i69 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv24.1.i68, ptr %arrayidx26.1.i69, align 4
  %arrayidx56.1.i74 = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 20
  %47 = ptrtoint ptr %arrayidx56.1.i74 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv24.1.i68, ptr %arrayidx56.1.i74, align 4
  %arrayidx.2.i75 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx.2.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.2.i75, align 4
  %conv24.2.i76 = trunc i32 %49 to i8
  %arrayidx26.2.i77 = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 0, i32 5
  %50 = ptrtoint ptr %arrayidx26.2.i77 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv24.2.i76, ptr %arrayidx26.2.i77, align 8
  br label %for.end.2.i

for.body38.lr.ph.2.i:                             ; preds = %for.inc.1.i
  %arrayidx56.1.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 20
  %51 = ptrtoint ptr %arrayidx56.1.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv24.1.i, ptr %arrayidx56.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 2
  %52 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.2.i, align 4
  %conv24.2.i = trunc i32 %53 to i8
  %arrayidx26.2.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv24.2.i, ptr %arrayidx26.2.i, align 8
  %conv30.2.i = and i32 %53, 255
  %shl.2.i = shl nuw i32 1, %conv30.2.i
  %conv43.2.i = and i32 %shl.2.i, 65535
  %cos49.2.i = getelementptr inbounds %struct.priority_cos, ptr %params, i32 2, i32 1
  br label %for.body38.2.i

for.body38.2.i:                                   ; preds = %for.inc.2.i.for.body38.2.i_crit_edge, %for.body38.lr.ph.2.i
  %indvars.iv.2.i = phi i32 [ 0, %for.body38.lr.ph.2.i ], [ %indvars.iv.next.2.i, %for.inc.2.i.for.body38.2.i_crit_edge ]
  %pri_bitmask.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.2.i, i32 1
  %55 = ptrtoint ptr %pri_bitmask.2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pri_bitmask.2.i, align 4
  %and44.2.i = and i32 %conv43.2.i, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.2.i)
  %tobool45.not.2.i = icmp eq i32 %and44.2.i, 0
  br i1 %tobool45.not.2.i, label %for.body38.2.i.for.inc.2.i_crit_edge, label %if.then46.2.i

for.body38.2.i.for.inc.2.i_crit_edge:             ; preds = %for.body38.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then46.2.i:                                    ; preds = %for.body38.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = trunc i32 %indvars.iv.2.i to i8
  %58 = ptrtoint ptr %cos49.2.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %cos49.2.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then46.2.i, %for.body38.2.i.for.inc.2.i_crit_edge
  %indvars.iv.next.2.i = add nuw nsw i32 %indvars.iv.2.i, 1
  %exitcond82.not = icmp eq i32 %indvars.iv.next.2.i, %30
  br i1 %exitcond82.not, label %for.inc.2.i.for.end.2.i_crit_edge, label %for.inc.2.i.for.body38.2.i_crit_edge

for.inc.2.i.for.body38.2.i_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.2.i

for.inc.2.i.for.end.2.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.2.i

for.end.2.i:                                      ; preds = %for.inc.2.i.for.end.2.i_crit_edge, %for.end.1.i.thread
  %arrayidx26.2.i80 = phi ptr [ %arrayidx26.2.i77, %for.end.1.i.thread ], [ %arrayidx26.2.i, %for.inc.2.i.for.end.2.i_crit_edge ]
  %conv24.2.i79 = phi i8 [ %conv24.2.i76, %for.end.1.i.thread ], [ %conv24.2.i, %for.inc.2.i.for.end.2.i_crit_edge ]
  %arrayidx26.1.i7178 = phi ptr [ %arrayidx26.1.i69, %for.end.1.i.thread ], [ %arrayidx26.1.i, %for.inc.2.i.for.end.2.i_crit_edge ]
  %arrayidx56.2.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 21
  %59 = ptrtoint ptr %arrayidx56.2.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv24.2.i79, ptr %arrayidx56.2.i, align 1
  %dont_add_pri_0_en.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 1, i32 18
  %60 = ptrtoint ptr %dont_add_pri_0_en.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %dont_add_pri_0_en.i, align 2
  %msg_enable.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %61 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %62, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.2.i.do.body8.i.i_crit_edge, label %do.end.i.i, !prof !544

for.end.2.i.do.body8.i.i_crit_edge:               ; preds = %for.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.i.i

do.end.i.i:                                       ; preds = %for.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %63 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %64, null
  %spec.select.i.i = select i1 %tobool4.not.i.i, ptr @.str.3, ptr %64
  %65 = ptrtoint ptr %dcb_version20.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dcb_version20.i, align 1
  %conv.i.i = zext i8 %66 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef 1081, ptr noundef nonnull %spec.select.i.i, i32 noundef %conv.i.i) #13
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %do.end.i.i, %for.end.2.i.do.body8.i.i_crit_edge
  %67 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_enable.i.i, align 8
  %and10.i.i = and i32 %68, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %do.body8.i.i.do.end35.i.i_crit_edge, label %do.end21.i.i, !prof !544

do.body8.i.i.do.end35.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35.i.i

do.end21.i.i:                                     ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev23.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %69 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev23.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %70, null
  %spec.select301.i.i = select i1 %tobool24.not.i.i, ptr @.str.3, ptr %70
  %priority_non_pauseable_mask.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 0, i32 1
  %71 = ptrtoint ptr %priority_non_pauseable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %priority_non_pauseable_mask.i.i, align 4
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.196, i32 noundef 1084, ptr noundef nonnull %spec.select301.i.i, i32 noundef %72) #13
  br label %do.end35.i.i

do.end35.i.i:                                     ; preds = %do.end21.i.i, %do.body8.i.i.do.end35.i.i_crit_edge
  %73 = ptrtoint ptr %num_of_cos.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_of_cos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp308.not.i.i = icmp eq i8 %74, 0
  br i1 %cmp308.not.i.i, label %do.end35.i.i.for.cond175.preheader.i.i_crit_edge, label %do.body40.lr.ph.i.i

do.end35.i.i.for.cond175.preheader.i.i_crit_edge: ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond175.preheader.i.i

do.body40.lr.ph.i.i:                              ; preds = %do.end35.i.i
  %dev55.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %do.body40.i.i

for.cond175.preheader.i.i:                        ; preds = %for.inc.i.i.for.cond175.preheader.i.i_crit_edge, %do.end35.i.i.for.cond175.preheader.i.i_crit_edge
  %dev195.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %75 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable.i.i, align 8
  %and182.i.i = and i32 %76, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i.i)
  %tobool183.not.i.i = icmp eq i32 %and182.i.i, 0
  br i1 %tobool183.not.i.i, label %for.cond175.preheader.i.i.do.body212.i.i_crit_edge, label %do.end193.i.i, !prof !544

for.cond175.preheader.i.i.do.body212.i.i_crit_edge: ; preds = %for.cond175.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212.i.i

do.body40.i.i:                                    ; preds = %for.inc.i.i.do.body40.i.i_crit_edge, %do.body40.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %do.body40.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.do.body40.i.i_crit_edge ]
  %77 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable.i.i, align 8
  %and42.i.i = and i32 %78, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp eq i32 %and42.i.i, 0
  br i1 %tobool43.not.i.i, label %do.body40.i.i.do.body71.i.i_crit_edge, label %do.end53.i.i, !prof !544

do.body40.i.i.do.body71.i.i_crit_edge:            ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body71.i.i

do.end53.i.i:                                     ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %dev55.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev55.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %80, null
  %spec.select302.i.i = select i1 %tobool56.not.i.i, ptr @.str.3, ptr %80
  %pri_bitmask.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.i.i, i32 1
  %81 = ptrtoint ptr %pri_bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pri_bitmask.i.i, align 4
  %call67.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.196, i32 noundef 1089, ptr noundef nonnull %spec.select302.i.i, i32 noundef %indvars.iv.i.i, i32 noundef %82) #13
  br label %do.body71.i.i

do.body71.i.i:                                    ; preds = %do.end53.i.i, %do.body40.i.i.do.body71.i.i_crit_edge
  %83 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msg_enable.i.i, align 8
  %and73.i.i = and i32 %84, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  br i1 %tobool74.not.i.i, label %do.body71.i.i.do.body105.i.i_crit_edge, label %do.end84.i.i, !prof !544

do.body71.i.i.do.body105.i.i_crit_edge:           ; preds = %do.body71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105.i.i

do.end84.i.i:                                     ; preds = %do.body71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %dev55.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev55.i.i, align 4
  %tobool87.not.i.i = icmp eq ptr %86, null
  %spec.select303.i.i = select i1 %tobool87.not.i.i, ptr @.str.3, ptr %86
  %arrayidx100.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.i.i
  %87 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx100.i.i, align 4
  %call101.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.196, i32 noundef 1093, ptr noundef nonnull %spec.select303.i.i, i32 noundef %indvars.iv.i.i, i32 noundef %88) #13
  br label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end84.i.i, %do.body71.i.i.do.body105.i.i_crit_edge
  %89 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable.i.i, align 8
  %and107.i.i = and i32 %90, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i.i)
  %tobool108.not.i.i = icmp eq i32 %and107.i.i, 0
  br i1 %tobool108.not.i.i, label %do.body105.i.i.do.body140.i.i_crit_edge, label %do.end118.i.i, !prof !544

do.body105.i.i.do.body140.i.i_crit_edge:          ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body140.i.i

do.end118.i.i:                                    ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %dev55.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev55.i.i, align 4
  %tobool121.not.i.i = icmp eq ptr %92, null
  %spec.select304.i.i = select i1 %tobool121.not.i.i, ptr @.str.3, ptr %92
  %strict.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.i.i, i32 2
  %93 = ptrtoint ptr %strict.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %strict.i.i, align 4
  %conv135.i.i = zext i8 %94 to i32
  %call136.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.196, i32 noundef 1097, ptr noundef nonnull %spec.select304.i.i, i32 noundef %indvars.iv.i.i, i32 noundef %conv135.i.i) #13
  br label %do.body140.i.i

do.body140.i.i:                                   ; preds = %do.end118.i.i, %do.body105.i.i.do.body140.i.i_crit_edge
  %95 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_enable.i.i, align 8
  %and142.i.i = and i32 %96, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i.i)
  %tobool143.not.i.i = icmp eq i32 %and142.i.i, 0
  br i1 %tobool143.not.i.i, label %do.body140.i.i.for.inc.i.i_crit_edge, label %do.end153.i.i, !prof !544

do.body140.i.i.for.inc.i.i_crit_edge:             ; preds = %do.body140.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

do.end153.i.i:                                    ; preds = %do.body140.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %dev55.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev55.i.i, align 4
  %tobool156.not.i.i = icmp eq ptr %98, null
  %spec.select305.i.i = select i1 %tobool156.not.i.i, ptr @.str.3, ptr %98
  %pauseable.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.i.i, i32 3
  %99 = ptrtoint ptr %pauseable.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pauseable.i.i, align 1
  %conv170.i.i = zext i8 %100 to i32
  %call171.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.196, i32 noundef 1101, ptr noundef nonnull %spec.select305.i.i, i32 noundef %indvars.iv.i.i, i32 noundef %conv170.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end153.i.i, %do.body140.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %101 = ptrtoint ptr %num_of_cos.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_of_cos.i, align 4
  %103 = zext i8 %102 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %103
  br i1 %cmp.i.i, label %for.inc.i.i.do.body40.i.i_crit_edge, label %for.inc.i.i.for.cond175.preheader.i.i_crit_edge

for.inc.i.i.for.cond175.preheader.i.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond175.preheader.i.i

for.inc.i.i.do.body40.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40.i.i

do.end193.i.i:                                    ; preds = %for.cond175.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %dev195.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev195.i.i, align 4
  %tobool196.not.i.i = icmp eq ptr %105, null
  %spec.select306.i.i = select i1 %tobool196.not.i.i, ptr @.str.3, ptr %105
  %106 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %params, align 8
  %conv207.i.i = zext i8 %107 to i32
  %call208.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.196, i32 noundef 1107, ptr noundef nonnull %spec.select306.i.i, i32 noundef 0, i32 noundef %conv207.i.i) #13
  br label %do.body212.i.i

do.body212.i.i:                                   ; preds = %do.end193.i.i, %for.cond175.preheader.i.i.do.body212.i.i_crit_edge
  %108 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %msg_enable.i.i, align 8
  %and214.i.i = and i32 %109, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.i.i)
  %tobool215.not.i.i = icmp eq i32 %and214.i.i, 0
  br i1 %tobool215.not.i.i, label %do.body212.i.i.for.inc246.i.i_crit_edge, label %do.end225.i.i, !prof !544

do.body212.i.i.for.inc246.i.i_crit_edge:          ; preds = %do.body212.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc246.i.i

do.end225.i.i:                                    ; preds = %do.body212.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %dev195.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev195.i.i, align 4
  %tobool228.not.i.i = icmp eq ptr %111, null
  %spec.select307.i.i = select i1 %tobool228.not.i.i, ptr @.str.3, ptr %111
  %cos240.i.i = getelementptr inbounds %struct.bnx2x_func_state_params, ptr %func_params, i32 0, i32 3, i32 0, i32 1
  %112 = ptrtoint ptr %cos240.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %cos240.i.i, align 1
  %conv241.i.i = zext i8 %113 to i32
  %call242.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.196, i32 noundef 1111, ptr noundef nonnull %spec.select307.i.i, i32 noundef 0, i32 noundef %conv241.i.i) #13
  br label %for.inc246.i.i

for.inc246.i.i:                                   ; preds = %do.end225.i.i, %do.body212.i.i.for.inc246.i.i_crit_edge
  %114 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %msg_enable.i.i, align 8
  %and182.1.i.i = and i32 %115, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.1.i.i)
  %tobool183.not.1.i.i = icmp eq i32 %and182.1.i.i, 0
  br i1 %tobool183.not.1.i.i, label %for.inc246.i.i.do.body212.1.i.i_crit_edge, label %do.end193.1.i.i, !prof !544

for.inc246.i.i.do.body212.1.i.i_crit_edge:        ; preds = %for.inc246.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212.1.i.i

do.end193.1.i.i:                                  ; preds = %for.inc246.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %dev195.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev195.i.i, align 4
  %tobool196.not.1.i.i = icmp eq ptr %117, null
  %spec.select306.1.i.i = select i1 %tobool196.not.1.i.i, ptr @.str.3, ptr %117
  %118 = ptrtoint ptr %arrayidx26.1.i7178 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx26.1.i7178, align 2
  %conv207.1.i.i = zext i8 %119 to i32
  %call208.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.196, i32 noundef 1107, ptr noundef nonnull %spec.select306.1.i.i, i32 noundef 1, i32 noundef %conv207.1.i.i) #13
  br label %do.body212.1.i.i

do.body212.1.i.i:                                 ; preds = %do.end193.1.i.i, %for.inc246.i.i.do.body212.1.i.i_crit_edge
  %120 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %msg_enable.i.i, align 8
  %and214.1.i.i = and i32 %121, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.1.i.i)
  %tobool215.not.1.i.i = icmp eq i32 %and214.1.i.i, 0
  br i1 %tobool215.not.1.i.i, label %do.body212.1.i.i.for.inc246.1.i.i_crit_edge, label %do.end225.1.i.i, !prof !544

do.body212.1.i.i.for.inc246.1.i.i_crit_edge:      ; preds = %do.body212.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc246.1.i.i

do.end225.1.i.i:                                  ; preds = %do.body212.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %dev195.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev195.i.i, align 4
  %tobool228.not.1.i.i = icmp eq ptr %123, null
  %spec.select307.1.i.i = select i1 %tobool228.not.1.i.i, ptr @.str.3, ptr %123
  %cos240.1.i.i = getelementptr inbounds [8 x %struct.priority_cos], ptr %params, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %cos240.1.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %cos240.1.i.i, align 1
  %conv241.1.i.i = zext i8 %125 to i32
  %call242.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.196, i32 noundef 1111, ptr noundef nonnull %spec.select307.1.i.i, i32 noundef 1, i32 noundef %conv241.1.i.i) #13
  br label %for.inc246.1.i.i

for.inc246.1.i.i:                                 ; preds = %do.end225.1.i.i, %do.body212.1.i.i.for.inc246.1.i.i_crit_edge
  %126 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_enable.i.i, align 8
  %and182.2.i.i = and i32 %127, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.2.i.i)
  %tobool183.not.2.i.i = icmp eq i32 %and182.2.i.i, 0
  br i1 %tobool183.not.2.i.i, label %for.inc246.1.i.i.do.body212.2.i.i_crit_edge, label %do.end193.2.i.i, !prof !544

for.inc246.1.i.i.do.body212.2.i.i_crit_edge:      ; preds = %for.inc246.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212.2.i.i

do.end193.2.i.i:                                  ; preds = %for.inc246.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %dev195.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev195.i.i, align 4
  %tobool196.not.2.i.i = icmp eq ptr %129, null
  %spec.select306.2.i.i = select i1 %tobool196.not.2.i.i, ptr @.str.3, ptr %129
  %130 = ptrtoint ptr %arrayidx26.2.i80 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx26.2.i80, align 2
  %conv207.2.i.i = zext i8 %131 to i32
  %call208.2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.196, i32 noundef 1107, ptr noundef nonnull %spec.select306.2.i.i, i32 noundef 2, i32 noundef %conv207.2.i.i) #13
  br label %do.body212.2.i.i

do.body212.2.i.i:                                 ; preds = %do.end193.2.i.i, %for.inc246.1.i.i.do.body212.2.i.i_crit_edge
  %132 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %msg_enable.i.i, align 8
  %and214.2.i.i = and i32 %133, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.2.i.i)
  %tobool215.not.2.i.i = icmp eq i32 %and214.2.i.i, 0
  br i1 %tobool215.not.2.i.i, label %do.body212.2.i.i.bnx2x_dcbx_fw_struct.exit_crit_edge, label %do.end225.2.i.i, !prof !544

do.body212.2.i.i.bnx2x_dcbx_fw_struct.exit_crit_edge: ; preds = %do.body212.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_fw_struct.exit

do.end225.2.i.i:                                  ; preds = %do.body212.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %dev195.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev195.i.i, align 4
  %tobool228.not.2.i.i = icmp eq ptr %135, null
  %spec.select307.2.i.i = select i1 %tobool228.not.2.i.i, ptr @.str.3, ptr %135
  %cos240.2.i.i = getelementptr inbounds [8 x %struct.priority_cos], ptr %params, i32 0, i32 2, i32 1
  %136 = ptrtoint ptr %cos240.2.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cos240.2.i.i, align 1
  %conv241.2.i.i = zext i8 %137 to i32
  %call242.2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.196, i32 noundef 1111, ptr noundef nonnull %spec.select307.2.i.i, i32 noundef 2, i32 noundef %conv241.2.i.i) #13
  br label %bnx2x_dcbx_fw_struct.exit

bnx2x_dcbx_fw_struct.exit:                        ; preds = %do.end225.2.i.i, %do.body212.2.i.i.bnx2x_dcbx_fw_struct.exit_crit_edge, %land.end.i.bnx2x_dcbx_fw_struct.exit_crit_edge
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %138 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %msg_enable, align 8
  %and = and i32 %139, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %bnx2x_dcbx_fw_struct.exit.do.end8_crit_edge, label %do.end, !prof !544

bnx2x_dcbx_fw_struct.exit.do.end8_crit_edge:      ; preds = %bnx2x_dcbx_fw_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %bnx2x_dcbx_fw_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %140 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %141, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %141
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 494, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %bnx2x_dcbx_fw_struct.exit.do.end8_crit_edge
  %call9 = call i32 @bnx2x_func_state_change(ptr noundef %bp, ptr noundef nonnull %func_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end8.if.end49_crit_edge, label %do.end15

do.end8.if.end49_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %142 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev17, align 4
  %tobool18.not = icmp eq ptr %143, null
  %spec.select64 = select i1 %tobool18.not, ptr @.str.3, ptr %143
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 498, ptr noundef nonnull %spec.select64) #13
  %panic = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 47
  %144 = ptrtoint ptr %panic to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %panic, align 4
  %145 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev17, align 4
  %tobool36.not = icmp eq ptr %146, null
  %cond43 = select i1 %tobool36.not, ptr @.str.3, ptr %146
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef 499, ptr noundef nonnull %cond43) #13
  call void @bnx2x_panic_dump(ptr noundef %bp, i1 noundef zeroext false) #10
  br label %if.end49

if.end49:                                         ; preds = %do.end15, %do.end8.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %func_params) #10
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_dcbnl_update_applist(ptr nocapture noundef readonly %bp, i1 noundef zeroext %delall) local_unnamed_addr #0 align 64 {
entry:
  %app4 = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dcb_app, ptr %app4, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %app4, i32 0, i32 2
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024
  %appBitfield = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024, i32 2
  %2 = ptrtoint ptr %appBitfield to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %appBitfield, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.end11_crit_edge, label %if.then

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %for.body
  %pri_bitmap.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024, i32 1
  %5 = ptrtoint ptr %pri_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pri_bitmap.i, align 2
  %conv2.i = zext i8 %6 to i32
  %and.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.i:                                        ; preds = %if.then
  %and.1.i = and i32 %conv2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then3_crit_edge

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %conv2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.then3_crit_edge

for.inc.1.i.if.then3_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %conv2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.then3_crit_edge

for.inc.2.i.if.then3_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %conv2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.then3_crit_edge

for.inc.3.i.if.then3_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %conv2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %bnx2x_dcbx_dcbnl_app_up.exit, label %for.inc.4.i.if.then3_crit_edge

for.inc.4.i.if.then3_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

bnx2x_dcbx_dcbnl_app_up.exit:                     ; preds = %for.inc.4.i
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %bnx2x_dcbx_dcbnl_app_up.exit.if.end11_crit_edge, label %bnx2x_dcbx_dcbnl_app_up.exit.if.then3_crit_edge

bnx2x_dcbx_dcbnl_app_up.exit.if.then3_crit_edge:  ; preds = %bnx2x_dcbx_dcbnl_app_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

bnx2x_dcbx_dcbnl_app_up.exit.if.end11_crit_edge:  ; preds = %bnx2x_dcbx_dcbnl_app_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3:                                         ; preds = %bnx2x_dcbx_dcbnl_app_up.exit.if.then3_crit_edge, %for.inc.4.i.if.then3_crit_edge, %for.inc.3.i.if.then3_crit_edge, %for.inc.2.i.if.then3_crit_edge, %for.inc.1.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %pri.0.lcssa.i23 = phi i8 [ 1, %bnx2x_dcbx_dcbnl_app_up.exit.if.then3_crit_edge ], [ 2, %for.inc.4.i.if.then3_crit_edge ], [ 3, %for.inc.3.i.if.then3_crit_edge ], [ 4, %for.inc.2.i.if.then3_crit_edge ], [ 5, %for.inc.1.i.if.then3_crit_edge ], [ 6, %for.inc.i.if.then3_crit_edge ], [ 7, %if.then.if.then3_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app4) #10
  %8 = ptrtoint ptr %appBitfield to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %appBitfield, align 1
  %10 = and i8 %9, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp.i = icmp eq i8 %10, 32
  %conv2.i20 = zext i1 %cmp.i to i8
  %11 = ptrtoint ptr %app4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i20, ptr %app4, align 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %1, align 2
  %spec.select = select i1 %delall, i8 0, i8 %pri.0.lcssa.i23
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %0, align 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call10 = call i32 @dcb_setapp(ptr noundef %17, ptr noundef nonnull %app4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app4) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %bnx2x_dcbx_dcbnl_app_up.exit.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %err.2 = phi i32 [ 0, %for.body.if.end11_crit_edge ], [ %call10, %if.then3 ], [ 0, %bnx2x_dcbx_dcbnl_app_up.exit.if.end11_crit_edge ]
  %inc = add nuw nsw i32 %i.024, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.024)
  %cmp = icmp ult i32 %i.024, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp1 = icmp eq i32 %err.2, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end11.for.body_crit_edge, label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_setapp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_dcbx_set_params(ptr noundef %bp, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %ets_params.i.i = alloca %struct.bnx2x_ets_params, align 4
  %nig_params.i.i = alloca %struct.bnx2x_nig_brb_pfc_port_params, align 4
  %pfc_params.i.i = alloca %struct.bnx2x_nig_brb_pfc_port_params, align 4
  %app4.i144 = alloca %struct.dcb_app, align 2
  %remote_mib.i = alloca %struct.lldp_remote_mib, align 4
  %app4.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %do.end81 [
    i32 1, label %do.body
    i32 2, label %do.body23
    i32 3, label %do.body50
  ]

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable, align 8
  %and = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end, !prof !544

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 752, ptr noundef nonnull %spec.select) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %5 = getelementptr inbounds %struct.dcb_app, ptr %app4.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dcb_app, ptr %app4.i, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %do.end6
  %i.024.i = phi i32 [ 0, %do.end6 ], [ %inc.i, %if.end11.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i
  %appBitfield.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i, i32 2
  %7 = ptrtoint ptr %appBitfield.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %appBitfield.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.i.if.end11.i_crit_edge, label %if.then.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then.i:                                        ; preds = %for.body.i
  %pri_bitmap.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i, i32 1
  %10 = ptrtoint ptr %pri_bitmap.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pri_bitmap.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %if.then.i.if.end11.i_crit_edge, label %if.then3.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app4.i) #10
  %13 = and i8 %8, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp.i.i = icmp eq i8 %13, 32
  %conv2.i20.i = zext i1 %cmp.i.i to i8
  %14 = ptrtoint ptr %app4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2.i20.i, ptr %app4.i, align 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %6, align 2
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %5, align 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call10.i = call i32 @dcb_setapp(ptr noundef %20, ptr noundef nonnull %app4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app4.i) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then3.i, %if.then.i.if.end11.i_crit_edge, %for.body.i.if.end11.i_crit_edge
  %err.2.i = phi i32 [ 0, %for.body.i.if.end11.i_crit_edge ], [ %call10.i, %if.then3.i ], [ 0, %if.then.i.if.end11.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.024.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.024.i)
  %cmp.i = icmp ult i32 %i.024.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %cmp1.i = icmp eq i32 %err.2.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end11.i.for.body.i_crit_edge, label %bnx2x_dcbnl_update_applist.exit

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

bnx2x_dcbnl_update_applist.exit:                  ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %remote_mib.i) #10
  %21 = call ptr @memset(ptr %remote_mib.i, i32 0, i32 100)
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %22 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regview.i, align 8
  %shmem2_base.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %24 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shmem2_base.i, align 4
  %add.i = add i32 %25, 48
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add.i
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !545
  %27 = call i32 @llvm.bswap.i32(i32 %26) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !548
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i130 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i130, label %bnx2x_dcbnl_update_applist.exit.do.end10.i_crit_edge, label %do.end.i, !prof !544

bnx2x_dcbnl_update_applist.exit.do.end10.i_crit_edge: ; preds = %bnx2x_dcbnl_update_applist.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

do.end.i:                                         ; preds = %bnx2x_dcbnl_update_applist.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %tobool6.not.i = icmp eq ptr %31, null
  %spec.select.i = select i1 %tobool6.not.i, ptr @.str.3, ptr %31
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 631, ptr noundef nonnull %spec.select.i, i32 noundef %27) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %bnx2x_dcbnl_update_applist.exit.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i132 = icmp eq i32 %26, 0
  br i1 %cmp.i132, label %do.end15.i, label %if.end29.i

do.end15.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %tobool18.not.i = icmp eq ptr %33, null
  %spec.select70.i = select i1 %tobool18.not.i, ptr @.str.3, ptr %33
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef 634, ptr noundef nonnull %spec.select70.i) #13
  br label %bnx2x_dcbx_read_shmem_remote_mib.exit.thread

if.end29.i:                                       ; preds = %do.end10.i
  %pfid.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %34 = ptrtoint ptr %pfid.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pfid.i.i, align 1
  %36 = and i8 %35, 1
  %narrow.i.i = mul nuw nsw i8 %36, 100
  %mul.i.i = zext i8 %narrow.i.i to i32
  %add.i.i = add i32 %27, %mul.i.i
  %suffix_seq_num7.i.i = getelementptr inbounds %struct.lldp_remote_mib, ptr %remote_mib.i, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %bnx2x_read_data.exit.i.i.do.body.i.i_crit_edge, %if.end29.i
  %max_try_read.0.i.i = phi i32 [ 0, %if.end29.i ], [ %inc.i.i, %bnx2x_read_data.exit.i.i.do.body.i.i_crit_edge ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.body.i.i
  %buff.addr.08.i.i.i = phi ptr [ %remote_mib.i, %do.body.i.i ], [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %i.07.i.i.i = phi i32 [ 0, %do.body.i.i ], [ %add2.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %37 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regview.i, align 8
  %add.i.i.i = add i32 %add.i.i, %i.07.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %add.i.i.i
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !545
  %40 = call i32 @llvm.bswap.i32(i32 %39) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !549
  %41 = ptrtoint ptr %buff.addr.08.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %buff.addr.08.i.i.i, align 4
  %add2.i.i.i = add nuw nsw i32 %i.07.i.i.i, 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %buff.addr.08.i.i.i, i32 1
  %cmp.i.i.i = icmp ult i32 %i.07.i.i.i, 96
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %bnx2x_read_data.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

bnx2x_read_data.exit.i.i:                         ; preds = %for.body.i.i.i
  %inc.i.i = add nuw nsw i32 %max_try_read.0.i.i, 1
  %42 = ptrtoint ptr %suffix_seq_num7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %suffix_seq_num.0.i.i = load i32, ptr %suffix_seq_num7.i.i, align 4
  %43 = ptrtoint ptr %remote_mib.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %prefix_seq_num.0.i.i = load i32, ptr %remote_mib.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %prefix_seq_num.0.i.i, i32 %suffix_seq_num.0.i.i)
  %cmp.not.i.i = icmp ne i32 %prefix_seq_num.0.i.i, %suffix_seq_num.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %max_try_read.0.i.i)
  %cmp11.i.i = icmp ult i32 %max_try_read.0.i.i, 99
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp11.i.i, i1 false
  br i1 %or.cond.i.i, label %bnx2x_read_data.exit.i.i.do.body.i.i_crit_edge, label %do.end.i.i

bnx2x_read_data.exit.i.i.do.body.i.i_crit_edge:   ; preds = %bnx2x_read_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %bnx2x_read_data.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %max_try_read.0.i.i)
  %cmp13.i.i = icmp ugt i32 %max_try_read.0.i.i, 98
  br i1 %cmp13.i.i, label %do.end36.i, label %if.end11

do.end36.i:                                       ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i133 = icmp eq ptr %45, null
  %spec.select.i.i = select i1 %tobool.not.i.i133, ptr @.str.3, ptr %45
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 433, ptr noundef nonnull %spec.select.i.i) #13
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %tobool39.not.i = icmp eq ptr %47, null
  %spec.select71.i = select i1 %tobool39.not.i, ptr @.str.3, ptr %47
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.42, i32 noundef 642, ptr noundef nonnull %spec.select71.i) #13
  br label %bnx2x_dcbx_read_shmem_remote_mib.exit.thread

bnx2x_dcbx_read_shmem_remote_mib.exit.thread:     ; preds = %do.end36.i, %do.end15.i
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %remote_mib.i) #10
  br label %sw.epilog

if.end11:                                         ; preds = %do.end.i.i
  %dcbx_remote_feat.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 189
  %features.i = getelementptr inbounds %struct.lldp_remote_mib, ptr %remote_mib.i, i32 0, i32 2
  %48 = call ptr @memcpy(ptr %dcbx_remote_feat.i, ptr %features.i, i32 88)
  %flags.i = getelementptr inbounds %struct.lldp_remote_mib, ptr %remote_mib.i, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %dcbx_remote_flags.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 190
  %51 = ptrtoint ptr %dcbx_remote_flags.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %dcbx_remote_flags.i, align 8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %remote_mib.i) #10
  %call12 = call fastcc i32 @bnx2x_dcbx_read_shmem_neg_results(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end15:                                         ; preds = %if.end11
  %dcbx_local_feat = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 187
  %dcbx_error = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 188
  %52 = ptrtoint ptr %dcbx_error to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dcbx_error, align 4
  call fastcc void @bnx2x_dump_dcbx_drv_param(ptr noundef %bp, ptr noundef %dcbx_local_feat, i32 noundef %53)
  %54 = ptrtoint ptr %dcbx_error to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dcbx_error, align 4
  call fastcc void @bnx2x_get_dcbx_drv_param(ptr noundef %bp, ptr noundef %dcbx_local_feat, i32 noundef %55)
  %56 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %shmem2_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i135 = icmp eq i32 %57, 0
  br i1 %tobool.not.i135, label %if.end15.bnx2x_update_drv_flags.exit_crit_edge, label %land.lhs.true.i

if.end15.bnx2x_update_drv_flags.exit_crit_edge:   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_update_drv_flags.exit

land.lhs.true.i:                                  ; preds = %if.end15
  %58 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regview.i, align 8
  %add.ptr.i137 = getelementptr i8, ptr %59, i32 %57
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #10, !srcloc !545
  %61 = call i32 @llvm.bswap.i32(i32 %60) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !550
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %61)
  %cmp.i138 = icmp ugt i32 %61, 188
  br i1 %cmp.i138, label %if.then.i141, label %land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge

land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_update_drv_flags.exit

if.then.i141:                                     ; preds = %land.lhs.true.i
  %call4.i = call i32 @bnx2x_acquire_hw_lock(ptr noundef %bp, i32 noundef 10) #10
  %62 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regview.i, align 8
  %64 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %shmem2_base.i, align 4
  %add10.i = add i32 %65, 188
  %add.ptr11.i = getelementptr i8, ptr %63, i32 %add10.i
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #10, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !551
  %67 = or i32 %66, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !552
  call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regview.i, align 8
  %70 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %shmem2_base.i, align 4
  %add20.i = add i32 %71, 188
  %add.ptr21.i = getelementptr i8, ptr %69, i32 %add20.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %67) #10, !srcloc !553
  %72 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_enable, align 8
  %and23.i = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then.i141.do.end37.i_crit_edge, label %do.end30.i, !prof !544

if.then.i141.do.end37.i_crit_edge:                ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

do.end30.i:                                       ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #12
  %74 = call i32 @llvm.bswap.i32(i32 %67)
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %tobool32.not.i = icmp eq ptr %76, null
  %spec.select.i143 = select i1 %tobool32.not.i, ptr @.str.3, ptr %76
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, i32 noundef 1361, ptr noundef nonnull %spec.select.i143, i32 noundef %74) #13
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end30.i, %if.then.i141.do.end37.i_crit_edge
  %call38.i = call i32 @bnx2x_release_hw_lock(ptr noundef %bp, i32 noundef 10) #10
  br label %bnx2x_update_drv_flags.exit

bnx2x_update_drv_flags.exit:                      ; preds = %do.end37.i, %land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge, %if.end15.bnx2x_update_drv_flags.exit_crit_edge
  %77 = getelementptr inbounds %struct.dcb_app, ptr %app4.i144, i32 0, i32 1
  %78 = getelementptr inbounds %struct.dcb_app, ptr %app4.i144, i32 0, i32 2
  br label %for.body.i150

for.body.i150:                                    ; preds = %if.end11.i183.for.body.i150_crit_edge, %bnx2x_update_drv_flags.exit
  %i.024.i146 = phi i32 [ 0, %bnx2x_update_drv_flags.exit ], [ %inc.i179, %if.end11.i183.for.body.i150_crit_edge ]
  %arrayidx.i147 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i146
  %appBitfield.i148 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i146, i32 2
  %79 = ptrtoint ptr %appBitfield.i148 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %appBitfield.i148, align 1
  %81 = and i8 %80, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i149 = icmp eq i8 %81, 0
  br i1 %tobool.not.i149, label %for.body.i150.if.end11.i183_crit_edge, label %if.then.i155

for.body.i150.if.end11.i183_crit_edge:            ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i183

if.then.i155:                                     ; preds = %for.body.i150
  %pri_bitmap.i.i151 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i146, i32 1
  %82 = ptrtoint ptr %pri_bitmap.i.i151 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pri_bitmap.i.i151, align 2
  %conv2.i.i152 = zext i8 %83 to i32
  %and.i.i153 = and i32 %conv2.i.i152, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i153)
  %tobool.not.i.i154 = icmp eq i32 %and.i.i153, 0
  br i1 %tobool.not.i.i154, label %for.inc.i.i158, label %if.then.i155.if.then3.i177_crit_edge

if.then.i155.if.then3.i177_crit_edge:             ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i177

for.inc.i.i158:                                   ; preds = %if.then.i155
  %and.1.i.i156 = and i32 %conv2.i.i152, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i156)
  %tobool.not.1.i.i157 = icmp eq i32 %and.1.i.i156, 0
  br i1 %tobool.not.1.i.i157, label %for.inc.1.i.i161, label %for.inc.i.i158.if.then3.i177_crit_edge

for.inc.i.i158.if.then3.i177_crit_edge:           ; preds = %for.inc.i.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i177

for.inc.1.i.i161:                                 ; preds = %for.inc.i.i158
  %and.2.i.i159 = and i32 %conv2.i.i152, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i159)
  %tobool.not.2.i.i160 = icmp eq i32 %and.2.i.i159, 0
  br i1 %tobool.not.2.i.i160, label %for.inc.2.i.i164, label %for.inc.1.i.i161.if.then3.i177_crit_edge

for.inc.1.i.i161.if.then3.i177_crit_edge:         ; preds = %for.inc.1.i.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i177

for.inc.2.i.i164:                                 ; preds = %for.inc.1.i.i161
  %and.3.i.i162 = and i32 %conv2.i.i152, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i162)
  %tobool.not.3.i.i163 = icmp eq i32 %and.3.i.i162, 0
  br i1 %tobool.not.3.i.i163, label %for.inc.3.i.i167, label %for.inc.2.i.i164.if.then3.i177_crit_edge

for.inc.2.i.i164.if.then3.i177_crit_edge:         ; preds = %for.inc.2.i.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i177

for.inc.3.i.i167:                                 ; preds = %for.inc.2.i.i164
  %and.4.i.i165 = and i32 %conv2.i.i152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i165)
  %tobool.not.4.i.i166 = icmp eq i32 %and.4.i.i165, 0
  br i1 %tobool.not.4.i.i166, label %for.inc.4.i.i170, label %for.inc.3.i.i167.if.then3.i177_crit_edge

for.inc.3.i.i167.if.then3.i177_crit_edge:         ; preds = %for.inc.3.i.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i177

for.inc.4.i.i170:                                 ; preds = %for.inc.3.i.i167
  %and.5.i.i168 = and i32 %conv2.i.i152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i168)
  %tobool.not.5.i.i169 = icmp eq i32 %and.5.i.i168, 0
  br i1 %tobool.not.5.i.i169, label %bnx2x_dcbx_dcbnl_app_up.exit.i172, label %for.inc.4.i.i170.if.then3.i177_crit_edge

for.inc.4.i.i170.if.then3.i177_crit_edge:         ; preds = %for.inc.4.i.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i177

bnx2x_dcbx_dcbnl_app_up.exit.i172:                ; preds = %for.inc.4.i.i170
  %84 = and i8 %83, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool2.not.i171 = icmp eq i8 %84, 0
  br i1 %tobool2.not.i171, label %bnx2x_dcbx_dcbnl_app_up.exit.i172.if.end11.i183_crit_edge, label %bnx2x_dcbx_dcbnl_app_up.exit.i172.if.then3.i177_crit_edge

bnx2x_dcbx_dcbnl_app_up.exit.i172.if.then3.i177_crit_edge: ; preds = %bnx2x_dcbx_dcbnl_app_up.exit.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i177

bnx2x_dcbx_dcbnl_app_up.exit.i172.if.end11.i183_crit_edge: ; preds = %bnx2x_dcbx_dcbnl_app_up.exit.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i183

if.then3.i177:                                    ; preds = %bnx2x_dcbx_dcbnl_app_up.exit.i172.if.then3.i177_crit_edge, %for.inc.4.i.i170.if.then3.i177_crit_edge, %for.inc.3.i.i167.if.then3.i177_crit_edge, %for.inc.2.i.i164.if.then3.i177_crit_edge, %for.inc.1.i.i161.if.then3.i177_crit_edge, %for.inc.i.i158.if.then3.i177_crit_edge, %if.then.i155.if.then3.i177_crit_edge
  %pri.0.lcssa.i23.i173 = phi i8 [ 1, %bnx2x_dcbx_dcbnl_app_up.exit.i172.if.then3.i177_crit_edge ], [ 2, %for.inc.4.i.i170.if.then3.i177_crit_edge ], [ 3, %for.inc.3.i.i167.if.then3.i177_crit_edge ], [ 4, %for.inc.2.i.i164.if.then3.i177_crit_edge ], [ 5, %for.inc.1.i.i161.if.then3.i177_crit_edge ], [ 6, %for.inc.i.i158.if.then3.i177_crit_edge ], [ 7, %if.then.i155.if.then3.i177_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app4.i144) #10
  %85 = and i8 %80, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %85)
  %cmp.i.i174 = icmp eq i8 %85, 32
  %conv2.i20.i175 = zext i1 %cmp.i.i174 to i8
  %86 = ptrtoint ptr %app4.i144 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv2.i20.i175, ptr %app4.i144, align 2
  %87 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i147, align 2
  %89 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %78, align 2
  %90 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %pri.0.lcssa.i23.i173, ptr %77, align 1
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %call10.i176 = call i32 @dcb_setapp(ptr noundef %92, ptr noundef nonnull %app4.i144) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app4.i144) #10
  br label %if.end11.i183

if.end11.i183:                                    ; preds = %if.then3.i177, %bnx2x_dcbx_dcbnl_app_up.exit.i172.if.end11.i183_crit_edge, %for.body.i150.if.end11.i183_crit_edge
  %err.2.i178 = phi i32 [ 0, %for.body.i150.if.end11.i183_crit_edge ], [ %call10.i176, %if.then3.i177 ], [ 0, %bnx2x_dcbx_dcbnl_app_up.exit.i172.if.end11.i183_crit_edge ]
  %inc.i179 = add nuw nsw i32 %i.024.i146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.024.i146)
  %cmp.i180 = icmp ult i32 %i.024.i146, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i178)
  %cmp1.i181 = icmp eq i32 %err.2.i178, 0
  %or.cond.i182 = select i1 %cmp.i180, i1 %cmp1.i181, i1 false
  br i1 %or.cond.i182, label %if.end11.i183.for.body.i150_crit_edge, label %bnx2x_dcbnl_update_applist.exit184

if.end11.i183.for.body.i150_crit_edge:            ; preds = %if.end11.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i150

bnx2x_dcbnl_update_applist.exit184:               ; preds = %if.end11.i183
  call fastcc void @bnx2x_dcbx_update_tc_mapping(ptr noundef %bp)
  %mf_mode = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 79
  %93 = ptrtoint ptr %mf_mode to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mf_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp.not = icmp eq i8 %94, 0
  br i1 %cmp.not, label %bnx2x_dcbnl_update_applist.exit184.if.end21_crit_edge, label %if.then20

bnx2x_dcbnl_update_applist.exit184.if.end21_crit_edge: ; preds = %bnx2x_dcbnl_update_applist.exit184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %bnx2x_dcbnl_update_applist.exit184
  %chip_port_mode.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 9
  %95 = ptrtoint ptr %pfid.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %pfid.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %cmp5.i = icmp ult i8 %96, 2
  br i1 %cmp5.i, label %if.then20.for.body.i186.1_crit_edge, label %if.end.i

if.then20.for.body.i186.1_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i186.1

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regview.i, align 8
  %99 = shl i8 %96, 2
  %100 = and i8 %99, 4
  %101 = zext i8 %100 to i32
  %add7.i = or i32 %101, 41008
  %add.ptr.i188 = getelementptr i8, ptr %98, i32 %add7.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 16777216) #10, !srcloc !553
  br label %for.body.i186.1

for.body.i186.1:                                  ; preds = %if.end.i, %if.then20.for.body.i186.1_crit_edge
  %102 = ptrtoint ptr %pfid.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %pfid.i.i, align 1
  %.mask = and i8 %103, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.mask)
  %cmp5.i.1 = icmp eq i8 %.mask, 2
  br i1 %cmp5.i.1, label %for.body.i186.1.for.inc.i.1_crit_edge, label %if.end.i.1

for.body.i186.1.for.inc.i.1_crit_edge:            ; preds = %for.body.i186.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.1

if.end.i.1:                                       ; preds = %for.body.i186.1
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regview.i, align 8
  %106 = shl i8 %103, 2
  %107 = and i8 %106, 4
  %108 = zext i8 %107 to i32
  %add7.i.1 = or i32 %108, 41016
  %add.ptr.i188.1 = getelementptr i8, ptr %105, i32 %add7.i.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.1, i32 16777216) #10, !srcloc !553
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end.i.1, %for.body.i186.1.for.inc.i.1_crit_edge
  %109 = ptrtoint ptr %chip_port_mode.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %chip_port_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp.i190.1.not = icmp eq i8 %110, 0
  br i1 %cmp.i190.1.not, label %for.inc.i.1.if.end21_crit_edge, label %for.body.i186.2

for.inc.i.1.if.end21_crit_edge:                   ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

for.body.i186.2:                                  ; preds = %for.inc.i.1
  %111 = ptrtoint ptr %pfid.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %pfid.i.i, align 1
  %.mask237 = and i8 %112, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.mask237)
  %cmp5.i.2 = icmp eq i8 %.mask237, 4
  br i1 %cmp5.i.2, label %for.body.i186.2.for.inc.i.2_crit_edge, label %if.end.i.2

for.body.i186.2.for.inc.i.2_crit_edge:            ; preds = %for.body.i186.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.2

if.end.i.2:                                       ; preds = %for.body.i186.2
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  call void @arm_heavy_mb() #10
  %113 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regview.i, align 8
  %115 = shl i8 %112, 2
  %116 = and i8 %115, 4
  %117 = zext i8 %116 to i32
  %add7.i.2 = or i32 %117, 41024
  %add.ptr.i188.2 = getelementptr i8, ptr %114, i32 %add7.i.2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.2, i32 16777216) #10, !srcloc !553
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.end.i.2, %for.body.i186.2.for.inc.i.2_crit_edge
  %118 = ptrtoint ptr %chip_port_mode.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %chip_port_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp.i190.2.not = icmp eq i8 %119, 0
  br i1 %cmp.i190.2.not, label %for.inc.i.2.if.end21_crit_edge, label %for.body.i186.3

for.inc.i.2.if.end21_crit_edge:                   ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

for.body.i186.3:                                  ; preds = %for.inc.i.2
  %120 = ptrtoint ptr %pfid.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pfid.i.i, align 1
  %.mask238 = and i8 %121, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.mask238)
  %cmp5.i.3 = icmp eq i8 %.mask238, 6
  br i1 %cmp5.i.3, label %for.body.i186.3.if.end21_crit_edge, label %if.end.i.3

for.body.i186.3.if.end21_crit_edge:               ; preds = %for.body.i186.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end.i.3:                                       ; preds = %for.body.i186.3
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  call void @arm_heavy_mb() #10
  %122 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regview.i, align 8
  %124 = shl i8 %121, 2
  %125 = and i8 %124, 4
  %126 = zext i8 %125 to i32
  %add7.i.3 = or i32 %126, 41032
  %add.ptr.i188.3 = getelementptr i8, ptr %123, i32 %add7.i.3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.3, i32 16777216) #10, !srcloc !553
  br label %if.end21

if.end21:                                         ; preds = %if.end.i.3, %for.body.i186.3.if.end21_crit_edge, %for.inc.i.2.if.end21_crit_edge, %for.inc.i.1.if.end21_crit_edge, %bnx2x_dcbnl_update_applist.exit184.if.end21_crit_edge
  call void @bnx2x_schedule_sp_rtnl(ptr noundef %bp, i32 noundef 9, i32 noundef 0) #10
  br label %sw.epilog

do.body23:                                        ; preds = %entry
  %msg_enable24 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %127 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %msg_enable24, align 8
  %and25 = and i32 %128, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.do.end48_crit_edge, label %do.end35, !prof !544

do.body23.do.end48_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

do.end35:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %dev37 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %129 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev37, align 4
  %tobool38.not = icmp eq ptr %130, null
  %spec.select127 = select i1 %tobool38.not, ptr @.str.3, ptr %130
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 801, ptr noundef nonnull %spec.select127) #13
  br label %do.end48

do.end48:                                         ; preds = %do.end35, %do.body23.do.end48_crit_edge
  %shmem2_base.i191 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %131 = ptrtoint ptr %shmem2_base.i191 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %shmem2_base.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i192 = icmp eq i32 %132, 0
  br i1 %tobool.not.i192, label %do.end48.land.end.i_crit_edge, label %land.lhs.true.i196

do.end48.land.end.i_crit_edge:                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.lhs.true.i196:                               ; preds = %do.end48
  %regview.i193 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %133 = ptrtoint ptr %regview.i193 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regview.i193, align 8
  %add.ptr.i194 = getelementptr i8, ptr %134, i32 %132
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #10, !srcloc !545
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !555
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %136)
  %cmp.i195 = icmp ugt i32 %136, 188
  br i1 %cmp.i195, label %land.rhs.i, label %land.lhs.true.i196.land.end.i_crit_edge

land.lhs.true.i196.land.end.i_crit_edge:          ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %regview.i193 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regview.i193, align 8
  %139 = ptrtoint ptr %shmem2_base.i191 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %shmem2_base.i191, align 4
  %add9.i = add i32 %140, 188
  %add.ptr10.i = getelementptr i8, ptr %138, i32 %add9.i
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !556
  %142 = and i32 %141, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool14.i = icmp ne i32 %142, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i196.land.end.i_crit_edge, %do.end48.land.end.i_crit_edge
  %143 = phi i1 [ false, %land.lhs.true.i196.land.end.i_crit_edge ], [ false, %do.end48.land.end.i_crit_edge ], [ %tobool14.i, %land.rhs.i ]
  %dcbx_port_params.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176
  %144 = ptrtoint ptr %dcbx_port_params.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dcbx_port_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool15.not.i = icmp eq i32 %145, 0
  br i1 %tobool15.not.i, label %land.end.i.if.else.i_crit_edge, label %land.lhs.true16.i

land.end.i.if.else.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true16.i:                                ; preds = %land.end.i
  %dcbx_error.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 188
  %146 = ptrtoint ptr %dcbx_error.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dcbx_error.i, align 4
  %and17.i = and i32 %147, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i197 = icmp eq i32 %and17.i, 0
  %brmerge.i = select i1 %tobool18.not.i197, i1 true, i1 %143
  br i1 %brmerge.i, label %if.then.i198, label %land.lhs.true16.i.if.else.i_crit_edge

land.lhs.true16.i.if.else.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i198:                                     ; preds = %land.lhs.true16.i
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %pfc_params.i.i) #10
  %148 = call ptr @memset(ptr %pfc_params.i.i, i32 0, i32 44)
  %num_of_cos.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 1
  %149 = ptrtoint ptr %num_of_cos.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %num_of_cos.i.i, align 4
  %num_of_rx_cos_priority_mask.i.i = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, ptr %pfc_params.i.i, i32 0, i32 4
  %151 = ptrtoint ptr %num_of_rx_cos_priority_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %num_of_rx_cos_priority_mask.i.i, align 4
  %conv.i.i = zext i8 %150 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp52.not.i.i = icmp eq i8 %150, 0
  br i1 %cmp52.not.i.i, label %if.then.i198.bnx2x_pfc_set.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i198.bnx2x_pfc_set.exit.i_crit_edge:      ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_pfc_set.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i198
  %priority_non_pauseable_mask.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 0, i32 1
  %152 = ptrtoint ptr %priority_non_pauseable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %priority_non_pauseable_mask.i.i, align 4
  %conv8.i.i = and i32 %153, 255
  %conv9.i.i = xor i32 %conv8.i.i, 255
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.053.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i200, %for.body.i.i.for.body.i.i_crit_edge ]
  %pri_bitmask.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %i.053.i.i, i32 1
  %154 = ptrtoint ptr %pri_bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pri_bitmask.i.i, align 4
  %and.i.i199 = and i32 %155, %conv9.i.i
  %arrayidx10.i.i = getelementptr %struct.bnx2x_nig_brb_pfc_port_params, ptr %pfc_params.i.i, i32 0, i32 5, i32 %i.053.i.i
  %156 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and.i.i199, ptr %arrayidx10.i.i, align 4
  %inc.i.i200 = add nuw nsw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i200, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.bnx2x_pfc_set.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.bnx2x_pfc_set.exit.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_pfc_set.exit.i

bnx2x_pfc_set.exit.i:                             ; preds = %for.body.i.i.bnx2x_pfc_set.exit.i_crit_edge, %if.then.i198.bnx2x_pfc_set.exit.i_crit_edge
  %priority_non_pauseable_mask17.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 0, i32 1
  %157 = ptrtoint ptr %priority_non_pauseable_mask17.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %priority_non_pauseable_mask17.i.i, align 4
  %conv19.i.i = and i32 %158, 255
  %conv20.i.i = xor i32 %conv19.i.i, 255
  %and21.i.i = and i32 %conv20.i.i, 1
  %and21.1.i.i = shl nuw nsw i32 %conv20.i.i, 3
  %159 = and i32 %and21.1.i.i, 16
  %160 = or i32 %159, %and21.i.i
  %and21.2.i.i = shl nuw nsw i32 %conv20.i.i, 6
  %161 = and i32 %and21.2.i.i, 256
  %162 = or i32 %160, %161
  %and21.3.i.i = shl nuw nsw i32 %conv20.i.i, 9
  %163 = and i32 %and21.3.i.i, 4096
  %164 = or i32 %162, %163
  %and21.4.i.i = shl nuw nsw i32 %conv20.i.i, 12
  %165 = and i32 %and21.4.i.i, 65536
  %166 = or i32 %164, %165
  %and21.5.i.i = shl nuw nsw i32 %conv20.i.i, 15
  %167 = and i32 %and21.5.i.i, 1048576
  %168 = or i32 %166, %167
  %and21.6.i.i = shl nuw nsw i32 %conv20.i.i, 18
  %169 = and i32 %and21.6.i.i, 16777216
  %and21.7.i.i = shl nuw nsw i32 %conv20.i.i, 21
  %170 = and i32 %and21.7.i.i, 268435456
  %171 = or i32 %169, %170
  %172 = or i32 %171, %168
  %val.1.7.i.i = xor i32 %172, 286331153
  %pkt_priority_to_cos.i.i = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, ptr %pfc_params.i.i, i32 0, i32 3
  %173 = ptrtoint ptr %pkt_priority_to_cos.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %val.1.7.i.i, ptr %pkt_priority_to_cos.i.i, align 4
  %llfc_low_priority_classes.i.i = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, ptr %pfc_params.i.i, i32 0, i32 7
  %174 = ptrtoint ptr %llfc_low_priority_classes.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %conv20.i.i, ptr %llfc_low_priority_classes.i.i, align 4
  %llfc_high_priority_classes.i.i = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, ptr %pfc_params.i.i, i32 0, i32 6
  %175 = ptrtoint ptr %llfc_high_priority_classes.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %llfc_high_priority_classes.i.i, align 4
  tail call void @bnx2x_acquire_phy_lock(ptr noundef %bp) #10
  %link_params.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 66
  %feature_config_flags.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 66, i32 12
  %176 = ptrtoint ptr %feature_config_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %feature_config_flags.i.i, align 8
  %or32.i.i = or i32 %177, 2
  store i32 %or32.i.i, ptr %feature_config_flags.i.i, align 8
  %link_vars.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 67
  %call.i.i201 = call i32 @bnx2x_update_pfc(ptr noundef %link_params.i.i, ptr noundef %link_vars.i.i, ptr noundef nonnull %pfc_params.i.i) #10
  call void @bnx2x_release_phy_lock(ptr noundef %bp) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %pfc_params.i.i) #10
  br label %bnx2x_pfc_set_pfc.exit

if.else.i:                                        ; preds = %land.lhs.true16.i.if.else.i_crit_edge, %land.end.i.if.else.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %nig_params.i.i) #10
  %178 = getelementptr inbounds i8, ptr %nig_params.i.i, i32 4
  %179 = call ptr @memset(ptr %178, i32 0, i32 48)
  %180 = ptrtoint ptr %nig_params.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %nig_params.i.i, align 4
  tail call void @bnx2x_acquire_phy_lock(ptr noundef %bp) #10
  %link_params.i28.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 66
  %feature_config_flags.i29.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 66, i32 12
  %181 = ptrtoint ptr %feature_config_flags.i29.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %feature_config_flags.i29.i, align 8
  %and.i30.i = and i32 %182, -3
  store i32 %and.i30.i, ptr %feature_config_flags.i29.i, align 8
  %link_vars.i31.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 67
  %call.i32.i = call i32 @bnx2x_update_pfc(ptr noundef %link_params.i28.i, ptr noundef %link_vars.i31.i, ptr noundef nonnull %nig_params.i.i) #10
  call void @bnx2x_release_phy_lock(ptr noundef %bp) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %nig_params.i.i) #10
  br label %bnx2x_pfc_set_pfc.exit

bnx2x_pfc_set_pfc.exit:                           ; preds = %if.else.i, %bnx2x_pfc_set.exit.i
  %common.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %183 = ptrtoint ptr %shmem2_base.i191 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %shmem2_base.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i204 = icmp eq i32 %184, 0
  br i1 %tobool.not.i204, label %bnx2x_pfc_set_pfc.exit.land.end.i213_crit_edge, label %land.lhs.true.i208

bnx2x_pfc_set_pfc.exit.land.end.i213_crit_edge:   ; preds = %bnx2x_pfc_set_pfc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i213

land.lhs.true.i208:                               ; preds = %bnx2x_pfc_set_pfc.exit
  %regview.i205 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %185 = ptrtoint ptr %regview.i205 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regview.i205, align 8
  %add.ptr.i206 = getelementptr i8, ptr %186, i32 %184
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206) #10, !srcloc !545
  %188 = call i32 @llvm.bswap.i32(i32 %187) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !557
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %188)
  %cmp.i207 = icmp ugt i32 %188, 188
  br i1 %cmp.i207, label %land.rhs.i212, label %land.lhs.true.i208.land.end.i213_crit_edge

land.lhs.true.i208.land.end.i213_crit_edge:       ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i213

land.rhs.i212:                                    ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %regview.i205 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regview.i205, align 8
  %191 = ptrtoint ptr %shmem2_base.i191 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %shmem2_base.i191, align 4
  %add9.i209 = add i32 %192, 188
  %add.ptr10.i210 = getelementptr i8, ptr %190, i32 %add9.i209
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i210) #10, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !558
  %194 = and i32 %193, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool14.i211 = icmp ne i32 %194, 0
  br label %land.end.i213

land.end.i213:                                    ; preds = %land.rhs.i212, %land.lhs.true.i208.land.end.i213_crit_edge, %bnx2x_pfc_set_pfc.exit.land.end.i213_crit_edge
  %195 = phi i1 [ false, %land.lhs.true.i208.land.end.i213_crit_edge ], [ false, %bnx2x_pfc_set_pfc.exit.land.end.i213_crit_edge ], [ %tobool14.i211, %land.rhs.i212 ]
  %link_params.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 66
  %link_vars.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 67
  %call15.i = call i32 @bnx2x_ets_disabled(ptr noundef %link_params.i, ptr noundef %link_vars.i) #10
  %ets.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1
  %196 = ptrtoint ptr %ets.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool16.not.i = icmp eq i32 %197, 0
  br i1 %tobool16.not.i, label %land.end.i213.bnx2x_dcbx_update_ets_params.exit_crit_edge, label %lor.lhs.false.i

land.end.i213.bnx2x_dcbx_update_ets_params.exit_crit_edge: ; preds = %land.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_update_ets_params.exit

lor.lhs.false.i:                                  ; preds = %land.end.i213
  %dcbx_error.i214 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 188
  %198 = ptrtoint ptr %dcbx_error.i214 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dcbx_error.i214, align 4
  %and17.i215 = and i32 %199, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i215)
  %tobool18.not.i216 = icmp eq i32 %and17.i215, 0
  %brmerge.i217 = select i1 %tobool18.not.i216, i1 true, i1 %195
  br i1 %brmerge.i217, label %if.end.i218, label %lor.lhs.false.i.bnx2x_dcbx_update_ets_params.exit_crit_edge

lor.lhs.false.i.bnx2x_dcbx_update_ets_params.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_update_ets_params.exit

if.end.i218:                                      ; preds = %lor.lhs.false.i
  %200 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %common.i, align 8
  %shr.i = lshr i32 %201, 16
  %trunc.i = trunc i32 %shr.i to i16
  %202 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.305)
  switch i16 %trunc.i, label %if.end.i218.if.else.i229_crit_edge [
    i16 5770, label %if.end.i218.land.lhs.true93.i_crit_edge
    i16 5797, label %if.end.i218.land.lhs.true93.i_crit_edge239
    i16 5801, label %if.end.i218.land.lhs.true93.i_crit_edge240
    i16 5774, label %if.end.i218.land.lhs.true93.i_crit_edge241
    i16 5806, label %if.end.i218.land.lhs.true93.i_crit_edge242
    i16 5807, label %if.end.i218.land.lhs.true93.i_crit_edge243
    i16 5693, label %if.end.i218.land.lhs.true93.i_crit_edge244
    i16 5694, label %if.end.i218.land.lhs.true93.i_crit_edge245
    i16 5695, label %if.end.i218.land.lhs.true93.i_crit_edge246
    i16 5793, label %if.end.i218.land.lhs.true93.i_crit_edge247
    i16 5794, label %if.end.i218.land.lhs.true93.i_crit_edge248
    i16 5773, label %if.end.i218.land.lhs.true93.i_crit_edge249
    i16 5796, label %if.end.i218.land.lhs.true93.i_crit_edge250
    i16 5803, label %if.end.i218.land.lhs.true93.i_crit_edge251
    i16 5805, label %if.end.i218.land.lhs.true93.i_crit_edge252
  ]

if.end.i218.land.lhs.true93.i_crit_edge252:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge251:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge250:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge249:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge248:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge247:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge246:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge245:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge244:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge243:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge242:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge241:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge240:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge239:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.land.lhs.true93.i_crit_edge:          ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true93.i

if.end.i218.if.else.i229_crit_edge:               ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i229

land.lhs.true93.i:                                ; preds = %if.end.i218.land.lhs.true93.i_crit_edge, %if.end.i218.land.lhs.true93.i_crit_edge239, %if.end.i218.land.lhs.true93.i_crit_edge240, %if.end.i218.land.lhs.true93.i_crit_edge241, %if.end.i218.land.lhs.true93.i_crit_edge242, %if.end.i218.land.lhs.true93.i_crit_edge243, %if.end.i218.land.lhs.true93.i_crit_edge244, %if.end.i218.land.lhs.true93.i_crit_edge245, %if.end.i218.land.lhs.true93.i_crit_edge246, %if.end.i218.land.lhs.true93.i_crit_edge247, %if.end.i218.land.lhs.true93.i_crit_edge248, %if.end.i218.land.lhs.true93.i_crit_edge249, %if.end.i218.land.lhs.true93.i_crit_edge250, %if.end.i218.land.lhs.true93.i_crit_edge251, %if.end.i218.land.lhs.true93.i_crit_edge252
  %and96.i = and i32 %201, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and96.i)
  %cmp97.i = icmp ugt i32 %and96.i, 20480
  %sub.i = sub nuw nsw i32 61440, %and96.i
  %203 = lshr exact i32 %sub.i, 1
  %shl.i = and i32 %203, 28672
  %cond.i219 = select i1 %cmp97.i, i32 %shl.i, i32 %and96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cond.i219)
  %cmp105.i = icmp eq i32 %cond.i219, 4096
  br i1 %cmp105.i, label %if.then106.i, label %land.lhs.true93.i.if.else.i229_crit_edge

land.lhs.true93.i.if.else.i229_crit_edge:         ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i229

if.then106.i:                                     ; preds = %land.lhs.true93.i
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %ets_params.i.i) #10
  %204 = call ptr @memset(ptr %ets_params.i.i, i32 0, i32 52)
  %num_of_cos.i.i220 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 1
  %205 = ptrtoint ptr %num_of_cos.i.i220 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %num_of_cos.i.i220, align 4
  %207 = ptrtoint ptr %ets_params.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %ets_params.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %cmp123.not.i.i = icmp eq i8 %206, 0
  br i1 %cmp123.not.i.i, label %if.then106.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.then106.i.for.end.i.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.then106.i
  %wide.trip.count.i.i = zext i8 %206 to i32
  br label %for.body.i.i221

for.body.i.i221:                                  ; preds = %for.inc.i.i228.for.body.i.i221_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i228.for.body.i.i221_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.i.i
  %strict.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv.i.i, i32 2
  %208 = ptrtoint ptr %strict.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %strict.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %209)
  %cmp7.not.i.i = icmp eq i8 %209, 3
  %210 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %211)
  %cmp32.i.i = icmp eq i32 %211, -1
  br i1 %cmp7.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i221
  br i1 %cmp32.i.i, label %if.end.i.i, label %do.end.i.i226

do.end.i.i226:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i222 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %212 = ptrtoint ptr %dev.i.i222 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i.i222, align 4
  %tobool.not.i.i223 = icmp eq ptr %213, null
  %spec.select.i.i224 = select i1 %tobool.not.i.i223, ptr @.str.3, ptr %213
  %call.i.i225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176, i32 noundef 579, ptr noundef nonnull %spec.select.i.i224) #13
  br label %bnx2x_dcbx_update_ets_config.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx20.i.i = getelementptr %struct.bnx2x_ets_params, ptr %ets_params.i.i, i32 0, i32 1, i32 %indvars.iv.i.i
  %214 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %arrayidx20.i.i, align 4
  br label %for.inc.i.i228

if.else.i.i:                                      ; preds = %for.body.i.i221
  br i1 %cmp32.i.i, label %do.end38.i.i, label %if.end52.i.i

do.end38.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev40.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %215 = ptrtoint ptr %dev40.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev40.i.i, align 4
  %tobool41.not.i.i = icmp eq ptr %216, null
  %spec.select121.i.i = select i1 %tobool41.not.i.i, ptr @.str.3, ptr %216
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176, i32 noundef 588, ptr noundef nonnull %spec.select121.i.i) #13
  br label %bnx2x_dcbx_update_ets_config.exit.i

if.end52.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx55.i.i = getelementptr %struct.bnx2x_ets_params, ptr %ets_params.i.i, i32 0, i32 1, i32 %indvars.iv.i.i
  %217 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %arrayidx55.i.i, align 4
  %conv61.i.i = trunc i32 %211 to i8
  br label %for.inc.i.i228

for.inc.i.i228:                                   ; preds = %if.end52.i.i, %if.end.i.i
  %.sink.i.i = phi i8 [ %209, %if.end.i.i ], [ %conv61.i.i, %if.end52.i.i ]
  %params.i.i = getelementptr %struct.bnx2x_ets_params, ptr %ets_params.i.i, i32 0, i32 1, i32 %indvars.iv.i.i, i32 1
  %218 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %.sink.i.i, ptr %params.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i227 = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i227, label %for.inc.i.i228.for.end.i.i_crit_edge, label %for.inc.i.i228.for.body.i.i221_crit_edge

for.inc.i.i228.for.body.i.i221_crit_edge:         ; preds = %for.inc.i.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i221

for.inc.i.i228.for.end.i.i_crit_edge:             ; preds = %for.inc.i.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i228.for.end.i.i_crit_edge, %if.then106.i.for.end.i.i_crit_edge
  %call67.i.i = call i32 @bnx2x_ets_e3b0_config(ptr noundef %link_params.i, ptr noundef %link_vars.i, ptr noundef nonnull %ets_params.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i.i)
  %tobool68.not.i.i = icmp eq i32 %call67.i.i, 0
  br i1 %tobool68.not.i.i, label %for.end.i.i.bnx2x_dcbx_update_ets_config.exit.i_crit_edge, label %do.end73.i.i

for.end.i.i.bnx2x_dcbx_update_ets_config.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_update_ets_config.exit.i

do.end73.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev75.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %219 = ptrtoint ptr %dev75.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev75.i.i, align 4
  %tobool76.not.i.i = icmp eq ptr %220, null
  %spec.select122.i.i = select i1 %tobool76.not.i.i, ptr @.str.3, ptr %220
  %call84.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.176, i32 noundef 600, ptr noundef nonnull %spec.select122.i.i) #13
  %call89.i.i = call i32 @bnx2x_ets_disabled(ptr noundef %link_params.i, ptr noundef %link_vars.i) #10
  br label %bnx2x_dcbx_update_ets_config.exit.i

bnx2x_dcbx_update_ets_config.exit.i:              ; preds = %do.end73.i.i, %for.end.i.i.bnx2x_dcbx_update_ets_config.exit.i_crit_edge, %do.end38.i.i, %do.end.i.i226
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %ets_params.i.i) #10
  br label %bnx2x_dcbx_update_ets_params.exit

if.else.i229:                                     ; preds = %land.lhs.true93.i.if.else.i229_crit_edge, %if.end.i218.if.else.i229_crit_edge
  %num_of_cos.i136.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 1
  %221 = ptrtoint ptr %num_of_cos.i136.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %num_of_cos.i136.i, align 4
  %223 = add i8 %222, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %223)
  %224 = icmp ult i8 %223, -2
  br i1 %224, label %do.end.i141.i, label %if.end.i142.i

do.end.i141.i:                                    ; preds = %if.else.i229
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i137.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %225 = ptrtoint ptr %dev.i137.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev.i137.i, align 4
  %tobool.not.i138.i = icmp eq ptr %226, null
  %spec.select.i139.i = select i1 %tobool.not.i138.i, ptr @.str.3, ptr %226
  %conv10.i.i = zext i8 %222 to i32
  %call.i140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, i32 noundef 511, ptr noundef nonnull %spec.select.i139.i, i32 noundef %conv10.i.i) #13
  br label %bnx2x_dcbx_update_ets_params.exit

if.end.i142.i:                                    ; preds = %if.else.i229
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %222)
  %cmp15.i.i = icmp eq i8 %222, 1
  br i1 %cmp15.i.i, label %if.end.i142.i.bnx2x_dcbx_update_ets_params.exit_crit_edge, label %if.end18.i.i

if.end.i142.i.bnx2x_dcbx_update_ets_params.exit_crit_edge: ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_update_ets_params.exit

if.end18.i.i:                                     ; preds = %if.end.i142.i
  %cos_params.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2
  %strict.i143.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 0, i32 2
  %227 = ptrtoint ptr %strict.i143.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %strict.i143.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %228)
  %cmp20.i.i = icmp eq i8 %228, 3
  br i1 %cmp20.i.i, label %land.lhs.true.i.i, label %if.end18.i.i.lor.lhs.false26.i.i_crit_edge

if.end18.i.i.lor.lhs.false26.i.i_crit_edge:       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false26.i.i

land.lhs.true.i.i:                                ; preds = %if.end18.i.i
  %229 = ptrtoint ptr %cos_params.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %cos_params.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %230)
  %cmp24.i.i = icmp eq i32 %230, -1
  br i1 %cmp24.i.i, label %land.lhs.true.i.i.do.end43.i.i_crit_edge, label %land.lhs.true.i.i.lor.lhs.false26.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false26.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false26.i.i

land.lhs.true.i.i.do.end43.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i.i

lor.lhs.false26.i.i:                              ; preds = %land.lhs.true.i.i.lor.lhs.false26.i.i_crit_edge, %if.end18.i.i.lor.lhs.false26.i.i_crit_edge
  %arrayidx28.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1
  %strict29.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1, i32 2
  %231 = ptrtoint ptr %strict29.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %strict29.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %232)
  %cmp31.i.i = icmp eq i8 %232, 3
  br i1 %cmp31.i.i, label %land.lhs.true33.i.i, label %lor.lhs.false26.i.i.if.end71.i.i_crit_edge

lor.lhs.false26.i.i.if.end71.i.i_crit_edge:       ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i.i

land.lhs.true33.i.i:                              ; preds = %lor.lhs.false26.i.i
  %233 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %234)
  %cmp37.i.i = icmp eq i32 %234, -1
  br i1 %cmp37.i.i, label %land.lhs.true33.i.i.do.end43.i.i_crit_edge, label %land.lhs.true33.i.i.if.end71.i.i_crit_edge

land.lhs.true33.i.i.if.end71.i.i_crit_edge:       ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i.i

land.lhs.true33.i.i.do.end43.i.i_crit_edge:       ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i.i

do.end43.i.i:                                     ; preds = %land.lhs.true33.i.i.do.end43.i.i_crit_edge, %land.lhs.true.i.i.do.end43.i.i_crit_edge
  %dev45.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %235 = ptrtoint ptr %dev45.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev45.i.i, align 4
  %tobool46.not.i.i = icmp eq ptr %236, null
  %spec.select174.i.i = select i1 %tobool46.not.i.i, ptr @.str.3, ptr %236
  %conv57.i.i = zext i8 %228 to i32
  %237 = ptrtoint ptr %cos_params.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %cos_params.i.i, align 4
  %arrayidx62.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1
  %strict63.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1, i32 2
  %239 = ptrtoint ptr %strict63.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %strict63.i.i, align 4
  %conv64.i.i = zext i8 %240 to i32
  %241 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx62.i.i, align 4
  %call68.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.183, i32 noundef 532, ptr noundef nonnull %spec.select174.i.i, i32 noundef %conv57.i.i, i32 noundef %238, i32 noundef %conv64.i.i, i32 noundef %242) #13
  br label %bnx2x_dcbx_update_ets_params.exit

if.end71.i.i:                                     ; preds = %land.lhs.true33.i.i.if.end71.i.i_crit_edge, %lor.lhs.false26.i.i.if.end71.i.i_crit_edge
  %243 = ptrtoint ptr %cos_params.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cos_params.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %244)
  %cmp75.not.i.i = icmp eq i32 %244, -1
  br i1 %cmp75.not.i.i, label %if.end71.i.i.if.else98.i.i_crit_edge, label %land.lhs.true77.i.i

if.end71.i.i.if.else98.i.i_crit_edge:             ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else98.i.i

land.lhs.true77.i.i:                              ; preds = %if.end71.i.i
  %245 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %246)
  %cmp81.not.i.i = icmp eq i32 %246, -1
  br i1 %cmp81.not.i.i, label %land.lhs.true77.i.i.if.else98.i.i_crit_edge, label %if.then83.i.i

land.lhs.true77.i.i.if.else98.i.i_crit_edge:      ; preds = %land.lhs.true77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else98.i.i

if.then83.i.i:                                    ; preds = %land.lhs.true77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp90.i.i = icmp eq i32 %244, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp93.i.i = icmp eq i32 %246, 0
  %spec.select175.i.i = select i1 %cmp93.i.i, i32 99, i32 %244
  %spec.select176.i.i = select i1 %cmp93.i.i, i32 1, i32 %246
  %bw_tbl_0.0.i.i = select i1 %cmp90.i.i, i32 1, i32 %spec.select175.i.i
  %bw_tbl_1.0.i.i = select i1 %cmp90.i.i, i32 99, i32 %spec.select176.i.i
  call void @bnx2x_ets_bw_limit(ptr noundef %link_params.i, i32 noundef %bw_tbl_0.0.i.i, i32 noundef %bw_tbl_1.0.i.i) #10
  br label %bnx2x_dcbx_update_ets_params.exit

if.else98.i.i:                                    ; preds = %land.lhs.true77.i.i.if.else98.i.i_crit_edge, %if.end71.i.i.if.else98.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %cmp103.i.i = icmp eq i8 %228, 0
  br i1 %cmp103.i.i, label %if.else98.i.i.if.end119.i.i_crit_edge, label %if.else108.i.i

if.else98.i.i.if.end119.i.i_crit_edge:            ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i.i

if.else108.i.i:                                   ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %cmp113.i.i = icmp eq i8 %232, 0
  br i1 %cmp113.i.i, label %if.else108.i.i.if.end119.i.i_crit_edge, label %if.else108.i.i.bnx2x_dcbx_update_ets_params.exit_crit_edge

if.else108.i.i.bnx2x_dcbx_update_ets_params.exit_crit_edge: ; preds = %if.else108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_update_ets_params.exit

if.else108.i.i.if.end119.i.i_crit_edge:           ; preds = %if.else108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %if.else108.i.i.if.end119.i.i_crit_edge, %if.else98.i.i.if.end119.i.i_crit_edge
  %.sink.i145.i = phi i8 [ 0, %if.else98.i.i.if.end119.i.i_crit_edge ], [ 1, %if.else108.i.i.if.end119.i.i_crit_edge ]
  %call117.i.i = call i32 @bnx2x_ets_strict(ptr noundef %link_params.i, i8 noundef zeroext %.sink.i145.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i.i)
  %tobool120.not.i.i = icmp eq i32 %call117.i.i, 0
  br i1 %tobool120.not.i.i, label %if.end119.i.i.bnx2x_dcbx_update_ets_params.exit_crit_edge, label %do.end125.i.i

if.end119.i.i.bnx2x_dcbx_update_ets_params.exit_crit_edge: ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_update_ets_params.exit

do.end125.i.i:                                    ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev127.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %247 = ptrtoint ptr %dev127.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev127.i.i, align 4
  %tobool128.not.i.i = icmp eq ptr %248, null
  %spec.select177.i.i = select i1 %tobool128.not.i.i, ptr @.str.3, ptr %248
  %call136.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.183, i32 noundef 560, ptr noundef nonnull %spec.select177.i.i) #13
  br label %bnx2x_dcbx_update_ets_params.exit

bnx2x_dcbx_update_ets_params.exit:                ; preds = %do.end125.i.i, %if.end119.i.i.bnx2x_dcbx_update_ets_params.exit_crit_edge, %if.else108.i.i.bnx2x_dcbx_update_ets_params.exit_crit_edge, %if.then83.i.i, %do.end43.i.i, %if.end.i142.i.bnx2x_dcbx_update_ets_params.exit_crit_edge, %do.end.i141.i, %bnx2x_dcbx_update_ets_config.exit.i, %lor.lhs.false.i.bnx2x_dcbx_update_ets_params.exit_crit_edge, %land.end.i213.bnx2x_dcbx_update_ets_params.exit_crit_edge
  call void @bnx2x_set_local_cmng(ptr noundef %bp) #10
  br label %sw.epilog

do.body50:                                        ; preds = %entry
  %msg_enable51 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %249 = ptrtoint ptr %msg_enable51 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %msg_enable51, align 8
  %and52 = and i32 %250, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body50.do.end75_crit_edge, label %do.end62, !prof !544

do.body50.do.end75_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

do.end62:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %dev64 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %251 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev64, align 4
  %tobool65.not = icmp eq ptr %252, null
  %spec.select128 = select i1 %tobool65.not, ptr @.str.3, ptr %252
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef 810, ptr noundef nonnull %spec.select128) #13
  br label %do.end75

do.end75:                                         ; preds = %do.end62, %do.body50.do.end75_crit_edge
  %call76 = tail call i32 @bnx2x_fw_command(ptr noundef %bp, i32 noundef -1308622848, i32 noundef 0) #10
  %dev77 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %253 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev77, align 4
  %call78 = tail call i32 @dcbnl_cee_notify(ptr noundef %254, i32 noundef 78, i32 noundef 26, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog

do.end81:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev83 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %255 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev83, align 4
  %tobool84.not = icmp eq ptr %256, null
  %spec.select129 = select i1 %tobool84.not, ptr @.str.3, ptr %256
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef 820, ptr noundef nonnull %spec.select129) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end81, %do.end75, %bnx2x_dcbx_update_ets_params.exit, %if.end21, %if.end11.sw.epilog_crit_edge, %bnx2x_dcbx_read_shmem_remote_mib.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_dcbx_read_shmem_neg_results(ptr nocapture noundef %bp) unnamed_addr #0 align 64 {
entry:
  %local_mib = alloca %struct.lldp_local_mib, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %local_mib) #10
  %0 = call ptr @memset(ptr %local_mib, i32 0, i32 100)
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %1 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regview, align 8
  %shmem2_base = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %3 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shmem2_base, align 4
  %add = add i32 %4, 44
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !545
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !559
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !544

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %tobool6.not = icmp eq ptr %10, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 659, ptr noundef nonnull %spec.select, i32 noundef %6) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end15, label %if.end29

do.end15:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %11 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev17, align 4
  %tobool18.not = icmp eq ptr %12, null
  %spec.select70 = select i1 %tobool18.not, ptr @.str.3, ptr %12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 662, ptr noundef nonnull %spec.select70) #13
  br label %cleanup

if.end29:                                         ; preds = %do.end10
  %pfid.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %13 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pfid.i, align 1
  %15 = and i8 %14, 1
  %narrow.i = mul nuw nsw i8 %15, 100
  %mul.i = zext i8 %narrow.i to i32
  %add.i = add i32 %6, %mul.i
  %suffix_seq_num7.i = getelementptr inbounds %struct.lldp_remote_mib, ptr %local_mib, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %bnx2x_read_data.exit.i.do.body.i_crit_edge, %if.end29
  %max_try_read.0.i = phi i32 [ 0, %if.end29 ], [ %inc.i, %bnx2x_read_data.exit.i.do.body.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body.i
  %buff.addr.08.i.i = phi ptr [ %local_mib, %do.body.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.07.i.i = phi i32 [ 0, %do.body.i ], [ %add2.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regview, align 8
  %add.i.i = add i32 %add.i, %i.07.i.i
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %add.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !545
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !549
  %20 = ptrtoint ptr %buff.addr.08.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buff.addr.08.i.i, align 4
  %add2.i.i = add nuw nsw i32 %i.07.i.i, 4
  %incdec.ptr.i.i = getelementptr i32, ptr %buff.addr.08.i.i, i32 1
  %cmp.i.i = icmp ult i32 %i.07.i.i, 96
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %bnx2x_read_data.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

bnx2x_read_data.exit.i:                           ; preds = %for.body.i.i
  %inc.i = add nuw nsw i32 %max_try_read.0.i, 1
  %21 = ptrtoint ptr %suffix_seq_num7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %suffix_seq_num.0.i = load i32, ptr %suffix_seq_num7.i, align 4
  %22 = ptrtoint ptr %local_mib to i32
  call void @__asan_load4_noabort(i32 %22)
  %prefix_seq_num.0.i = load i32, ptr %local_mib, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %prefix_seq_num.0.i, i32 %suffix_seq_num.0.i)
  %cmp.not.i = icmp ne i32 %prefix_seq_num.0.i, %suffix_seq_num.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %max_try_read.0.i)
  %cmp11.i = icmp ult i32 %max_try_read.0.i, 99
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp11.i, i1 false
  br i1 %or.cond.i, label %bnx2x_read_data.exit.i.do.body.i_crit_edge, label %do.end.i

bnx2x_read_data.exit.i.do.body.i_crit_edge:       ; preds = %bnx2x_read_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %bnx2x_read_data.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %max_try_read.0.i)
  %cmp13.i = icmp ugt i32 %max_try_read.0.i, 98
  br i1 %cmp13.i, label %do.end36, label %if.end50

do.end36:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.3, ptr %24
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 433, ptr noundef nonnull %spec.select.i) #13
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %tobool39.not = icmp eq ptr %26, null
  %spec.select71 = select i1 %tobool39.not, ptr @.str.3, ptr %26
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.52, i32 noundef 670, ptr noundef nonnull %spec.select71) #13
  br label %cleanup

if.end50:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dcbx_local_feat = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 187
  %features = getelementptr inbounds %struct.lldp_local_mib, ptr %local_mib, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %dcbx_local_feat, ptr %features, i32 88)
  %error = getelementptr inbounds %struct.lldp_local_mib, ptr %local_mib, i32 0, i32 1
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error, align 4
  %dcbx_error = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 188
  %30 = ptrtoint ptr %dcbx_error to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dcbx_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end36, %do.end15
  %retval.0 = phi i32 [ -22, %do.end15 ], [ 1, %do.end36 ], [ 0, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %local_mib) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_dump_dcbx_drv_param(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %features, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end, !prof !544

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 131, ptr noundef nonnull %spec.select, i32 noundef %error) #13
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and10 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body8.do.end35_crit_edge, label %do.end21, !prof !544

do.body8.do.end35_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.end21:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev23, align 4
  %tobool24.not = icmp eq ptr %7, null
  %spec.select496 = select i1 %tobool24.not, ptr @.str.3, ptr %7
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef 135, ptr noundef nonnull %spec.select496, i32 noundef %9) #13
  br label %do.end35

do.end35:                                         ; preds = %do.end21, %do.body8.do.end35_crit_edge
  %dev52 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 8
  %and39 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end35.for.inc_crit_edge, label %do.end50, !prof !544

do.end35.for.inc_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end50:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev52, align 4
  %tobool53.not = icmp eq ptr %13, null
  %spec.select497 = select i1 %tobool53.not, ptr @.str.3, ptr %13
  %arrayidx = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %15, 24
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497, i32 noundef 0, i32 noundef %shr) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end50, %do.end35.for.inc_crit_edge
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and39.1 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.1)
  %tobool40.not.1 = icmp eq i32 %and39.1, 0
  br i1 %tobool40.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end50.1, !prof !544

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

do.end50.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev52, align 4
  %tobool53.not.1 = icmp eq ptr %19, null
  %spec.select497.1 = select i1 %tobool53.not.1, ptr @.str.3, ptr %19
  %arrayidx.1 = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1, align 4
  %shr.1 = lshr i32 %21, 16
  %and69.1 = and i32 %shr.1, 255
  %call70.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497.1, i32 noundef 1, i32 noundef %and69.1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end50.1, %for.inc.for.inc.1_crit_edge
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and39.2 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.2)
  %tobool40.not.2 = icmp eq i32 %and39.2, 0
  br i1 %tobool40.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end50.2, !prof !544

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

do.end50.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev52, align 4
  %tobool53.not.2 = icmp eq ptr %25, null
  %spec.select497.2 = select i1 %tobool53.not.2, ptr @.str.3, ptr %25
  %arrayidx.2 = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  %shr.2 = lshr i32 %27, 8
  %and69.2 = and i32 %shr.2, 255
  %call70.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497.2, i32 noundef 2, i32 noundef %and69.2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end50.2, %for.inc.1.for.inc.2_crit_edge
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 8
  %and39.3 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.3)
  %tobool40.not.3 = icmp eq i32 %and39.3, 0
  br i1 %tobool40.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end50.3, !prof !544

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

do.end50.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev52, align 4
  %tobool53.not.3 = icmp eq ptr %31, null
  %spec.select497.3 = select i1 %tobool53.not.3, ptr @.str.3, ptr %31
  %arrayidx.3 = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 0
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.3, align 4
  %and69.3 = and i32 %33, 255
  %call70.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497.3, i32 noundef 3, i32 noundef %and69.3) #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end50.3, %for.inc.2.for.inc.3_crit_edge
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 8
  %and39.4 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.4)
  %tobool40.not.4 = icmp eq i32 %and39.4, 0
  br i1 %tobool40.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end50.4, !prof !544

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

do.end50.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev52, align 4
  %tobool53.not.4 = icmp eq ptr %37, null
  %spec.select497.4 = select i1 %tobool53.not.4, ptr @.str.3, ptr %37
  %arrayidx.4 = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.4, align 4
  %shr.4 = lshr i32 %39, 24
  %call70.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497.4, i32 noundef 4, i32 noundef %shr.4) #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end50.4, %for.inc.3.for.inc.4_crit_edge
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 8
  %and39.5 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.5)
  %tobool40.not.5 = icmp eq i32 %and39.5, 0
  br i1 %tobool40.not.5, label %for.inc.4.for.inc.5_crit_edge, label %do.end50.5, !prof !544

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

do.end50.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev52, align 4
  %tobool53.not.5 = icmp eq ptr %43, null
  %spec.select497.5 = select i1 %tobool53.not.5, ptr @.str.3, ptr %43
  %arrayidx.5 = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.5, align 4
  %shr.5 = lshr i32 %45, 16
  %and69.5 = and i32 %shr.5, 255
  %call70.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497.5, i32 noundef 5, i32 noundef %and69.5) #13
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end50.5, %for.inc.4.for.inc.5_crit_edge
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 8
  %and39.6 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.6)
  %tobool40.not.6 = icmp eq i32 %and39.6, 0
  br i1 %tobool40.not.6, label %for.inc.5.for.inc.6_crit_edge, label %do.end50.6, !prof !544

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

do.end50.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev52, align 4
  %tobool53.not.6 = icmp eq ptr %49, null
  %spec.select497.6 = select i1 %tobool53.not.6, ptr @.str.3, ptr %49
  %arrayidx.6 = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.6, align 4
  %shr.6 = lshr i32 %51, 8
  %and69.6 = and i32 %shr.6, 255
  %call70.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497.6, i32 noundef 6, i32 noundef %and69.6) #13
  br label %for.inc.6

for.inc.6:                                        ; preds = %do.end50.6, %for.inc.5.for.inc.6_crit_edge
  %52 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable, align 8
  %and39.7 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.7)
  %tobool40.not.7 = icmp eq i32 %and39.7, 0
  br i1 %tobool40.not.7, label %for.inc.6.for.inc.7_crit_edge, label %do.end50.7, !prof !544

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

do.end50.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev52, align 4
  %tobool53.not.7 = icmp eq ptr %55, null
  %spec.select497.7 = select i1 %tobool53.not.7, ptr @.str.3, ptr %55
  %arrayidx.7 = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.7, align 4
  %and69.7 = and i32 %57, 255
  %call70.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 139, ptr noundef nonnull %spec.select497.7, i32 noundef 7, i32 noundef %and69.7) #13
  br label %for.inc.7

for.inc.7:                                        ; preds = %do.end50.7, %for.inc.6.for.inc.7_crit_edge
  %pri_pg_tbl = getelementptr inbounds %struct.dcbx_ets_feature, ptr %features, i32 0, i32 2
  %58 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable, align 8
  %and81 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %for.inc.7.for.inc123_crit_edge, label %do.end92, !prof !544

for.inc.7.for.inc123_crit_edge:                   ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123

do.end92:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev52, align 4
  %tobool95.not = icmp eq ptr %61, null
  %spec.select498 = select i1 %tobool95.not, ptr @.str.3, ptr %61
  %62 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pri_pg_tbl, align 4
  %shr117 = lshr i32 %63, 24
  %and118 = and i32 %shr117, 15
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498, i32 noundef 0, i32 noundef %and118) #13
  br label %for.inc123

for.inc123:                                       ; preds = %do.end92, %for.inc.7.for.inc123_crit_edge
  %64 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable, align 8
  %and81.1 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.1)
  %tobool82.not.1 = icmp eq i32 %and81.1, 0
  br i1 %tobool82.not.1, label %for.inc123.for.inc123.1_crit_edge, label %do.end92.1, !prof !544

for.inc123.for.inc123.1_crit_edge:                ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.1

do.end92.1:                                       ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev52, align 4
  %tobool95.not.1 = icmp eq ptr %67, null
  %spec.select498.1 = select i1 %tobool95.not.1, ptr @.str.3, ptr %67
  %68 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pri_pg_tbl, align 4
  %shr117.1 = lshr i32 %69, 28
  %call119.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498.1, i32 noundef 1, i32 noundef %shr117.1) #13
  br label %for.inc123.1

for.inc123.1:                                     ; preds = %do.end92.1, %for.inc123.for.inc123.1_crit_edge
  %70 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_enable, align 8
  %and81.2 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.2)
  %tobool82.not.2 = icmp eq i32 %and81.2, 0
  br i1 %tobool82.not.2, label %for.inc123.1.for.inc123.2_crit_edge, label %do.end92.2, !prof !544

for.inc123.1.for.inc123.2_crit_edge:              ; preds = %for.inc123.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.2

do.end92.2:                                       ; preds = %for.inc123.1
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev52, align 4
  %tobool95.not.2 = icmp eq ptr %73, null
  %spec.select498.2 = select i1 %tobool95.not.2, ptr @.str.3, ptr %73
  %74 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pri_pg_tbl, align 4
  %shr117.2 = lshr i32 %75, 16
  %and118.2 = and i32 %shr117.2, 15
  %call119.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498.2, i32 noundef 2, i32 noundef %and118.2) #13
  br label %for.inc123.2

for.inc123.2:                                     ; preds = %do.end92.2, %for.inc123.1.for.inc123.2_crit_edge
  %76 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_enable, align 8
  %and81.3 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.3)
  %tobool82.not.3 = icmp eq i32 %and81.3, 0
  br i1 %tobool82.not.3, label %for.inc123.2.for.inc123.3_crit_edge, label %do.end92.3, !prof !544

for.inc123.2.for.inc123.3_crit_edge:              ; preds = %for.inc123.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.3

do.end92.3:                                       ; preds = %for.inc123.2
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev52, align 4
  %tobool95.not.3 = icmp eq ptr %79, null
  %spec.select498.3 = select i1 %tobool95.not.3, ptr @.str.3, ptr %79
  %80 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pri_pg_tbl, align 4
  %shr117.3 = lshr i32 %81, 20
  %and118.3 = and i32 %shr117.3, 15
  %call119.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498.3, i32 noundef 3, i32 noundef %and118.3) #13
  br label %for.inc123.3

for.inc123.3:                                     ; preds = %do.end92.3, %for.inc123.2.for.inc123.3_crit_edge
  %82 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %msg_enable, align 8
  %and81.4 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.4)
  %tobool82.not.4 = icmp eq i32 %and81.4, 0
  br i1 %tobool82.not.4, label %for.inc123.3.for.inc123.4_crit_edge, label %do.end92.4, !prof !544

for.inc123.3.for.inc123.4_crit_edge:              ; preds = %for.inc123.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.4

do.end92.4:                                       ; preds = %for.inc123.3
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev52, align 4
  %tobool95.not.4 = icmp eq ptr %85, null
  %spec.select498.4 = select i1 %tobool95.not.4, ptr @.str.3, ptr %85
  %86 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pri_pg_tbl, align 4
  %shr117.4 = lshr i32 %87, 8
  %and118.4 = and i32 %shr117.4, 15
  %call119.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498.4, i32 noundef 4, i32 noundef %and118.4) #13
  br label %for.inc123.4

for.inc123.4:                                     ; preds = %do.end92.4, %for.inc123.3.for.inc123.4_crit_edge
  %88 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_enable, align 8
  %and81.5 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.5)
  %tobool82.not.5 = icmp eq i32 %and81.5, 0
  br i1 %tobool82.not.5, label %for.inc123.4.for.inc123.5_crit_edge, label %do.end92.5, !prof !544

for.inc123.4.for.inc123.5_crit_edge:              ; preds = %for.inc123.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.5

do.end92.5:                                       ; preds = %for.inc123.4
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev52, align 4
  %tobool95.not.5 = icmp eq ptr %91, null
  %spec.select498.5 = select i1 %tobool95.not.5, ptr @.str.3, ptr %91
  %92 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pri_pg_tbl, align 4
  %shr117.5 = lshr i32 %93, 12
  %and118.5 = and i32 %shr117.5, 15
  %call119.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498.5, i32 noundef 5, i32 noundef %and118.5) #13
  br label %for.inc123.5

for.inc123.5:                                     ; preds = %do.end92.5, %for.inc123.4.for.inc123.5_crit_edge
  %94 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable, align 8
  %and81.6 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.6)
  %tobool82.not.6 = icmp eq i32 %and81.6, 0
  br i1 %tobool82.not.6, label %for.inc123.5.for.inc123.6_crit_edge, label %do.end92.6, !prof !544

for.inc123.5.for.inc123.6_crit_edge:              ; preds = %for.inc123.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.6

do.end92.6:                                       ; preds = %for.inc123.5
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev52, align 4
  %tobool95.not.6 = icmp eq ptr %97, null
  %spec.select498.6 = select i1 %tobool95.not.6, ptr @.str.3, ptr %97
  %98 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pri_pg_tbl, align 4
  %and118.6 = and i32 %99, 15
  %call119.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498.6, i32 noundef 6, i32 noundef %and118.6) #13
  br label %for.inc123.6

for.inc123.6:                                     ; preds = %do.end92.6, %for.inc123.5.for.inc123.6_crit_edge
  %100 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %msg_enable, align 8
  %and81.7 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.7)
  %tobool82.not.7 = icmp eq i32 %and81.7, 0
  br i1 %tobool82.not.7, label %for.inc123.6.for.inc123.7_crit_edge, label %do.end92.7, !prof !544

for.inc123.6.for.inc123.7_crit_edge:              ; preds = %for.inc123.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.7

do.end92.7:                                       ; preds = %for.inc123.6
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev52, align 4
  %tobool95.not.7 = icmp eq ptr %103, null
  %spec.select498.7 = select i1 %tobool95.not.7, ptr @.str.3, ptr %103
  %104 = ptrtoint ptr %pri_pg_tbl to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pri_pg_tbl, align 4
  %shr117.7 = lshr i32 %105, 4
  %and118.7 = and i32 %shr117.7, 15
  %call119.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 143, ptr noundef nonnull %spec.select498.7, i32 noundef 7, i32 noundef %and118.7) #13
  br label %for.inc123.7

for.inc123.7:                                     ; preds = %do.end92.7, %for.inc123.6.for.inc123.7_crit_edge
  %106 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %msg_enable, align 8
  %and128 = and i32 %107, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %for.inc123.7.do.body155_crit_edge, label %do.end139, !prof !544

for.inc123.7.do.body155_crit_edge:                ; preds = %for.inc123.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body155

do.end139:                                        ; preds = %for.inc123.7
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev52, align 4
  %tobool142.not = icmp eq ptr %109, null
  %spec.select499 = select i1 %tobool142.not, ptr @.str.3, ptr %109
  %pfc = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 1
  %110 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pfc, align 4
  %conv150 = zext i8 %111 to i32
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.60, i32 noundef 147, ptr noundef nonnull %spec.select499, i32 noundef %conv150) #13
  br label %do.body155

do.body155:                                       ; preds = %do.end139, %for.inc123.7.do.body155_crit_edge
  %112 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %msg_enable, align 8
  %and157 = and i32 %113, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %do.body155.do.body185_crit_edge, label %do.end168, !prof !544

do.body155.do.body185_crit_edge:                  ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body185

do.end168:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev52, align 4
  %tobool171.not = icmp eq ptr %115, null
  %spec.select500 = select i1 %tobool171.not, ptr @.str.3, ptr %115
  %pfc_caps = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %pfc_caps to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pfc_caps, align 1
  %conv180 = zext i8 %117 to i32
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.60, i32 noundef 149, ptr noundef nonnull %spec.select500, i32 noundef %conv180) #13
  br label %do.body185

do.body185:                                       ; preds = %do.end168, %do.body155.do.body185_crit_edge
  %118 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %msg_enable, align 8
  %and187 = and i32 %119, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body185.do.body216_crit_edge, label %do.end198, !prof !544

do.body185.do.body216_crit_edge:                  ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body216

do.end198:                                        ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev52, align 4
  %tobool201.not = icmp eq ptr %121, null
  %spec.select501 = select i1 %tobool201.not, ptr @.str.3, ptr %121
  %enabled210 = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 1, i32 3
  %122 = ptrtoint ptr %enabled210 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %enabled210, align 1
  %conv211 = zext i8 %123 to i32
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.60, i32 noundef 151, ptr noundef nonnull %spec.select501, i32 noundef %conv211) #13
  br label %do.body216

do.body216:                                       ; preds = %do.end198, %do.body185.do.body216_crit_edge
  %124 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msg_enable, align 8
  %and218 = and i32 %125, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %do.body216.do.body245_crit_edge, label %do.end229, !prof !544

do.body216.do.body245_crit_edge:                  ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body245

do.end229:                                        ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev52, align 4
  %tobool232.not = icmp eq ptr %127, null
  %spec.select502 = select i1 %tobool232.not, ptr @.str.3, ptr %127
  %default_pri = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %default_pri to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %default_pri, align 1
  %conv240 = zext i8 %129 to i32
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.60, i32 noundef 154, ptr noundef nonnull %spec.select502, i32 noundef %conv240) #13
  br label %do.body245

do.body245:                                       ; preds = %do.end229, %do.body216.do.body245_crit_edge
  %130 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %msg_enable, align 8
  %and247 = and i32 %131, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %do.body245.do.body275_crit_edge, label %do.end258, !prof !544

do.body245.do.body275_crit_edge:                  ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body275

do.end258:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev52, align 4
  %tobool261.not = icmp eq ptr %133, null
  %spec.select503 = select i1 %tobool261.not, ptr @.str.3, ptr %133
  %tc_supported = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 2
  %134 = ptrtoint ptr %tc_supported to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %tc_supported, align 2
  %conv270 = zext i8 %135 to i32
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.60, i32 noundef 156, ptr noundef nonnull %spec.select503, i32 noundef %conv270) #13
  br label %do.body275

do.body275:                                       ; preds = %do.end258, %do.body245.do.body275_crit_edge
  %136 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %msg_enable, align 8
  %and277 = and i32 %137, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %do.body275.do.body311.preheader_crit_edge, label %do.end288, !prof !544

do.body275.do.body311.preheader_crit_edge:        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body311.preheader

do.end288:                                        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev52, align 4
  %tobool291.not = icmp eq ptr %139, null
  %spec.select504 = select i1 %tobool291.not, ptr @.str.3, ptr %139
  %enabled300 = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 3
  %140 = ptrtoint ptr %enabled300 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %enabled300, align 1
  %conv301 = zext i8 %141 to i32
  %call302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.60, i32 noundef 158, ptr noundef nonnull %spec.select504, i32 noundef %conv301) #13
  br label %do.body311.preheader

do.body311.preheader:                             ; preds = %do.end288, %do.body275.do.body311.preheader_crit_edge
  br label %do.body311

do.body311:                                       ; preds = %for.inc411.do.body311_crit_edge, %do.body311.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc411.do.body311_crit_edge ], [ 0, %do.body311.preheader ]
  %142 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %msg_enable, align 8
  %and313 = and i32 %143, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %do.body311.do.body343_crit_edge, label %do.end324, !prof !544

do.body311.do.body343_crit_edge:                  ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body343

do.end324:                                        ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev52, align 4
  %tobool327.not = icmp eq ptr %145, null
  %spec.select505 = select i1 %tobool327.not, ptr @.str.3, ptr %145
  %arrayidx337 = getelementptr %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 4, i32 %indvars.iv
  %146 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx337, align 4
  %conv338 = zext i16 %147 to i32
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.60, i32 noundef 162, ptr noundef nonnull %spec.select505, i32 noundef %indvars.iv, i32 noundef %conv338) #13
  br label %do.body343

do.body343:                                       ; preds = %do.end324, %do.body311.do.body343_crit_edge
  %148 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %msg_enable, align 8
  %and345 = and i32 %149, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345)
  %tobool346.not = icmp eq i32 %and345, 0
  br i1 %tobool346.not, label %do.body343.do.body377_crit_edge, label %do.end356, !prof !544

do.body343.do.body377_crit_edge:                  ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body377

do.end356:                                        ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev52, align 4
  %tobool359.not = icmp eq ptr %151, null
  %spec.select506 = select i1 %tobool359.not, ptr @.str.3, ptr %151
  %pri_bitmap = getelementptr %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 4, i32 %indvars.iv, i32 1
  %152 = ptrtoint ptr %pri_bitmap to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %pri_bitmap, align 2
  %conv372 = zext i8 %153 to i32
  %call373 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.60, i32 noundef 165, ptr noundef nonnull %spec.select506, i32 noundef %indvars.iv, i32 noundef %conv372) #13
  br label %do.body377

do.body377:                                       ; preds = %do.end356, %do.body343.do.body377_crit_edge
  %154 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %msg_enable, align 8
  %and379 = and i32 %155, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and379)
  %tobool380.not = icmp eq i32 %and379, 0
  br i1 %tobool380.not, label %do.body377.for.inc411_crit_edge, label %do.end390, !prof !544

do.body377.for.inc411_crit_edge:                  ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc411

do.end390:                                        ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev52, align 4
  %tobool393.not = icmp eq ptr %157, null
  %spec.select507 = select i1 %tobool393.not, ptr @.str.3, ptr %157
  %appBitfield = getelementptr %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 4, i32 %indvars.iv, i32 2
  %158 = ptrtoint ptr %appBitfield to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %appBitfield, align 1
  %conv406 = zext i8 %159 to i32
  %call407 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.60, i32 noundef 168, ptr noundef nonnull %spec.select507, i32 noundef %indvars.iv, i32 noundef %conv406) #13
  br label %for.inc411

for.inc411:                                       ; preds = %do.end390, %do.body377.for.inc411_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end413, label %for.inc411.do.body311_crit_edge

for.inc411.do.body311_crit_edge:                  ; preds = %for.inc411
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body311

for.end413:                                       ; preds = %for.inc411
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_get_dcbx_drv_param(ptr noundef %bp, ptr nocapture noundef %features, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  %cos_data.i.i = alloca %struct.cos_help_data, align 4
  %pg_pri_orginal_spread.i = alloca [8 x i32], align 4
  %pg_help_data.i = alloca %struct.pg_help_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %app1.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2
  %traffic_type_priority.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1
  %and.i = and i32 %error, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end13.i_crit_edge, label %do.body.i

entry.if.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 8
  %and2.i = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.if.end13.i_crit_edge, label %do.end.i, !prof !544

do.body.i.if.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %tobool8.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.3, ptr %3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 201, ptr noundef nonnull %spec.select.i) #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i, %do.body.i.if.end13.i_crit_edge, %entry.if.end13.i_crit_edge
  %and14.i = and i32 %error, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end45.i_crit_edge, label %do.body17.i

if.end13.i.if.end45.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

do.body17.i:                                      ; preds = %if.end13.i
  %msg_enable18.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %4 = ptrtoint ptr %msg_enable18.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable18.i, align 8
  %and19.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body17.i.if.end45.i_crit_edge, label %do.end30.i, !prof !544

do.body17.i.if.end45.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

do.end30.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev32.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev32.i, align 4
  %tobool33.not.i = icmp eq ptr %7, null
  %spec.select321.i = select i1 %tobool33.not.i, ptr @.str.3, ptr %7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef 204, ptr noundef nonnull %spec.select321.i) #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end30.i, %do.body17.i.if.end45.i_crit_edge, %if.end13.i.if.end45.i_crit_edge
  %and46.i = and i32 %error, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end77.i_crit_edge, label %do.body49.i

if.end45.i.if.end77.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

do.body49.i:                                      ; preds = %if.end45.i
  %msg_enable50.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %8 = ptrtoint ptr %msg_enable50.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable50.i, align 8
  %and51.i = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %do.body49.i.if.end77.i_crit_edge, label %do.end62.i, !prof !544

do.body49.i.if.end77.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

do.end62.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev64.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %dev64.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev64.i, align 4
  %tobool65.not.i = icmp eq ptr %11, null
  %spec.select322.i = select i1 %tobool65.not.i, ptr @.str.3, ptr %11
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.98, i32 noundef 207, ptr noundef nonnull %spec.select322.i) #13
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end62.i, %do.body49.i.if.end77.i_crit_edge, %if.end45.i.if.end77.i_crit_edge
  %enabled.i = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool78.not.i = icmp ne i8 %13, 0
  %and79.i = and i32 %error, 548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  %or.cond.i = and i1 %tobool80.not.i, %tobool78.not.i
  br i1 %or.cond.i, label %if.then81.i, label %do.body221.i

if.then81.i:                                      ; preds = %if.end77.i
  %14 = ptrtoint ptr %app1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %app1.i, align 4
  %15 = call ptr @memset(ptr %traffic_type_priority.i, i32 0, i32 12)
  %app_pri_tbl.i = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 2, i32 4
  br label %for.body91.i

for.body91.i:                                     ; preds = %cleanup.i.for.body91.i_crit_edge, %if.then81.i
  %indvars.iv.i = phi i32 [ 0, %if.then81.i ], [ %indvars.iv.next.i, %cleanup.i.for.body91.i_crit_edge ]
  %iscsi_pri_found.0339.i = phi i8 [ 0, %if.then81.i ], [ %iscsi_pri_found.1335.i, %cleanup.i.for.body91.i_crit_edge ]
  %fcoe_pri_found.0338.i = phi i8 [ 0, %if.then81.i ], [ %fcoe_pri_found.1332.i, %cleanup.i.for.body91.i_crit_edge ]
  %arrayidx95.i = getelementptr %struct.dcbx_app_priority_entry, ptr %app_pri_tbl.i, i32 %indvars.iv.i
  %appBitfield.i = getelementptr %struct.dcbx_app_priority_entry, ptr %app_pri_tbl.i, i32 %indvars.iv.i, i32 2
  %16 = ptrtoint ptr %appBitfield.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %appBitfield.i, align 1
  %18 = and i8 %17, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %18)
  %.not.i = icmp eq i8 %18, -112
  br i1 %.not.i, label %for.body91.i.if.end141.i_crit_edge, label %if.else.i

for.body91.i.if.end141.i_crit_edge:               ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.i

if.else.i:                                        ; preds = %for.body91.i
  %19 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool112.not.i = icmp eq i8 %19, 0
  br i1 %tobool112.not.i, label %if.else.i.if.else120.i_crit_edge, label %land.lhs.true113.i

if.else.i.if.else120.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.i

land.lhs.true113.i:                               ; preds = %if.else.i
  %20 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx95.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3260, i16 %21)
  %cmp117.i = icmp eq i16 %21, 3260
  br i1 %cmp117.i, label %land.lhs.true113.i.if.end141.i_crit_edge, label %land.lhs.true113.i.if.else120.i_crit_edge

land.lhs.true113.i.if.else120.i_crit_edge:        ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.i

land.lhs.true113.i.if.end141.i_crit_edge:         ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.i

if.else120.i:                                     ; preds = %land.lhs.true113.i.if.else120.i_crit_edge, %if.else.i.if.else120.i_crit_edge
  %22 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool126.not.i = icmp eq i8 %22, 0
  br i1 %tobool126.not.i, label %if.else120.i.cleanup.i_crit_edge, label %land.lhs.true127.i

if.else120.i.cleanup.i_crit_edge:                 ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true127.i:                               ; preds = %if.else120.i
  %23 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx95.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %24)
  %cmp132.i = icmp eq i16 %24, -30458
  br i1 %cmp132.i, label %land.lhs.true127.i.if.end141.i_crit_edge, label %land.lhs.true127.i.cleanup.i_crit_edge

land.lhs.true127.i.cleanup.i_crit_edge:           ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true127.i.if.end141.i_crit_edge:         ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.i

if.end141.i:                                      ; preds = %land.lhs.true127.i.if.end141.i_crit_edge, %land.lhs.true113.i.if.end141.i_crit_edge, %for.body91.i.if.end141.i_crit_edge
  %fcoe_pri_found.1.ph.i = phi i8 [ %fcoe_pri_found.0338.i, %land.lhs.true113.i.if.end141.i_crit_edge ], [ %fcoe_pri_found.0338.i, %for.body91.i.if.end141.i_crit_edge ], [ 1, %land.lhs.true127.i.if.end141.i_crit_edge ]
  %type.0.ph.i = phi i32 [ 2, %land.lhs.true113.i.if.end141.i_crit_edge ], [ 0, %for.body91.i.if.end141.i_crit_edge ], [ 1, %land.lhs.true127.i.if.end141.i_crit_edge ]
  %iscsi_pri_found.1.ph.i = phi i8 [ 1, %land.lhs.true113.i.if.end141.i_crit_edge ], [ %iscsi_pri_found.0339.i, %for.body91.i.if.end141.i_crit_edge ], [ %iscsi_pri_found.0339.i, %land.lhs.true127.i.if.end141.i_crit_edge ]
  %pri_bitmap.i = getelementptr %struct.dcbx_app_priority_entry, ptr %app_pri_tbl.i, i32 %indvars.iv.i, i32 1
  %25 = ptrtoint ptr %pri_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pri_bitmap.i, align 2
  %conv.i.i = zext i8 %26 to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 8, i32 7
  br i1 %tobool.not.i.i, label %while.body.i.i.1, label %if.end141.i.while.end.i.i_crit_edge

if.end141.i.while.end.i.i_crit_edge:              ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i.1:                                 ; preds = %if.end141.i
  %and.i.i.1 = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %and.i.i.1, 0
  %spec.select.i.i.1 = select i1 %tobool.not.i.i.1, i32 8, i32 6
  br i1 %tobool.not.i.i.1, label %while.body.i.i.2, label %while.body.i.i.1.while.end.i.i_crit_edge

while.body.i.i.1.while.end.i.i_crit_edge:         ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i.2:                                 ; preds = %while.body.i.i.1
  %and.i.i.2 = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.2)
  %tobool.not.i.i.2 = icmp eq i32 %and.i.i.2, 0
  %spec.select.i.i.2 = select i1 %tobool.not.i.i.2, i32 8, i32 5
  br i1 %tobool.not.i.i.2, label %while.body.i.i.3, label %while.body.i.i.2.while.end.i.i_crit_edge

while.body.i.i.2.while.end.i.i_crit_edge:         ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i.3:                                 ; preds = %while.body.i.i.2
  %and.i.i.3 = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.3)
  %tobool.not.i.i.3 = icmp eq i32 %and.i.i.3, 0
  %spec.select.i.i.3 = select i1 %tobool.not.i.i.3, i32 8, i32 4
  br i1 %tobool.not.i.i.3, label %while.body.i.i.4, label %while.body.i.i.3.while.end.i.i_crit_edge

while.body.i.i.3.while.end.i.i_crit_edge:         ; preds = %while.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i.4:                                 ; preds = %while.body.i.i.3
  %and.i.i.4 = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.4)
  %tobool.not.i.i.4 = icmp eq i32 %and.i.i.4, 0
  %spec.select.i.i.4 = select i1 %tobool.not.i.i.4, i32 8, i32 3
  br i1 %tobool.not.i.i.4, label %while.body.i.i.5, label %while.body.i.i.4.while.end.i.i_crit_edge

while.body.i.i.4.while.end.i.i_crit_edge:         ; preds = %while.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i.5:                                 ; preds = %while.body.i.i.4
  %and.i.i.5 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.5)
  %tobool.not.i.i.5 = icmp eq i32 %and.i.i.5, 0
  %spec.select.i.i.5 = select i1 %tobool.not.i.i.5, i32 8, i32 2
  br i1 %tobool.not.i.i.5, label %while.body.i.i.6, label %while.body.i.i.5.while.end.i.i_crit_edge

while.body.i.i.5.while.end.i.i_crit_edge:         ; preds = %while.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i.6:                                 ; preds = %while.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.6 = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.6)
  %tobool.not.i.i.6 = icmp eq i32 %and.i.i.6, 0
  %spec.select.i.i.6 = select i1 %tobool.not.i.i.6, i32 8, i32 1
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.6, %while.body.i.i.5.while.end.i.i_crit_edge, %while.body.i.i.4.while.end.i.i_crit_edge, %while.body.i.i.3.while.end.i.i_crit_edge, %while.body.i.i.2.while.end.i.i_crit_edge, %while.body.i.i.1.while.end.i.i_crit_edge, %if.end141.i.while.end.i.i_crit_edge
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i, %if.end141.i.while.end.i.i_crit_edge ], [ %spec.select.i.i.1, %while.body.i.i.1.while.end.i.i_crit_edge ], [ %spec.select.i.i.2, %while.body.i.i.2.while.end.i.i_crit_edge ], [ %spec.select.i.i.3, %while.body.i.i.3.while.end.i.i_crit_edge ], [ %spec.select.i.i.4, %while.body.i.i.4.while.end.i.i_crit_edge ], [ %spec.select.i.i.5, %while.body.i.i.5.while.end.i.i_crit_edge ], [ %spec.select.i.i.6, %while.body.i.i.6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select.i.i.lcssa)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i.lcssa, 8
  br i1 %cmp2.i.i, label %if.then4.i.i, label %while.end.i.i.cleanup.i_crit_edge

while.end.i.i.cleanup.i_crit_edge:                ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then4.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr i32, ptr %traffic_type_priority.i, i32 %type.0.ph.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 %spec.select.i.i.lcssa) #10
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i.i, %while.end.i.i.cleanup.i_crit_edge, %land.lhs.true127.i.cleanup.i_crit_edge, %if.else120.i.cleanup.i_crit_edge
  %iscsi_pri_found.1335.i = phi i8 [ %iscsi_pri_found.0339.i, %land.lhs.true127.i.cleanup.i_crit_edge ], [ %iscsi_pri_found.0339.i, %if.else120.i.cleanup.i_crit_edge ], [ %iscsi_pri_found.1.ph.i, %while.end.i.i.cleanup.i_crit_edge ], [ %iscsi_pri_found.1.ph.i, %if.then4.i.i ]
  %fcoe_pri_found.1332.i = phi i8 [ %fcoe_pri_found.0338.i, %land.lhs.true127.i.cleanup.i_crit_edge ], [ %fcoe_pri_found.0338.i, %if.else120.i.cleanup.i_crit_edge ], [ %fcoe_pri_found.1.ph.i, %while.end.i.i.cleanup.i_crit_edge ], [ %fcoe_pri_found.1.ph.i, %if.then4.i.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %for.end148.i, label %cleanup.i.for.body91.i_crit_edge

cleanup.i.for.body91.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body91.i

for.end148.i:                                     ; preds = %cleanup.i
  %31 = ptrtoint ptr %traffic_type_priority.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %traffic_type_priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp150.not.i = icmp eq i32 %32, 0
  br i1 %cmp150.not.i, label %for.end148.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge, label %if.then152.i

for.end148.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge: ; preds = %for.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_get_ap_feature.exit

if.then152.i:                                     ; preds = %for.end148.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iscsi_pri_found.1335.i)
  %tobool153.not.i = icmp eq i8 %iscsi_pri_found.1335.i, 0
  br i1 %tobool153.not.i, label %if.then154.i, label %if.then152.i.if.end185.i_crit_edge

if.then152.i.if.end185.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185.i

if.then154.i:                                     ; preds = %if.then152.i
  %arrayidx156.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx156.i, align 4
  %msg_enable158.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %34 = ptrtoint ptr %msg_enable158.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable158.i, align 8
  %and159.i = and i32 %35, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %if.then154.i.if.end185.i_crit_edge, label %do.end170.i, !prof !544

if.then154.i.if.end185.i_crit_edge:               ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185.i

do.end170.i:                                      ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev172.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %36 = ptrtoint ptr %dev172.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev172.i, align 4
  %tobool173.not.i = icmp eq ptr %37, null
  %spec.select324.i = select i1 %tobool173.not.i, ptr @.str.3, ptr %37
  %call181.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.98, i32 noundef 257, ptr noundef nonnull %spec.select324.i) #13
  br label %if.end185.i

if.end185.i:                                      ; preds = %do.end170.i, %if.then154.i.if.end185.i_crit_edge, %if.then152.i.if.end185.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fcoe_pri_found.1332.i)
  %tobool186.not.i = icmp eq i8 %fcoe_pri_found.1332.i, 0
  br i1 %tobool186.not.i, label %if.then187.i, label %if.end185.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge

if.end185.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge: ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_get_ap_feature.exit

if.then187.i:                                     ; preds = %if.end185.i
  %38 = ptrtoint ptr %traffic_type_priority.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %traffic_type_priority.i, align 4
  %arrayidx189.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx189.i, align 4
  %msg_enable191.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %41 = ptrtoint ptr %msg_enable191.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable191.i, align 8
  %and192.i = and i32 %42, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %if.then187.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge, label %do.end203.i, !prof !544

if.then187.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge: ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_get_ap_feature.exit

do.end203.i:                                      ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev205.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %43 = ptrtoint ptr %dev205.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev205.i, align 4
  %tobool206.not.i = icmp eq ptr %44, null
  %spec.select325.i = select i1 %tobool206.not.i, ptr @.str.3, ptr %44
  %call214.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.98, i32 noundef 263, ptr noundef nonnull %spec.select325.i) #13
  br label %bnx2x_dcbx_get_ap_feature.exit

do.body221.i:                                     ; preds = %if.end77.i
  %msg_enable222.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %45 = ptrtoint ptr %msg_enable222.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable222.i, align 8
  %and223.i = and i32 %46, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.i)
  %tobool224.not.i = icmp eq i32 %and223.i, 0
  br i1 %tobool224.not.i, label %do.body221.i.do.end248.i_crit_edge, label %do.end234.i, !prof !544

do.body221.i.do.end248.i_crit_edge:               ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end248.i

do.end234.i:                                      ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev236.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %47 = ptrtoint ptr %dev236.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev236.i, align 4
  %tobool237.not.i = icmp eq ptr %48, null
  %spec.select326.i = select i1 %tobool237.not.i, ptr @.str.3, ptr %48
  %call245.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.98, i32 noundef 267, ptr noundef nonnull %spec.select326.i) #13
  br label %do.end248.i

do.end248.i:                                      ; preds = %do.end234.i, %do.body221.i.do.end248.i_crit_edge
  %49 = ptrtoint ptr %app1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %app1.i, align 4
  %50 = call ptr @memset(ptr %traffic_type_priority.i, i32 255, i32 12)
  br label %bnx2x_dcbx_get_ap_feature.exit

bnx2x_dcbx_get_ap_feature.exit:                   ; preds = %do.end248.i, %do.end203.i, %if.then187.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge, %if.end185.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge, %for.end148.i.bnx2x_dcbx_get_ap_feature.exit_crit_edge
  %pfc = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 1
  %and.i8 = and i32 %error, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %bnx2x_dcbx_get_ap_feature.exit.if.end10.i_crit_edge, label %do.body.i11

bnx2x_dcbx_get_ap_feature.exit.if.end10.i_crit_edge: ; preds = %bnx2x_dcbx_get_ap_feature.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

do.body.i11:                                      ; preds = %bnx2x_dcbx_get_ap_feature.exit
  %msg_enable.i10 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %51 = ptrtoint ptr %msg_enable.i10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable.i10, align 8
  %and1.i = and i32 %52, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i11.if.end10.i_crit_edge, label %do.end.i15, !prof !544

do.body.i11.if.end10.i_crit_edge:                 ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

do.end.i15:                                       ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i12 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %53 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i12, align 4
  %tobool7.not.i = icmp eq ptr %54, null
  %spec.select.i13 = select i1 %tobool7.not.i, ptr @.str.3, ptr %54
  %call.i14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef 330, ptr noundef nonnull %spec.select.i13) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i15, %do.body.i11.if.end10.i_crit_edge, %bnx2x_dcbx_get_ap_feature.exit.if.end10.i_crit_edge
  %and11.i = and i32 %error, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end40.i_crit_edge, label %do.body14.i

if.end10.i.if.end40.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

do.body14.i:                                      ; preds = %if.end10.i
  %msg_enable15.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %55 = ptrtoint ptr %msg_enable15.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable15.i, align 8
  %and16.i = and i32 %56, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body14.i.if.end40.i_crit_edge, label %do.end26.i, !prof !544

do.body14.i.if.end40.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

do.end26.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev28.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %57 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev28.i, align 4
  %tobool29.not.i = icmp eq ptr %58, null
  %spec.select105.i = select i1 %tobool29.not.i, ptr @.str.3, ptr %58
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115, i32 noundef 333, ptr noundef nonnull %spec.select105.i) #13
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end26.i, %do.body14.i.if.end40.i_crit_edge, %if.end10.i.if.end40.i_crit_edge
  %dcbx_port_params.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176
  %59 = ptrtoint ptr %app1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %app1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool41.not.i = icmp eq i32 %60, 0
  br i1 %tobool41.not.i, label %if.end40.i.do.body54.i_crit_edge, label %land.lhs.true.i

if.end40.i.do.body54.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i

land.lhs.true.i:                                  ; preds = %if.end40.i
  %enabled42.i = getelementptr inbounds %struct.dcbx_features, ptr %features, i32 0, i32 1, i32 3
  %61 = ptrtoint ptr %enabled42.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %enabled42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool43.not.i = icmp ne i8 %62, 0
  %and45.i = and i32 %error, 274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  %or.cond.i16 = and i1 %tobool46.not.i, %tobool43.not.i
  br i1 %or.cond.i16, label %if.then47.i, label %land.lhs.true.i.do.body54.i_crit_edge

land.lhs.true.i.do.body54.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i

if.then47.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %dcbx_port_params.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %dcbx_port_params.i, align 4
  %64 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pfc, align 1
  %conv51.i = zext i8 %65 to i32
  %neg.i = xor i32 %conv51.i, -1
  br label %bnx2x_dcbx_get_pfc_feature.exit

do.body54.i:                                      ; preds = %land.lhs.true.i.do.body54.i_crit_edge, %if.end40.i.do.body54.i_crit_edge
  %msg_enable55.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %66 = ptrtoint ptr %msg_enable55.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_enable55.i, align 8
  %and56.i = and i32 %67, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %do.body54.i.do.end79.i_crit_edge, label %do.end66.i, !prof !544

do.body54.i.do.end79.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79.i

do.end66.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev68.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %68 = ptrtoint ptr %dev68.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev68.i, align 4
  %tobool69.not.i = icmp eq ptr %69, null
  %spec.select106.i = select i1 %tobool69.not.i, ptr @.str.3, ptr %69
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.115, i32 noundef 341, ptr noundef nonnull %spec.select106.i) #13
  br label %do.end79.i

do.end79.i:                                       ; preds = %do.end66.i, %do.body54.i.do.end79.i_crit_edge
  %70 = ptrtoint ptr %dcbx_port_params.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %dcbx_port_params.i, align 4
  br label %bnx2x_dcbx_get_pfc_feature.exit

bnx2x_dcbx_get_pfc_feature.exit:                  ; preds = %do.end79.i, %if.then47.i
  %.sink.i = phi i32 [ 0, %do.end79.i ], [ %neg.i, %if.then47.i ]
  %priority_non_pauseable_mask85.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 0, i32 1
  %71 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i, ptr %priority_non_pauseable_mask85.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pg_pri_orginal_spread.i) #10
  %72 = call ptr @memset(ptr %pg_pri_orginal_spread.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pg_help_data.i) #10
  %ets1.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1
  %cos_params2.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2
  %73 = call ptr @memset(ptr %pg_help_data.i, i32 0, i32 28)
  %and.i17 = and i32 %error, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %bnx2x_dcbx_get_pfc_feature.exit.if.end14.i_crit_edge, label %do.body.i20

bnx2x_dcbx_get_pfc_feature.exit.if.end14.i_crit_edge: ; preds = %bnx2x_dcbx_get_pfc_feature.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.body.i20:                                      ; preds = %bnx2x_dcbx_get_pfc_feature.exit
  %msg_enable.i19 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %74 = ptrtoint ptr %msg_enable.i19 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable.i19, align 8
  %and3.i = and i32 %75, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i20.if.end14.i_crit_edge, label %do.end.i24, !prof !544

do.body.i20.if.end14.i_crit_edge:                 ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.end.i24:                                       ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i21 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %76 = ptrtoint ptr %dev.i21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i21, align 4
  %tobool9.not.i = icmp eq ptr %77, null
  %spec.select.i22 = select i1 %tobool9.not.i, ptr @.str.3, ptr %77
  %call.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef 286, ptr noundef nonnull %spec.select.i22) #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i24, %do.body.i20.if.end14.i_crit_edge, %bnx2x_dcbx_get_pfc_feature.exit.if.end14.i_crit_edge
  %and15.i = and i32 %error, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end46.i_crit_edge, label %do.body18.i

if.end14.i.if.end46.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

do.body18.i:                                      ; preds = %if.end14.i
  %msg_enable19.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %78 = ptrtoint ptr %msg_enable19.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %msg_enable19.i, align 8
  %and20.i = and i32 %79, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body18.i.if.end46.i_crit_edge, label %do.end31.i, !prof !544

do.body18.i.if.end46.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

do.end31.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev33.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %80 = ptrtoint ptr %dev33.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev33.i, align 4
  %tobool34.not.i = icmp eq ptr %81, null
  %spec.select196.i = select i1 %tobool34.not.i, ptr @.str.3, ptr %81
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123, i32 noundef 289, ptr noundef nonnull %spec.select196.i) #13
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end31.i, %do.body18.i.if.end46.i_crit_edge, %if.end14.i.if.end46.i_crit_edge
  %pauseable.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 0, i32 3
  %82 = ptrtoint ptr %pauseable.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %pauseable.i, align 1
  %strict.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 0, i32 2
  %83 = ptrtoint ptr %strict.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %strict.i, align 4
  %84 = ptrtoint ptr %cos_params2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %cos_params2.i, align 4
  %pri_bitmask.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 0, i32 1
  %85 = ptrtoint ptr %pri_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %pri_bitmask.i, align 4
  %arrayidx.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1
  %pauseable.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1, i32 3
  %86 = ptrtoint ptr %pauseable.1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %pauseable.1.i, align 1
  %strict.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1, i32 2
  %87 = ptrtoint ptr %strict.1.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 3, ptr %strict.1.i, align 4
  %88 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %arrayidx.1.i, align 4
  %pri_bitmask.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 1, i32 1
  %89 = ptrtoint ptr %pri_bitmask.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %pri_bitmask.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 2
  %pauseable.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 2, i32 3
  %90 = ptrtoint ptr %pauseable.2.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %pauseable.2.i, align 1
  %strict.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 2, i32 2
  %91 = ptrtoint ptr %strict.2.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %strict.2.i, align 4
  %92 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %arrayidx.2.i, align 4
  %pri_bitmask.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 2, i32 1
  %93 = ptrtoint ptr %pri_bitmask.2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %pri_bitmask.2.i, align 4
  %94 = ptrtoint ptr %app1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %app1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool51.not.i = icmp eq i32 %95, 0
  br i1 %tobool51.not.i, label %if.end46.i.do.body93.i_crit_edge, label %land.lhs.true.i27

if.end46.i.do.body93.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93.i

land.lhs.true.i27:                                ; preds = %if.end46.i
  %96 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %features, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool53.not.i = icmp ne i32 %97, 0
  %and55.i = and i32 %error, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %or.cond.i26 = and i1 %tobool56.not.i, %tobool53.not.i
  br i1 %or.cond.i26, label %do.body58.i, label %land.lhs.true.i27.do.body93.i_crit_edge

land.lhs.true.i27.do.body93.i_crit_edge:          ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93.i

do.body58.i:                                      ; preds = %land.lhs.true.i27
  %msg_enable59.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %98 = ptrtoint ptr %msg_enable59.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %msg_enable59.i, align 8
  %and60.i = and i32 %99, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %do.body58.i.do.end85.i_crit_edge, label %do.end71.i, !prof !544

do.body58.i.do.end85.i_crit_edge:                 ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end85.i

do.end71.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev73.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %100 = ptrtoint ptr %dev73.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev73.i, align 4
  %tobool74.not.i = icmp eq ptr %101, null
  %spec.select197.i = select i1 %tobool74.not.i, ptr @.str.3, ptr %101
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.123, i32 noundef 302, ptr noundef nonnull %spec.select197.i) #13
  br label %do.end85.i

do.end85.i:                                       ; preds = %do.end71.i, %do.body58.i.do.end85.i_crit_edge
  %102 = ptrtoint ptr %ets1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %ets1.i, align 4
  %pri_pg_tbl.i = getelementptr inbounds %struct.dcbx_ets_feature, ptr %features, i32 0, i32 2
  %dev.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end85.i
  %i.026.i.i = phi i32 [ 0, %do.end85.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %div24.i.i = lshr i32 %i.026.i.i, 3
  %arrayidx.i.i28 = getelementptr i32, ptr %pri_pg_tbl.i, i32 %div24.i.i
  %103 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i28, align 4
  %div125.i.i = lshr i32 %i.026.i.i, 1
  %rem.i.i = and i32 %div125.i.i, 3
  %.neg.i.i = mul nsw i32 %rem.i.i, -8
  %mul.i.i = add nsw i32 %.neg.i.i, 24
  %rem2.i.i = shl i32 %i.026.i.i, 2
  %mul3.i.i = and i32 %rem2.i.i, 4
  %add.i.i = or i32 %mul.i.i, %mul3.i.i
  %shr.i.i = lshr i32 %104, %add.i.i
  %and.i.i29 = and i32 %shr.i.i, 15
  %arrayidx4.i.i = getelementptr i32, ptr %pg_pri_orginal_spread.i, i32 %i.026.i.i
  %105 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and.i.i29, ptr %arrayidx4.i.i, align 4
  %106 = ptrtoint ptr %msg_enable59.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %msg_enable59.i, align 8
  %and5.i.i = and i32 %107, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i30 = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i30, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end.i.i, !prof !544

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %109, null
  %spec.select.i.i31 = select i1 %tobool9.not.i.i, ptr @.str.3, ptr %109
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef 1844, ptr noundef nonnull %spec.select.i.i31, i32 noundef %i.026.i.i, i32 noundef %and.i.i29) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %bnx2x_dcbx_get_ets_pri_pg_tbl.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

bnx2x_dcbx_get_ets_pri_pg_tbl.exit.i:             ; preds = %for.inc.i.i
  %pg.i.i = getelementptr inbounds %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 0, i32 1
  %110 = ptrtoint ptr %pg.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %pg.i.i, align 1
  %pg.1.i.i = getelementptr inbounds %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 1, i32 1
  %111 = ptrtoint ptr %pg.1.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %pg.1.i.i, align 1
  %pg.2.i.i = getelementptr inbounds %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 2, i32 1
  %112 = ptrtoint ptr %pg.2.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -1, ptr %pg.2.i.i, align 1
  %num_of_pg.i.i = getelementptr inbounds %struct.pg_help_data, ptr %pg_help_data.i, i32 0, i32 1
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.inc71.i.i.for.body5.i.i_crit_edge, %bnx2x_dcbx_get_ets_pri_pg_tbl.exit.i
  %add_traf_type.0114.i.i = phi i32 [ 0, %bnx2x_dcbx_get_ets_pri_pg_tbl.exit.i ], [ %inc72.i.i, %for.inc71.i.i.for.body5.i.i_crit_edge ]
  %arrayidx6.i.i = getelementptr i32, ptr %traffic_type_priority.i, i32 %add_traf_type.0114.i.i
  %113 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %114)
  %cmp7.i.i = icmp ult i32 %114, 8
  br i1 %cmp7.i.i, label %if.then.i.i, label %for.body5.i.i.do.body.i.i_crit_edge

for.body5.i.i.do.body.i.i_crit_edge:              ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %for.body5.i.i
  %arrayidx9.i.i = getelementptr i32, ptr %pg_pri_orginal_spread.i, i32 %114
  %115 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx9.i.i, align 4
  %conv.i.i32 = trunc i32 %116 to i8
  %117 = ptrtoint ptr %pg.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pg.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %118, i8 %conv.i.i32)
  %cmp18.i.i = icmp eq i8 %118, %conv.i.i32
  br i1 %cmp18.i.i, label %if.then.i.i.if.then20.i.i_crit_edge, label %for.inc31.i.i

if.then.i.i.if.then20.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %for.inc31.1.i.i.if.then20.i.i_crit_edge, %for.inc31.i.i.if.then20.i.i_crit_edge, %if.then.i.i.if.then20.i.i_crit_edge
  %traf_type.0113.lcssa.i.i = phi i32 [ 0, %if.then.i.i.if.then20.i.i_crit_edge ], [ 1, %for.inc31.i.i.if.then20.i.i_crit_edge ], [ 2, %for.inc31.1.i.i.if.then20.i.i_crit_edge ]
  %pg_priority.i.i = getelementptr %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 %traf_type.0113.lcssa.i.i, i32 2
  %119 = ptrtoint ptr %pg_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pg_priority.i.i, align 4
  %shl.i.i33 = shl nuw nsw i32 1, %114
  %and.i201.i = and i32 %120, %shl.i.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201.i)
  %tobool.not.i202.i = icmp eq i32 %and.i201.i, 0
  br i1 %tobool.not.i202.i, label %if.then23.i.i, label %if.then20.i.i.if.end.i.i_crit_edge

if.then20.i.i.if.end.i.i_crit_edge:               ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then23.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15.le.i.i = getelementptr %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 %traf_type.0113.lcssa.i.i
  %121 = ptrtoint ptr %arrayidx15.le.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx15.le.i.i, align 4
  %inc25.i.i = add i8 %122, 1
  store i8 %inc25.i.i, ptr %arrayidx15.le.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then23.i.i, %if.then20.i.i.if.end.i.i_crit_edge
  %123 = ptrtoint ptr %pg_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pg_priority.i.i, align 4
  %or.i.i = or i32 %124, %shl.i.i33
  store i32 %or.i.i, ptr %pg_priority.i.i, align 4
  br label %do.body.i.i

for.inc31.i.i:                                    ; preds = %if.then.i.i
  %125 = ptrtoint ptr %pg.1.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %pg.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %conv.i.i32)
  %cmp18.1.i.i = icmp eq i8 %126, %conv.i.i32
  br i1 %cmp18.1.i.i, label %for.inc31.i.i.if.then20.i.i_crit_edge, label %for.inc31.1.i.i

for.inc31.i.i.if.then20.i.i_crit_edge:            ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

for.inc31.1.i.i:                                  ; preds = %for.inc31.i.i
  %127 = ptrtoint ptr %pg.2.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %pg.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %conv.i.i32)
  %cmp18.2.i.i = icmp eq i8 %128, %conv.i.i32
  br i1 %cmp18.2.i.i, label %for.inc31.1.i.i.if.then20.i.i_crit_edge, label %for.inc31.2.i.i

for.inc31.1.i.i.if.then20.i.i_crit_edge:          ; preds = %for.inc31.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

for.inc31.2.i.i:                                  ; preds = %for.inc31.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %num_of_pg.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %num_of_pg.i.i, align 4
  %idxprom.i.i = zext i8 %130 to i32
  %pg38.i.i = getelementptr %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 %idxprom.i.i, i32 1
  %131 = ptrtoint ptr %pg38.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv.i.i32, ptr %pg38.i.i, align 1
  %shl40.i.i = shl nuw nsw i32 1, %114
  %pg_priority44.i.i = getelementptr %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 %idxprom.i.i, i32 2
  %132 = ptrtoint ptr %pg_priority44.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %shl40.i.i, ptr %pg_priority44.i.i, align 4
  %arrayidx47.i.i = getelementptr %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 %idxprom.i.i
  %133 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %arrayidx47.i.i, align 4
  %134 = load i8, ptr %num_of_pg.i.i, align 4
  %inc50.i.i = add i8 %134, 1
  store i8 %inc50.i.i, ptr %num_of_pg.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc31.2.i.i, %if.end.i.i, %for.body5.i.i.do.body.i.i_crit_edge
  %pg_found.1.off0.i.i = phi ptr [ @.str.137, %for.inc31.2.i.i ], [ @.str.137, %for.body5.i.i.do.body.i.i_crit_edge ], [ @.str.138, %if.end.i.i ]
  %135 = ptrtoint ptr %msg_enable59.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %msg_enable59.i, align 8
  %and53.i.i = and i32 %136, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %do.body.i.i.for.inc71.i.i_crit_edge, label %do.end.i205.i, !prof !544

do.body.i.i.for.inc71.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc71.i.i

do.end.i205.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %138, null
  %spec.select.i203.i = select i1 %tobool59.not.i.i, ptr @.str.3, ptr %138
  %139 = ptrtoint ptr %num_of_pg.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %num_of_pg.i.i, align 4
  %conv67.i.i = zext i8 %140 to i32
  %call.i204.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, i32 noundef 1159, ptr noundef nonnull %spec.select.i203.i, i32 noundef %add_traf_type.0114.i.i, ptr noundef nonnull %pg_found.1.off0.i.i, i32 noundef %conv67.i.i) #13
  br label %for.inc71.i.i

for.inc71.i.i:                                    ; preds = %do.end.i205.i, %do.body.i.i.for.inc71.i.i_crit_edge
  %inc72.i.i = add nuw nsw i32 %add_traf_type.0114.i.i, 1
  %exitcond.not.i206.i = icmp eq i32 %inc72.i.i, 3
  br i1 %exitcond.not.i206.i, label %bnx2x_dcbx_get_num_pg_traf_type.exit.i, label %for.inc71.i.i.for.body5.i.i_crit_edge

for.inc71.i.i.for.body5.i.i_crit_edge:            ; preds = %for.inc71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5.i.i

bnx2x_dcbx_get_num_pg_traf_type.exit.i:           ; preds = %for.inc71.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cos_data.i.i) #10
  %141 = getelementptr inbounds i8, ptr %cos_data.i.i, i32 8
  %142 = call ptr @memset(ptr %141, i32 0, i32 32)
  %143 = ptrtoint ptr %num_of_pg.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %num_of_pg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp629.not.i.i = icmp eq i8 %144, 0
  br i1 %cmp629.not.i.i, label %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.end.i.i_crit_edge, label %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.body.i211.i_crit_edge

bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.body.i211.i_crit_edge: ; preds = %bnx2x_dcbx_get_num_pg_traf_type.exit.i
  br label %for.body.i211.i

bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.end.i.i_crit_edge: ; preds = %bnx2x_dcbx_get_num_pg_traf_type.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i211.i:                                  ; preds = %if.end.i219.i.for.body.i211.i_crit_edge, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.body.i211.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %if.end.i219.i.for.body.i211.i_crit_edge ], [ 0, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.body.i211.i_crit_edge ]
  %pri_join_mask.0631.i.i = phi i32 [ %or.i217.i, %if.end.i219.i.for.body.i211.i_crit_edge ], [ 0, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.body.i211.i_crit_edge ]
  %num_of_dif_pri.0630.i.i = phi i8 [ %add.i218.i, %if.end.i219.i.for.body.i211.i_crit_edge ], [ 0, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.body.i211.i_crit_edge ]
  %arrayidx.i209.i = getelementptr [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 %indvars.iv.i.i
  %pg.i210.i = getelementptr [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 %indvars.iv.i.i, i32 1
  %145 = ptrtoint ptr %pg.i210.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %pg.i210.i, align 1
  %147 = zext i8 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.306)
  switch i8 %146, label %do.end.i215.i [
    i8 15, label %for.body.i211.i.if.end.i219.i_crit_edge
    i8 7, label %for.body.i211.i.if.end.i219.i_crit_edge53
    i8 6, label %for.body.i211.i.if.end.i219.i_crit_edge54
    i8 5, label %for.body.i211.i.if.end.i219.i_crit_edge55
    i8 4, label %for.body.i211.i.if.end.i219.i_crit_edge56
    i8 3, label %for.body.i211.i.if.end.i219.i_crit_edge57
    i8 2, label %for.body.i211.i.if.end.i219.i_crit_edge58
    i8 1, label %for.body.i211.i.if.end.i219.i_crit_edge59
    i8 0, label %for.body.i211.i.if.end.i219.i_crit_edge60
  ]

for.body.i211.i.if.end.i219.i_crit_edge60:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge59:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge58:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge57:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge56:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge55:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge54:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge53:        ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

for.body.i211.i.if.end.i219.i_crit_edge:          ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219.i

do.end.i215.i:                                    ; preds = %for.body.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i212.i = icmp eq ptr %149, null
  %spec.select.i213.i = select i1 %tobool.not.i212.i, ptr @.str.3, ptr %149
  %conv20.i.i = zext i8 %146 to i32
  %call.i214.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef 1766, ptr noundef nonnull %spec.select.i213.i, i32 noundef %indvars.iv.i.i, i32 noundef %conv20.i.i) #13
  br label %if.end.i219.i

if.end.i219.i:                                    ; preds = %do.end.i215.i, %for.body.i211.i.if.end.i219.i_crit_edge, %for.body.i211.i.if.end.i219.i_crit_edge53, %for.body.i211.i.if.end.i219.i_crit_edge54, %for.body.i211.i.if.end.i219.i_crit_edge55, %for.body.i211.i.if.end.i219.i_crit_edge56, %for.body.i211.i.if.end.i219.i_crit_edge57, %for.body.i211.i.if.end.i219.i_crit_edge58, %for.body.i211.i.if.end.i219.i_crit_edge59, %for.body.i211.i.if.end.i219.i_crit_edge60
  %pg_priority.i216.i = getelementptr [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 %indvars.iv.i.i, i32 2
  %150 = ptrtoint ptr %pg_priority.i216.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pg_priority.i216.i, align 4
  %or.i217.i = or i32 %151, %pri_join_mask.0631.i.i
  %152 = ptrtoint ptr %arrayidx.i209.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.i209.i, align 4
  %add.i218.i = add i8 %153, %num_of_dif_pri.0630.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %154 = ptrtoint ptr %num_of_pg.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %num_of_pg.i.i, align 4
  %156 = zext i8 %155 to i32
  %cmp.i.i34 = icmp ult i32 %indvars.iv.next.i.i, %156
  br i1 %cmp.i.i34, label %if.end.i219.i.for.body.i211.i_crit_edge, label %if.end.i219.i.for.end.i.i_crit_edge

if.end.i219.i.for.end.i.i_crit_edge:              ; preds = %if.end.i219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end.i219.i.for.body.i211.i_crit_edge:          ; preds = %if.end.i219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i211.i

for.end.i.i:                                      ; preds = %if.end.i219.i.for.end.i.i_crit_edge, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.end.i.i_crit_edge
  %num_of_dif_pri.0.lcssa.i.i = phi i8 [ 0, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.end.i.i_crit_edge ], [ %add.i218.i, %if.end.i219.i.for.end.i.i_crit_edge ]
  %pri_join_mask.0.lcssa.i.i = phi i32 [ 0, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.end.i.i_crit_edge ], [ %or.i217.i, %if.end.i219.i.for.end.i.i_crit_edge ]
  %.lcssa628.i.i = phi i8 [ 0, %bnx2x_dcbx_get_num_pg_traf_type.exit.i.for.end.i.i_crit_edge ], [ %155, %if.end.i219.i.for.end.i.i_crit_edge ]
  %num_of_cos.i.i = getelementptr inbounds %struct.cos_help_data, ptr %cos_data.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %cos_data.i.i, align 4
  %pausable.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 0, i32 3
  %158 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %pausable.i.i, align 1
  %159 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 3, ptr %141, align 4
  %cos_bw.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 0, i32 1
  %160 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %cos_bw.i.i, align 4
  %arrayidx40.1.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 1
  %161 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %arrayidx40.1.i.i, align 4
  %pausable.1.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 1, i32 3
  %162 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %pausable.1.i.i, align 1
  %strict.1.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 1, i32 2
  %163 = ptrtoint ptr %strict.1.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 3, ptr %strict.1.i.i, align 4
  %cos_bw.1.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %cos_bw.1.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -1, ptr %cos_bw.1.i.i, align 4
  %arrayidx40.2.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 2
  %165 = ptrtoint ptr %arrayidx40.2.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %arrayidx40.2.i.i, align 4
  %pausable.2.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 2, i32 3
  %166 = ptrtoint ptr %pausable.2.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %pausable.2.i.i, align 1
  %strict.2.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 2, i32 2
  %167 = ptrtoint ptr %strict.2.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 3, ptr %strict.2.i.i, align 4
  %cos_bw.2.i.i = getelementptr inbounds [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 2, i32 1
  %168 = ptrtoint ptr %cos_bw.2.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %cos_bw.2.i.i, align 4
  %common.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %169 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %common.i.i, align 8
  %shr.i220.i = lshr i32 %170, 16
  %trunc.i.i = trunc i32 %shr.i220.i to i16
  %171 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.307)
  switch i16 %trunc.i.i, label %for.end.i.i.if.else.i.i_crit_edge [
    i16 5770, label %for.end.i.i.land.lhs.true139.i.i_crit_edge
    i16 5797, label %for.end.i.i.land.lhs.true139.i.i_crit_edge61
    i16 5801, label %for.end.i.i.land.lhs.true139.i.i_crit_edge62
    i16 5774, label %for.end.i.i.land.lhs.true139.i.i_crit_edge63
    i16 5806, label %for.end.i.i.land.lhs.true139.i.i_crit_edge64
    i16 5807, label %for.end.i.i.land.lhs.true139.i.i_crit_edge65
    i16 5693, label %for.end.i.i.land.lhs.true139.i.i_crit_edge66
    i16 5694, label %for.end.i.i.land.lhs.true139.i.i_crit_edge67
    i16 5695, label %for.end.i.i.land.lhs.true139.i.i_crit_edge68
    i16 5793, label %for.end.i.i.land.lhs.true139.i.i_crit_edge69
    i16 5794, label %for.end.i.i.land.lhs.true139.i.i_crit_edge70
    i16 5773, label %for.end.i.i.land.lhs.true139.i.i_crit_edge71
    i16 5796, label %for.end.i.i.land.lhs.true139.i.i_crit_edge72
    i16 5803, label %for.end.i.i.land.lhs.true139.i.i_crit_edge73
    i16 5805, label %for.end.i.i.land.lhs.true139.i.i_crit_edge74
  ]

for.end.i.i.land.lhs.true139.i.i_crit_edge74:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge73:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge72:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge71:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge70:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge69:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge68:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge67:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge66:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge65:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge64:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge63:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge62:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge61:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.land.lhs.true139.i.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true139.i.i

for.end.i.i.if.else.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true139.i.i:                             ; preds = %for.end.i.i.land.lhs.true139.i.i_crit_edge, %for.end.i.i.land.lhs.true139.i.i_crit_edge61, %for.end.i.i.land.lhs.true139.i.i_crit_edge62, %for.end.i.i.land.lhs.true139.i.i_crit_edge63, %for.end.i.i.land.lhs.true139.i.i_crit_edge64, %for.end.i.i.land.lhs.true139.i.i_crit_edge65, %for.end.i.i.land.lhs.true139.i.i_crit_edge66, %for.end.i.i.land.lhs.true139.i.i_crit_edge67, %for.end.i.i.land.lhs.true139.i.i_crit_edge68, %for.end.i.i.land.lhs.true139.i.i_crit_edge69, %for.end.i.i.land.lhs.true139.i.i_crit_edge70, %for.end.i.i.land.lhs.true139.i.i_crit_edge71, %for.end.i.i.land.lhs.true139.i.i_crit_edge72, %for.end.i.i.land.lhs.true139.i.i_crit_edge73, %for.end.i.i.land.lhs.true139.i.i_crit_edge74
  %and.i221.i = and i32 %170, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and.i221.i)
  %cmp142.i.i = icmp ugt i32 %and.i221.i, 20480
  %sub.i.i = sub nuw nsw i32 61440, %and.i221.i
  %172 = lshr exact i32 %sub.i.i, 1
  %shl.i222.i = and i32 %172, 28672
  %cond154.i.i = select i1 %cmp142.i.i, i32 %shl.i222.i, i32 %and.i221.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cond154.i.i)
  %cmp155.i.i = icmp eq i32 %cond154.i.i, 4096
  br i1 %cmp155.i.i, label %if.then157.i.i, label %land.lhs.true139.i.i.if.else.i.i_crit_edge

land.lhs.true139.i.i.if.else.i.i_crit_edge:       ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then157.i.i:                                   ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.lcssa628.i.i)
  %cmp.i.i.i = icmp ugt i8 %.lcssa628.i.i, 3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.then157.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa628.i.i)
  %cmp14109.not.i.i.i = icmp eq i8 %.lcssa628.i.i, 0
  br i1 %cmp14109.not.i.i.i, label %for.cond.preheader.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_cee_fill_cos_params.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then157.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %174, null
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, ptr @.str.3, ptr %174
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 1455, ptr noundef nonnull %spec.select.i.i.i.i) #13
  %175 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %176, null
  %spec.select.i.i.i = select i1 %tobool5.not.i.i.i, ptr @.str.3, ptr %176
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157, i32 noundef 1711, ptr noundef nonnull %spec.select.i.i.i) #13
  %177 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv.i.i.i.i = and i32 %178, 255
  %conv1.i.i.i.i = xor i32 %conv.i.i.i.i, 255
  %and.i.i.i.i = and i32 %conv1.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  %frombool.i.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %179 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %frombool.i.i.i.i, ptr %pausable.i.i, align 1
  %180 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %pri_join_mask.0.lcssa.i.i, ptr %cos_data.i.i, align 4
  %181 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 100, ptr %cos_bw.i.i, align 4
  br label %bnx2x_dcbx_cee_fill_cos_params.exit.i.i

for.body.i.i.i:                                   ; preds = %if.end66.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %if.end66.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %182 = phi i8 [ %223, %if.end66.i.i.i.for.body.i.i.i_crit_edge ], [ %.lcssa628.i.i, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %entry1.0110.i.i.i = phi i8 [ %entry1.1.i.i.i, %if.end66.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %pg16.i.i.i = getelementptr [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 %indvars.iv.i.i.i, i32 1
  %183 = ptrtoint ptr %pg16.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %pg16.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %184)
  %cmp18.i.i.i = icmp ult i8 %184, 8
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.else.i.i.i

if.then20.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i.i.i = zext i8 %184 to i32
  %idxprom23.i.i.i = zext i8 %entry1.0110.i.i.i to i32
  %arrayidx24.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom23.i.i.i
  %div101.i.i.i = lshr i32 %conv17.i.i.i, 2
  %arrayidx27.i.i.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 %div101.i.i.i
  %185 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx27.i.i.i, align 4
  %rem.i.i.i = shl nuw nsw i32 %conv17.i.i.i, 3
  %sub.i.i.i = and i32 %rem.i.i.i, 24
  %mul.i.i.i = xor i32 %sub.i.i.i, 24
  %shr.i.i.i = lshr i32 %186, %mul.i.i.i
  %and.i.i.i = and i32 %shr.i.i.i, 255
  %cos_bw.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom23.i.i.i, i32 1
  %187 = ptrtoint ptr %cos_bw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %and.i.i.i, ptr %cos_bw.i.i.i, align 4
  %strict.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom23.i.i.i, i32 2
  %188 = ptrtoint ptr %strict.i.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 3, ptr %strict.i.i.i, align 4
  %pg_priority.i.i.i = getelementptr [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 %indvars.iv.i.i.i, i32 2
  %189 = ptrtoint ptr %pg_priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pg_priority.i.i.i, align 4
  %191 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %arrayidx24.i.i.i, align 4
  %192 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv37.i.i.i = and i32 %193, 255
  %conv38.i.i.i = xor i32 %conv37.i.i.i, 255
  %and39.i.i.i = and i32 %conv38.i.i.i, %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i.i)
  %cmp40.i.i.i = icmp ne i32 %and39.i.i.i, 0
  %pausable.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom23.i.i.i, i32 3
  %frombool.i.i.i = zext i1 %cmp40.i.i.i to i8
  %194 = ptrtoint ptr %pausable.i.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %frombool.i.i.i, ptr %pausable.i.i.i, align 1
  %inc.i.i.i = add i8 %entry1.0110.i.i.i, 1
  br label %if.end66.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 %indvars.iv.i.i.i
  %195 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx.i.i.i, align 4
  %add45.i.i.i = sub i8 4, %182
  %197 = tail call i8 @llvm.umin.i8(i8 %196, i8 %add45.i.i.i) #10
  %pg_priority59.i.i.i = getelementptr [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 %indvars.iv.i.i.i, i32 2
  %198 = ptrtoint ptr %pg_priority59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %pg_priority59.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not80.i.i.i.i.i = icmp eq i8 %197, 0
  br i1 %tobool.not80.i.i.i.i.i, label %if.else.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i.i.i

if.else.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i

while.body.lr.ph.i.i.i.i.i:                       ; preds = %if.else.i.i.i
  %conv60.i.i.i = trunc i32 %199 to i8
  br label %while.body.i.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i32 [ 8, %while.body.lr.ph.i.i.i.i.i ], [ %sub.i.i.i.i.i, %if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %strict_pri.084.i.i.i.i.i = phi i8 [ 0, %while.body.lr.ph.i.i.i.i.i ], [ %strict_pri.1.i.i.i.i.i, %if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %strict_app_pris.addr.083.i.i.i.i.i = phi i8 [ %conv60.i.i.i, %while.body.lr.ph.i.i.i.i.i ], [ %strict_app_pris.addr.2.i.i.i.i.i, %if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %num_spread_of_entries.addr.082.i.i.i.i.i = phi i8 [ %197, %while.body.lr.ph.i.i.i.i.i ], [ %num_spread_of_entries.addr.1.i.i.i.i.i, %if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %entry.addr.081.i.i.i.i.i = phi i8 [ %entry1.0110.i.i.i, %while.body.lr.ph.i.i.i.i.i ], [ %entry.addr.1.i.i.i.i.i, %if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = add nsw i32 %indvars.iv.i.i.i.i.i, -1
  %shl.i.i.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %conv6.i.i.i.i.i = and i32 %shl.i.i.i.i.i, 255
  %conv7.i.i.i.i.i = zext i8 %strict_app_pris.addr.083.i.i.i.i.i to i32
  %and.i.i.i.i.i = and i32 %shl.i.i.i.i.i, %conv7.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool8.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i.i, label %while.body.i.i.i.i.i.if.end44.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

while.body.i.i.i.i.i.if.end44.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i.i.i.i
  %idxprom.i.i.i.i.i = zext i8 %entry.addr.081.i.i.i.i.i to i32
  %arrayidx.i.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i.i
  %dec.i.i.i.i.i = add i8 %num_spread_of_entries.addr.082.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i.i.i.i)
  %cmp11.i.i.i.i.i = icmp eq i8 %dec.i.i.i.i.i, 0
  br i1 %cmp11.i.i.i.i.i, label %if.then13.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cos_bw.i.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i.i, i32 1
  %200 = ptrtoint ptr %cos_bw.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %cos_bw.i.i.i.i.i, align 4
  %strict.i.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i.i, i32 2
  %201 = ptrtoint ptr %strict.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %strict_pri.084.i.i.i.i.i, ptr %strict.i.i.i.i.i, align 4
  %202 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv7.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %203 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv17.i.i.i.i.i = xor i32 %204, -1
  %and18.i.i.i.i.i = and i32 %conv17.i.i.i.i.i, %conv7.i.i.i.i.i
  br label %if.end.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %205 = trunc i32 %shl.i.i.i.i.i to i8
  %206 = xor i8 %205, -1
  %conv25.i.i.i.i.i = and i8 %strict_app_pris.addr.083.i.i.i.i.i, %206
  %cos_bw26.i.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i.i, i32 1
  %207 = ptrtoint ptr %cos_bw26.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -1, ptr %cos_bw26.i.i.i.i.i, align 4
  %strict27.i.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i.i, i32 2
  %208 = ptrtoint ptr %strict27.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %strict_pri.084.i.i.i.i.i, ptr %strict27.i.i.i.i.i, align 4
  %209 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv6.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %210 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv35.i.i.i.i.i = and i32 %211, 255
  %conv36.i.i.i.i.i = xor i32 %conv35.i.i.i.i.i, 255
  %and37.i.i.i.i.i = and i32 %conv36.i.i.i.i.i, %shl.i.i.i.i.i
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.i, %if.then13.i.i.i.i.i
  %frombool41.sink.in.in.i.i.i.i.i = phi i32 [ %and18.i.i.i.i.i, %if.then13.i.i.i.i.i ], [ %and37.i.i.i.i.i, %if.else.i.i.i.i.i ]
  %strict_app_pris.addr.1.i.i.i.i.i = phi i8 [ %strict_app_pris.addr.083.i.i.i.i.i, %if.then13.i.i.i.i.i ], [ %conv25.i.i.i.i.i, %if.else.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frombool41.sink.in.in.i.i.i.i.i)
  %frombool41.sink.in.i.i.i.i.i = icmp ne i32 %frombool41.sink.in.in.i.i.i.i.i, 0
  %frombool41.sink.i.i.i.i.i = zext i1 %frombool41.sink.in.i.i.i.i.i to i8
  %212 = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i.i, i32 3
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %frombool41.sink.i.i.i.i.i, ptr %212, align 1
  %add.i.i.i.i.i = add i8 %strict_pri.084.i.i.i.i.i, 1
  %inc.i.i.i.i.i = add i8 %entry.addr.081.i.i.i.i.i, 1
  br label %if.end44.i.i.i.i.i

if.end44.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i, %while.body.i.i.i.i.i.if.end44.i.i.i.i.i_crit_edge
  %entry.addr.1.i.i.i.i.i = phi i8 [ %inc.i.i.i.i.i, %if.end.i.i.i.i.i ], [ %entry.addr.081.i.i.i.i.i, %while.body.i.i.i.i.i.if.end44.i.i.i.i.i_crit_edge ]
  %num_spread_of_entries.addr.1.i.i.i.i.i = phi i8 [ %dec.i.i.i.i.i, %if.end.i.i.i.i.i ], [ %num_spread_of_entries.addr.082.i.i.i.i.i, %while.body.i.i.i.i.i.if.end44.i.i.i.i.i_crit_edge ]
  %strict_app_pris.addr.2.i.i.i.i.i = phi i8 [ %strict_app_pris.addr.1.i.i.i.i.i, %if.end.i.i.i.i.i ], [ %strict_app_pris.addr.083.i.i.i.i.i, %while.body.i.i.i.i.i.if.end44.i.i.i.i.i_crit_edge ]
  %strict_pri.1.i.i.i.i.i = phi i8 [ %add.i.i.i.i.i, %if.end.i.i.i.i.i ], [ %strict_pri.084.i.i.i.i.i, %while.body.i.i.i.i.i.if.end44.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_spread_of_entries.addr.1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i8 %num_spread_of_entries.addr.1.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %sub.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i1 true, i1 %cmp.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %while.end.i.i.i.i.i, label %if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge

if.end44.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge: ; preds = %if.end44.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i.i.i

while.end.i.i.i.i.i:                              ; preds = %if.end44.i.i.i.i.i
  br i1 %tobool.not.i.i.i.i.i, label %while.end.i.i.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

while.end.i.i.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge: ; preds = %while.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %214 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i.i, align 4
  %tobool49.not.i.i.i.i.i = icmp eq ptr %215, null
  %spec.select.i.i.i.i.i = select i1 %tobool49.not.i.i.i.i.i, ptr @.str.3, ptr %215
  %call.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, i32 noundef 1662, ptr noundef nonnull %spec.select.i.i.i.i.i) #13
  %idxprom.i.i.i.i = zext i8 %entry1.0110.i.i.i to i32
  %arrayidx.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i
  %cos_bw.i102.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i, i32 1
  %216 = ptrtoint ptr %cos_bw.i102.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1, ptr %cos_bw.i102.i.i.i, align 4
  %strict.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i, i32 2
  %217 = ptrtoint ptr %strict.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %strict.i.i.i.i, align 4
  %conv.i103.i.i.i = and i32 %199, 255
  %218 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %conv.i103.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %219 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv5.i.i.i.i = xor i32 %220, -1
  %and.i104.i.i.i = and i32 %conv.i103.i.i.i, %conv5.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104.i.i.i)
  %cmp.i105.i.i.i = icmp ne i32 %and.i104.i.i.i, 0
  %pausable.i106.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %idxprom.i.i.i.i, i32 3
  %frombool.i107.i.i.i = zext i1 %cmp.i105.i.i.i to i8
  %221 = ptrtoint ptr %pausable.i106.i.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %frombool.i107.i.i.i, ptr %pausable.i106.i.i.i, align 1
  br label %bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i

bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i:        ; preds = %if.then.i.i.i.i, %while.end.i.i.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge, %if.else.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge
  %retval.0.i108.i.i.i = phi i8 [ 1, %if.then.i.i.i.i ], [ %197, %while.end.i.i.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge ], [ 0, %if.else.i.i.i.bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i_crit_edge ]
  %add64.i.i.i = add i8 %retval.0.i108.i.i.i, %entry1.0110.i.i.i
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i, %if.then20.i.i.i
  %entry1.1.i.i.i = phi i8 [ %inc.i.i.i, %if.then20.i.i.i ], [ %add64.i.i.i, %bnx2x_dcbx_cee_fill_strict_pri.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %222 = ptrtoint ptr %num_of_pg.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %num_of_pg.i.i, align 4
  %224 = zext i8 %223 to i32
  %cmp14.i.i.i = icmp ult i32 %indvars.iv.next.i.i.i, %224
  br i1 %cmp14.i.i.i, label %if.end66.i.i.i.for.body.i.i.i_crit_edge, label %if.end66.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge

if.end66.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge: ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_cee_fill_cos_params.exit.i.i

if.end66.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

bnx2x_dcbx_cee_fill_cos_params.exit.i.i:          ; preds = %if.end66.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge, %do.end.i.i.i, %for.cond.preheader.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge
  %entry1.0.lcssa.sink.i.i.i = phi i8 [ 1, %do.end.i.i.i ], [ 0, %for.cond.preheader.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge ], [ %entry1.1.i.i.i, %if.end66.i.i.i.bnx2x_dcbx_cee_fill_cos_params.exit.i.i_crit_edge ]
  %225 = ptrtoint ptr %num_of_cos.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %entry1.0.lcssa.sink.i.i.i, ptr %num_of_cos.i.i, align 4
  br label %if.end158.i.i

if.else.i.i:                                      ; preds = %land.lhs.true139.i.i.if.else.i.i_crit_edge, %for.end.i.i.if.else.i.i_crit_edge
  %226 = ptrtoint ptr %num_of_cos.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 2, ptr %num_of_cos.i.i, align 4
  %227 = zext i8 %.lcssa628.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %227, ptr @__sancov_gen_cov_switch_values.308)
  switch i8 %.lcssa628.i.i, label %do.end.i623.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
    i8 3, label %sw.bb2.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_of_dif_pri.0.lcssa.i.i)
  %cmp.i.i604.i.i = icmp eq i8 %num_of_dif_pri.0.lcssa.i.i, 1
  br i1 %cmp.i.i604.i.i, label %if.then.i.i607.i.i, label %if.end.i.i.i.i

if.then.i.i607.i.i:                               ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %228 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv.i.i.i.i.i = and i32 %229, 255
  %conv1.i.i.i.i.i = xor i32 %conv.i.i.i.i.i, 255
  %and.i.i.i605.i.i = and i32 %conv1.i.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i605.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %and.i.i.i605.i.i, %pri_join_mask.0.lcssa.i.i
  %frombool.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i8
  %230 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %frombool.i.i.i.i.i, ptr %pausable.i.i, align 1
  %231 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %pri_join_mask.0.lcssa.i.i, ptr %cos_data.i.i, align 4
  br label %for.body165.lr.ph.sink.split.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %232 = ptrtoint ptr %pg.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %pg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %233)
  %cmp3.i.i.i.i = icmp ult i8 %233, 8
  %234 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %and.i.i609.i.i = and i32 %235, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i609.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp7.i.i.i.i = icmp eq i32 %and.i.i609.i.i, %pri_join_mask.0.lcssa.i.i
  %.pre.i.i.i.i = and i32 %235, 255
  %.pre340.i.i.i.i = xor i32 %.pre.i.i.i.i, 255
  %.pre341.i.i.i.i = and i32 %.pre340.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre341.i.i.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp15.i.i.i.i = icmp eq i32 %.pre341.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  %or.cond.i.i.i.i = select i1 %cmp7.i.i.i.i, i1 true, i1 %cmp15.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then5.i.i.i.i, label %if.else129.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.else78.i.i.i.i, label %if.then17.i.i.i.i

if.then17.i.i.i.i:                                ; preds = %if.then5.i.i.i.i
  %236 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %pausable.i.i, align 1
  %237 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %pausable.1.i.i, align 1
  %238 = zext i8 %num_of_dif_pri.0.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.309)
  switch i8 %num_of_dif_pri.0.lcssa.i.i, label %if.then17.i.i.i.i.if.end158thread-pre-split.i.i_crit_edge [
    i8 2, label %if.then26.i.i.i.i
    i8 3, label %if.then36.i.i.i.i
  ]

if.then17.i.i.i.i.if.end158thread-pre-split.i.i_crit_edge: ; preds = %if.then17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158thread-pre-split.i.i

if.then26.i.i.i.i:                                ; preds = %if.then17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %239 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 50, ptr %cos_bw.i.i, align 4
  %240 = ptrtoint ptr %cos_bw.1.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 50, ptr %cos_bw.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

if.then36.i.i.i.i:                                ; preds = %if.then17.i.i.i.i
  %241 = tail call i32 @llvm.ctpop.i32(i32 %.pre341.i.i.i.i) #10, !range !560
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %241)
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %if.then63.i.i.i.i, label %if.else.i.i.i.i

if.then63.i.i.i.i:                                ; preds = %if.then36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 33, ptr %cos_bw.i.i, align 4
  %244 = ptrtoint ptr %cos_bw.1.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 67, ptr %cos_bw.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

if.else.i.i.i.i:                                  ; preds = %if.then36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 67, ptr %cos_bw.i.i, align 4
  %246 = ptrtoint ptr %cos_bw.1.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 33, ptr %cos_bw.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

if.else78.i.i.i.i:                                ; preds = %if.then5.i.i.i.i
  br i1 %cmp15.i.i.i.i, label %if.then88.i.i.i.i, label %if.else126.i.i.i.i

if.then88.i.i.i.i:                                ; preds = %if.else78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_of_dif_pri.0.lcssa.i.i)
  %cmp90.i.i.i.i = icmp eq i8 %num_of_dif_pri.0.lcssa.i.i, 2
  %spec.select345.i.i.i.i = select i1 %cmp90.i.i.i.i, i32 50, i32 67
  %spec.select346.i.i.i.i = select i1 %cmp90.i.i.i.i, i32 50, i32 33
  %247 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %spec.select345.i.i.i.i, ptr %cos_bw.i.i, align 4
  %248 = ptrtoint ptr %cos_bw.1.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %spec.select346.i.i.i.i, ptr %cos_bw.1.i.i, align 4
  %249 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %pausable.1.i.i, align 1
  %250 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %pausable.i.i, align 1
  %arrayidx113.i.i.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %251 = ptrtoint ptr %arrayidx113.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx113.i.i.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %252
  %conv115.i.i.i.i = and i32 %shl.i.i.i.i, 255
  %conv116.i.i.i.i = xor i32 %conv115.i.i.i.i, 255
  %and117.i.i.i.i = and i32 %conv116.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  %253 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %and117.i.i.i.i, ptr %cos_data.i.i, align 4
  %254 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %shl.i.i.i.i, ptr %arrayidx40.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

if.else126.i.i.i.i:                               ; preds = %if.else78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %255 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %pri_join_mask.0.lcssa.i.i, ptr %cos_data.i.i, align 4
  br label %for.body165.lr.ph.sink.split.i.i

if.else129.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.else180.i.i.i.i, label %if.then146.i.i.i.i

if.then146.i.i.i.i:                               ; preds = %if.else129.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre341.i.i.i.i, i32 %and.i.i609.i.i)
  %cmp158.i.i.i.i = icmp ugt i32 %.pre341.i.i.i.i, %and.i.i609.i.i
  %not.cmp158.i.i.i.i = xor i1 %cmp158.i.i.i.i, true
  %spec.select348.i.i.i.i = zext i1 %not.cmp158.i.i.i.i to i8
  %spec.select349.i.i.i.i = zext i1 %cmp158.i.i.i.i to i8
  %256 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %spec.select348.i.i.i.i, ptr %141, align 4
  %257 = ptrtoint ptr %strict.1.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %spec.select349.i.i.i.i, ptr %strict.1.i.i, align 4
  %258 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 1, ptr %pausable.i.i, align 1
  %259 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %pausable.1.i.i, align 1
  br label %if.end158thread-pre-split.i.i

if.else180.i.i.i.i:                               ; preds = %if.else129.i.i.i.i
  %frombool.i.i612.i.i = zext i1 %cmp15.i.i.i.i to i8
  %260 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %frombool.i.i612.i.i, ptr %pausable.1.i.i, align 1
  %261 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %frombool.i.i612.i.i, ptr %pausable.i.i, align 1
  %262 = ptrtoint ptr %traffic_type_priority.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %traffic_type_priority.i, align 4
  %shl204.i.i.i.i = shl nuw i32 1, %263
  %conv206.i.i.i.i = and i32 %shl204.i.i.i.i, 255
  %conv207.i.i.i.i = xor i32 %conv206.i.i.i.i, 255
  %and208.i.i.i.i = and i32 %conv207.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and208.i.i.i.i, i32 %shl204.i.i.i.i)
  %cmp209.i.i.i.i = icmp ult i32 %and208.i.i.i.i, %shl204.i.i.i.i
  br i1 %cmp209.i.i.i.i, label %if.else180.i.i.i.i.if.end222.i.i.i.i_crit_edge, label %for.inc.i.i.i.i

if.else180.i.i.i.i.if.end222.i.i.i.i_crit_edge:   ; preds = %if.else180.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.else180.i.i.i.i
  %arrayidx203.1.i.i.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %264 = ptrtoint ptr %arrayidx203.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx203.1.i.i.i.i, align 4
  %shl204.1.i.i.i.i = shl nuw i32 1, %265
  %conv206.1.i.i.i.i = and i32 %shl204.1.i.i.i.i, 255
  %conv207.1.i.i.i.i = xor i32 %conv206.1.i.i.i.i, 255
  %and208.1.i.i.i.i = and i32 %conv207.1.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and208.1.i.i.i.i, i32 %shl204.1.i.i.i.i)
  %cmp209.1.i.i.i.i = icmp ult i32 %and208.1.i.i.i.i, %shl204.1.i.i.i.i
  br i1 %cmp209.1.i.i.i.i, label %for.inc.i.i.i.i.if.end222.i.i.i.i_crit_edge, label %for.inc.1.i.i.i.i

for.inc.i.i.i.i.if.end222.i.i.i.i_crit_edge:      ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i.i.i.i

for.inc.1.i.i.i.i:                                ; preds = %for.inc.i.i.i.i
  %arrayidx203.2.i.i.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 2
  %266 = ptrtoint ptr %arrayidx203.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx203.2.i.i.i.i, align 4
  %shl204.2.i.i.i.i = shl nuw i32 1, %267
  %conv206.2.i.i.i.i = and i32 %shl204.2.i.i.i.i, 255
  %conv207.2.i.i.i.i = xor i32 %conv206.2.i.i.i.i, 255
  %and208.2.i.i.i.i = and i32 %conv207.2.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and208.2.i.i.i.i, i32 %shl204.2.i.i.i.i)
  %cmp209.2.i.i.i.i = icmp ult i32 %and208.2.i.i.i.i, %shl204.2.i.i.i.i
  br i1 %cmp209.2.i.i.i.i, label %for.inc.1.i.i.i.i.if.end222.i.i.i.i_crit_edge, label %do.end.i.i.i.i

for.inc.1.i.i.i.i.if.end222.i.i.i.i_crit_edge:    ; preds = %for.inc.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %for.inc.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %268 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i.i614.i.i = icmp eq ptr %269, null
  %spec.select.i.i615.i.i = select i1 %tobool.not.i.i614.i.i, ptr @.str.3, ptr %269
  %call.i.i616.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165, i32 noundef 1349, ptr noundef nonnull %spec.select.i.i615.i.i) #13
  br label %if.end222.i.i.i.i

if.end222.i.i.i.i:                                ; preds = %do.end.i.i.i.i, %for.inc.1.i.i.i.i.if.end222.i.i.i.i_crit_edge, %for.inc.i.i.i.i.if.end222.i.i.i.i_crit_edge, %if.else180.i.i.i.i.if.end222.i.i.i.i_crit_edge
  %shl204336.i.i.i.i = phi i32 [ %shl204.2.i.i.i.i, %do.end.i.i.i.i ], [ %shl204.i.i.i.i, %if.else180.i.i.i.i.if.end222.i.i.i.i_crit_edge ], [ %shl204.1.i.i.i.i, %for.inc.i.i.i.i.if.end222.i.i.i.i_crit_edge ], [ %shl204.2.i.i.i.i, %for.inc.1.i.i.i.i.if.end222.i.i.i.i_crit_edge ]
  %and208334.i.i.i.i = phi i32 [ %and208.2.i.i.i.i, %do.end.i.i.i.i ], [ %and208.i.i.i.i, %if.else180.i.i.i.i.if.end222.i.i.i.i_crit_edge ], [ %and208.1.i.i.i.i, %for.inc.i.i.i.i.if.end222.i.i.i.i_crit_edge ], [ %and208.2.i.i.i.i, %for.inc.1.i.i.i.i.if.end222.i.i.i.i_crit_edge ]
  %270 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %and208334.i.i.i.i, ptr %cos_data.i.i, align 4
  %271 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %shl204336.i.i.i.i, ptr %arrayidx40.1.i.i, align 4
  %272 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %141, align 4
  %273 = ptrtoint ptr %strict.1.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %strict.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

sw.bb1.i.i.i:                                     ; preds = %if.else.i.i
  %274 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %and.i26.i.i.i = and i32 %275, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i26.i.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp.i27.i.i.i = icmp eq i32 %and.i26.i.i.i, %pri_join_mask.0.lcssa.i.i
  %.pre.i28.i.i.i = and i32 %275, 255
  %.pre5.i.i.i.i = xor i32 %.pre.i28.i.i.i, 255
  %.pre6.i.i.i.i = and i32 %.pre5.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre6.i.i.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp6.i.i.i.i = icmp eq i32 %.pre6.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  %or.cond7.i.i.i.i = select i1 %cmp.i27.i.i.i, i1 true, i1 %cmp6.i.i.i.i
  br i1 %or.cond7.i.i.i.i, label %if.else127.i.i.i.i, label %if.then.i31.i.i.i

if.then.i31.i.i.i:                                ; preds = %sw.bb1.i.i.i
  %pg_priority.i.i.i.i = getelementptr inbounds %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 0, i32 2
  %276 = ptrtoint ptr %pg_priority.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %pg_priority.i.i.i.i, align 4
  %and14.i.i.i.i = and i32 %277, %275
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %and14.i.i.i.i)
  %cmp15.i29.i.i.i = icmp eq i32 %277, %and14.i.i.i.i
  %and30.i.i.i.i = and i32 %277, %.pre5.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %and30.i.i.i.i)
  %cmp31.i.i.i.i = icmp eq i32 %277, %and30.i.i.i.i
  %or.cond.i30.i.i.i = select i1 %cmp15.i29.i.i.i, i1 true, i1 %cmp31.i.i.i.i
  br i1 %or.cond.i30.i.i.i, label %lor.lhs.false33.i.i.i.i, label %if.then.i31.i.i.i.if.then62.i.i.i.i_crit_edge

if.then.i31.i.i.i.if.then62.i.i.i.i_crit_edge:    ; preds = %if.then.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i.i.i.i

lor.lhs.false33.i.i.i.i:                          ; preds = %if.then.i31.i.i.i
  %pg_priority36.i.i.i.i = getelementptr inbounds [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 1, i32 2
  %278 = ptrtoint ptr %pg_priority36.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %pg_priority36.i.i.i.i, align 4
  %and43.i32.i.i.i = and i32 %279, %275
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %and43.i32.i.i.i)
  %cmp44.i.i.i.i = icmp eq i32 %279, %and43.i32.i.i.i
  %and59.i.i.i.i = and i32 %279, %.pre5.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %and59.i.i.i.i)
  %cmp60.i.i.i.i = icmp eq i32 %279, %and59.i.i.i.i
  %or.cond2.i.i.i.i = select i1 %cmp44.i.i.i.i, i1 true, i1 %cmp60.i.i.i.i
  br i1 %or.cond2.i.i.i.i, label %if.end.i34.i.i.i, label %lor.lhs.false33.i.i.i.i.if.then62.i.i.i.i_crit_edge

lor.lhs.false33.i.i.i.i.if.then62.i.i.i.i_crit_edge: ; preds = %lor.lhs.false33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i.i.i.i

if.then62.i.i.i.i:                                ; preds = %lor.lhs.false33.i.i.i.i.if.then62.i.i.i.i_crit_edge, %if.then.i31.i.i.i.if.then62.i.i.i.i_crit_edge
  call fastcc void @bnx2x_dcbx_separate_pauseable_from_non(ptr noundef %bp, ptr noundef nonnull %cos_data.i.i, ptr noundef nonnull %pg_pri_orginal_spread.i, ptr noundef %features) #10
  %280 = ptrtoint ptr %ets1.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %ets1.i, align 4
  br label %if.end158thread-pre-split.i.i

if.end.i34.i.i.i:                                 ; preds = %lor.lhs.false33.i.i.i.i
  %281 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 1, ptr %pausable.i.i, align 1
  %282 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %pausable.1.i.i, align 1
  br i1 %cmp31.i.i.i.i, label %if.then85.i.i.i.i, label %if.else.i35.i.i.i

if.then85.i.i.i.i:                                ; preds = %if.end.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %283 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %277, ptr %cos_data.i.i, align 4
  %284 = ptrtoint ptr %pg.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %pg.i.i, align 1
  br label %if.end164.i.i.i.i

if.else.i35.i.i.i:                                ; preds = %if.end.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %286 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %279, ptr %cos_data.i.i, align 4
  %287 = ptrtoint ptr %pg.1.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %pg.1.i.i, align 1
  br label %if.end164.i.i.i.i

if.else127.i.i.i.i:                               ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %frombool.i36.i.i.i = zext i1 %cmp6.i.i.i.i to i8
  %289 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %frombool.i36.i.i.i, ptr %pausable.1.i.i, align 1
  %290 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %frombool.i36.i.i.i, ptr %pausable.i.i, align 1
  %pg_priority146.i.i.i.i = getelementptr inbounds %struct.pg_entry_help_data, ptr %pg_help_data.i, i32 0, i32 2
  %291 = ptrtoint ptr %pg_priority146.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %pg_priority146.i.i.i.i, align 4
  %293 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %cos_data.i.i, align 4
  %294 = ptrtoint ptr %pg.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %pg.i.i, align 1
  %pg_priority156.i.i.i.i = getelementptr inbounds [3 x %struct.pg_entry_help_data], ptr %pg_help_data.i, i32 0, i32 1, i32 2
  %296 = ptrtoint ptr %pg_priority156.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %pg_priority156.i.i.i.i, align 4
  br label %if.end164.i.i.i.i

if.end164.i.i.i.i:                                ; preds = %if.else127.i.i.i.i, %if.else.i35.i.i.i, %if.then85.i.i.i.i
  %.sink.i35 = phi i32 [ %297, %if.else127.i.i.i.i ], [ %277, %if.else.i35.i.i.i ], [ %279, %if.then85.i.i.i.i ]
  %pg.sroa.7.0.in.i.i.i.i = phi ptr [ %pg.1.i.i, %if.else127.i.i.i.i ], [ %pg.i.i, %if.else.i35.i.i.i ], [ %pg.1.i.i, %if.then85.i.i.i.i ]
  %pg.sroa.0.0.i.i.i.i = phi i8 [ %295, %if.else127.i.i.i.i ], [ %288, %if.else.i35.i.i.i ], [ %285, %if.then85.i.i.i.i ]
  %298 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %.sink.i35, ptr %arrayidx40.1.i.i, align 4
  %299 = ptrtoint ptr %pg.sroa.7.0.in.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %pg.sroa.7.0.i.i.i.i = load i8, ptr %pg.sroa.7.0.in.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %pg.sroa.0.0.i.i.i.i)
  %cmp170.i.i.i.i = icmp ult i8 %pg.sroa.0.0.i.i.i.i, 8
  br i1 %cmp170.i.i.i.i, label %if.then172.i.i.i.i, label %if.else190.i.i.i.i

if.then172.i.i.i.i:                               ; preds = %if.end164.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i.i.i = zext i8 %pg.sroa.0.0.i.i.i.i to i32
  %div1.i.i.i.i = lshr i32 %conv169.i.i.i.i, 2
  %arrayidx176.i.i.i.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 %div1.i.i.i.i
  %300 = ptrtoint ptr %arrayidx176.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx176.i.i.i.i, align 4
  %rem.i.i.i.i = shl nuw nsw i32 %conv169.i.i.i.i, 3
  %sub.i.i.i.i = and i32 %rem.i.i.i.i, 24
  %mul.i.i.i.i = xor i32 %sub.i.i.i.i, 24
  %shr.i.i.i.i = lshr i32 %301, %mul.i.i.i.i
  %and186.i.i.i.i = and i32 %shr.i.i.i.i, 255
  %302 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %and186.i.i.i.i, ptr %cos_bw.i.i, align 4
  br label %for.inc.i38.i.i.i

if.else190.i.i.i.i:                               ; preds = %if.end164.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %303 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 0, ptr %141, align 4
  br label %for.inc.i38.i.i.i

for.inc.i38.i.i.i:                                ; preds = %if.else190.i.i.i.i, %if.then172.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %pg.sroa.7.0.i.i.i.i)
  %cmp170.1.i.i.i.i = icmp ult i8 %pg.sroa.7.0.i.i.i.i, 8
  br i1 %cmp170.1.i.i.i.i, label %if.then172.1.i.i.i.i, label %if.else190.1.i.i.i.i

if.else190.1.i.i.i.i:                             ; preds = %for.inc.i38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %304 = ptrtoint ptr %strict.1.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %strict.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

if.then172.1.i.i.i.i:                             ; preds = %for.inc.i38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.1.i.i.i.i = zext i8 %pg.sroa.7.0.i.i.i.i to i32
  %div1.1.i.i.i.i = lshr i32 %conv169.1.i.i.i.i, 2
  %arrayidx176.1.i.i.i.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 %div1.1.i.i.i.i
  %305 = ptrtoint ptr %arrayidx176.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx176.1.i.i.i.i, align 4
  %rem.1.i.i.i.i = shl nuw nsw i32 %conv169.1.i.i.i.i, 3
  %sub.1.i.i.i.i = and i32 %rem.1.i.i.i.i, 24
  %mul.1.i.i.i.i = xor i32 %sub.1.i.i.i.i, 24
  %shr.1.i.i.i.i = lshr i32 %306, %mul.1.i.i.i.i
  %and186.1.i.i.i.i = and i32 %shr.1.i.i.i.i, 255
  %307 = ptrtoint ptr %cos_bw.1.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %and186.1.i.i.i.i, ptr %cos_bw.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

sw.bb2.i.i.i:                                     ; preds = %if.else.i.i
  %308 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %and.i40.i.i.i = and i32 %309, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i40.i.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp.i41.i.i.i = icmp eq i32 %and.i40.i.i.i, %pri_join_mask.0.lcssa.i.i
  %.pre.i42.i.i.i = and i32 %309, 255
  %.pre6.i43.i.i.i = xor i32 %.pre.i42.i.i.i, 255
  %.pre7.i.i.i.i = and i32 %.pre6.i43.i.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre7.i.i.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp11.i.i.i.i = icmp eq i32 %.pre7.i.i.i.i, %pri_join_mask.0.lcssa.i.i
  %or.cond.i44.i.i.i = select i1 %cmp.i41.i.i.i, i1 true, i1 %cmp11.i.i.i.i
  br i1 %or.cond.i44.i.i.i, label %if.else.i51.i.i.i, label %if.then.i45.i.i.i

if.then.i45.i.i.i:                                ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @bnx2x_dcbx_separate_pauseable_from_non(ptr noundef %bp, ptr noundef nonnull %cos_data.i.i, ptr noundef nonnull %pg_pri_orginal_spread.i, ptr noundef %features) #10
  br label %if.end158thread-pre-split.i.i

if.else.i51.i.i.i:                                ; preds = %sw.bb2.i.i.i
  %frombool.i47.i.i.i = zext i1 %cmp11.i.i.i.i to i8
  %310 = ptrtoint ptr %pausable.1.i.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %frombool.i47.i.i.i, ptr %pausable.1.i.i, align 1
  %311 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %frombool.i47.i.i.i, ptr %pausable.i.i, align 1
  %312 = ptrtoint ptr %traffic_type_priority.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %traffic_type_priority.i, align 4
  %shl.i49.i.i.i = shl nuw i32 1, %313
  %arrayidx39.i.i.i.i = getelementptr i32, ptr %pg_pri_orginal_spread.i, i32 %313
  %314 = ptrtoint ptr %arrayidx39.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx39.i.i.i.i, align 4
  %conv41.i50.i.i.i = and i32 %315, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv41.i50.i.i.i)
  %cmp42.i.i.i.i = icmp ult i32 %conv41.i50.i.i.i, 8
  br i1 %cmp42.i.i.i.i, label %if.then44.i.i.i.i, label %if.else67.i.i.i.i

if.then44.i.i.i.i:                                ; preds = %if.else.i51.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %316 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %shl.i49.i.i.i, ptr %cos_data.i.i, align 4
  %div2.i.i.i.i = lshr i32 %conv41.i50.i.i.i, 2
  %arrayidx58.i.i.i.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 %div2.i.i.i.i
  %317 = ptrtoint ptr %arrayidx58.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx58.i.i.i.i, align 4
  %rem.i52.i.i.i = shl i32 %315, 3
  %sub61.i.i.i.i = and i32 %rem.i52.i.i.i, 24
  %mul.i53.i.i.i = xor i32 %sub61.i.i.i.i, 24
  %shr.i54.i.i.i = lshr i32 %318, %mul.i53.i.i.i
  %conv2.i.i.i.i.i = and i32 %shr.i54.i.i.i, 255
  %319 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %conv2.i.i.i.i.i, ptr %cos_bw.i.i, align 4
  br label %for.inc.i57.i.i.i

if.else67.i.i.i.i:                                ; preds = %if.else.i51.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %320 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %shl.i49.i.i.i, ptr %arrayidx40.1.i.i, align 4
  %321 = ptrtoint ptr %strict.1.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 0, ptr %strict.1.i.i, align 4
  br label %for.inc.i57.i.i.i

for.inc.i57.i.i.i:                                ; preds = %if.else67.i.i.i.i, %if.then44.i.i.i.i
  %arrayidx33.1.i.i.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %322 = ptrtoint ptr %arrayidx33.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx33.1.i.i.i.i, align 4
  %shl.1.i.i.i.i = shl nuw i32 1, %323
  %arrayidx39.1.i.i.i.i = getelementptr i32, ptr %pg_pri_orginal_spread.i, i32 %323
  %324 = ptrtoint ptr %arrayidx39.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx39.1.i.i.i.i, align 4
  %conv41.1.i.i.i.i = and i32 %325, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv41.1.i.i.i.i)
  %cmp42.1.i.i.i.i = icmp ult i32 %conv41.1.i.i.i.i, 8
  br i1 %cmp42.1.i.i.i.i, label %if.then44.1.i.i.i.i, label %if.else67.1.i.i.i.i

if.else67.1.i.i.i.i:                              ; preds = %for.inc.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %326 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx40.1.i.i, align 4
  %or71.1.i.i.i.i = or i32 %327, %shl.1.i.i.i.i
  store i32 %or71.1.i.i.i.i, ptr %arrayidx40.1.i.i, align 4
  %328 = ptrtoint ptr %strict.1.i.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 0, ptr %strict.1.i.i, align 4
  br label %for.inc.1.i61.i.i.i

if.then44.1.i.i.i.i:                              ; preds = %for.inc.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %329 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %cos_data.i.i, align 4
  %or.1.i.i.i.i = or i32 %330, %shl.1.i.i.i.i
  store i32 %or.1.i.i.i.i, ptr %cos_data.i.i, align 4
  %div2.1.i.i.i.i = lshr i32 %conv41.1.i.i.i.i, 2
  %arrayidx58.1.i.i.i.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 %div2.1.i.i.i.i
  %331 = ptrtoint ptr %arrayidx58.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx58.1.i.i.i.i, align 4
  %rem.1.i58.i.i.i = shl i32 %325, 3
  %sub61.1.i.i.i.i = and i32 %rem.1.i58.i.i.i, 24
  %mul.1.i59.i.i.i = xor i32 %sub61.1.i.i.i.i, 24
  %shr.1.i60.i.i.i = lshr i32 %332, %mul.1.i59.i.i.i
  %333 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %cos_bw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %334)
  %cmp.i.1.i.i.i.i = icmp eq i32 %334, -1
  %conv2.i.1.i.i.i.i = and i32 %shr.1.i60.i.i.i, 255
  %add.i.1.i.i.i.i = select i1 %cmp.i.1.i.i.i.i, i32 0, i32 %334
  %storemerge.i.1.i.i.i.i = add i32 %add.i.1.i.i.i.i, %conv2.i.1.i.i.i.i
  %335 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %storemerge.i.1.i.i.i.i, ptr %cos_bw.i.i, align 4
  %phi.cast.i.i.i.i = zext i1 %cmp42.i.i.i.i to i32
  br label %for.inc.1.i61.i.i.i

for.inc.1.i61.i.i.i:                              ; preds = %if.then44.1.i.i.i.i, %if.else67.1.i.i.i.i
  %b_found_strict.1.off0.1.i.i.i.i = phi i32 [ %phi.cast.i.i.i.i, %if.then44.1.i.i.i.i ], [ 0, %if.else67.1.i.i.i.i ]
  %arrayidx33.2.i.i.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 2
  %336 = ptrtoint ptr %arrayidx33.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx33.2.i.i.i.i, align 4
  %shl.2.i.i.i.i = shl nuw i32 1, %337
  %arrayidx39.2.i.i.i.i = getelementptr i32, ptr %pg_pri_orginal_spread.i, i32 %337
  %338 = ptrtoint ptr %arrayidx39.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx39.2.i.i.i.i, align 4
  %conv41.2.i.i.i.i = and i32 %339, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv41.2.i.i.i.i)
  %cmp42.2.i.i.i.i = icmp ult i32 %conv41.2.i.i.i.i, 8
  br i1 %cmp42.2.i.i.i.i, label %if.then44.2.i.i.i.i, label %if.else67.2.i.i.i.i

if.else67.2.i.i.i.i:                              ; preds = %for.inc.1.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %340 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx40.1.i.i, align 4
  %or71.2.i.i.i.i = or i32 %341, %shl.2.i.i.i.i
  store i32 %or71.2.i.i.i.i, ptr %arrayidx40.1.i.i, align 4
  %342 = ptrtoint ptr %strict.1.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 0, ptr %strict.1.i.i, align 4
  br label %if.end158thread-pre-split.i.i

if.then44.2.i.i.i.i:                              ; preds = %for.inc.1.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx52.2.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %b_found_strict.1.off0.1.i.i.i.i
  %343 = ptrtoint ptr %arrayidx52.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx52.2.i.i.i.i, align 4
  %or.2.i.i.i.i = or i32 %344, %shl.2.i.i.i.i
  store i32 %or.2.i.i.i.i, ptr %arrayidx52.2.i.i.i.i, align 4
  %div2.2.i.i.i.i = lshr i32 %conv41.2.i.i.i.i, 2
  %arrayidx58.2.i.i.i.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 %div2.2.i.i.i.i
  %345 = ptrtoint ptr %arrayidx58.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx58.2.i.i.i.i, align 4
  %rem.2.i.i.i.i = shl i32 %339, 3
  %sub61.2.i.i.i.i = and i32 %rem.2.i.i.i.i, 24
  %mul.2.i.i.i.i = xor i32 %sub61.2.i.i.i.i, 24
  %shr.2.i.i.i.i = lshr i32 %346, %mul.2.i.i.i.i
  %cos_bw.i.2.i.i.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %b_found_strict.1.off0.1.i.i.i.i, i32 1
  %347 = ptrtoint ptr %cos_bw.i.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %cos_bw.i.2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %348)
  %cmp.i.2.i.i.i.i = icmp eq i32 %348, -1
  %conv2.i.2.i.i.i.i = and i32 %shr.2.i.i.i.i, 255
  %add.i.2.i.i.i.i = select i1 %cmp.i.2.i.i.i.i, i32 0, i32 %348
  %storemerge.i.2.i.i.i.i = add i32 %add.i.2.i.i.i.i, %conv2.i.2.i.i.i.i
  %349 = ptrtoint ptr %cos_bw.i.2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %storemerge.i.2.i.i.i.i, ptr %cos_bw.i.2.i.i.i.i, align 4
  br label %if.end158thread-pre-split.i.i

do.end.i623.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %350 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %351, null
  %spec.select.i620.i.i = select i1 %tobool.not.i.i.i, ptr @.str.3, ptr %351
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef 1614, ptr noundef nonnull %spec.select.i620.i.i) #13
  %352 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv.i.i621.i.i = and i32 %353, 255
  %conv1.i.i622.i.i = xor i32 %conv.i.i621.i.i, 255
  %and.i63.i.i.i = and i32 %conv1.i.i622.i.i, %pri_join_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i63.i.i.i, i32 %pri_join_mask.0.lcssa.i.i)
  %cmp.i64.i.i.i = icmp eq i32 %and.i63.i.i.i, %pri_join_mask.0.lcssa.i.i
  %frombool.i66.i.i.i = zext i1 %cmp.i64.i.i.i to i8
  %354 = ptrtoint ptr %pausable.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %frombool.i66.i.i.i, ptr %pausable.i.i, align 1
  %355 = ptrtoint ptr %cos_data.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %pri_join_mask.0.lcssa.i.i, ptr %cos_data.i.i, align 4
  br label %for.body165.lr.ph.sink.split.i.i

if.end158thread-pre-split.i.i:                    ; preds = %if.then44.2.i.i.i.i, %if.else67.2.i.i.i.i, %if.then.i45.i.i.i, %if.then172.1.i.i.i.i, %if.else190.1.i.i.i.i, %if.then62.i.i.i.i, %if.end222.i.i.i.i, %if.then146.i.i.i.i, %if.then88.i.i.i.i, %if.else.i.i.i.i, %if.then63.i.i.i.i, %if.then26.i.i.i.i, %if.then17.i.i.i.i.if.end158thread-pre-split.i.i_crit_edge
  %356 = ptrtoint ptr %num_of_cos.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %.pr651.i.i = load i8, ptr %num_of_cos.i.i, align 4
  br label %if.end158.i.i

if.end158.i.i:                                    ; preds = %if.end158thread-pre-split.i.i, %bnx2x_dcbx_cee_fill_cos_params.exit.i.i
  %357 = phi i8 [ %.pr651.i.i, %if.end158thread-pre-split.i.i ], [ %entry1.0.lcssa.sink.i.i.i, %bnx2x_dcbx_cee_fill_cos_params.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %cmp163637.not.i.i = icmp eq i8 %357, 0
  br i1 %cmp163637.not.i.i, label %if.end158.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge, label %if.end158.i.i.for.body165.lr.ph.i.i_crit_edge

if.end158.i.i.for.body165.lr.ph.i.i_crit_edge:    ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body165.lr.ph.i.i

if.end158.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge: ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_fill_cos_params.exit.i

for.body165.lr.ph.sink.split.i.i:                 ; preds = %do.end.i623.i.i, %if.else126.i.i.i.i, %if.then.i.i607.i.i
  %358 = ptrtoint ptr %cos_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 100, ptr %cos_bw.i.i, align 4
  %359 = ptrtoint ptr %num_of_cos.i.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 1, ptr %num_of_cos.i.i, align 4
  br label %for.body165.lr.ph.i.i

for.body165.lr.ph.i.i:                            ; preds = %for.body165.lr.ph.sink.split.i.i, %if.end158.i.i.for.body165.lr.ph.i.i_crit_edge
  %360 = phi i8 [ %357, %if.end158.i.i.for.body165.lr.ph.i.i_crit_edge ], [ 1, %for.body165.lr.ph.sink.split.i.i ]
  %wide.trip.count.i.i = zext i8 %360 to i32
  br label %for.body165.i.i

for.body165.i.i:                                  ; preds = %if.end477.i.i.for.body165.i.i_crit_edge, %for.body165.lr.ph.i.i
  %indvars.iv649.i.i = phi i32 [ 0, %for.body165.lr.ph.i.i ], [ %indvars.iv.next650.i.i, %if.end477.i.i.for.body165.i.i_crit_edge ]
  %arrayidx168.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv649.i.i
  %arrayidx171.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %indvars.iv649.i.i
  %strict172.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %indvars.iv649.i.i, i32 2
  %361 = ptrtoint ptr %strict172.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %strict172.i.i, align 4
  %strict173.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv649.i.i, i32 2
  %363 = ptrtoint ptr %strict173.i.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %strict173.i.i, align 4
  %cos_bw177.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %indvars.iv649.i.i, i32 1
  %364 = ptrtoint ptr %cos_bw177.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %cos_bw177.i.i, align 4
  %366 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %arrayidx168.i.i, align 4
  %367 = ptrtoint ptr %arrayidx171.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx171.i.i, align 4
  %pri_bitmask.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv649.i.i, i32 1
  %369 = ptrtoint ptr %pri_bitmask.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %pri_bitmask.i.i, align 4
  %pausable185.i.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data.i.i, i32 0, i32 %indvars.iv649.i.i, i32 3
  %370 = ptrtoint ptr %pausable185.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %pausable185.i.i, align 1, !range !561
  %pauseable.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv649.i.i, i32 3
  %372 = ptrtoint ptr %pauseable.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %371, ptr %pauseable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %365)
  %cmp189.not.i.i = icmp eq i32 %365, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %362)
  %cmp194.not.i.i = icmp eq i8 %362, 3
  %or.cond.i.i36 = select i1 %cmp189.not.i.i, i1 %cmp194.not.i.i, i1 false
  br i1 %or.cond.i.i36, label %for.body165.i.i.if.end411.i.i_crit_edge, label %if.then196.i.i

for.body165.i.i.if.end411.i.i_crit_edge:          ; preds = %for.body165.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end411.i.i

if.then196.i.i:                                   ; preds = %for.body165.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %cmp198.i.i = icmp eq i32 %368, 0
  br i1 %cmp198.i.i, label %do.end204.i.i, label %if.then196.i.i.if.end219.i.i_crit_edge

if.then196.i.i.if.end219.i.i_crit_edge:           ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end219.i.i

do.end204.i.i:                                    ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %373 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %dev.i.i, align 4
  %tobool207.not.i.i = icmp eq ptr %374, null
  %spec.select597.i.i = select i1 %tobool207.not.i.i, ptr @.str.3, ptr %374
  %call216.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.140, i32 noundef 1804, ptr noundef nonnull %spec.select597.i.i, i32 noundef %indvars.iv649.i.i) #13
  br label %if.end219.i.i

if.end219.i.i:                                    ; preds = %do.end204.i.i, %if.then196.i.i.if.end219.i.i_crit_edge
  %375 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %common.i.i, align 8
  %shr222.i.i = lshr i32 %376, 16
  %trunc627.i.i = trunc i32 %shr222.i.i to i16
  %377 = zext i16 %trunc627.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %377, ptr @__sancov_gen_cov_switch_values.310)
  switch i16 %trunc627.i.i, label %if.end219.i.i.if.end411thread-pre-split.i.i_crit_edge [
    i16 5730, label %if.end219.i.i.if.then348.i.i_crit_edge
    i16 5731, label %if.end219.i.i.if.then348.i.i_crit_edge75
    i16 5743, label %if.end219.i.i.if.then348.i.i_crit_edge76
    i16 5770, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge
    i16 5797, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge77
    i16 5801, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge78
    i16 5774, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge79
    i16 5806, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge80
    i16 5807, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge81
    i16 5693, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge82
    i16 5694, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge83
    i16 5695, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge84
    i16 5793, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge85
    i16 5794, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge86
    i16 5773, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge87
    i16 5796, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge88
    i16 5803, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge89
    i16 5805, label %if.end219.i.i.land.lhs.true327.i.i_crit_edge90
  ]

if.end219.i.i.land.lhs.true327.i.i_crit_edge90:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge89:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge88:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge87:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge86:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge85:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge84:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge83:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge82:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge81:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge80:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge79:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge78:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge77:   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.land.lhs.true327.i.i_crit_edge:     ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i.i

if.end219.i.i.if.then348.i.i_crit_edge76:         ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then348.i.i

if.end219.i.i.if.then348.i.i_crit_edge75:         ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then348.i.i

if.end219.i.i.if.then348.i.i_crit_edge:           ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then348.i.i

if.end219.i.i.if.end411thread-pre-split.i.i_crit_edge: ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end411thread-pre-split.i.i

land.lhs.true327.i.i:                             ; preds = %if.end219.i.i.land.lhs.true327.i.i_crit_edge, %if.end219.i.i.land.lhs.true327.i.i_crit_edge77, %if.end219.i.i.land.lhs.true327.i.i_crit_edge78, %if.end219.i.i.land.lhs.true327.i.i_crit_edge79, %if.end219.i.i.land.lhs.true327.i.i_crit_edge80, %if.end219.i.i.land.lhs.true327.i.i_crit_edge81, %if.end219.i.i.land.lhs.true327.i.i_crit_edge82, %if.end219.i.i.land.lhs.true327.i.i_crit_edge83, %if.end219.i.i.land.lhs.true327.i.i_crit_edge84, %if.end219.i.i.land.lhs.true327.i.i_crit_edge85, %if.end219.i.i.land.lhs.true327.i.i_crit_edge86, %if.end219.i.i.land.lhs.true327.i.i_crit_edge87, %if.end219.i.i.land.lhs.true327.i.i_crit_edge88, %if.end219.i.i.land.lhs.true327.i.i_crit_edge89, %if.end219.i.i.land.lhs.true327.i.i_crit_edge90
  %and330.i.i = and i32 %376, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and330.i.i)
  %cmp331.i.i = icmp ugt i32 %and330.i.i, 20480
  %sub337.i.i = sub nuw nsw i32 61440, %and330.i.i
  %378 = lshr exact i32 %sub337.i.i, 1
  %shl339.i.i = and i32 %378, 28672
  %cond345.i.i = select i1 %cmp331.i.i, i32 %shl339.i.i, i32 %and330.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond345.i.i)
  %cmp346.i.i = icmp eq i32 %cond345.i.i, 0
  br i1 %cmp346.i.i, label %land.lhs.true327.i.i.if.then348.i.i_crit_edge, label %land.lhs.true327.i.i.if.end411thread-pre-split.i.i_crit_edge

land.lhs.true327.i.i.if.end411thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true327.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end411thread-pre-split.i.i

land.lhs.true327.i.i.if.then348.i.i_crit_edge:    ; preds = %land.lhs.true327.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then348.i.i

if.then348.i.i:                                   ; preds = %land.lhs.true327.i.i.if.then348.i.i_crit_edge, %if.end219.i.i.if.then348.i.i_crit_edge, %if.end219.i.i.if.then348.i.i_crit_edge75, %if.end219.i.i.if.then348.i.i_crit_edge76
  %379 = ptrtoint ptr %pauseable.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %pauseable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool351.not.i.i = icmp eq i8 %380, 0
  br i1 %tobool351.not.i.i, label %if.then348.i.i.land.lhs.true380.i.i_crit_edge, label %land.lhs.true352.i.i

if.then348.i.i.land.lhs.true380.i.i_crit_edge:    ; preds = %if.then348.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true380.i.i

land.lhs.true352.i.i:                             ; preds = %if.then348.i.i
  %381 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %383 = ptrtoint ptr %pri_bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %pri_bitmask.i.i, align 4
  %and355.i.i = and i32 %384, %382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355.i.i)
  %cmp356.not.i.i = icmp eq i32 %and355.i.i, 0
  br i1 %cmp356.not.i.i, label %land.lhs.true352.i.i.if.end377.i.i_crit_edge, label %do.end362.i.i

land.lhs.true352.i.i.if.end377.i.i_crit_edge:     ; preds = %land.lhs.true352.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end377.i.i

do.end362.i.i:                                    ; preds = %land.lhs.true352.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %385 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev.i.i, align 4
  %tobool365.not.i.i = icmp eq ptr %386, null
  %spec.select598.i.i = select i1 %tobool365.not.i.i, ptr @.str.3, ptr %386
  %call374.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.140, i32 noundef 1812, ptr noundef nonnull %spec.select598.i.i, i32 noundef %indvars.iv649.i.i) #13
  br label %if.end377.i.i

if.end377.i.i:                                    ; preds = %do.end362.i.i, %land.lhs.true352.i.i.if.end377.i.i_crit_edge
  %387 = ptrtoint ptr %pauseable.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %.pr.i.i = load i8, ptr %pauseable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool379.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool379.not.i.i, label %if.end377.i.i.land.lhs.true380.i.i_crit_edge, label %if.end377.i.i.do.body415.i.i_crit_edge

if.end377.i.i.do.body415.i.i_crit_edge:           ; preds = %if.end377.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body415.i.i

if.end377.i.i.land.lhs.true380.i.i_crit_edge:     ; preds = %if.end377.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true380.i.i

land.lhs.true380.i.i:                             ; preds = %if.end377.i.i.land.lhs.true380.i.i_crit_edge, %if.then348.i.i.land.lhs.true380.i.i_crit_edge
  %388 = ptrtoint ptr %pri_bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %pri_bitmask.i.i, align 4
  %390 = ptrtoint ptr %priority_non_pauseable_mask85.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %priority_non_pauseable_mask85.i, align 4
  %conv385.i.i = and i32 %391, 255
  %conv386.i.i = xor i32 %conv385.i.i, 255
  %and387.i.i = and i32 %conv386.i.i, %389
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and387.i.i)
  %cmp388.not.i.i = icmp eq i32 %and387.i.i, 0
  br i1 %cmp388.not.i.i, label %land.lhs.true380.i.i.if.end411thread-pre-split.i.i_crit_edge, label %do.end394.i.i

land.lhs.true380.i.i.if.end411thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true380.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end411thread-pre-split.i.i

do.end394.i.i:                                    ; preds = %land.lhs.true380.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %392 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dev.i.i, align 4
  %tobool397.not.i.i = icmp eq ptr %393, null
  %spec.select599.i.i = select i1 %tobool397.not.i.i, ptr @.str.3, ptr %393
  %call406.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.140, i32 noundef 1818, ptr noundef nonnull %spec.select599.i.i, i32 noundef %indvars.iv649.i.i) #13
  br label %if.end411thread-pre-split.i.i

if.end411thread-pre-split.i.i:                    ; preds = %do.end394.i.i, %land.lhs.true380.i.i.if.end411thread-pre-split.i.i_crit_edge, %land.lhs.true327.i.i.if.end411thread-pre-split.i.i_crit_edge, %if.end219.i.i.if.end411thread-pre-split.i.i_crit_edge
  %394 = ptrtoint ptr %pauseable.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %.pr625.i.i = load i8, ptr %pauseable.i.i, align 1
  br label %if.end411.i.i

if.end411.i.i:                                    ; preds = %if.end411thread-pre-split.i.i, %for.body165.i.i.if.end411.i.i_crit_edge
  %395 = phi i8 [ %.pr625.i.i, %if.end411thread-pre-split.i.i ], [ %371, %for.body165.i.i.if.end411.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool413.not.i.i = icmp eq i8 %395, 0
  br i1 %tobool413.not.i.i, label %do.body444.i.i, label %if.end411.i.i.do.body415.i.i_crit_edge

if.end411.i.i.do.body415.i.i_crit_edge:           ; preds = %if.end411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body415.i.i

do.body415.i.i:                                   ; preds = %if.end411.i.i.do.body415.i.i_crit_edge, %if.end377.i.i.do.body415.i.i_crit_edge
  %396 = ptrtoint ptr %msg_enable59.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %msg_enable59.i, align 8
  %and416.i.i = and i32 %397, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.i.i)
  %tobool417.not.i.i = icmp eq i32 %and416.i.i, 0
  br i1 %tobool417.not.i.i, label %do.body415.i.i.if.end477.i.i_crit_edge, label %do.end423.i.i, !prof !544

do.body415.i.i.if.end477.i.i_crit_edge:           ; preds = %do.body415.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end477.i.i

do.end423.i.i:                                    ; preds = %do.body415.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %398 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %dev.i.i, align 4
  %tobool426.not.i.i = icmp eq ptr %399, null
  %spec.select600.i.i = select i1 %tobool426.not.i.i, ptr @.str.3, ptr %399
  %400 = ptrtoint ptr %arrayidx171.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx171.i.i, align 4
  %call439.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.140, i32 noundef 1824, ptr noundef nonnull %spec.select600.i.i, i32 noundef %indvars.iv649.i.i, i32 noundef %401) #13
  br label %if.end477.i.i

do.body444.i.i:                                   ; preds = %if.end411.i.i
  %402 = ptrtoint ptr %msg_enable59.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %msg_enable59.i, align 8
  %and446.i.i = and i32 %403, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and446.i.i)
  %tobool447.not.i.i = icmp eq i32 %and446.i.i, 0
  br i1 %tobool447.not.i.i, label %do.body444.i.i.if.end477.i.i_crit_edge, label %do.end457.i.i, !prof !544

do.body444.i.i.if.end477.i.i_crit_edge:           ; preds = %do.body444.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end477.i.i

do.end457.i.i:                                    ; preds = %do.body444.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %404 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %dev.i.i, align 4
  %tobool460.not.i.i = icmp eq ptr %405, null
  %spec.select601.i.i = select i1 %tobool460.not.i.i, ptr @.str.3, ptr %405
  %406 = ptrtoint ptr %arrayidx171.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx171.i.i, align 4
  %call473.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.140, i32 noundef 1828, ptr noundef nonnull %spec.select601.i.i, i32 noundef %indvars.iv649.i.i, i32 noundef %407) #13
  br label %if.end477.i.i

if.end477.i.i:                                    ; preds = %do.end457.i.i, %do.body444.i.i.if.end477.i.i_crit_edge, %do.end423.i.i, %do.body415.i.i.if.end477.i.i_crit_edge
  %indvars.iv.next650.i.i = add nuw nsw i32 %indvars.iv649.i.i, 1
  %exitcond.not.i224.i = icmp eq i32 %indvars.iv.next650.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i224.i, label %if.end477.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge, label %if.end477.i.i.for.body165.i.i_crit_edge

if.end477.i.i.for.body165.i.i_crit_edge:          ; preds = %if.end477.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body165.i.i

if.end477.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge: ; preds = %if.end477.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_fill_cos_params.exit.i

bnx2x_dcbx_fill_cos_params.exit.i:                ; preds = %if.end477.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge, %if.end158.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge
  %408 = phi i8 [ 0, %if.end158.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge ], [ %360, %if.end477.i.i.bnx2x_dcbx_fill_cos_params.exit.i_crit_edge ]
  %num_of_cos484.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 1
  %409 = ptrtoint ptr %num_of_cos484.i.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %408, ptr %num_of_cos484.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cos_data.i.i) #10
  br label %bnx2x_dcbx_get_ets_feature.exit

do.body93.i:                                      ; preds = %land.lhs.true.i27.do.body93.i_crit_edge, %if.end46.i.do.body93.i_crit_edge
  %msg_enable94.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %410 = ptrtoint ptr %msg_enable94.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %msg_enable94.i, align 8
  %and95.i = and i32 %411, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %do.body93.i.do.end120.i_crit_edge, label %do.end106.i, !prof !544

do.body93.i.do.end120.i_crit_edge:                ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end120.i

do.end106.i:                                      ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev108.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %412 = ptrtoint ptr %dev108.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %dev108.i, align 4
  %tobool109.not.i = icmp eq ptr %413, null
  %spec.select198.i = select i1 %tobool109.not.i, ptr @.str.3, ptr %413
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.123, i32 noundef 317, ptr noundef nonnull %spec.select198.i) #13
  br label %do.end120.i

do.end120.i:                                      ; preds = %do.end106.i, %do.body93.i.do.end120.i_crit_edge
  %414 = ptrtoint ptr %ets1.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 0, ptr %ets1.i, align 4
  %pri_pg_tbl124.i = getelementptr inbounds %struct.dcbx_ets_feature, ptr %features, i32 0, i32 2
  %415 = ptrtoint ptr %pri_pg_tbl124.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 0, ptr %pri_pg_tbl124.i, align 4
  %arrayidx133.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 0
  %416 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 16843009, ptr %arrayidx133.i, align 4
  %arrayidx133.4.i = getelementptr %struct.dcbx_ets_feature, ptr %features, i32 0, i32 1, i32 1
  %417 = ptrtoint ptr %arrayidx133.4.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 16843009, ptr %arrayidx133.4.i, align 4
  br label %bnx2x_dcbx_get_ets_feature.exit

bnx2x_dcbx_get_ets_feature.exit:                  ; preds = %do.end120.i, %bnx2x_dcbx_fill_cos_params.exit.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pg_help_data.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pg_pri_orginal_spread.i) #10
  %418 = ptrtoint ptr %traffic_type_priority.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %traffic_type_priority.i, align 4
  %shl.i = shl nuw i32 1, %419
  %neg.i38 = and i32 %shl.i, 255
  %and.i39 = xor i32 %neg.i38, 255
  %arrayidx4.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %420 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx4.1.i, align 4
  %shl5.1.i = shl nuw i32 1, %421
  %arrayidx4.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 2
  %422 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx4.2.i, align 4
  %shl5.2.i = shl nuw i32 1, %423
  %424 = or i32 %shl5.2.i, %shl5.1.i
  %425 = xor i32 %424, -1
  %and.2.i = and i32 %and.i39, %425
  %426 = ptrtoint ptr %pri_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %pri_bitmask.i, align 4
  %and10.i = and i32 %427, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i41 = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i41, label %for.inc25.i, label %bnx2x_dcbx_get_ets_feature.exit.do.body.i45_crit_edge

bnx2x_dcbx_get_ets_feature.exit.do.body.i45_crit_edge: ; preds = %bnx2x_dcbx_get_ets_feature.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i45

do.body.i45:                                      ; preds = %for.inc25.1.i.do.body.i45_crit_edge, %for.inc25.i.do.body.i45_crit_edge, %bnx2x_dcbx_get_ets_feature.exit.do.body.i45_crit_edge
  %i.146.lcssa.i = phi i32 [ 0, %bnx2x_dcbx_get_ets_feature.exit.do.body.i45_crit_edge ], [ 1, %for.inc25.i.do.body.i45_crit_edge ], [ 2, %for.inc25.1.i.do.body.i45_crit_edge ]
  %pri_bitmask.lcssa.i = phi ptr [ %pri_bitmask.i, %bnx2x_dcbx_get_ets_feature.exit.do.body.i45_crit_edge ], [ %pri_bitmask.1.i, %for.inc25.i.do.body.i45_crit_edge ], [ %pri_bitmask.2.i, %for.inc25.1.i.do.body.i45_crit_edge ]
  %msg_enable.i42 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %428 = ptrtoint ptr %msg_enable.i42 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %msg_enable.i42, align 8
  %and11.i43 = and i32 %429, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i43)
  %tobool12.not.i44 = icmp eq i32 %and11.i43, 0
  br i1 %tobool12.not.i44, label %do.body.i45.do.end21.i_crit_edge, label %do.end.i50, !prof !544

do.body.i45.do.end21.i_crit_edge:                 ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21.i

do.end.i50:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i46 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %430 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev.i46, align 4
  %tobool17.not.i47 = icmp eq ptr %431, null
  %spec.select.i48 = select i1 %tobool17.not.i47, ptr @.str.3, ptr %431
  %call.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef 366, ptr noundef nonnull %spec.select.i48, i32 noundef %i.146.lcssa.i, i32 noundef %and.2.i) #13
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end.i50, %do.body.i45.do.end21.i_crit_edge
  %432 = ptrtoint ptr %pri_bitmask.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %pri_bitmask.lcssa.i, align 4
  %or.i = or i32 %433, %and.2.i
  store i32 %or.i, ptr %pri_bitmask.lcssa.i, align 4
  br label %bnx2x_dcbx_map_nw.exit

for.inc25.i:                                      ; preds = %bnx2x_dcbx_get_ets_feature.exit
  %434 = ptrtoint ptr %pri_bitmask.1.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %pri_bitmask.1.i, align 4
  %and10.1.i = and i32 %435, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.1.i)
  %tobool.not.1.i = icmp eq i32 %and10.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc25.1.i, label %for.inc25.i.do.body.i45_crit_edge

for.inc25.i.do.body.i45_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i45

for.inc25.1.i:                                    ; preds = %for.inc25.i
  %436 = ptrtoint ptr %pri_bitmask.2.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %pri_bitmask.2.i, align 4
  %and10.2.i = and i32 %437, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.2.i)
  %tobool.not.2.i = icmp eq i32 %and10.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc25.1.i.bnx2x_dcbx_map_nw.exit_crit_edge, label %for.inc25.1.i.do.body.i45_crit_edge

for.inc25.1.i.do.body.i45_crit_edge:              ; preds = %for.inc25.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i45

for.inc25.1.i.bnx2x_dcbx_map_nw.exit_crit_edge:   ; preds = %for.inc25.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_map_nw.exit

bnx2x_dcbx_map_nw.exit:                           ; preds = %for.inc25.1.i.bnx2x_dcbx_map_nw.exit_crit_edge, %do.end21.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_dcbx_update_tc_mapping(ptr noundef %bp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %num_of_cos = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 1
  %0 = ptrtoint ptr %num_of_cos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_of_cos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp45.not = icmp eq i8 %1, 0
  br i1 %cmp45.not, label %entry.for.end28_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end28

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %arrayidx12 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 0
  %arrayidx12.1 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 1
  %arrayidx12.2 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 2
  %arrayidx12.3 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 3
  %arrayidx12.4 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 4
  %arrayidx12.5 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 5
  %arrayidx12.6 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 6
  %arrayidx12.7 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 195, i32 7
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc.7.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %indvars.iv = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next, %for.inc.7.for.cond3.preheader_crit_edge ]
  %pri_bitmask = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 1, i32 2, i32 %indvars.iv, i32 1
  %2 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pri_bitmask, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond3.preheader.for.inc_crit_edge, label %if.then

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.cond3.preheader
  %4 = trunc i32 %indvars.iv to i8
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx12, align 1
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and13 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then.for.inc_crit_edge, label %do.end, !prof !544

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool19.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool19.not, ptr @.str.3, ptr %9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef %indvars.iv) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then.for.inc_crit_edge, %for.cond3.preheader.for.inc_crit_edge
  %10 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pri_bitmask, align 4
  %and.1 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %12 = trunc i32 %indvars.iv to i8
  %13 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx12.1, align 1
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 8
  %and13.1 = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1 = icmp eq i32 %and13.1, 0
  br i1 %tobool14.not.1, label %if.then.1.for.inc.1_crit_edge, label %do.end.1, !prof !544

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

do.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %tobool19.not.1 = icmp eq ptr %17, null
  %spec.select.1 = select i1 %tobool19.not.1, ptr @.str.3, ptr %17
  %call.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select.1, i32 noundef 1, i32 noundef %indvars.iv) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %18 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pri_bitmask, align 4
  %and.2 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %20 = trunc i32 %indvars.iv to i8
  %21 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx12.2, align 1
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and13.2 = and i32 %23, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2 = icmp eq i32 %and13.2, 0
  br i1 %tobool14.not.2, label %if.then.2.for.inc.2_crit_edge, label %do.end.2, !prof !544

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

do.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %tobool19.not.2 = icmp eq ptr %25, null
  %spec.select.2 = select i1 %tobool19.not.2, ptr @.str.3, ptr %25
  %call.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select.2, i32 noundef 2, i32 noundef %indvars.iv) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %26 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pri_bitmask, align 4
  %and.3 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %28 = trunc i32 %indvars.iv to i8
  %29 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx12.3, align 1
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 8
  %and13.3 = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.3)
  %tobool14.not.3 = icmp eq i32 %and13.3, 0
  br i1 %tobool14.not.3, label %if.then.3.for.inc.3_crit_edge, label %do.end.3, !prof !544

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

do.end.3:                                         ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %tobool19.not.3 = icmp eq ptr %33, null
  %spec.select.3 = select i1 %tobool19.not.3, ptr @.str.3, ptr %33
  %call.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select.3, i32 noundef 3, i32 noundef %indvars.iv) #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.3, %if.then.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %34 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pri_bitmask, align 4
  %and.4 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %36 = trunc i32 %indvars.iv to i8
  %37 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx12.4, align 1
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 8
  %and13.4 = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.4)
  %tobool14.not.4 = icmp eq i32 %and13.4, 0
  br i1 %tobool14.not.4, label %if.then.4.for.inc.4_crit_edge, label %do.end.4, !prof !544

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

do.end.4:                                         ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %tobool19.not.4 = icmp eq ptr %41, null
  %spec.select.4 = select i1 %tobool19.not.4, ptr @.str.3, ptr %41
  %call.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select.4, i32 noundef 4, i32 noundef %indvars.iv) #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end.4, %if.then.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %42 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pri_bitmask, align 4
  %and.5 = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %44 = trunc i32 %indvars.iv to i8
  %45 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx12.5, align 1
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 8
  %and13.5 = and i32 %47, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.5)
  %tobool14.not.5 = icmp eq i32 %and13.5, 0
  br i1 %tobool14.not.5, label %if.then.5.for.inc.5_crit_edge, label %do.end.5, !prof !544

if.then.5.for.inc.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

do.end.5:                                         ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %tobool19.not.5 = icmp eq ptr %49, null
  %spec.select.5 = select i1 %tobool19.not.5, ptr @.str.3, ptr %49
  %call.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select.5, i32 noundef 5, i32 noundef %indvars.iv) #13
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end.5, %if.then.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %50 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pri_bitmask, align 4
  %and.6 = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %52 = trunc i32 %indvars.iv to i8
  %53 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx12.6, align 1
  %54 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_enable, align 8
  %and13.6 = and i32 %55, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.6)
  %tobool14.not.6 = icmp eq i32 %and13.6, 0
  br i1 %tobool14.not.6, label %if.then.6.for.inc.6_crit_edge, label %do.end.6, !prof !544

if.then.6.for.inc.6_crit_edge:                    ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

do.end.6:                                         ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %tobool19.not.6 = icmp eq ptr %57, null
  %spec.select.6 = select i1 %tobool19.not.6, ptr @.str.3, ptr %57
  %call.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select.6, i32 noundef 6, i32 noundef %indvars.iv) #13
  br label %for.inc.6

for.inc.6:                                        ; preds = %do.end.6, %if.then.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %58 = ptrtoint ptr %pri_bitmask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pri_bitmask, align 4
  %and.7 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  %60 = trunc i32 %indvars.iv to i8
  %61 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx12.7, align 1
  %62 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msg_enable, align 8
  %and13.7 = and i32 %63, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.7)
  %tobool14.not.7 = icmp eq i32 %and13.7, 0
  br i1 %tobool14.not.7, label %if.then.7.for.inc.7_crit_edge, label %do.end.7, !prof !544

if.then.7.for.inc.7_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

do.end.7:                                         ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %tobool19.not.7 = icmp eq ptr %65, null
  %spec.select.7 = select i1 %tobool19.not.7, ptr @.str.3, ptr %65
  %call.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef 735, ptr noundef nonnull %spec.select.7, i32 noundef 7, i32 noundef %indvars.iv) #13
  br label %for.inc.7

for.inc.7:                                        ; preds = %do.end.7, %if.then.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %66 = ptrtoint ptr %num_of_cos to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_of_cos, align 4
  %68 = zext i8 %67 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %68
  br i1 %cmp, label %for.inc.7.for.cond3.preheader_crit_edge, label %for.inc.7.for.end28_crit_edge

for.inc.7.for.end28_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end28

for.inc.7.for.cond3.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

for.end28:                                        ; preds = %for.inc.7.for.end28_crit_edge, %entry.for.end28_crit_edge
  tail call void @bnx2x_schedule_sp_rtnl(ptr noundef %bp, i32 noundef 0, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_schedule_sp_rtnl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_set_local_cmng(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_fw_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcbnl_cee_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_dcbx_set_state(ptr nocapture noundef %bp, i1 noundef zeroext %dcb_on, i32 noundef %dcbx_enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %common, align 8
  %shr = lshr i32 %1, 16
  %shr.off = add nsw i32 %shr, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off)
  %switch = icmp ult i32 %shr.off, 3
  %not.switch = xor i1 %switch, true
  %narrow = and i1 %not.switch, %dcb_on
  %spec.select53 = zext i1 %narrow to i16
  %spec.select54 = select i1 %switch, i32 -1, i32 %dcbx_enabled
  %2 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 172
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select53, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 173
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select54, ptr %4, align 8
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %entry.do.end39_crit_edge, label %do.end, !prof !544

entry.do.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool18.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool18.not, ptr @.str.3, ptr %9
  %cond22 = select i1 %dcb_on, ptr @.str.30, ptr @.str.31
  %10 = zext i32 %dcbx_enabled to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %dcbx_enabled, label %cond.false30 [
    i32 0, label %do.end.cond.end36_crit_edge
    i32 1, label %cond.end36.fold.split
  ]

do.end.cond.end36_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36

cond.false30:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dcbx_enabled)
  %cmp31 = icmp eq i32 %dcbx_enabled, 2
  %cond33 = select i1 %cmp31, ptr @.str.34, ptr @.str.35
  br label %cond.end36

cond.end36.fold.split:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36

cond.end36:                                       ; preds = %cond.end36.fold.split, %cond.false30, %do.end.cond.end36_crit_edge
  %cond37 = phi ptr [ @.str.32, %do.end.cond.end36_crit_edge ], [ %cond33, %cond.false30 ], [ @.str.33, %cond.end36.fold.split ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 966, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond22, ptr noundef nonnull %cond37) #13
  br label %do.end39

do.end39:                                         ; preds = %cond.end36, %entry.do.end39_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bnx2x_dcbx_init_params(ptr noundef writeonly %bp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_config_params = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175
  %admin_dcbx_version = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 1
  %0 = ptrtoint ptr %admin_dcbx_version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %admin_dcbx_version, align 4
  %admin_ets_willing = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 9
  %1 = ptrtoint ptr %admin_ets_willing to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %admin_ets_willing, align 4
  %admin_pfc_willing = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 11
  %2 = ptrtoint ptr %admin_pfc_willing to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %admin_pfc_willing, align 4
  %3 = ptrtoint ptr %dcbx_config_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %dcbx_config_params, align 8
  %admin_ets_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 2
  %4 = ptrtoint ptr %admin_ets_enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %admin_ets_enable, align 8
  %admin_pfc_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 3
  %5 = ptrtoint ptr %admin_pfc_enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %admin_pfc_enable, align 4
  %admin_tc_supported_tx_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 4
  %6 = ptrtoint ptr %admin_tc_supported_tx_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %admin_tc_supported_tx_enable, align 8
  %admin_ets_configuration_tx_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 5
  %7 = ptrtoint ptr %admin_ets_configuration_tx_enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %admin_ets_configuration_tx_enable, align 4
  %admin_pfc_tx_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 7
  %8 = ptrtoint ptr %admin_pfc_tx_enable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %admin_pfc_tx_enable, align 4
  %admin_application_priority_tx_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 8
  %9 = ptrtoint ptr %admin_application_priority_tx_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %admin_application_priority_tx_enable, align 8
  %admin_ets_reco_valid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 10
  %10 = ptrtoint ptr %admin_ets_reco_valid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %admin_ets_reco_valid, align 8
  %admin_app_priority_willing = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 12
  %11 = ptrtoint ptr %admin_app_priority_willing to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %admin_app_priority_willing, align 8
  %admin_configuration_bw_precentage = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 13
  %12 = ptrtoint ptr %admin_configuration_bw_precentage to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %admin_configuration_bw_precentage, align 4
  %arrayidx15 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 13, i32 1
  %admin_recommendation_bw_precentage = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 15
  %13 = call ptr @memset(ptr %arrayidx15, i32 0, i32 60)
  %14 = ptrtoint ptr %admin_recommendation_bw_precentage to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100, ptr %admin_recommendation_bw_precentage, align 4
  %arrayidx61 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 15, i32 1
  %arrayidx84 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 16, i32 1
  %15 = call ptr @memset(ptr %arrayidx61, i32 0, i32 32)
  %16 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx84, align 4
  %arrayidx87 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 16, i32 2
  %17 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx87, align 4
  %arrayidx90 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 16, i32 3
  %18 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %arrayidx90, align 4
  %arrayidx93 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 16, i32 4
  %19 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %arrayidx93, align 4
  %arrayidx96 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 16, i32 5
  %20 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %arrayidx96, align 4
  %arrayidx99 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 16, i32 6
  %21 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %arrayidx99, align 4
  %arrayidx102 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 16, i32 7
  %22 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %arrayidx102, align 4
  %admin_pfc_bitmap = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 17
  %23 = ptrtoint ptr %admin_pfc_bitmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %admin_pfc_bitmap, align 4
  %admin_priority_app_table = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18
  %24 = ptrtoint ptr %admin_priority_app_table to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %admin_priority_app_table, align 8
  %arrayidx108 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 1
  %25 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx108, align 8
  %arrayidx112 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 2
  %26 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx112, align 8
  %arrayidx116 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 3
  %27 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx116, align 8
  %admin_default_priority = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 19
  %28 = ptrtoint ptr %admin_default_priority to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %admin_default_priority, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_dcbx_init(ptr noundef %bp, i1 noundef zeroext %update_shmem) local_unnamed_addr #0 align 64 {
entry:
  %admin_mib.i = alloca %struct.lldp_admin_mib, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dcbx_enabled = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 173
  %4 = ptrtoint ptr %dcbx_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dcbx_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.do.end16_crit_edge, label %do.end, !prof !544

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool10.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %9
  %dcb_state = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 172
  %10 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dcb_state, align 4
  %conv = zext i16 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 1040, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %1) #13
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  %dcb_state17 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 172
  %12 = ptrtoint ptr %dcb_state17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dcb_state17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp19 = icmp eq i16 %13, 1
  br i1 %cmp19, label %land.lhs.true21, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true21:                                  ; preds = %do.end16
  %shmem2_base = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %14 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shmem2_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true23

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %16 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !545
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !562
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %19)
  %cmp29 = icmp ugt i32 %19, 40
  br i1 %cmp29, label %if.then31, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true23
  %20 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regview, align 8
  %22 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shmem2_base, align 4
  %add37 = add i32 %23, 40
  %add.ptr38 = getelementptr i8, ptr %21, i32 %add37
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #10, !srcloc !545
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !563
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 8
  %and44 = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then31.do.end69_crit_edge, label %do.end55, !prof !544

if.then31.do.end69_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

do.end55:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %dev57 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %28 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev57, align 4
  %tobool58.not = icmp eq ptr %29, null
  %spec.select107 = select i1 %tobool58.not, ptr @.str.3, ptr %29
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 1048, ptr noundef nonnull %spec.select107, i32 noundef %25) #13
  br label %do.end69

do.end69:                                         ; preds = %do.end55, %if.then31.do.end69_crit_edge
  %30 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shmem2_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %do.end69.bnx2x_update_drv_flags.exit_crit_edge, label %land.lhs.true.i

do.end69.bnx2x_update_drv_flags.exit_crit_edge:   ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_update_drv_flags.exit

land.lhs.true.i:                                  ; preds = %do.end69
  %32 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regview, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !545
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !550
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %35)
  %cmp.i = icmp ugt i32 %35, 188
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge

land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_update_drv_flags.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @bnx2x_acquire_hw_lock(ptr noundef %bp, i32 noundef 10) #10
  %36 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regview, align 8
  %38 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shmem2_base, align 4
  %add10.i = add i32 %39, 188
  %add.ptr11.i = getelementptr i8, ptr %37, i32 %add10.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #10, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !551
  %41 = and i32 %40, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !552
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regview, align 8
  %44 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %shmem2_base, align 4
  %add20.i = add i32 %45, 188
  %add.ptr21.i = getelementptr i8, ptr %43, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %41) #10, !srcloc !553
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 8
  %and23.i = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then.i.do.end37.i_crit_edge, label %do.end30.i, !prof !544

if.then.i.do.end37.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

do.end30.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %41)
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %tobool32.not.i = icmp eq ptr %50, null
  %spec.select.i = select i1 %tobool32.not.i, ptr @.str.3, ptr %50
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, i32 noundef 1361, ptr noundef nonnull %spec.select.i, i32 noundef %48) #13
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end30.i, %if.then.i.do.end37.i_crit_edge
  %call38.i = tail call i32 @bnx2x_release_hw_lock(ptr noundef %bp, i32 noundef 10) #10
  br label %bnx2x_update_drv_flags.exit

bnx2x_update_drv_flags.exit:                      ; preds = %do.end37.i, %land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge, %do.end69.bnx2x_update_drv_flags.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp70.not = icmp eq i32 %24, 0
  br i1 %cmp70.not, label %bnx2x_update_drv_flags.exit.cleanup_crit_edge, label %if.then72

bnx2x_update_drv_flags.exit.cleanup_crit_edge:    ; preds = %bnx2x_update_drv_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %bnx2x_update_drv_flags.exit
  %call73 = tail call i32 @bnx2x_acquire_hw_lock(ptr noundef %bp, i32 noundef 13) #10
  br i1 %update_shmem, label %if.then75, label %if.then72.if.end76_crit_edge

if.then72.if.end76_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then75:                                        ; preds = %if.then72
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %admin_mib.i) #10
  %pfid.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %51 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pfid.i, align 1
  %53 = and i8 %52, 1
  %narrow.i = mul nuw nsw i8 %53, 92
  %narrow348.i = add nuw i8 %narrow.i, 80
  %add.i = zext i8 %narrow348.i to i32
  %add1.i = add i32 %25, %add.i
  %54 = call ptr @memset(ptr %admin_mib.i, i32 0, i32 92)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then75
  %buff.addr.08.i.i = phi ptr [ %admin_mib.i, %if.then75 ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.07.i.i = phi i32 [ 0, %if.then75 ], [ %add2.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %55 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regview, align 8
  %add.i.i = add i32 %i.07.i.i, %add1.i
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 %add.i.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !545
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !549
  %59 = ptrtoint ptr %buff.addr.08.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %buff.addr.08.i.i, align 4
  %add2.i.i = add nuw nsw i32 %i.07.i.i, 4
  %incdec.ptr.i.i = getelementptr i32, ptr %buff.addr.08.i.i, i32 1
  %cmp.i.i = icmp ult i32 %i.07.i.i, 88
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %bnx2x_read_data.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

bnx2x_read_data.exit.i:                           ; preds = %for.body.i.i
  %dcbx_config_params.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175
  %60 = ptrtoint ptr %dcbx_enabled to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dcbx_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.i108 = icmp eq i32 %61, 2
  %62 = ptrtoint ptr %admin_mib.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %admin_mib.i, align 4
  %and4.i = and i32 %63, -1025
  %masksel381.i = select i1 %cmp.i108, i32 1024, i32 0
  %storemerge.i = or i32 %and4.i, %masksel381.i
  store i32 %storemerge.i, ptr %admin_mib.i, align 4
  %64 = ptrtoint ptr %dcbx_config_params.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dcbx_config_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp5.i = icmp eq i32 %65, 1
  br i1 %cmp5.i, label %if.then7.i, label %bnx2x_read_data.exit.i.do.body.i.i.preheader_crit_edge

bnx2x_read_data.exit.i.do.body.i.i.preheader_crit_edge: ; preds = %bnx2x_read_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.preheader

if.then7.i:                                       ; preds = %bnx2x_read_data.exit.i
  %features.i = getelementptr inbounds %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1
  %and9.i = and i32 %storemerge.i, -61672
  %admin_dcbx_version.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 1
  %66 = ptrtoint ptr %admin_dcbx_version.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %admin_dcbx_version.i, align 4
  %shl.i = shl i32 %67, 12
  %and10.i = and i32 %shl.i, 61440
  %or12.i = or i32 %and10.i, %and9.i
  %admin_ets_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 2
  %68 = ptrtoint ptr %admin_ets_enable.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %admin_ets_enable.i, align 4
  %conv14.i = and i32 %69, 255
  %70 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv14.i, ptr %features.i, align 4
  %admin_pfc_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 3
  %71 = ptrtoint ptr %admin_pfc_enable.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %admin_pfc_enable.i, align 4
  %conv15.i = trunc i32 %72 to i8
  %enabled16.i = getelementptr inbounds %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 1, i32 3
  %73 = ptrtoint ptr %enabled16.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv15.i, ptr %enabled16.i, align 1
  %admin_ets_configuration_tx_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 5
  %74 = ptrtoint ptr %admin_ets_configuration_tx_enable.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %admin_ets_configuration_tx_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i109 = icmp ne i32 %75, 0
  %masksel.i = zext i1 %tobool.not.i109 to i32
  %storemerge349.i = or i32 %or12.i, %masksel.i
  %admin_pfc_tx_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 7
  %76 = ptrtoint ptr %admin_pfc_tx_enable.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %admin_pfc_tx_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool24.not.i110 = icmp eq i32 %77, 0
  %masksel364.i = select i1 %tobool24.not.i110, i32 0, i32 2
  %storemerge350.i = or i32 %storemerge349.i, %masksel364.i
  %admin_application_priority_tx_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 8
  %78 = ptrtoint ptr %admin_application_priority_tx_enable.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %admin_application_priority_tx_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool32.not.i111 = icmp eq i32 %79, 0
  %masksel365.i = select i1 %tobool32.not.i111, i32 0, i32 4
  %storemerge351.i = or i32 %storemerge350.i, %masksel365.i
  %admin_ets_willing.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 9
  %80 = ptrtoint ptr %admin_ets_willing.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %admin_ets_willing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool40.not.i = icmp eq i32 %81, 0
  %masksel366.i = select i1 %tobool40.not.i, i32 0, i32 32
  %admin_pfc_willing.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 11
  %82 = ptrtoint ptr %admin_pfc_willing.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %admin_pfc_willing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool48.not.i = icmp eq i32 %83, 0
  %masksel367.i = select i1 %tobool48.not.i, i32 0, i32 64
  %admin_app_priority_willing.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 12
  %84 = ptrtoint ptr %admin_app_priority_willing.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %admin_app_priority_willing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool56.not.i = icmp eq i32 %85, 0
  %and54.masked.i = or i32 %storemerge351.i, %masksel366.i
  %and62.i = or i32 %and54.masked.i, %masksel367.i
  %masksel368.i = select i1 %tobool56.not.i, i32 0, i32 128
  %storemerge354.i = or i32 %and62.i, %masksel368.i
  %86 = ptrtoint ptr %admin_mib.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %storemerge354.i, ptr %admin_mib.i, align 4
  %dev.i113 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %do.body.i

for.cond117.preheader.i:                          ; preds = %for.inc.i
  %pri_pg_tbl.i = getelementptr inbounds %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 0, i32 2
  %87 = ptrtoint ptr %pri_pg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %pri_pg_tbl.promoted.i = load i32, ptr %pri_pg_tbl.i, align 4
  br label %do.body121.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.then7.i
  %i.0369.i = phi i32 [ 0, %if.then7.i ], [ %inc.i, %for.inc.i.do.body.i_crit_edge ]
  %rem.i = shl nuw nsw i32 %i.0369.i, 3
  %sub.i = and i32 %rem.i, 24
  %mul66.i = xor i32 %sub.i, 24
  %shl70.i = shl i32 255, %mul66.i
  %neg.i = xor i32 %shl70.i, -1
  %div72356.i = lshr i32 %i.0369.i, 2
  %arrayidx.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 0, i32 1, i32 %div72356.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i, align 4
  %and73.i = and i32 %89, %neg.i
  %arrayidx74.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 13, i32 %i.0369.i
  %90 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx74.i, align 4
  %conv76.i = and i32 %91, 255
  %shl85.i = shl i32 %conv76.i, %mul66.i
  %or90.i = or i32 %and73.i, %shl85.i
  store i32 %or90.i, ptr %arrayidx.i, align 4
  %92 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_enable, align 8
  %and92.i = and i32 %93, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %do.body.i.for.inc.i_crit_edge, label %do.end99.i, !prof !544

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end99.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i113, align 4
  %tobool100.not.i = icmp eq ptr %95, null
  %spec.select.i114 = select i1 %tobool100.not.i, ptr @.str.3, ptr %95
  %shr.i = lshr i32 %or90.i, %mul66.i
  %and113.i = and i32 %shr.i, 255
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191, i32 noundef 902, ptr noundef nonnull %spec.select.i114, i32 noundef %i.0369.i, i32 noundef %and113.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end99.i, %do.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0369.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.cond117.preheader.i, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body121.i:                                     ; preds = %for.inc195.i.do.body121.i_crit_edge, %for.cond117.preheader.i
  %i.1371.i = phi i32 [ 0, %for.cond117.preheader.i ], [ %inc196.i, %for.inc195.i.do.body121.i_crit_edge ]
  %96 = phi i32 [ %pri_pg_tbl.promoted.i, %for.cond117.preheader.i ], [ %or151.i, %for.inc195.i.do.body121.i_crit_edge ]
  %97 = shl nuw nsw i32 %i.1371.i, 2
  %add128.i = xor i32 %97, 24
  %shl129.i = shl i32 15, %add128.i
  %neg130.i = xor i32 %shl129.i, -1
  %and134.i = and i32 %96, %neg130.i
  %arrayidx135.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 14, i32 %i.1371.i
  %98 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx135.i, align 4
  %and138.i = and i32 %99, 15
  %shl146.i = shl i32 %and138.i, %add128.i
  %or151.i = or i32 %shl146.i, %and134.i
  %100 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %msg_enable, align 8
  %and156.i = and i32 %101, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %do.body121.i.for.inc195.i_crit_edge, label %do.end167.i, !prof !544

do.body121.i.for.inc195.i_crit_edge:              ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195.i

do.end167.i:                                      ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i113, align 4
  %tobool170.not.i = icmp eq ptr %103, null
  %spec.select357.i = select i1 %tobool170.not.i, ptr @.str.3, ptr %103
  %shr189.i = lshr i32 %or151.i, %add128.i
  %and190.i = and i32 %shr189.i, 15
  %call191.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.191, i32 noundef 910, ptr noundef nonnull %spec.select357.i, i32 noundef %i.1371.i, i32 noundef %and190.i) #13
  br label %for.inc195.i

for.inc195.i:                                     ; preds = %do.end167.i, %do.body121.i.for.inc195.i_crit_edge
  %inc196.i = add nuw nsw i32 %i.1371.i, 1
  %exitcond379.not.i = icmp eq i32 %inc196.i, 8
  br i1 %exitcond379.not.i, label %for.end197.i, label %for.inc195.i.do.body121.i_crit_edge

for.inc195.i.do.body121.i_crit_edge:              ; preds = %for.inc195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body121.i

for.end197.i:                                     ; preds = %for.inc195.i
  %pfc.i = getelementptr inbounds %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %pri_pg_tbl.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or151.i, ptr %pri_pg_tbl.i, align 4
  %admin_pfc_bitmap.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 17
  %105 = ptrtoint ptr %admin_pfc_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %admin_pfc_bitmap.i, align 4
  %conv198.i = trunc i32 %106 to i8
  %107 = ptrtoint ptr %pfc.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv198.i, ptr %pfc.i, align 4
  %admin_priority_app_table.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18
  %108 = ptrtoint ptr %admin_priority_app_table.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %admin_priority_app_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool205.not.i = icmp eq i32 %109, 0
  br i1 %tobool205.not.i, label %for.end197.i.for.inc258.i_crit_edge, label %if.then206.i

for.end197.i.for.inc258.i_crit_edge:              ; preds = %for.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc258.i

if.then206.i:                                     ; preds = %for.end197.i
  %app_id.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 0, i32 3
  %110 = ptrtoint ptr %app_id.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %app_id.i, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %111, label %if.then206.i.if.else227.i_crit_edge [
    i32 35078, label %land.lhs.true.i115
    i32 3260, label %land.lhs.true221.i
  ]

if.then206.i.if.else227.i_crit_edge:              ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.i

land.lhs.true.i115:                               ; preds = %if.then206.i
  %traffic_type.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 0, i32 2
  %113 = ptrtoint ptr %traffic_type.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %traffic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp213.i = icmp eq i32 %114, 0
  br i1 %cmp213.i, label %land.lhs.true.i115.if.end230.i_crit_edge, label %land.lhs.true.i115.if.else227.i_crit_edge

land.lhs.true.i115.if.else227.i_crit_edge:        ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.i

land.lhs.true.i115.if.end230.i_crit_edge:         ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.i

land.lhs.true221.i:                               ; preds = %if.then206.i
  %traffic_type223.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 0, i32 2
  %115 = ptrtoint ptr %traffic_type223.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %traffic_type223.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp224.i = icmp eq i32 %116, 1
  br i1 %cmp224.i, label %land.lhs.true221.i.if.end230.i_crit_edge, label %land.lhs.true221.i.if.else227.i_crit_edge

land.lhs.true221.i.if.else227.i_crit_edge:        ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.i

land.lhs.true221.i.if.end230.i_crit_edge:         ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.i

if.else227.i:                                     ; preds = %land.lhs.true221.i.if.else227.i_crit_edge, %land.lhs.true.i115.if.else227.i_crit_edge, %if.then206.i.if.else227.i_crit_edge
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.else227.i, %land.lhs.true221.i.if.end230.i_crit_edge, %land.lhs.true.i115.if.end230.i_crit_edge
  %traf_type.0.i = phi i32 [ 2, %if.else227.i ], [ 0, %land.lhs.true.i115.if.end230.i_crit_edge ], [ 1, %land.lhs.true221.i.if.end230.i_crit_edge ]
  %other_traf_type.1.i = phi i32 [ 3, %if.else227.i ], [ 2, %land.lhs.true.i115.if.end230.i_crit_edge ], [ 2, %land.lhs.true221.i.if.end230.i_crit_edge ]
  %conv233.i = trunc i32 %111 to i16
  %arrayidx234.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.i
  %117 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv233.i, ptr %arrayidx234.i, align 4
  %priority.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 0, i32 1
  %118 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %priority.i, align 4
  %shl237.i = shl nuw i32 1, %119
  %conv238.i = trunc i32 %shl237.i to i8
  %pri_bitmap.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.i, i32 1
  %120 = ptrtoint ptr %pri_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv238.i, ptr %pri_bitmap.i, align 2
  %appBitfield.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.i, i32 2
  %traffic_type246.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 0, i32 2
  %121 = ptrtoint ptr %traffic_type246.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %traffic_type246.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp247.i = icmp eq i32 %122, 0
  %conv256.i = select i1 %cmp247.i, i8 17, i8 33
  %123 = ptrtoint ptr %appBitfield.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv256.i, ptr %appBitfield.i, align 1
  br label %for.inc258.i

for.inc258.i:                                     ; preds = %if.end230.i, %for.end197.i.for.inc258.i_crit_edge
  %other_traf_type.2.i = phi i32 [ %other_traf_type.1.i, %if.end230.i ], [ 2, %for.end197.i.for.inc258.i_crit_edge ]
  %arrayidx204.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 1
  %124 = ptrtoint ptr %arrayidx204.1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx204.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool205.not.1.i = icmp eq i32 %125, 0
  br i1 %tobool205.not.1.i, label %for.inc258.i.for.inc258.1.i_crit_edge, label %if.then206.1.i

for.inc258.i.for.inc258.1.i_crit_edge:            ; preds = %for.inc258.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc258.1.i

if.then206.1.i:                                   ; preds = %for.inc258.i
  %app_id.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 1, i32 3
  %126 = ptrtoint ptr %app_id.1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %app_id.1.i, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %127, label %if.then206.1.i.if.else227.1.i_crit_edge [
    i32 35078, label %land.lhs.true.1.i
    i32 3260, label %land.lhs.true221.1.i
  ]

if.then206.1.i.if.else227.1.i_crit_edge:          ; preds = %if.then206.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.1.i

land.lhs.true221.1.i:                             ; preds = %if.then206.1.i
  %traffic_type223.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 1, i32 2
  %129 = ptrtoint ptr %traffic_type223.1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %traffic_type223.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp224.1.i = icmp eq i32 %130, 1
  br i1 %cmp224.1.i, label %land.lhs.true221.1.i.if.end230.1.i_crit_edge, label %land.lhs.true221.1.i.if.else227.1.i_crit_edge

land.lhs.true221.1.i.if.else227.1.i_crit_edge:    ; preds = %land.lhs.true221.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.1.i

land.lhs.true221.1.i.if.end230.1.i_crit_edge:     ; preds = %land.lhs.true221.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.1.i

land.lhs.true.1.i:                                ; preds = %if.then206.1.i
  %traffic_type.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 1, i32 2
  %131 = ptrtoint ptr %traffic_type.1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %traffic_type.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp213.1.i = icmp eq i32 %132, 0
  br i1 %cmp213.1.i, label %land.lhs.true.1.i.if.end230.1.i_crit_edge, label %land.lhs.true.1.i.if.else227.1.i_crit_edge

land.lhs.true.1.i.if.else227.1.i_crit_edge:       ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.1.i

land.lhs.true.1.i.if.end230.1.i_crit_edge:        ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.1.i

if.else227.1.i:                                   ; preds = %land.lhs.true.1.i.if.else227.1.i_crit_edge, %land.lhs.true221.1.i.if.else227.1.i_crit_edge, %if.then206.1.i.if.else227.1.i_crit_edge
  %inc228.1.i = add nuw nsw i32 %other_traf_type.2.i, 1
  br label %if.end230.1.i

if.end230.1.i:                                    ; preds = %if.else227.1.i, %land.lhs.true.1.i.if.end230.1.i_crit_edge, %land.lhs.true221.1.i.if.end230.1.i_crit_edge
  %traf_type.0.1.i = phi i32 [ %other_traf_type.2.i, %if.else227.1.i ], [ 0, %land.lhs.true.1.i.if.end230.1.i_crit_edge ], [ 1, %land.lhs.true221.1.i.if.end230.1.i_crit_edge ]
  %other_traf_type.1.1.i = phi i32 [ %inc228.1.i, %if.else227.1.i ], [ %other_traf_type.2.i, %land.lhs.true.1.i.if.end230.1.i_crit_edge ], [ %other_traf_type.2.i, %land.lhs.true221.1.i.if.end230.1.i_crit_edge ]
  %conv233.1.i = trunc i32 %127 to i16
  %arrayidx234.1.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.1.i
  %133 = ptrtoint ptr %arrayidx234.1.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv233.1.i, ptr %arrayidx234.1.i, align 4
  %priority.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 1, i32 1
  %134 = ptrtoint ptr %priority.1.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %priority.1.i, align 4
  %shl237.1.i = shl nuw i32 1, %135
  %conv238.1.i = trunc i32 %shl237.1.i to i8
  %pri_bitmap.1.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.1.i, i32 1
  %136 = ptrtoint ptr %pri_bitmap.1.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv238.1.i, ptr %pri_bitmap.1.i, align 2
  %appBitfield.1.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.1.i, i32 2
  %traffic_type246.1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 1, i32 2
  %137 = ptrtoint ptr %traffic_type246.1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %traffic_type246.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp247.1.i = icmp eq i32 %138, 0
  %conv256.1.i = select i1 %cmp247.1.i, i8 17, i8 33
  %139 = ptrtoint ptr %appBitfield.1.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv256.1.i, ptr %appBitfield.1.i, align 1
  br label %for.inc258.1.i

for.inc258.1.i:                                   ; preds = %if.end230.1.i, %for.inc258.i.for.inc258.1.i_crit_edge
  %other_traf_type.2.1.i = phi i32 [ %other_traf_type.1.1.i, %if.end230.1.i ], [ %other_traf_type.2.i, %for.inc258.i.for.inc258.1.i_crit_edge ]
  %arrayidx204.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 2
  %140 = ptrtoint ptr %arrayidx204.2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx204.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool205.not.2.i = icmp eq i32 %141, 0
  br i1 %tobool205.not.2.i, label %for.inc258.1.i.for.inc258.2.i_crit_edge, label %if.then206.2.i

for.inc258.1.i.for.inc258.2.i_crit_edge:          ; preds = %for.inc258.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc258.2.i

if.then206.2.i:                                   ; preds = %for.inc258.1.i
  %app_id.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 2, i32 3
  %142 = ptrtoint ptr %app_id.2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %app_id.2.i, align 4
  %144 = zext i32 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %143, label %if.then206.2.i.if.else227.2.i_crit_edge [
    i32 35078, label %land.lhs.true.2.i
    i32 3260, label %land.lhs.true221.2.i
  ]

if.then206.2.i.if.else227.2.i_crit_edge:          ; preds = %if.then206.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.2.i

land.lhs.true221.2.i:                             ; preds = %if.then206.2.i
  %traffic_type223.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 2, i32 2
  %145 = ptrtoint ptr %traffic_type223.2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %traffic_type223.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp224.2.i = icmp eq i32 %146, 1
  br i1 %cmp224.2.i, label %land.lhs.true221.2.i.if.end230.2.i_crit_edge, label %land.lhs.true221.2.i.if.else227.2.i_crit_edge

land.lhs.true221.2.i.if.else227.2.i_crit_edge:    ; preds = %land.lhs.true221.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.2.i

land.lhs.true221.2.i.if.end230.2.i_crit_edge:     ; preds = %land.lhs.true221.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.2.i

land.lhs.true.2.i:                                ; preds = %if.then206.2.i
  %traffic_type.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 2, i32 2
  %147 = ptrtoint ptr %traffic_type.2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %traffic_type.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp213.2.i = icmp eq i32 %148, 0
  br i1 %cmp213.2.i, label %land.lhs.true.2.i.if.end230.2.i_crit_edge, label %land.lhs.true.2.i.if.else227.2.i_crit_edge

land.lhs.true.2.i.if.else227.2.i_crit_edge:       ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.2.i

land.lhs.true.2.i.if.end230.2.i_crit_edge:        ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.2.i

if.else227.2.i:                                   ; preds = %land.lhs.true.2.i.if.else227.2.i_crit_edge, %land.lhs.true221.2.i.if.else227.2.i_crit_edge, %if.then206.2.i.if.else227.2.i_crit_edge
  %inc228.2.i = add nuw nsw i32 %other_traf_type.2.1.i, 1
  br label %if.end230.2.i

if.end230.2.i:                                    ; preds = %if.else227.2.i, %land.lhs.true.2.i.if.end230.2.i_crit_edge, %land.lhs.true221.2.i.if.end230.2.i_crit_edge
  %traf_type.0.2.i = phi i32 [ %other_traf_type.2.1.i, %if.else227.2.i ], [ 0, %land.lhs.true.2.i.if.end230.2.i_crit_edge ], [ 1, %land.lhs.true221.2.i.if.end230.2.i_crit_edge ]
  %other_traf_type.1.2.i = phi i32 [ %inc228.2.i, %if.else227.2.i ], [ %other_traf_type.2.1.i, %land.lhs.true.2.i.if.end230.2.i_crit_edge ], [ %other_traf_type.2.1.i, %land.lhs.true221.2.i.if.end230.2.i_crit_edge ]
  %conv233.2.i = trunc i32 %143 to i16
  %arrayidx234.2.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.2.i
  %149 = ptrtoint ptr %arrayidx234.2.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv233.2.i, ptr %arrayidx234.2.i, align 4
  %priority.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 2, i32 1
  %150 = ptrtoint ptr %priority.2.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %priority.2.i, align 4
  %shl237.2.i = shl nuw i32 1, %151
  %conv238.2.i = trunc i32 %shl237.2.i to i8
  %pri_bitmap.2.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.2.i, i32 1
  %152 = ptrtoint ptr %pri_bitmap.2.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv238.2.i, ptr %pri_bitmap.2.i, align 2
  %appBitfield.2.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.2.i, i32 2
  %traffic_type246.2.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 2, i32 2
  %153 = ptrtoint ptr %traffic_type246.2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %traffic_type246.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp247.2.i = icmp eq i32 %154, 0
  %conv256.2.i = select i1 %cmp247.2.i, i8 17, i8 33
  %155 = ptrtoint ptr %appBitfield.2.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv256.2.i, ptr %appBitfield.2.i, align 1
  br label %for.inc258.2.i

for.inc258.2.i:                                   ; preds = %if.end230.2.i, %for.inc258.1.i.for.inc258.2.i_crit_edge
  %other_traf_type.2.2.i = phi i32 [ %other_traf_type.1.2.i, %if.end230.2.i ], [ %other_traf_type.2.1.i, %for.inc258.1.i.for.inc258.2.i_crit_edge ]
  %arrayidx204.3.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 3
  %156 = ptrtoint ptr %arrayidx204.3.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx204.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool205.not.3.i = icmp eq i32 %157, 0
  br i1 %tobool205.not.3.i, label %for.inc258.2.i.for.inc258.3.i_crit_edge, label %if.then206.3.i

for.inc258.2.i.for.inc258.3.i_crit_edge:          ; preds = %for.inc258.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc258.3.i

if.then206.3.i:                                   ; preds = %for.inc258.2.i
  %app_id.3.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 3, i32 3
  %158 = ptrtoint ptr %app_id.3.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %app_id.3.i, align 4
  %160 = zext i32 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %159, label %if.then206.3.i.if.else227.3.i_crit_edge [
    i32 35078, label %land.lhs.true.3.i
    i32 3260, label %land.lhs.true221.3.i
  ]

if.then206.3.i.if.else227.3.i_crit_edge:          ; preds = %if.then206.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.3.i

land.lhs.true221.3.i:                             ; preds = %if.then206.3.i
  %traffic_type223.3.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 3, i32 2
  %161 = ptrtoint ptr %traffic_type223.3.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %traffic_type223.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp224.3.i = icmp eq i32 %162, 1
  br i1 %cmp224.3.i, label %land.lhs.true221.3.i.if.end230.3.i_crit_edge, label %land.lhs.true221.3.i.if.else227.3.i_crit_edge

land.lhs.true221.3.i.if.else227.3.i_crit_edge:    ; preds = %land.lhs.true221.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.3.i

land.lhs.true221.3.i.if.end230.3.i_crit_edge:     ; preds = %land.lhs.true221.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.3.i

land.lhs.true.3.i:                                ; preds = %if.then206.3.i
  %traffic_type.3.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 3, i32 2
  %163 = ptrtoint ptr %traffic_type.3.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %traffic_type.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp213.3.i = icmp eq i32 %164, 0
  br i1 %cmp213.3.i, label %land.lhs.true.3.i.if.end230.3.i_crit_edge, label %land.lhs.true.3.i.if.else227.3.i_crit_edge

land.lhs.true.3.i.if.else227.3.i_crit_edge:       ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else227.3.i

land.lhs.true.3.i.if.end230.3.i_crit_edge:        ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.3.i

if.else227.3.i:                                   ; preds = %land.lhs.true.3.i.if.else227.3.i_crit_edge, %land.lhs.true221.3.i.if.else227.3.i_crit_edge, %if.then206.3.i.if.else227.3.i_crit_edge
  br label %if.end230.3.i

if.end230.3.i:                                    ; preds = %if.else227.3.i, %land.lhs.true.3.i.if.end230.3.i_crit_edge, %land.lhs.true221.3.i.if.end230.3.i_crit_edge
  %traf_type.0.3.i = phi i32 [ %other_traf_type.2.2.i, %if.else227.3.i ], [ 0, %land.lhs.true.3.i.if.end230.3.i_crit_edge ], [ 1, %land.lhs.true221.3.i.if.end230.3.i_crit_edge ]
  %conv233.3.i = trunc i32 %159 to i16
  %arrayidx234.3.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.3.i
  %165 = ptrtoint ptr %arrayidx234.3.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv233.3.i, ptr %arrayidx234.3.i, align 4
  %priority.3.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 3, i32 1
  %166 = ptrtoint ptr %priority.3.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %priority.3.i, align 4
  %shl237.3.i = shl nuw i32 1, %167
  %conv238.3.i = trunc i32 %shl237.3.i to i8
  %pri_bitmap.3.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.3.i, i32 1
  %168 = ptrtoint ptr %pri_bitmap.3.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv238.3.i, ptr %pri_bitmap.3.i, align 2
  %appBitfield.3.i = getelementptr %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 4, i32 %traf_type.0.3.i, i32 2
  %traffic_type246.3.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 18, i32 3, i32 2
  %169 = ptrtoint ptr %traffic_type246.3.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %traffic_type246.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp247.3.i = icmp eq i32 %170, 0
  %conv256.3.i = select i1 %cmp247.3.i, i8 17, i8 33
  %171 = ptrtoint ptr %appBitfield.3.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv256.3.i, ptr %appBitfield.3.i, align 1
  br label %for.inc258.3.i

for.inc258.3.i:                                   ; preds = %if.end230.3.i, %for.inc258.2.i.for.inc258.3.i_crit_edge
  %admin_default_priority.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 175, i32 19
  %172 = ptrtoint ptr %admin_default_priority.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %admin_default_priority.i, align 4
  %conv261.i = trunc i32 %173 to i8
  %default_pri.i = getelementptr inbounds %struct.lldp_admin_mib, ptr %admin_mib.i, i32 0, i32 1, i32 2, i32 1
  %174 = ptrtoint ptr %default_pri.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv261.i, ptr %default_pri.i, align 1
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %for.inc258.3.i, %bnx2x_read_data.exit.i.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %i.02.i.i = phi i32 [ %add1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %do.body.i.i.preheader ]
  %buff.addr.01.i.i = phi ptr [ %incdec.ptr.i361.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %admin_mib.i, %do.body.i.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !564
  tail call void @arm_heavy_mb() #10
  %175 = ptrtoint ptr %buff.addr.01.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %buff.addr.01.i.i, align 4
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #10
  %178 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regview, align 8
  %add.i359.i = add i32 %i.02.i.i, %add1.i
  %add.ptr.i360.i = getelementptr i8, ptr %179, i32 %add.i359.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360.i, i32 %177) #10, !srcloc !553
  %add1.i.i = add nuw nsw i32 %i.02.i.i, 4
  %incdec.ptr.i361.i = getelementptr i32, ptr %buff.addr.01.i.i, i32 1
  %cmp.i362.i = icmp ult i32 %i.02.i.i, 88
  br i1 %cmp.i362.i, label %do.body.i.i.do.body.i.i_crit_edge, label %bnx2x_dcbx_admin_mib_updated_params.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

bnx2x_dcbx_admin_mib_updated_params.exit:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %admin_mib.i) #10
  br label %if.end76

if.end76:                                         ; preds = %bnx2x_dcbx_admin_mib_updated_params.exit, %if.then72.if.end76_crit_edge
  %call77 = tail call i32 @bnx2x_fw_command(ptr noundef %bp, i32 noundef -1342177280, i32 noundef 0) #10
  %call78 = tail call i32 @bnx2x_release_hw_lock(ptr noundef %bp, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %bnx2x_update_drv_flags.exit.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_acquire_hw_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_release_hw_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_dcbx_pmf_update(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %app4.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shmem2_base = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %0 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shmem2_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %land.lhs.true

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %2 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !545
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !565
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %5)
  %cmp = icmp ugt i32 %5, 188
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regview, align 8
  %8 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shmem2_base, align 4
  %add10 = add i32 %9, 188
  %add.ptr11 = getelementptr i8, ptr %7, i32 %add10
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !566
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %land.lhs.true4.if.end23_crit_edge, label %if.then

land.lhs.true4.if.end23_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true4
  %call16 = tail call fastcc i32 @bnx2x_dcbx_read_shmem_neg_results(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end:                                           ; preds = %if.then
  %dcbx_local_feat = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 187
  %dcbx_error = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 188
  %12 = ptrtoint ptr %dcbx_error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dcbx_error, align 4
  tail call fastcc void @bnx2x_dump_dcbx_drv_param(ptr noundef %bp, ptr noundef %dcbx_local_feat, i32 noundef %13)
  %14 = ptrtoint ptr %dcbx_error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dcbx_error, align 4
  tail call fastcc void @bnx2x_get_dcbx_drv_param(ptr noundef %bp, ptr noundef %dcbx_local_feat, i32 noundef %15)
  %16 = getelementptr inbounds %struct.dcb_app, ptr %app4.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.dcb_app, ptr %app4.i, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %if.end
  %i.024.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end11.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i
  %appBitfield.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i, i32 2
  %18 = ptrtoint ptr %appBitfield.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %appBitfield.i, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %for.body.i.if.end11.i_crit_edge, label %if.then.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then.i:                                        ; preds = %for.body.i
  %pri_bitmap.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 187, i32 2, i32 4, i32 %i.024.i, i32 1
  %21 = ptrtoint ptr %pri_bitmap.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pri_bitmap.i.i, align 2
  %conv2.i.i = zext i8 %22 to i32
  %and.i.i = and i32 %conv2.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then.i.if.then3.i_crit_edge

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

for.inc.i.i:                                      ; preds = %if.then.i
  %and.1.i.i = and i32 %conv2.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then3.i_crit_edge

for.inc.i.i.if.then3.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %and.2.i.i = and i32 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then3.i_crit_edge

for.inc.1.i.i.if.then3.i_crit_edge:               ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %and.3.i.i = and i32 %conv2.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.then3.i_crit_edge

for.inc.2.i.i.if.then3.i_crit_edge:               ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %and.4.i.i = and i32 %conv2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.then3.i_crit_edge

for.inc.3.i.i.if.then3.i_crit_edge:               ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %and.5.i.i = and i32 %conv2.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %bnx2x_dcbx_dcbnl_app_up.exit.i, label %for.inc.4.i.i.if.then3.i_crit_edge

for.inc.4.i.i.if.then3.i_crit_edge:               ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

bnx2x_dcbx_dcbnl_app_up.exit.i:                   ; preds = %for.inc.4.i.i
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.i = icmp eq i8 %23, 0
  br i1 %tobool2.not.i, label %bnx2x_dcbx_dcbnl_app_up.exit.i.if.end11.i_crit_edge, label %bnx2x_dcbx_dcbnl_app_up.exit.i.if.then3.i_crit_edge

bnx2x_dcbx_dcbnl_app_up.exit.i.if.then3.i_crit_edge: ; preds = %bnx2x_dcbx_dcbnl_app_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

bnx2x_dcbx_dcbnl_app_up.exit.i.if.end11.i_crit_edge: ; preds = %bnx2x_dcbx_dcbnl_app_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then3.i:                                       ; preds = %bnx2x_dcbx_dcbnl_app_up.exit.i.if.then3.i_crit_edge, %for.inc.4.i.i.if.then3.i_crit_edge, %for.inc.3.i.i.if.then3.i_crit_edge, %for.inc.2.i.i.if.then3.i_crit_edge, %for.inc.1.i.i.if.then3.i_crit_edge, %for.inc.i.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge
  %pri.0.lcssa.i23.i = phi i8 [ 1, %bnx2x_dcbx_dcbnl_app_up.exit.i.if.then3.i_crit_edge ], [ 2, %for.inc.4.i.i.if.then3.i_crit_edge ], [ 3, %for.inc.3.i.i.if.then3.i_crit_edge ], [ 4, %for.inc.2.i.i.if.then3.i_crit_edge ], [ 5, %for.inc.1.i.i.if.then3.i_crit_edge ], [ 6, %for.inc.i.i.if.then3.i_crit_edge ], [ 7, %if.then.i.if.then3.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app4.i) #10
  %24 = and i8 %19, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %cmp.i.i = icmp eq i8 %24, 32
  %conv2.i20.i = zext i1 %cmp.i.i to i8
  %25 = ptrtoint ptr %app4.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2.i20.i, ptr %app4.i, align 2
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 2
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %17, align 2
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %pri.0.lcssa.i23.i, ptr %16, align 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %call10.i = call i32 @dcb_setapp(ptr noundef %31, ptr noundef nonnull %app4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app4.i) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then3.i, %bnx2x_dcbx_dcbnl_app_up.exit.i.if.end11.i_crit_edge, %for.body.i.if.end11.i_crit_edge
  %err.2.i = phi i32 [ 0, %for.body.i.if.end11.i_crit_edge ], [ %call10.i, %if.then3.i ], [ 0, %bnx2x_dcbx_dcbnl_app_up.exit.i.if.end11.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.024.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.024.i)
  %cmp.i = icmp ult i32 %i.024.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %cmp1.i = icmp eq i32 %err.2.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end11.i.for.body.i_crit_edge, label %bnx2x_dcbnl_update_applist.exit

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

bnx2x_dcbnl_update_applist.exit:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call22 = call i32 @dcbnl_cee_notify(ptr noundef %33, i32 noundef 78, i32 noundef 26, i32 noundef 0, i32 noundef 0) #10
  call fastcc void @bnx2x_dcbx_update_tc_mapping(ptr noundef %bp)
  br label %if.end23

if.end23:                                         ; preds = %bnx2x_dcbnl_update_applist.exit, %if.then.if.end23_crit_edge, %land.lhs.true4.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_get_state(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state, align 4
  %conv = zext i16 %5 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, i32 noundef 1943, ptr noundef nonnull %spec.select, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state9 = getelementptr i8, ptr %netdev, i32 7076
  %6 = ptrtoint ptr %dcb_state9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dcb_state9, align 4
  %conv10 = trunc i16 %7 to i8
  ret i8 %conv10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_set_state(ptr nocapture noundef %netdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !544

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool6.not = icmp eq i8 %state, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.223, ptr @.str.222
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.221, i32 noundef 1950, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond7) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool12 = icmp ne i8 %state, 0
  br i1 %tobool12, label %land.lhs.true, label %do.end10.if.end46_crit_edge

do.end10.if.end46_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true:                                    ; preds = %do.end10
  %dcbx_enabled = getelementptr i8, ptr %netdev, i32 7080
  %4 = ptrtoint ptr %dcbx_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dcbx_enabled, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %5, label %land.lhs.true.if.end46_crit_edge [
    i32 0, label %land.lhs.true.do.body18_crit_edge
    i32 -1, label %land.lhs.true.do.body18_crit_edge66
  ]

land.lhs.true.do.body18_crit_edge66:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

land.lhs.true.do.body18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body18:                                        ; preds = %land.lhs.true.do.body18_crit_edge, %land.lhs.true.do.body18_crit_edge66
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and20 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.cleanup_crit_edge, label %do.end31, !prof !544

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end31:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %dev33 = getelementptr i8, ptr %netdev, i32 3132
  %9 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev33, align 4
  %tobool34.not = icmp eq ptr %10, null
  %spec.select65 = select i1 %tobool34.not, ptr @.str.3, ptr %10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.221, i32 noundef 1955, ptr noundef nonnull %spec.select65) #13
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %do.end10.if.end46_crit_edge
  %dcbx_enabled51 = getelementptr i8, ptr %netdev, i32 7080
  %11 = ptrtoint ptr %dcbx_enabled51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dcbx_enabled51, align 8
  %common.i = getelementptr i8, ptr %netdev, i32 4328
  %13 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %common.i, align 8
  %shr.i = lshr i32 %14, 16
  %shr.off.i = add nsw i32 %shr.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off.i)
  %switch.i = icmp ult i32 %shr.off.i, 3
  %not.switch.i = xor i1 %switch.i, true
  %narrow.i = and i1 %tobool12, %not.switch.i
  %spec.select53.i = zext i1 %narrow.i to i16
  %spec.select54.i = select i1 %switch.i, i32 -1, i32 %12
  %15 = getelementptr i8, ptr %netdev, i32 7076
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %spec.select53.i, ptr %15, align 4
  %17 = ptrtoint ptr %dcbx_enabled51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select54.i, ptr %dcbx_enabled51, align 8
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end46.cleanup_crit_edge, label %do.end.i, !prof !544

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.end46
  %dev.i = getelementptr i8, ptr %netdev, i32 3132
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %tobool18.not.i = icmp eq ptr %21, null
  %spec.select.i = select i1 %tobool18.not.i, ptr @.str.3, ptr %21
  %cond22.i = select i1 %tobool12, ptr @.str.30, ptr @.str.31
  %22 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.317)
  switch i32 %12, label %cond.false30.i [
    i32 0, label %do.end.i.cond.end36.i_crit_edge
    i32 1, label %cond.end36.fold.split.i
  ]

do.end.i.cond.end36.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36.i

cond.false30.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp31.i = icmp eq i32 %12, 2
  %cond33.i = select i1 %cmp31.i, ptr @.str.34, ptr @.str.35
  br label %cond.end36.i

cond.end36.fold.split.i:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.end36.fold.split.i, %cond.false30.i, %do.end.i.cond.end36.i_crit_edge
  %cond37.i = phi ptr [ @.str.32, %do.end.i.cond.end36.i_crit_edge ], [ %cond33.i, %cond.false30.i ], [ @.str.33, %cond.end36.fold.split.i ]
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 966, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %cond22.i, ptr noundef nonnull %cond37.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end36.i, %if.end46.cleanup_crit_edge, %do.end31, %do.body18.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %do.end31 ], [ 1, %do.body18.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ 0, %cond.end36.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_get_perm_hw_addr(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %perm_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef 1967, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %7 to i32
  %8 = call ptr @memcpy(ptr %perm_addr, ptr %5, i32 %conv)
  %cnic_loaded = getelementptr i8, ptr %netdev, i32 3442
  %9 = ptrtoint ptr %cnic_loaded to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cnic_loaded, align 2, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %do.end8.if.end16_crit_edge, label %if.then10

do.end8.if.end16_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr_len, align 1
  %conv12 = zext i8 %12 to i32
  %add.ptr = getelementptr i8, ptr %perm_addr, i32 %conv12
  %fip_mac = getelementptr i8, ptr %netdev, i32 5736
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %fip_mac, i32 %conv12)
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %do.end8.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_set_pg_tccfg_tx(ptr nocapture noundef %netdev, i32 noundef %prio, i8 noundef zeroext %prio_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %conv = zext i8 %pgid to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.230, i32 noundef 1984, ptr noundef nonnull %spec.select, i32 noundef %prio, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state.i = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end8.cleanup_crit_edge, label %bnx2x_dcbnl_set_valid.exit

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bnx2x_dcbnl_set_valid.exit:                       ; preds = %do.end8
  %dcbx_mode_uset.i = getelementptr i8, ptr %netdev, i32 7084
  %6 = ptrtoint ptr %dcbx_mode_uset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_mode_uset.i, align 4, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond = or i1 %cmp, %tobool1.i.not
  br i1 %or.cond, label %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, label %if.end12

bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge:     ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = zext i8 %pgid to i32
  %arrayidx = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 175, i32 14, i32 %prio
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv13, ptr %arrayidx, align 4
  %admin_ets_configuration_tx_enable = getelementptr i8, ptr %netdev, i32 7108
  %9 = ptrtoint ptr %admin_ets_configuration_tx_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %admin_ets_configuration_tx_enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_set_pg_bwgcfg_tx(ptr nocapture noundef %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %conv = zext i8 %bw_pct to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.232, i32 noundef 2009, ptr noundef nonnull %spec.select, i32 noundef %pgid, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state.i = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end8.cleanup_crit_edge, label %bnx2x_dcbnl_set_valid.exit

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bnx2x_dcbnl_set_valid.exit:                       ; preds = %do.end8
  %dcbx_mode_uset.i = getelementptr i8, ptr %netdev, i32 7084
  %6 = ptrtoint ptr %dcbx_mode_uset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_mode_uset.i, align 4, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  %or.cond = or i1 %cmp, %tobool1.i.not
  br i1 %or.cond, label %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, label %if.end12

bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge:     ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = zext i8 %bw_pct to i32
  %arrayidx = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 175, i32 13, i32 %pgid
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv13, ptr %arrayidx, align 4
  %admin_ets_configuration_tx_enable = getelementptr i8, ptr %netdev, i32 7108
  %9 = ptrtoint ptr %admin_ets_configuration_tx_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %admin_ets_configuration_tx_enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_set_pg_tccfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %prio_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234, i32 noundef 2023, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_set_pg_bwgcfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.235, i32 noundef 2030, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_get_pg_tccfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef writeonly %prio_type, ptr nocapture noundef writeonly %pgid, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237, i32 noundef 2038, ptr noundef nonnull %spec.select, i32 noundef %prio) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pgid, align 1
  %5 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %prio_type, align 1
  %6 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bw_pct, align 1
  %7 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %up_map, align 1
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %8 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool9.not = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond = or i1 %cmp, %tobool9.not
  br i1 %or.cond, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %div = sdiv i32 %prio, 8
  %arrayidx = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 187, i32 0, i32 2, i32 %div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %div12 = sdiv i32 %prio, 2
  %rem = srem i32 %div12, 4
  %.neg = mul nsw i32 %rem, -8
  %12 = mul i32 %div12, 2
  %rem13.decomposed = sub i32 %prio, %12
  %mul14 = shl nsw i32 %rem13.decomposed, 2
  %mul = add nsw i32 %mul14, 24
  %add = add nsw i32 %mul, %.neg
  %shr = lshr i32 %11, %add
  %13 = trunc i32 %shr to i8
  %conv = and i8 %13, 15
  %14 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %pgid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_get_pg_bwgcfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.239, i32 noundef 2064, ptr noundef nonnull %spec.select, i32 noundef %pgid) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bw_pct, align 1
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %5 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool9.not = icmp eq i16 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  %or.cond = or i1 %cmp, %tobool9.not
  br i1 %or.cond, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %div = sdiv i32 %pgid, 4
  %arrayidx = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 187, i32 0, i32 1, i32 %div
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = mul i32 %div, 4
  %rem.decomposed = sub i32 %pgid, %9
  %.neg = mul nsw i32 %rem.decomposed, -8
  %mul = add nsw i32 %.neg, 24
  %shr = lshr i32 %8, %mul
  %conv = trunc i32 %shr to i8
  %10 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %bw_pct, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_get_pg_tccfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef writeonly %prio_type, ptr nocapture noundef writeonly %pgid, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.241, i32 noundef 2079, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %up_map, align 1
  %5 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bw_pct, align 1
  %6 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pgid, align 1
  %7 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prio_type, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_get_pg_bwgcfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.242, i32 noundef 2088, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bw_pct, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_set_pfc_cfg(ptr nocapture noundef %netdev, i32 noundef %prio, i8 noundef zeroext %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %conv = zext i8 %setting to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.243, i32 noundef 2097, ptr noundef nonnull %spec.select, i32 noundef %prio, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state.i = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end8.cleanup_crit_edge, label %bnx2x_dcbnl_set_valid.exit

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bnx2x_dcbnl_set_valid.exit:                       ; preds = %do.end8
  %dcbx_mode_uset.i = getelementptr i8, ptr %netdev, i32 7084
  %6 = ptrtoint ptr %dcbx_mode_uset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_mode_uset.i, align 4, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond = or i1 %cmp, %tobool1.i.not
  br i1 %or.cond, label %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, label %if.end12

bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge:     ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %setting)
  %tobool13.not = icmp eq i8 %setting, 0
  %shl16 = shl nuw nsw i32 1, %prio
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %admin_pfc_bitmap = getelementptr i8, ptr %netdev, i32 7268
  %8 = ptrtoint ptr %admin_pfc_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %admin_pfc_bitmap, align 4
  %or = or i32 %9, %shl16
  store i32 %or, ptr %admin_pfc_bitmap, align 4
  %admin_pfc_tx_enable = getelementptr i8, ptr %netdev, i32 7116
  %10 = ptrtoint ptr %admin_pfc_tx_enable to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %admin_pfc_tx_enable, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl16, -1
  %admin_pfc_bitmap18 = getelementptr i8, ptr %netdev, i32 7268
  %11 = ptrtoint ptr %admin_pfc_bitmap18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %admin_pfc_bitmap18, align 4
  %and19 = and i32 %12, %neg
  store i32 %and19, ptr %admin_pfc_bitmap18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_get_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef writeonly %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.244, i32 noundef 2114, ptr noundef nonnull %spec.select, i32 noundef %prio) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %setting, align 1
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %5 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool9.not = icmp eq i16 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond = or i1 %cmp, %tobool9.not
  br i1 %or.cond, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %pfc = getelementptr i8, ptr %netdev, i32 8068
  %7 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfc, align 4
  %conv = zext i8 %8 to i32
  %shr = lshr i32 %conv, %prio
  %9 = trunc i32 %shr to i8
  %conv13 = and i8 %9, 1
  %10 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %setting, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_set_all(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246, i32 noundef 2128, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state.i = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end8.cleanup_crit_edge, label %bnx2x_dcbnl_set_valid.exit

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bnx2x_dcbnl_set_valid.exit:                       ; preds = %do.end8
  %dcbx_mode_uset.i = getelementptr i8, ptr %netdev, i32 7084
  %6 = ptrtoint ptr %dcbx_mode_uset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_mode_uset.i, align 4, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  br i1 %tobool1.i.not, label %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, label %if.end11

bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge:     ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %bnx2x_dcbnl_set_valid.exit
  %recovery_state = getelementptr i8, ptr %netdev, i32 3144
  %8 = ptrtoint ptr %recovery_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recovery_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  %dev15 = getelementptr i8, ptr %netdev, i32 3132
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  br i1 %cmp.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.247) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %state.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end14.do.body19_crit_edge, label %if.then17

if.end14.do.body19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

if.then17:                                        ; preds = %if.end14
  %shmem2_base.i = getelementptr i8, ptr %netdev, i32 4340
  %14 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shmem2_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i60 = icmp eq i32 %15, 0
  br i1 %tobool.not.i60, label %if.then17.bnx2x_update_drv_flags.exit_crit_edge, label %land.lhs.true.i

if.then17.bnx2x_update_drv_flags.exit_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_update_drv_flags.exit

land.lhs.true.i:                                  ; preds = %if.then17
  %regview.i = getelementptr i8, ptr %netdev, i32 2320
  %16 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regview.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %17, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #10, !srcloc !545
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !550
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %19)
  %cmp.i = icmp ugt i32 %19, 188
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge

land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_update_drv_flags.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @bnx2x_acquire_hw_lock(ptr noundef %add.ptr.i, i32 noundef 10) #10
  %20 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regview.i, align 8
  %22 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shmem2_base.i, align 4
  %add10.i = add i32 %23, 188
  %add.ptr11.i = getelementptr i8, ptr %21, i32 %add10.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #10, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !551
  %25 = or i32 %24, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !552
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regview.i, align 8
  %28 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shmem2_base.i, align 4
  %add20.i = add i32 %29, 188
  %add.ptr21.i = getelementptr i8, ptr %27, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %25) #10, !srcloc !553
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 8
  %and23.i = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then.i.do.end37.i_crit_edge, label %do.end30.i, !prof !544

if.then.i.do.end37.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

do.end30.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %25)
  %33 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev15, align 4
  %tobool32.not.i = icmp eq ptr %34, null
  %spec.select.i = select i1 %tobool32.not.i, ptr @.str.3, ptr %34
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, i32 noundef 1361, ptr noundef nonnull %spec.select.i, i32 noundef %32) #13
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end30.i, %if.then.i.do.end37.i_crit_edge
  %call38.i = tail call i32 @bnx2x_release_hw_lock(ptr noundef %add.ptr.i, i32 noundef 10) #10
  br label %bnx2x_update_drv_flags.exit

bnx2x_update_drv_flags.exit:                      ; preds = %do.end37.i, %land.lhs.true.i.bnx2x_update_drv_flags.exit_crit_edge, %if.then17.bnx2x_update_drv_flags.exit_crit_edge
  tail call void @bnx2x_dcbx_init(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  br label %do.body19

do.body19:                                        ; preds = %bnx2x_update_drv_flags.exit, %if.end14.do.body19_crit_edge
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 8
  %and21 = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body19.cleanup_crit_edge, label %do.end32, !prof !544

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end32:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev15, align 4
  %tobool35.not = icmp eq ptr %38, null
  %spec.select59 = select i1 %tobool35.not, ptr @.str.3, ptr %38
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.246, i32 noundef 2144, ptr noundef nonnull %spec.select59) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.body19.cleanup_crit_edge, %if.then12, %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.then12 ], [ 1, %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge ], [ 0, %do.end32 ], [ 0, %do.body19.cleanup_crit_edge ], [ 1, %do.end8.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_get_cap(ptr nocapture noundef readonly %netdev, i32 noundef %capid, ptr nocapture noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %0 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.body14, label %if.then

if.then:                                          ; preds = %entry
  %2 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.318)
  switch i32 %capid, label %do.end [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
    i32 9, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %cap, align 1
  br label %do.body36

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cap, align 1
  br label %do.body36

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cap, align 1
  br label %do.body36

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %cap, align 1
  br label %do.body36

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %cap, align 1
  br label %do.body36

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %cap, align 1
  br label %do.body36

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %cap, align 1
  br label %do.body36

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 22, ptr %cap, align 1
  br label %do.body36

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, i32 noundef 2181, ptr noundef nonnull %spec.select) #13
  br label %do.body36

do.body14:                                        ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body14.do.body36_crit_edge, label %do.end21, !prof !544

do.body14.do.body36_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

do.end21:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr i8, ptr %netdev, i32 3132
  %15 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev23, align 4
  %tobool24.not = icmp eq ptr %16, null
  %spec.select83 = select i1 %tobool24.not, ptr @.str.3, ptr %16
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.252, i32 noundef 2186, ptr noundef nonnull %spec.select83) #13
  br label %do.body36

do.body36:                                        ; preds = %do.end21, %do.body14.do.body36_crit_edge, %do.end, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %rval.0 = phi i8 [ 1, %do.end ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 1, %do.end21 ], [ 1, %do.body14.do.body36_crit_edge ]
  %msg_enable37 = getelementptr i8, ptr %netdev, i32 3432
  %17 = ptrtoint ptr %msg_enable37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable37, align 8
  %and38 = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.do.end63_crit_edge, label %do.end49, !prof !544

do.body36.do.end63_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

do.end49:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %dev51 = getelementptr i8, ptr %netdev, i32 3132
  %19 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev51, align 4
  %tobool52.not = icmp eq ptr %20, null
  %spec.select84 = select i1 %tobool52.not, ptr @.str.3, ptr %20
  %21 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cap, align 1
  %conv = zext i8 %22 to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.252, i32 noundef 2190, ptr noundef nonnull %spec.select84, i32 noundef %capid, i32 noundef %conv) #13
  br label %do.end63

do.end63:                                         ; preds = %do.end49, %do.body36.do.end63_crit_edge
  ret i8 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2x_dcbnl_get_numtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcid, ptr nocapture noundef writeonly %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, i32 noundef 2199, ptr noundef nonnull %spec.select, i32 noundef %tcid) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  br i1 %tobool9.not, label %do.body228, label %if.then10

if.then10:                                        ; preds = %do.end8
  %6 = zext i32 %tcid to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.319)
  switch i32 %tcid, label %do.end214 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb97
  ]

sw.bb:                                            ; preds = %if.then10
  %common = getelementptr i8, ptr %netdev, i32 4328
  %7 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %common, align 8
  %shr = lshr i32 %8, 16
  %trunc309 = trunc i32 %shr to i16
  %9 = zext i16 %trunc309 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.320)
  switch i16 %trunc309, label %sw.bb.land.end_crit_edge [
    i16 5770, label %sw.bb.land.rhs_crit_edge
    i16 5797, label %sw.bb.land.rhs_crit_edge310
    i16 5801, label %sw.bb.land.rhs_crit_edge311
    i16 5774, label %sw.bb.land.rhs_crit_edge312
    i16 5806, label %sw.bb.land.rhs_crit_edge313
    i16 5807, label %sw.bb.land.rhs_crit_edge314
    i16 5693, label %sw.bb.land.rhs_crit_edge315
    i16 5694, label %sw.bb.land.rhs_crit_edge316
    i16 5695, label %sw.bb.land.rhs_crit_edge317
    i16 5793, label %sw.bb.land.rhs_crit_edge318
    i16 5794, label %sw.bb.land.rhs_crit_edge319
    i16 5773, label %sw.bb.land.rhs_crit_edge320
    i16 5796, label %sw.bb.land.rhs_crit_edge321
    i16 5803, label %sw.bb.land.rhs_crit_edge322
    i16 5805, label %sw.bb.land.rhs_crit_edge323
  ]

sw.bb.land.rhs_crit_edge323:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge322:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge321:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge320:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge319:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge318:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge317:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge316:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge315:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge314:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge313:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge312:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge311:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge310:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.rhs_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb.land.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %sw.bb.land.rhs_crit_edge, %sw.bb.land.rhs_crit_edge310, %sw.bb.land.rhs_crit_edge311, %sw.bb.land.rhs_crit_edge312, %sw.bb.land.rhs_crit_edge313, %sw.bb.land.rhs_crit_edge314, %sw.bb.land.rhs_crit_edge315, %sw.bb.land.rhs_crit_edge316, %sw.bb.land.rhs_crit_edge317, %sw.bb.land.rhs_crit_edge318, %sw.bb.land.rhs_crit_edge319, %sw.bb.land.rhs_crit_edge320, %sw.bb.land.rhs_crit_edge321, %sw.bb.land.rhs_crit_edge322, %sw.bb.land.rhs_crit_edge323
  %and82 = and i32 %8, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and82)
  %cmp83 = icmp ugt i32 %and82, 20480
  %sub = sub nuw nsw i32 61440, %and82
  %10 = lshr exact i32 %sub, 1
  %shl = and i32 %10, 28672
  %cond94 = select i1 %cmp83, i32 %shl, i32 %and82
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cond94)
  %cmp95 = icmp eq i32 %cond94, 4096
  %phi.cast306 = select i1 %cmp95, i8 3, i8 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.land.end_crit_edge
  %11 = phi i8 [ %phi.cast306, %land.rhs ], [ 2, %sw.bb.land.end_crit_edge ]
  %12 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %num, align 1
  br label %if.end256

sw.bb97:                                          ; preds = %if.then10
  %common98 = getelementptr i8, ptr %netdev, i32 4328
  %13 = ptrtoint ptr %common98 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %common98, align 8
  %shr100 = lshr i32 %14, 16
  %trunc = trunc i32 %shr100 to i16
  %15 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.321)
  switch i16 %trunc, label %sw.bb97.land.end208_crit_edge [
    i16 5770, label %sw.bb97.land.rhs187_crit_edge
    i16 5797, label %sw.bb97.land.rhs187_crit_edge324
    i16 5801, label %sw.bb97.land.rhs187_crit_edge325
    i16 5774, label %sw.bb97.land.rhs187_crit_edge326
    i16 5806, label %sw.bb97.land.rhs187_crit_edge327
    i16 5807, label %sw.bb97.land.rhs187_crit_edge328
    i16 5693, label %sw.bb97.land.rhs187_crit_edge329
    i16 5694, label %sw.bb97.land.rhs187_crit_edge330
    i16 5695, label %sw.bb97.land.rhs187_crit_edge331
    i16 5793, label %sw.bb97.land.rhs187_crit_edge332
    i16 5794, label %sw.bb97.land.rhs187_crit_edge333
    i16 5773, label %sw.bb97.land.rhs187_crit_edge334
    i16 5796, label %sw.bb97.land.rhs187_crit_edge335
    i16 5803, label %sw.bb97.land.rhs187_crit_edge336
    i16 5805, label %sw.bb97.land.rhs187_crit_edge337
  ]

sw.bb97.land.rhs187_crit_edge337:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge336:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge335:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge334:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge333:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge332:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge331:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge330:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge329:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge328:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge327:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge326:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge325:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge324:                 ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.rhs187_crit_edge:                    ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs187

sw.bb97.land.end208_crit_edge:                    ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end208

land.rhs187:                                      ; preds = %sw.bb97.land.rhs187_crit_edge, %sw.bb97.land.rhs187_crit_edge324, %sw.bb97.land.rhs187_crit_edge325, %sw.bb97.land.rhs187_crit_edge326, %sw.bb97.land.rhs187_crit_edge327, %sw.bb97.land.rhs187_crit_edge328, %sw.bb97.land.rhs187_crit_edge329, %sw.bb97.land.rhs187_crit_edge330, %sw.bb97.land.rhs187_crit_edge331, %sw.bb97.land.rhs187_crit_edge332, %sw.bb97.land.rhs187_crit_edge333, %sw.bb97.land.rhs187_crit_edge334, %sw.bb97.land.rhs187_crit_edge335, %sw.bb97.land.rhs187_crit_edge336, %sw.bb97.land.rhs187_crit_edge337
  %and190 = and i32 %14, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and190)
  %cmp191 = icmp ugt i32 %and190, 20480
  %sub197 = sub nuw nsw i32 61440, %and190
  %16 = lshr exact i32 %sub197, 1
  %shl199 = and i32 %16, 28672
  %cond205 = select i1 %cmp191, i32 %shl199, i32 %and190
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cond205)
  %cmp206 = icmp eq i32 %cond205, 4096
  %phi.cast = select i1 %cmp206, i8 3, i8 2
  br label %land.end208

land.end208:                                      ; preds = %land.rhs187, %sw.bb97.land.end208_crit_edge
  %17 = phi i8 [ %phi.cast, %land.rhs187 ], [ 2, %sw.bb97.land.end208_crit_edge ]
  %18 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %num, align 1
  br label %if.end256

do.end214:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %dev216 = getelementptr i8, ptr %netdev, i32 3132
  %19 = ptrtoint ptr %dev216 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev216, align 4
  %tobool217.not = icmp eq ptr %20, null
  %spec.select307 = select i1 %tobool217.not, ptr @.str.3, ptr %20
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.260, i32 noundef 2212, ptr noundef nonnull %spec.select307) #13
  br label %if.end256

do.body228:                                       ; preds = %do.end8
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 8
  %and230 = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %do.body228.if.end256_crit_edge, label %do.end241, !prof !544

do.body228.if.end256_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256

do.end241:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  %dev243 = getelementptr i8, ptr %netdev, i32 3132
  %23 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev243, align 4
  %tobool244.not = icmp eq ptr %24, null
  %spec.select308 = select i1 %tobool244.not, ptr @.str.3, ptr %24
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.260, i32 noundef 2217, ptr noundef nonnull %spec.select308) #13
  br label %if.end256

if.end256:                                        ; preds = %do.end241, %do.body228.if.end256_crit_edge, %do.end214, %land.end208, %land.end
  %rval.0 = phi i32 [ 1, %do.end214 ], [ 0, %land.end208 ], [ 0, %land.end ], [ 1, %do.end241 ], [ 1, %do.body228.if.end256_crit_edge ]
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2x_dcbnl_set_numtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcid, i8 noundef zeroext %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %conv = zext i8 %num to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.267, i32 noundef 2227, ptr noundef nonnull %spec.select, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_get_pfc_state(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %enabled = getelementptr i8, ptr %netdev, i32 8071
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1
  %conv = zext i8 %5 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.268, i32 noundef 2234, ptr noundef nonnull %spec.select, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %6 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not = icmp eq i16 %7, 0
  br i1 %tobool9.not, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %enabled14 = getelementptr i8, ptr %netdev, i32 8071
  %8 = ptrtoint ptr %enabled14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled14, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8.cleanup_crit_edge
  %retval.0 = phi i8 [ %9, %if.end11 ], [ 0, %do.end8.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_dcbnl_set_pfc_state(ptr nocapture noundef %netdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !544

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool6.not = icmp eq i8 %state, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.223, ptr @.str.222
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.269, i32 noundef 2245, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond7) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %dcb_state.i = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end10.cleanup_crit_edge, label %bnx2x_dcbnl_set_valid.exit

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bnx2x_dcbnl_set_valid.exit:                       ; preds = %do.end10
  %dcbx_mode_uset.i = getelementptr i8, ptr %netdev, i32 7084
  %6 = ptrtoint ptr %dcbx_mode_uset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_mode_uset.i, align 4, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  br i1 %tobool1.i.not, label %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, label %if.end13

bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge:     ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool15.not = icmp ne i8 %state, 0
  %cond16 = zext i1 %tobool15.not to i32
  %admin_pfc_enable = getelementptr i8, ptr %netdev, i32 7100
  %8 = ptrtoint ptr %admin_pfc_enable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond16, ptr %admin_pfc_enable, align 4
  %admin_pfc_tx_enable = getelementptr i8, ptr %netdev, i32 7116
  %9 = ptrtoint ptr %admin_pfc_tx_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond16, ptr %admin_pfc_tx_enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %bnx2x_dcbnl_set_valid.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2x_dcbnl_set_app_up(ptr noundef %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %idval, i8 noundef zeroext %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !544

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %conv = zext i8 %idtype to i32
  %conv6 = zext i16 %idval to i32
  %conv7 = zext i8 %up to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.271, i32 noundef 2341, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %dcb_state.i = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end10.do.body13_crit_edge, label %bnx2x_dcbnl_set_valid.exit

do.end10.do.body13_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

bnx2x_dcbnl_set_valid.exit:                       ; preds = %do.end10
  %dcbx_mode_uset.i = getelementptr i8, ptr %netdev, i32 7084
  %6 = ptrtoint ptr %dcbx_mode_uset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_mode_uset.i, align 4, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  br i1 %tobool1.i.not, label %bnx2x_dcbnl_set_valid.exit.do.body13_crit_edge, label %if.end41

bnx2x_dcbnl_set_valid.exit.do.body13_crit_edge:   ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

do.body13:                                        ; preds = %bnx2x_dcbnl_set_valid.exit.do.body13_crit_edge, %do.end10.do.body13_crit_edge
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and15 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.cleanup_crit_edge, label %do.end26, !prof !544

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %dev28 = getelementptr i8, ptr %netdev, i32 3132
  %10 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev28, align 4
  %tobool29.not = icmp eq ptr %11, null
  %spec.select88 = select i1 %tobool29.not, ptr @.str.3, ptr %11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.271, i32 noundef 2344, ptr noundef nonnull %spec.select88) #13
  br label %cleanup

if.end41:                                         ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %idtype)
  %switch = icmp ult i8 %idtype, 2
  br i1 %switch, label %sw.epilog, label %do.body43

do.body43:                                        ; preds = %if.end41
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and45 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body43.cleanup_crit_edge, label %do.end56, !prof !544

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end56:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %dev58 = getelementptr i8, ptr %netdev, i32 3132
  %14 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev58, align 4
  %tobool59.not = icmp eq ptr %15, null
  %spec.select89 = select i1 %tobool59.not, ptr @.str.3, ptr %15
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.271, i32 noundef 2354, ptr noundef nonnull %spec.select89) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end41
  %conv10.i.i = zext i16 %idval to i32
  %arrayidx.i = getelementptr i8, ptr %netdev, i32 7272
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %sw.epilog.if.end.i_crit_edge, label %if.end.i.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.epilog
  %18 = zext i8 %idtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.322)
  switch i8 %idtype, label %if.end.i.i.if.end.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb4.i.i
  ]

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %traffic_type.i.i = getelementptr i8, ptr %netdev, i32 7280
  %19 = ptrtoint ptr %traffic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %traffic_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i.i, label %sw.bb.i.i.bnx2x_admin_app_is_equal.exit.i_crit_edge, label %sw.bb.i.i.if.end.i_crit_edge

sw.bb.i.i.if.end.i_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb.i.i.bnx2x_admin_app_is_equal.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  %traffic_type5.i.i = getelementptr i8, ptr %netdev, i32 7280
  %21 = ptrtoint ptr %traffic_type5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %traffic_type5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp6.not.i.i = icmp eq i32 %22, 1
  br i1 %cmp6.not.i.i, label %sw.bb4.i.i.bnx2x_admin_app_is_equal.exit.i_crit_edge, label %sw.bb4.i.i.if.end.i_crit_edge

sw.bb4.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb4.i.i.bnx2x_admin_app_is_equal.exit.i_crit_edge: ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.i

bnx2x_admin_app_is_equal.exit.i:                  ; preds = %sw.bb4.i.i.bnx2x_admin_app_is_equal.exit.i_crit_edge, %sw.bb.i.i.bnx2x_admin_app_is_equal.exit.i_crit_edge
  %app_id.i.i = getelementptr i8, ptr %netdev, i32 7284
  %23 = ptrtoint ptr %app_id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %app_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv10.i.i)
  %cmp11.not.i.i = icmp eq i32 %24, %conv10.i.i
  br i1 %cmp11.not.i.i, label %bnx2x_admin_app_is_equal.exit.i.if.end23.i_crit_edge, label %bnx2x_admin_app_is_equal.exit.i.if.end.i_crit_edge

bnx2x_admin_app_is_equal.exit.i.if.end.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

bnx2x_admin_app_is_equal.exit.i.if.end23.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.end.i:                                         ; preds = %bnx2x_admin_app_is_equal.exit.i.if.end.i_crit_edge, %sw.bb4.i.i.if.end.i_crit_edge, %sw.bb.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %sw.epilog.if.end.i_crit_edge
  %spec.select.i = phi i32 [ -1, %if.end.i.i.if.end.i_crit_edge ], [ -1, %sw.bb4.i.i.if.end.i_crit_edge ], [ -1, %sw.bb.i.i.if.end.i_crit_edge ], [ 0, %sw.epilog.if.end.i_crit_edge ], [ -1, %bnx2x_admin_app_is_equal.exit.i.if.end.i_crit_edge ]
  %arrayidx.1.i = getelementptr i8, ptr %netdev, i32 7288
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.1.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.end.i.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

if.end.i.1.i:                                     ; preds = %if.end.i
  %27 = zext i8 %idtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.323)
  switch i8 %idtype, label %if.end.i.1.i.if.end.1.i_crit_edge [
    i8 0, label %sw.bb.i.1.i
    i8 1, label %sw.bb4.i.1.i
  ]

if.end.i.1.i.if.end.1.i_crit_edge:                ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

sw.bb4.i.1.i:                                     ; preds = %if.end.i.1.i
  %traffic_type5.i.1.i = getelementptr i8, ptr %netdev, i32 7296
  %28 = ptrtoint ptr %traffic_type5.i.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %traffic_type5.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp6.not.i.1.i = icmp eq i32 %29, 1
  br i1 %cmp6.not.i.1.i, label %sw.bb4.i.1.i.bnx2x_admin_app_is_equal.exit.1.i_crit_edge, label %sw.bb4.i.1.i.if.end.1.i_crit_edge

sw.bb4.i.1.i.if.end.1.i_crit_edge:                ; preds = %sw.bb4.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

sw.bb4.i.1.i.bnx2x_admin_app_is_equal.exit.1.i_crit_edge: ; preds = %sw.bb4.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.1.i

sw.bb.i.1.i:                                      ; preds = %if.end.i.1.i
  %traffic_type.i.1.i = getelementptr i8, ptr %netdev, i32 7296
  %30 = ptrtoint ptr %traffic_type.i.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %traffic_type.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i.1.i = icmp eq i32 %31, 0
  br i1 %cmp.not.i.1.i, label %sw.bb.i.1.i.bnx2x_admin_app_is_equal.exit.1.i_crit_edge, label %sw.bb.i.1.i.if.end.1.i_crit_edge

sw.bb.i.1.i.if.end.1.i_crit_edge:                 ; preds = %sw.bb.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

sw.bb.i.1.i.bnx2x_admin_app_is_equal.exit.1.i_crit_edge: ; preds = %sw.bb.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.1.i

bnx2x_admin_app_is_equal.exit.1.i:                ; preds = %sw.bb.i.1.i.bnx2x_admin_app_is_equal.exit.1.i_crit_edge, %sw.bb4.i.1.i.bnx2x_admin_app_is_equal.exit.1.i_crit_edge
  %app_id.i.1.i = getelementptr i8, ptr %netdev, i32 7300
  %32 = ptrtoint ptr %app_id.i.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %app_id.i.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv10.i.i)
  %cmp11.not.i.1.i = icmp eq i32 %33, %conv10.i.i
  br i1 %cmp11.not.i.1.i, label %bnx2x_admin_app_is_equal.exit.1.i.if.end23.i_crit_edge, label %bnx2x_admin_app_is_equal.exit.1.i.if.end.1.i_crit_edge

bnx2x_admin_app_is_equal.exit.1.i.if.end.1.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

bnx2x_admin_app_is_equal.exit.1.i.if.end23.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.end.1.i:                                       ; preds = %bnx2x_admin_app_is_equal.exit.1.i.if.end.1.i_crit_edge, %sw.bb.i.1.i.if.end.1.i_crit_edge, %sw.bb4.i.1.i.if.end.1.i_crit_edge, %if.end.i.1.i.if.end.1.i_crit_edge, %if.end.i.if.end.1.i_crit_edge
  %spec.select.1.i = phi i32 [ %spec.select.i, %if.end.i.1.i.if.end.1.i_crit_edge ], [ %spec.select.i, %sw.bb4.i.1.i.if.end.1.i_crit_edge ], [ %spec.select.i, %sw.bb.i.1.i.if.end.1.i_crit_edge ], [ 1, %if.end.i.if.end.1.i_crit_edge ], [ %spec.select.i, %bnx2x_admin_app_is_equal.exit.1.i.if.end.1.i_crit_edge ]
  %spec.select56.1.i = select i1 %tobool.not.i.i, i32 %spec.select.i, i32 %spec.select.1.i
  %arrayidx.2.i = getelementptr i8, ptr %netdev, i32 7304
  %34 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.2.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.end.i.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

if.end.i.2.i:                                     ; preds = %if.end.1.i
  %36 = zext i8 %idtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.324)
  switch i8 %idtype, label %if.end.i.2.i.if.end.2.i_crit_edge [
    i8 0, label %sw.bb.i.2.i
    i8 1, label %sw.bb4.i.2.i
  ]

if.end.i.2.i.if.end.2.i_crit_edge:                ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

sw.bb4.i.2.i:                                     ; preds = %if.end.i.2.i
  %traffic_type5.i.2.i = getelementptr i8, ptr %netdev, i32 7312
  %37 = ptrtoint ptr %traffic_type5.i.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %traffic_type5.i.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp6.not.i.2.i = icmp eq i32 %38, 1
  br i1 %cmp6.not.i.2.i, label %sw.bb4.i.2.i.bnx2x_admin_app_is_equal.exit.2.i_crit_edge, label %sw.bb4.i.2.i.if.end.2.i_crit_edge

sw.bb4.i.2.i.if.end.2.i_crit_edge:                ; preds = %sw.bb4.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

sw.bb4.i.2.i.bnx2x_admin_app_is_equal.exit.2.i_crit_edge: ; preds = %sw.bb4.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.2.i

sw.bb.i.2.i:                                      ; preds = %if.end.i.2.i
  %traffic_type.i.2.i = getelementptr i8, ptr %netdev, i32 7312
  %39 = ptrtoint ptr %traffic_type.i.2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %traffic_type.i.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i.2.i = icmp eq i32 %40, 0
  br i1 %cmp.not.i.2.i, label %sw.bb.i.2.i.bnx2x_admin_app_is_equal.exit.2.i_crit_edge, label %sw.bb.i.2.i.if.end.2.i_crit_edge

sw.bb.i.2.i.if.end.2.i_crit_edge:                 ; preds = %sw.bb.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

sw.bb.i.2.i.bnx2x_admin_app_is_equal.exit.2.i_crit_edge: ; preds = %sw.bb.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.2.i

bnx2x_admin_app_is_equal.exit.2.i:                ; preds = %sw.bb.i.2.i.bnx2x_admin_app_is_equal.exit.2.i_crit_edge, %sw.bb4.i.2.i.bnx2x_admin_app_is_equal.exit.2.i_crit_edge
  %app_id.i.2.i = getelementptr i8, ptr %netdev, i32 7316
  %41 = ptrtoint ptr %app_id.i.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %app_id.i.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv10.i.i)
  %cmp11.not.i.2.i = icmp eq i32 %42, %conv10.i.i
  br i1 %cmp11.not.i.2.i, label %bnx2x_admin_app_is_equal.exit.2.i.if.end23.i_crit_edge, label %bnx2x_admin_app_is_equal.exit.2.i.if.end.2.i_crit_edge

bnx2x_admin_app_is_equal.exit.2.i.if.end.2.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

bnx2x_admin_app_is_equal.exit.2.i.if.end23.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.end.2.i:                                       ; preds = %bnx2x_admin_app_is_equal.exit.2.i.if.end.2.i_crit_edge, %sw.bb.i.2.i.if.end.2.i_crit_edge, %sw.bb4.i.2.i.if.end.2.i_crit_edge, %if.end.i.2.i.if.end.2.i_crit_edge, %if.end.1.i.if.end.2.i_crit_edge
  %spec.select.2.i = phi i32 [ %spec.select56.1.i, %if.end.i.2.i.if.end.2.i_crit_edge ], [ %spec.select56.1.i, %sw.bb4.i.2.i.if.end.2.i_crit_edge ], [ %spec.select56.1.i, %sw.bb.i.2.i.if.end.2.i_crit_edge ], [ 2, %if.end.1.i.if.end.2.i_crit_edge ], [ %spec.select56.1.i, %bnx2x_admin_app_is_equal.exit.2.i.if.end.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select56.1.i)
  %cmp1.2.i = icmp slt i32 %spec.select56.1.i, 0
  %spec.select56.2.i = select i1 %cmp1.2.i, i32 %spec.select.2.i, i32 %spec.select56.1.i
  %arrayidx.3.i = getelementptr i8, ptr %netdev, i32 7320
  %43 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.3.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %if.end.i.3.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

if.end.i.3.i:                                     ; preds = %if.end.2.i
  %45 = zext i8 %idtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.325)
  switch i8 %idtype, label %if.end.i.3.i.if.end.3.i_crit_edge [
    i8 0, label %sw.bb.i.3.i
    i8 1, label %sw.bb4.i.3.i
  ]

if.end.i.3.i.if.end.3.i_crit_edge:                ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

sw.bb4.i.3.i:                                     ; preds = %if.end.i.3.i
  %traffic_type5.i.3.i = getelementptr i8, ptr %netdev, i32 7328
  %46 = ptrtoint ptr %traffic_type5.i.3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %traffic_type5.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp6.not.i.3.i = icmp eq i32 %47, 1
  br i1 %cmp6.not.i.3.i, label %sw.bb4.i.3.i.bnx2x_admin_app_is_equal.exit.3.i_crit_edge, label %sw.bb4.i.3.i.if.end.3.i_crit_edge

sw.bb4.i.3.i.if.end.3.i_crit_edge:                ; preds = %sw.bb4.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

sw.bb4.i.3.i.bnx2x_admin_app_is_equal.exit.3.i_crit_edge: ; preds = %sw.bb4.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.3.i

sw.bb.i.3.i:                                      ; preds = %if.end.i.3.i
  %traffic_type.i.3.i = getelementptr i8, ptr %netdev, i32 7328
  %48 = ptrtoint ptr %traffic_type.i.3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %traffic_type.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i.3.i = icmp eq i32 %49, 0
  br i1 %cmp.not.i.3.i, label %sw.bb.i.3.i.bnx2x_admin_app_is_equal.exit.3.i_crit_edge, label %sw.bb.i.3.i.if.end.3.i_crit_edge

sw.bb.i.3.i.if.end.3.i_crit_edge:                 ; preds = %sw.bb.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

sw.bb.i.3.i.bnx2x_admin_app_is_equal.exit.3.i_crit_edge: ; preds = %sw.bb.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_is_equal.exit.3.i

bnx2x_admin_app_is_equal.exit.3.i:                ; preds = %sw.bb.i.3.i.bnx2x_admin_app_is_equal.exit.3.i_crit_edge, %sw.bb4.i.3.i.bnx2x_admin_app_is_equal.exit.3.i_crit_edge
  %app_id.i.3.i = getelementptr i8, ptr %netdev, i32 7332
  %50 = ptrtoint ptr %app_id.i.3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %app_id.i.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv10.i.i)
  %cmp11.not.i.3.i = icmp eq i32 %51, %conv10.i.i
  br i1 %cmp11.not.i.3.i, label %bnx2x_admin_app_is_equal.exit.3.i.if.end23.i_crit_edge, label %bnx2x_admin_app_is_equal.exit.3.i.if.end.3.i_crit_edge

bnx2x_admin_app_is_equal.exit.3.i.if.end.3.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

bnx2x_admin_app_is_equal.exit.3.i.if.end23.i_crit_edge: ; preds = %bnx2x_admin_app_is_equal.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.end.3.i:                                       ; preds = %bnx2x_admin_app_is_equal.exit.3.i.if.end.3.i_crit_edge, %sw.bb.i.3.i.if.end.3.i_crit_edge, %sw.bb4.i.3.i.if.end.3.i_crit_edge, %if.end.i.3.i.if.end.3.i_crit_edge, %if.end.2.i.if.end.3.i_crit_edge
  %spec.select.3.i = phi i32 [ %spec.select56.2.i, %if.end.i.3.i.if.end.3.i_crit_edge ], [ %spec.select56.2.i, %sw.bb4.i.3.i.if.end.3.i_crit_edge ], [ %spec.select56.2.i, %sw.bb.i.3.i.if.end.3.i_crit_edge ], [ 3, %if.end.2.i.if.end.3.i_crit_edge ], [ %spec.select56.2.i, %bnx2x_admin_app_is_equal.exit.3.i.if.end.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select56.2.i)
  %cmp1.3.i = icmp slt i32 %spec.select56.2.i, 0
  %spec.select56.3.i = select i1 %cmp1.3.i, i32 %spec.select.3.i, i32 %spec.select56.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select56.3.i)
  %cmp9.i = icmp sgt i32 %spec.select56.3.i, -1
  br i1 %cmp9.i, label %if.then11.i, label %do.end.i

if.then11.i:                                      ; preds = %if.end.3.i
  %arrayidx14.i = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 175, i32 18, i32 %spec.select56.3.i
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %arrayidx14.i, align 4
  %53 = zext i8 %idtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.326)
  switch i8 %idtype, label %if.then11.i.bnx2x_admin_app_set_ent.exit.i_crit_edge [
    i8 0, label %if.then11.i.sw.epilog.sink.split.i.i_crit_edge
    i8 1, label %sw.bb1.i.i
  ]

if.then11.i.sw.epilog.sink.split.i.i_crit_edge:   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

if.then11.i.bnx2x_admin_app_set_ent.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_admin_app_set_ent.exit.i

sw.bb1.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb1.i.i, %if.then11.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 1, %sw.bb1.i.i ], [ 0, %if.then11.i.sw.epilog.sink.split.i.i_crit_edge ]
  %traffic_type2.i.i = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 175, i32 18, i32 %spec.select56.3.i, i32 2
  %54 = ptrtoint ptr %traffic_type2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink.i.i, ptr %traffic_type2.i.i, align 4
  br label %bnx2x_admin_app_set_ent.exit.i

bnx2x_admin_app_set_ent.exit.i:                   ; preds = %sw.epilog.sink.split.i.i, %if.then11.i.bnx2x_admin_app_set_ent.exit.i_crit_edge
  %app_id.i48.i = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 175, i32 18, i32 %spec.select56.3.i, i32 3
  %55 = ptrtoint ptr %app_id.i48.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv10.i.i, ptr %app_id.i48.i, align 4
  br label %if.end23.i

do.end.i:                                         ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %netdev, i32 3132
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %tobool17.not.i = icmp eq ptr %57, null
  %spec.select47.i = select i1 %tobool17.not.i, ptr @.str.3, ptr %57
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, i32 noundef 2324, ptr noundef nonnull %spec.select47.i) #13
  br label %cleanup

if.end23.i:                                       ; preds = %bnx2x_admin_app_set_ent.exit.i, %bnx2x_admin_app_is_equal.exit.3.i.if.end23.i_crit_edge, %bnx2x_admin_app_is_equal.exit.2.i.if.end23.i_crit_edge, %bnx2x_admin_app_is_equal.exit.1.i.if.end23.i_crit_edge, %bnx2x_admin_app_is_equal.exit.i.if.end23.i_crit_edge
  %spec.select56.3.sink.i = phi i32 [ %spec.select56.3.i, %bnx2x_admin_app_set_ent.exit.i ], [ 0, %bnx2x_admin_app_is_equal.exit.i.if.end23.i_crit_edge ], [ 1, %bnx2x_admin_app_is_equal.exit.1.i.if.end23.i_crit_edge ], [ 2, %bnx2x_admin_app_is_equal.exit.2.i.if.end23.i_crit_edge ], [ 3, %bnx2x_admin_app_is_equal.exit.3.i.if.end23.i_crit_edge ]
  %conv4.i.i = zext i8 %up to i32
  %priority.i.i = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 175, i32 18, i32 %spec.select56.3.sink.i, i32 1
  %58 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv4.i.i, ptr %priority.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up)
  %tobool24.not.i = icmp eq i8 %up, 0
  br i1 %tobool24.not.i, label %if.end23.i.cleanup_crit_edge, label %if.then25.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %admin_application_priority_tx_enable.i = getelementptr i8, ptr %netdev, i32 7120
  %59 = ptrtoint ptr %admin_application_priority_tx_enable.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %admin_application_priority_tx_enable.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25.i, %if.end23.i.cleanup_crit_edge, %do.end.i, %do.end56, %do.body43.cleanup_crit_edge, %do.end26, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end26 ], [ -22, %do.body13.cleanup_crit_edge ], [ -22, %do.end56 ], [ -22, %do.body43.cleanup_crit_edge ], [ -16, %do.end.i ], [ 0, %if.then25.i ], [ 0, %if.end23.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_get_featcfg(ptr nocapture noundef readonly %netdev, i32 noundef %featid, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.281, i32 noundef 2406, ptr noundef nonnull %spec.select, i32 noundef %featid) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  br i1 %tobool9.not, label %do.body73, label %if.then10

if.then10:                                        ; preds = %do.end8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %flags, align 1
  %7 = zext i32 %featid to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %featid, label %do.end59 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb22
    i32 4, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.then10
  %dcbx_local_feat = getelementptr i8, ptr %netdev, i32 8052
  %8 = ptrtoint ptr %dcbx_local_feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcbx_local_feat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %sw.bb.if.end14_crit_edge, label %if.then12

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %flags, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.bb.if.end14_crit_edge
  %dcbx_error = getelementptr i8, ptr %netdev, i32 8140
  %11 = ptrtoint ptr %dcbx_error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dcbx_error, align 4
  %and15 = and i32 %12, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end101_crit_edge, label %if.then17

if.end14.if.end101_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = or i8 %14, 1
  store i8 %15, ptr %flags, align 1
  br label %if.end101

sw.bb22:                                          ; preds = %if.then10
  %enabled24 = getelementptr i8, ptr %netdev, i32 8071
  %16 = ptrtoint ptr %enabled24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %sw.bb22.if.end30_crit_edge, label %if.then26

sw.bb22.if.end30_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %flags, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %sw.bb22.if.end30_crit_edge
  %dcbx_error31 = getelementptr i8, ptr %netdev, i32 8140
  %19 = ptrtoint ptr %dcbx_error31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dcbx_error31, align 4
  %and32 = and i32 %20, 82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end101_crit_edge, label %if.then34

if.end30.if.end101_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 1
  %23 = or i8 %22, 1
  store i8 %23, ptr %flags, align 1
  br label %if.end101

sw.bb39:                                          ; preds = %if.then10
  %enabled41 = getelementptr i8, ptr %netdev, i32 8075
  %24 = ptrtoint ptr %enabled41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool42.not = icmp eq i8 %25, 0
  br i1 %tobool42.not, label %sw.bb39.if.end47_crit_edge, label %if.then43

sw.bb39.if.end47_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then43:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %flags, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %sw.bb39.if.end47_crit_edge
  %dcbx_error48 = getelementptr i8, ptr %netdev, i32 8140
  %27 = ptrtoint ptr %dcbx_error48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dcbx_error48, align 4
  %and49 = and i32 %28, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end101_crit_edge, label %if.then51

if.end47.if.end101_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 1
  %31 = or i8 %30, 1
  store i8 %31, ptr %flags, align 1
  br label %if.end101

do.end59:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %dev61 = getelementptr i8, ptr %netdev, i32 3132
  %32 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev61, align 4
  %tobool62.not = icmp eq ptr %33, null
  %spec.select125 = select i1 %tobool62.not, ptr @.str.3, ptr %33
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.281, i32 noundef 2435, ptr noundef nonnull %spec.select125) #13
  br label %if.end101

do.body73:                                        ; preds = %do.end8
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 8
  %and75 = and i32 %35, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body73.if.end101_crit_edge, label %do.end86, !prof !544

do.body73.if.end101_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

do.end86:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %dev88 = getelementptr i8, ptr %netdev, i32 3132
  %36 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev88, align 4
  %tobool89.not = icmp eq ptr %37, null
  %spec.select126 = select i1 %tobool89.not, ptr @.str.3, ptr %37
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.281, i32 noundef 2440, ptr noundef nonnull %spec.select126) #13
  br label %if.end101

if.end101:                                        ; preds = %do.end86, %do.body73.if.end101_crit_edge, %do.end59, %if.then51, %if.end47.if.end101_crit_edge, %if.then34, %if.end30.if.end101_crit_edge, %if.then17, %if.end14.if.end101_crit_edge
  %rval.0 = phi i8 [ 1, %do.end59 ], [ 0, %if.then51 ], [ 0, %if.end47.if.end101_crit_edge ], [ 0, %if.then34 ], [ 0, %if.end30.if.end101_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end14.if.end101_crit_edge ], [ 1, %do.end86 ], [ 1, %do.body73.if.end101_crit_edge ]
  ret i8 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_set_featcfg(ptr nocapture noundef %netdev, i32 noundef %featid, i8 noundef zeroext %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %conv = zext i8 %flags to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288, i32 noundef 2453, ptr noundef nonnull %spec.select, i32 noundef %featid, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcb_state.i = getelementptr i8, ptr %netdev, i32 7076
  %4 = ptrtoint ptr %dcb_state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end8.do.body54_crit_edge, label %bnx2x_dcbnl_set_valid.exit

do.end8.do.body54_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

bnx2x_dcbnl_set_valid.exit:                       ; preds = %do.end8
  %dcbx_mode_uset.i = getelementptr i8, ptr %netdev, i32 7084
  %6 = ptrtoint ptr %dcbx_mode_uset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_mode_uset.i, align 4, !range !561
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  br i1 %tobool1.i.not, label %bnx2x_dcbnl_set_valid.exit.do.body54_crit_edge, label %if.then10

bnx2x_dcbnl_set_valid.exit.do.body54_crit_edge:   ; preds = %bnx2x_dcbnl_set_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

if.then10:                                        ; preds = %bnx2x_dcbnl_set_valid.exit
  %8 = zext i32 %featid to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %featid, label %do.end40 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb20
    i32 4, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %conv11 = zext i8 %flags to i32
  %and12 = lshr i32 %conv11, 1
  %and12.lobit = and i32 %and12, 1
  %admin_ets_enable = getelementptr i8, ptr %netdev, i32 7096
  %9 = ptrtoint ptr %admin_ets_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and12.lobit, ptr %admin_ets_enable, align 8
  %and16 = lshr i32 %conv11, 2
  %and16.lobit = and i32 %and16, 1
  %admin_ets_willing = getelementptr i8, ptr %netdev, i32 7124
  %10 = ptrtoint ptr %admin_ets_willing to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and16.lobit, ptr %admin_ets_willing, align 4
  br label %if.end82

sw.bb20:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %conv21 = zext i8 %flags to i32
  %and22 = lshr i32 %conv21, 1
  %and22.lobit = and i32 %and22, 1
  %admin_pfc_enable = getelementptr i8, ptr %netdev, i32 7100
  %11 = ptrtoint ptr %admin_pfc_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and22.lobit, ptr %admin_pfc_enable, align 4
  %and27 = lshr i32 %conv21, 2
  %and27.lobit = and i32 %and27, 1
  %admin_pfc_willing = getelementptr i8, ptr %netdev, i32 7132
  %12 = ptrtoint ptr %admin_pfc_willing to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and27.lobit, ptr %admin_pfc_willing, align 4
  br label %if.end82

sw.bb31:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %13 = lshr i8 %flags, 2
  %.lobit = and i8 %13, 1
  %14 = zext i8 %.lobit to i32
  %admin_app_priority_willing = getelementptr i8, ptr %netdev, i32 7136
  %15 = ptrtoint ptr %admin_app_priority_willing to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %admin_app_priority_willing, align 8
  br label %if.end82

do.end40:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr i8, ptr %netdev, i32 3132
  %16 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev42, align 4
  %tobool43.not = icmp eq ptr %17, null
  %spec.select104 = select i1 %tobool43.not, ptr @.str.3, ptr %17
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.288, i32 noundef 2476, ptr noundef nonnull %spec.select104) #13
  br label %if.end82

do.body54:                                        ; preds = %bnx2x_dcbnl_set_valid.exit.do.body54_crit_edge, %do.end8.do.body54_crit_edge
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 8
  %and56 = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body54.if.end82_crit_edge, label %do.end67, !prof !544

do.body54.if.end82_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end67:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %dev69 = getelementptr i8, ptr %netdev, i32 3132
  %20 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev69, align 4
  %tobool70.not = icmp eq ptr %21, null
  %spec.select105 = select i1 %tobool70.not, ptr @.str.3, ptr %21
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.288, i32 noundef 2481, ptr noundef nonnull %spec.select105) #13
  br label %if.end82

if.end82:                                         ; preds = %do.end67, %do.body54.if.end82_crit_edge, %do.end40, %sw.bb31, %sw.bb20, %sw.bb
  %rval.0 = phi i8 [ 1, %do.end40 ], [ 0, %sw.bb31 ], [ 0, %sw.bb20 ], [ 0, %sw.bb ], [ 1, %do.end67 ], [ 1, %do.body54.if.end82_crit_edge ]
  ret i8 %rval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_get_dcbx(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_enabled = getelementptr i8, ptr %netdev, i32 7080
  %0 = ptrtoint ptr %dcbx_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcbx_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %spec.select = select i1 %cmp, i8 22, i8 6
  ret i8 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bnx2x_dcbnl_set_dcbx(ptr nocapture noundef %netdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i8 %state to i32
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %conv = zext i8 %state to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, ptr noundef nonnull @.str.294, i32 noundef 2376, ptr noundef nonnull %spec.select, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %conv9.pre-phi = phi i32 [ %.pre, %entry.do.end8_crit_edge ], [ %conv, %do.end ]
  %and10 = and i32 %conv9.pre-phi, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %conv9.pre-phi)
  %cmp.not = icmp eq i32 %and10, %conv9.pre-phi
  br i1 %cmp.not, label %if.end32, label %do.end17

do.end17:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr i8, ptr %netdev, i32 3132
  %4 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev19, align 4
  %tobool20.not = icmp eq ptr %5, null
  %spec.select77 = select i1 %tobool20.not, ptr @.str.3, ptr %5
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.294, i32 noundef 2382, ptr noundef nonnull %spec.select77, i32 noundef %conv9.pre-phi) #13
  br label %cleanup

if.end32:                                         ; preds = %do.end8
  %dcb_state = getelementptr i8, ptr %netdev, i32 7076
  %6 = ptrtoint ptr %dcb_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dcb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp34.not = icmp eq i16 %7, 1
  br i1 %cmp34.not, label %if.end54, label %do.end40

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr i8, ptr %netdev, i32 3132
  %8 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev42, align 4
  %tobool43.not = icmp eq ptr %9, null
  %spec.select78 = select i1 %tobool43.not, ptr @.str.3, ptr %9
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.294, i32 noundef 2387, ptr noundef nonnull %spec.select78) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %and56 = and i32 %conv9.pre-phi, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %spec.select79 = select i1 %tobool57.not, i32 2, i32 1
  %10 = getelementptr i8, ptr %netdev, i32 7080
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select79, ptr %10, align 8
  %dcbx_mode_uset = getelementptr i8, ptr %netdev, i32 7084
  %12 = ptrtoint ptr %dcbx_mode_uset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dcbx_mode_uset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end40, %do.end17
  %retval.0 = phi i8 [ 1, %do.end17 ], [ 1, %do.end40 ], [ 0, %if.end54 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2x_peer_appinfo(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %info, ptr nocapture noundef %app_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !544

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301, ptr noundef nonnull @.str.302, i32 noundef 2494, ptr noundef nonnull %spec.select) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dcbx_remote_flags = getelementptr i8, ptr %netdev, i32 8232
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %info, align 1
  %5 = ptrtoint ptr %dcbx_remote_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dcbx_remote_flags, align 8
  %7 = trunc i32 %6 to i8
  %conv22 = and i8 %7, 64
  %error = getelementptr inbounds %struct.dcb_peer_app_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv22, ptr %error, align 1
  %9 = ptrtoint ptr %app_count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %app_count, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end8
  %i.039 = phi i32 [ 0, %do.end8 ], [ %inc29, %for.inc.for.body_crit_edge ]
  %appBitfield = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 189, i32 2, i32 4, i32 %i.039, i32 2
  %10 = ptrtoint ptr %appBitfield to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %appBitfield, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp eq i8 %12, 0
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.then27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %app_count, align 2
  %inc = add i16 %14, 1
  store i16 %inc, ptr %app_count, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body.for.inc_crit_edge
  %inc29 = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc29, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2x_peer_apptable(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %do.end, !prof !544

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.304, i32 noundef 2513, ptr noundef nonnull %spec.select) #13
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.preheader
  %i.033 = phi i32 [ %inc18, %if.end17.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %j.032 = phi i32 [ %j.1, %if.end17.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %appBitfield = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 189, i32 2, i32 4, i32 %i.033, i32 2
  %4 = ptrtoint ptr %appBitfield to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %appBitfield, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %for.body.if.end17_crit_edge, label %if.then11

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.bnx2x, ptr %add.ptr.i, i32 0, i32 189, i32 2, i32 4, i32 %i.033
  %appBitfield.i = getelementptr inbounds %struct.dcbx_app_priority_entry, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %appBitfield.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %appBitfield.i, align 1
  %9 = and i8 %8, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %cmp.i = icmp eq i8 %9, 32
  %conv2.i = zext i1 %cmp.i to i8
  %arrayidx13 = getelementptr %struct.dcb_app, ptr %table, i32 %j.032
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %arrayidx13, align 2
  %pri_bitmap.i = getelementptr inbounds %struct.dcbx_app_priority_entry, ptr %arrayidx, i32 0, i32 1
  %11 = ptrtoint ptr %pri_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pri_bitmap.i, align 2
  %conv2.i31 = zext i8 %12 to i32
  %and.i = and i32 %conv2.i31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then11.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge

if.then11.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_dcbnl_app_up.exit

for.inc.i:                                        ; preds = %if.then11
  %and.1.i = and i32 %conv2.i31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge

for.inc.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_dcbnl_app_up.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %conv2.i31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge

for.inc.1.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_dcbnl_app_up.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %conv2.i31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge

for.inc.2.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_dcbnl_app_up.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %conv2.i31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge

for.inc.3.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_dcbnl_app_up.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %conv2.i31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.5.i, label %for.inc.4.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge

for.inc.4.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnx2x_dcbx_dcbnl_app_up.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.6.i = lshr i8 %12, 1
  %and.6.lobit.i = and i8 %and.6.i, 1
  br label %bnx2x_dcbx_dcbnl_app_up.exit

bnx2x_dcbx_dcbnl_app_up.exit:                     ; preds = %for.inc.5.i, %for.inc.4.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge, %for.inc.3.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge, %for.inc.2.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge, %for.inc.1.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge, %for.inc.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge, %if.then11.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge
  %pri.0.lcssa.i = phi i8 [ 7, %if.then11.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge ], [ 6, %for.inc.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge ], [ 5, %for.inc.1.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge ], [ 4, %for.inc.2.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge ], [ 3, %for.inc.3.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge ], [ 2, %for.inc.4.i.bnx2x_dcbx_dcbnl_app_up.exit_crit_edge ], [ %and.6.lobit.i, %for.inc.5.i ]
  %priority = getelementptr %struct.dcb_app, ptr %table, i32 %j.032, i32 1
  %13 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %pri.0.lcssa.i, ptr %priority, align 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %inc = add i32 %j.032, 1
  %protocol = getelementptr %struct.dcb_app, ptr %table, i32 %j.032, i32 2
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %protocol, align 2
  br label %if.end17

if.end17:                                         ; preds = %bnx2x_dcbx_dcbnl_app_up.exit, %for.body.if.end17_crit_edge
  %j.1 = phi i32 [ %inc, %bnx2x_dcbx_dcbnl_app_up.exit ], [ %j.032, %for.body.if.end17_crit_edge ]
  %inc18 = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc18, 16
  br i1 %exitcond.not, label %for.end, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2x_cee_peer_getpg(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pg, align 1
  %arrayidx = getelementptr i8, ptr %netdev, i32 8148
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %2, 24
  %conv6 = trunc i32 %shr to i8
  %arrayidx7 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 0
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %arrayidx7, align 1
  %arrayidx11 = getelementptr i8, ptr %netdev, i32 8156
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 4
  %shr19 = lshr i32 %5, 24
  %6 = trunc i32 %shr19 to i8
  %conv21 = and i8 %6, 15
  %arrayidx22 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 0
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv21, ptr %arrayidx22, align 1
  %8 = load i32, ptr %arrayidx, align 4
  %shr.1 = lshr i32 %8, 16
  %conv6.1 = trunc i32 %shr.1 to i8
  %arrayidx7.1 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6.1, ptr %arrayidx7.1, align 1
  %10 = load i32, ptr %arrayidx11, align 4
  %shr19.1 = lshr i32 %10, 28
  %11 = trunc i32 %shr19.1 to i8
  %arrayidx22.1 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx22.1, align 1
  %13 = load i32, ptr %arrayidx, align 4
  %shr.2 = lshr i32 %13, 8
  %conv6.2 = trunc i32 %shr.2 to i8
  %arrayidx7.2 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6.2, ptr %arrayidx7.2, align 1
  %15 = load i32, ptr %arrayidx11, align 4
  %shr19.2 = lshr i32 %15, 16
  %16 = trunc i32 %shr19.2 to i8
  %conv21.2 = and i8 %16, 15
  %arrayidx22.2 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21.2, ptr %arrayidx22.2, align 1
  %18 = load i32, ptr %arrayidx, align 4
  %conv6.3 = trunc i32 %18 to i8
  %arrayidx7.3 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6.3, ptr %arrayidx7.3, align 1
  %20 = load i32, ptr %arrayidx11, align 4
  %shr19.3 = lshr i32 %20, 20
  %21 = trunc i32 %shr19.3 to i8
  %conv21.3 = and i8 %21, 15
  %arrayidx22.3 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv21.3, ptr %arrayidx22.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %netdev, i32 8152
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.4, align 4
  %shr.4 = lshr i32 %24, 24
  %conv6.4 = trunc i32 %shr.4 to i8
  %arrayidx7.4 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv6.4, ptr %arrayidx7.4, align 1
  %26 = load i32, ptr %arrayidx11, align 4
  %shr19.4 = lshr i32 %26, 8
  %27 = trunc i32 %shr19.4 to i8
  %conv21.4 = and i8 %27, 15
  %arrayidx22.4 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv21.4, ptr %arrayidx22.4, align 1
  %29 = load i32, ptr %arrayidx.4, align 4
  %shr.5 = lshr i32 %29, 16
  %conv6.5 = trunc i32 %shr.5 to i8
  %arrayidx7.5 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv6.5, ptr %arrayidx7.5, align 1
  %31 = load i32, ptr %arrayidx11, align 4
  %shr19.5 = lshr i32 %31, 12
  %32 = trunc i32 %shr19.5 to i8
  %conv21.5 = and i8 %32, 15
  %arrayidx22.5 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 5
  %33 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv21.5, ptr %arrayidx22.5, align 1
  %34 = load i32, ptr %arrayidx.4, align 4
  %shr.6 = lshr i32 %34, 8
  %conv6.6 = trunc i32 %shr.6 to i8
  %arrayidx7.6 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.6, ptr %arrayidx7.6, align 1
  %36 = load i32, ptr %arrayidx11, align 4
  %37 = trunc i32 %36 to i8
  %conv21.6 = and i8 %37, 15
  %arrayidx22.6 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 6
  %38 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv21.6, ptr %arrayidx22.6, align 1
  %39 = load i32, ptr %arrayidx.4, align 4
  %conv6.7 = trunc i32 %39 to i8
  %arrayidx7.7 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 7
  %40 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv6.7, ptr %arrayidx7.7, align 1
  %41 = load i32, ptr %arrayidx11, align 4
  %42 = trunc i32 %41 to i8
  %43 = lshr i8 %42, 4
  %arrayidx22.7 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 7
  %44 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx22.7, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnx2x_cee_peer_getpfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pfc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pfc1 = getelementptr i8, ptr %netdev, i32 8160
  %pfc_caps = getelementptr i8, ptr %netdev, i32 8161
  %0 = ptrtoint ptr %pfc_caps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pfc_caps, align 1
  %tcs_supported = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 3
  %2 = ptrtoint ptr %tcs_supported to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %tcs_supported, align 1
  %3 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pfc1, align 8
  %pfc_en = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 2
  %5 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pfc_en, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_dcbx_separate_pauseable_from_non(ptr nocapture noundef readonly %bp, ptr nocapture noundef %cos_data, ptr nocapture noundef readonly %pg_pri_orginal_spread, ptr nocapture noundef readonly %ets) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pausable = getelementptr inbounds %struct.cos_entry_help_data, ptr %cos_data, i32 0, i32 3
  %0 = ptrtoint ptr %pausable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %pausable, align 1
  %arrayidx3 = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 1
  %pausable4 = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %pausable4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %pausable4, align 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx3, align 4
  %3 = ptrtoint ptr %cos_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cos_data, align 4
  %priority_non_pauseable_mask = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 0, i32 1
  %arrayidx12 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx12, align 4
  %shl = shl nuw i32 1, %5
  %6 = ptrtoint ptr %priority_non_pauseable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priority_non_pauseable_mask, align 4
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cos_data.arrayidx3 = select i1 %tobool.not, ptr %cos_data, ptr %arrayidx3
  %not.tobool.not = xor i1 %tobool.not, true
  %. = zext i1 %not.tobool.not to i32
  %8 = ptrtoint ptr %cos_data.arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cos_data.arrayidx3, align 4
  %or20 = or i32 %9, %shl
  store i32 %or20, ptr %cos_data.arrayidx3, align 4
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %arrayidx26 = getelementptr i32, ptr %pg_pri_orginal_spread, i32 %11
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx26, align 4
  %conv28 = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv28)
  %cmp29 = icmp ult i32 %conv28, 8
  br i1 %cmp29, label %if.then31, label %if.else44

if.then31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div89 = lshr i32 %conv28, 2
  %arrayidx36 = getelementptr %struct.dcbx_ets_feature, ptr %ets, i32 0, i32 1, i32 %div89
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx36, align 4
  %rem = shl i32 %13, 3
  %sub = and i32 %rem, 24
  %mul = xor i32 %sub, 24
  %shr = lshr i32 %15, %mul
  %cos_bw.i = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 %., i32 1
  %16 = ptrtoint ptr %cos_bw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cos_bw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp eq i32 %17, -1
  %conv2.i = and i32 %shr, 255
  %add.i = select i1 %cmp.i, i32 0, i32 %17
  %storemerge.i = add i32 %add.i, %conv2.i
  %18 = ptrtoint ptr %cos_bw.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %cos_bw.i, align 4
  br label %for.inc

if.else44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %strict = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 %., i32 2
  %19 = ptrtoint ptr %strict to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %strict, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else44, %if.then31
  %arrayidx12.1 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12.1, align 4
  %shl.1 = shl nuw i32 1, %21
  %22 = ptrtoint ptr %priority_non_pauseable_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %priority_non_pauseable_mask, align 4
  %and.1 = and i32 %shl.1, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %cos_data.arrayidx396 = select i1 %tobool.not.1, ptr %cos_data, ptr %arrayidx3
  %not.tobool.not.1 = xor i1 %tobool.not.1, true
  %.97 = zext i1 %not.tobool.not.1 to i32
  %24 = ptrtoint ptr %cos_data.arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cos_data.arrayidx396, align 4
  %or20.1 = or i32 %25, %shl.1
  store i32 %or20.1, ptr %cos_data.arrayidx396, align 4
  %26 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx12.1, align 4
  %arrayidx26.1 = getelementptr i32, ptr %pg_pri_orginal_spread, i32 %27
  %28 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx26.1, align 4
  %conv28.1 = and i32 %29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv28.1)
  %cmp29.1 = icmp ult i32 %conv28.1, 8
  br i1 %cmp29.1, label %if.then31.1, label %if.else44.1

if.else44.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %strict.1 = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 %.97, i32 2
  %30 = ptrtoint ptr %strict.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %strict.1, align 4
  br label %for.inc.1

if.then31.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %div89.1 = lshr i32 %conv28.1, 2
  %arrayidx36.1 = getelementptr %struct.dcbx_ets_feature, ptr %ets, i32 0, i32 1, i32 %div89.1
  %31 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx36.1, align 4
  %rem.1 = shl i32 %29, 3
  %sub.1 = and i32 %rem.1, 24
  %mul.1 = xor i32 %sub.1, 24
  %shr.1 = lshr i32 %32, %mul.1
  %cos_bw.i.1 = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 %.97, i32 1
  %33 = ptrtoint ptr %cos_bw.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cos_bw.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.1 = icmp eq i32 %34, -1
  %conv2.i.1 = and i32 %shr.1, 255
  %add.i.1 = select i1 %cmp.i.1, i32 0, i32 %34
  %storemerge.i.1 = add i32 %add.i.1, %conv2.i.1
  %35 = ptrtoint ptr %cos_bw.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge.i.1, ptr %cos_bw.i.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then31.1, %if.else44.1
  %arrayidx12.2 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 176, i32 2, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx12.2, align 4
  %shl.2 = shl nuw i32 1, %37
  %38 = ptrtoint ptr %priority_non_pauseable_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %priority_non_pauseable_mask, align 4
  %and.2 = and i32 %shl.2, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %cos_data.arrayidx398 = select i1 %tobool.not.2, ptr %cos_data, ptr %arrayidx3
  %not.tobool.not.2 = xor i1 %tobool.not.2, true
  %.99 = zext i1 %not.tobool.not.2 to i32
  %40 = ptrtoint ptr %cos_data.arrayidx398 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cos_data.arrayidx398, align 4
  %or20.2 = or i32 %41, %shl.2
  store i32 %or20.2, ptr %cos_data.arrayidx398, align 4
  %42 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx12.2, align 4
  %arrayidx26.2 = getelementptr i32, ptr %pg_pri_orginal_spread, i32 %43
  %44 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx26.2, align 4
  %conv28.2 = and i32 %45, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv28.2)
  %cmp29.2 = icmp ult i32 %conv28.2, 8
  br i1 %cmp29.2, label %if.then31.2, label %if.else44.2

if.else44.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %strict.2 = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 %.99, i32 2
  %46 = ptrtoint ptr %strict.2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %strict.2, align 4
  br label %for.inc.2

if.then31.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %div89.2 = lshr i32 %conv28.2, 2
  %arrayidx36.2 = getelementptr %struct.dcbx_ets_feature, ptr %ets, i32 0, i32 1, i32 %div89.2
  %47 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx36.2, align 4
  %rem.2 = shl i32 %45, 3
  %sub.2 = and i32 %rem.2, 24
  %mul.2 = xor i32 %sub.2, 24
  %shr.2 = lshr i32 %48, %mul.2
  %cos_bw.i.2 = getelementptr [3 x %struct.cos_entry_help_data], ptr %cos_data, i32 0, i32 %.99, i32 1
  %49 = ptrtoint ptr %cos_bw.i.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cos_bw.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.i.2 = icmp eq i32 %50, -1
  %conv2.i.2 = and i32 %shr.2, 255
  %add.i.2 = select i1 %cmp.i.2, i32 0, i32 %50
  %storemerge.i.2 = add i32 %add.i.2, %conv2.i.2
  %51 = ptrtoint ptr %cos_bw.i.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge.i.2, ptr %cos_bw.i.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then31.2, %if.else44.2
  %52 = ptrtoint ptr %cos_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cos_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp52 = icmp eq i32 %53, 0
  br i1 %cmp52, label %land.lhs.true, label %for.inc.2.if.end65_crit_edge

for.inc.2.if.end65_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true:                                    ; preds = %for.inc.2
  %54 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp57 = icmp eq i32 %55, 0
  br i1 %cmp57, label %do.end, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %tobool61.not = icmp eq ptr %57, null
  %spec.select = select i1 %tobool61.not, ptr @.str.3, ptr %57
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167, i32 noundef 1226, ptr noundef nonnull %spec.select) #13
  br label %if.end65

if.end65:                                         ; preds = %do.end, %land.lhs.true.if.end65_crit_edge, %for.inc.2.if.end65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_acquire_phy_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_update_pfc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_release_phy_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_ets_disabled(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_ets_e3b0_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_ets_bw_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_ets_strict(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !298, !299, !300, !302, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !318, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !365, !366, !367, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !397, !398, !399, !400, !402, !403, !404, !405, !407, !408, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !427, !429, !431, !432, !433, !435, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !451, !453, !454, !455, !457, !458, !460, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !488, !489, !491, !492, !493, !494, !496, !497, !498, !500, !501, !503, !504, !505, !506, !508, !509, !511, !512, !514, !515, !516, !517, !519, !520, !521, !523, !524, !525, !527, !528, !529, !530, !532, !533, !534}
!llvm.module.flags = !{!535, !536, !537, !538, !539, !540, !541, !542}
!llvm.ident = !{!543}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 468, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2x_dcbx_stop_hw_tx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2x_dcbx_stop_hw_tx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 472, i32 3}
!9 = !{ptr @bnx2x_dcbx_stop_hw_tx._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @bnx2x_dcbx_stop_hw_tx._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 473, i32 3}
!13 = !{ptr @bnx2x_dcbx_stop_hw_tx._entry.7, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @bnx2x_dcbx_stop_hw_tx._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 494, i32 2}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bnx2x_dcbx_resume_hw_tx._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @bnx2x_dcbx_resume_hw_tx._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 498, i32 3}
!22 = !{ptr @bnx2x_dcbx_resume_hw_tx._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bnx2x_dcbx_resume_hw_tx._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @bnx2x_dcbx_resume_hw_tx._entry.15, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 499, i32 3}
!26 = !{ptr @bnx2x_dcbx_resume_hw_tx._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 752, i32 4}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bnx2x_dcbx_set_params._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @bnx2x_dcbx_set_params._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 801, i32 3}
!34 = !{ptr @bnx2x_dcbx_set_params._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bnx2x_dcbx_set_params._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 810, i32 3}
!38 = !{ptr @bnx2x_dcbx_set_params._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bnx2x_dcbx_set_params._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 820, i32 3}
!42 = !{ptr @bnx2x_dcbx_set_params._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bnx2x_dcbx_set_params._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 961, i32 2}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @bnx2x_dcbx_set_state._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @bnx2x_dcbx_set_state._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.33, !45, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.34, !45, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.35, !45, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1039, i32 2}
!57 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @bnx2x_dcbx_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @bnx2x_dcbx_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1047, i32 3}
!62 = !{ptr @bnx2x_dcbx_init._entry.38, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @bnx2x_dcbx_init._entry_ptr.40, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @bnx2x_dcbnl_ops, !65, !"bnx2x_dcbnl_ops", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2553, i32 29}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 630, i32 2}
!68 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @bnx2x_dcbx_read_shmem_remote_mib._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @bnx2x_dcbx_read_shmem_remote_mib._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 634, i32 3}
!73 = !{ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.43, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bnx2x_dcbx_read_shmem_remote_mib._entry_ptr.45, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 642, i32 3}
!77 = !{ptr @bnx2x_dcbx_read_shmem_remote_mib._entry.46, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @bnx2x_dcbx_read_shmem_remote_mib._entry_ptr.48, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 433, i32 3}
!81 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @bnx2x_dcbx_read_mib._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @bnx2x_dcbx_read_mib._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 659, i32 2}
!86 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @bnx2x_dcbx_read_shmem_neg_results._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @bnx2x_dcbx_read_shmem_neg_results._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 662, i32 3}
!91 = !{ptr @bnx2x_dcbx_read_shmem_neg_results._entry.53, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @bnx2x_dcbx_read_shmem_neg_results._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 670, i32 3}
!95 = !{ptr @bnx2x_dcbx_read_shmem_neg_results._entry.56, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @bnx2x_dcbx_read_shmem_neg_results._entry_ptr.58, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 131, i32 2}
!99 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @bnx2x_dump_dcbx_drv_param._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 134, i32 2}
!104 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.61, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.63, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 137, i32 3}
!108 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.64, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.66, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.68, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 141, i32 3}
!112 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.67, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.69, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 146, i32 2}
!116 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.70, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.72, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 148, i32 2}
!120 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 150, i32 2}
!124 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.76, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.80, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 153, i32 2}
!128 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.79, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.81, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 155, i32 2}
!132 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.82, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.84, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.86, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 157, i32 2}
!136 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.85, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.87, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.89, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 160, i32 3}
!140 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.88, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.90, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.92, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 163, i32 3}
!144 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.91, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.93, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.95, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 166, i32 3}
!148 = !{ptr @bnx2x_dump_dcbx_drv_param._entry.94, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @bnx2x_dump_dcbx_drv_param._entry_ptr.96, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.97, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 201, i32 3}
!152 = !{ptr @.str.98, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @bnx2x_dcbx_get_ap_feature._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @bnx2x_dcbx_get_ap_feature._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.100, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 204, i32 3}
!157 = !{ptr @bnx2x_dcbx_get_ap_feature._entry.99, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.101, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.103, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 207, i32 3}
!161 = !{ptr @bnx2x_dcbx_get_ap_feature._entry.102, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.104, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.106, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 256, i32 5}
!165 = !{ptr @bnx2x_dcbx_get_ap_feature._entry.105, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.107, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.109, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 262, i32 5}
!169 = !{ptr @bnx2x_dcbx_get_ap_feature._entry.108, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.110, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.112, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 267, i32 3}
!173 = !{ptr @bnx2x_dcbx_get_ap_feature._entry.111, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @bnx2x_dcbx_get_ap_feature._entry_ptr.113, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.114, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 330, i32 3}
!177 = !{ptr @.str.115, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @bnx2x_dcbx_get_pfc_feature._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @bnx2x_dcbx_get_pfc_feature._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.117, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 333, i32 3}
!182 = !{ptr @bnx2x_dcbx_get_pfc_feature._entry.116, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @bnx2x_dcbx_get_pfc_feature._entry_ptr.118, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.120, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 341, i32 3}
!186 = !{ptr @bnx2x_dcbx_get_pfc_feature._entry.119, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @bnx2x_dcbx_get_pfc_feature._entry_ptr.121, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.122, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 286, i32 3}
!190 = !{ptr @.str.123, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @bnx2x_dcbx_get_ets_feature._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @bnx2x_dcbx_get_ets_feature._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.125, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 289, i32 3}
!195 = !{ptr @bnx2x_dcbx_get_ets_feature._entry.124, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @bnx2x_dcbx_get_ets_feature._entry_ptr.126, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.128, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 302, i32 3}
!199 = !{ptr @bnx2x_dcbx_get_ets_feature._entry.127, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @bnx2x_dcbx_get_ets_feature._entry_ptr.129, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.131, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 317, i32 3}
!203 = !{ptr @bnx2x_dcbx_get_ets_feature._entry.130, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @bnx2x_dcbx_get_ets_feature._entry_ptr.132, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.133, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1843, i32 3}
!207 = !{ptr @.str.134, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @bnx2x_dcbx_get_ets_pri_pg_tbl._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @bnx2x_dcbx_get_ets_pri_pg_tbl._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.135, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1156, i32 3}
!212 = !{ptr @.str.136, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @bnx2x_dcbx_get_num_pg_traf_type._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @bnx2x_dcbx_get_num_pg_traf_type._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.137, !211, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.138, !211, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.139, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1765, i32 4}
!219 = !{ptr @.str.140, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @bnx2x_dcbx_fill_cos_params._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @bnx2x_dcbx_fill_cos_params._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.142, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1804, i32 5}
!224 = !{ptr @bnx2x_dcbx_fill_cos_params._entry.141, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.143, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.145, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1811, i32 6}
!228 = !{ptr @bnx2x_dcbx_fill_cos_params._entry.144, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.146, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.148, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1817, i32 6}
!232 = !{ptr @bnx2x_dcbx_fill_cos_params._entry.147, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.149, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.151, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1823, i32 4}
!236 = !{ptr @bnx2x_dcbx_fill_cos_params._entry.150, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.152, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.154, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1826, i32 4}
!240 = !{ptr @bnx2x_dcbx_fill_cos_params._entry.153, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @bnx2x_dcbx_fill_cos_params._entry_ptr.155, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.156, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1711, i32 4}
!244 = !{ptr @.str.157, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @bnx2x_dcbx_cee_fill_cos_params._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @bnx2x_dcbx_cee_fill_cos_params._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.158, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1455, i32 3}
!249 = !{ptr @.str.159, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @bnx2x_dcbx_join_pgs._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @bnx2x_dcbx_join_pgs._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.160, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1662, i32 3}
!254 = !{ptr @.str.161, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @bnx2x_dcbx_spread_strict_pri._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @bnx2x_dcbx_spread_strict_pri._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.162, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1614, i32 3}
!259 = !{ptr @.str.163, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @bnx2x_dcbx_2cos_limit_cee_fill_cos_params._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.164, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1349, i32 5}
!264 = !{ptr @.str.165, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.166, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1226, i32 3}
!269 = !{ptr @.str.167, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @bnx2x_dcbx_separate_pauseable_from_non._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @bnx2x_dcbx_separate_pauseable_from_non._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.168, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 365, i32 4}
!274 = !{ptr @.str.169, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @bnx2x_dcbx_map_nw._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @bnx2x_dcbx_map_nw._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.170, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h", i32 1361, i32 3}
!279 = !{ptr @.str.171, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.172, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @bnx2x_update_drv_flags._entry, !278, !"_entry", i1 false, i1 false}
!282 = !{ptr @bnx2x_update_drv_flags._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.173, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 734, i32 5}
!285 = !{ptr @.str.174, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @bnx2x_dcbx_update_tc_mapping._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @bnx2x_dcbx_update_tc_mapping._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.175, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 579, i32 5}
!290 = !{ptr @.str.176, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @bnx2x_dcbx_update_ets_config._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @bnx2x_dcbx_update_ets_config._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @bnx2x_dcbx_update_ets_config._entry.177, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 588, i32 5}
!295 = !{ptr @bnx2x_dcbx_update_ets_config._entry_ptr.178, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.180, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 600, i32 3}
!298 = !{ptr @bnx2x_dcbx_update_ets_config._entry.179, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @bnx2x_dcbx_update_ets_config._entry_ptr.181, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.182, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 511, i32 3}
!302 = !{ptr @.str.183, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.185, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 524, i32 3}
!307 = !{ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.184, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr.186, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.188, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 560, i32 4}
!311 = !{ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry.187, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @bnx2x_dcbx_2cos_limit_update_ets_config._entry_ptr.189, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.190, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 901, i32 4}
!315 = !{ptr @.str.191, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @bnx2x_dcbx_admin_mib_updated_params._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @bnx2x_dcbx_admin_mib_updated_params._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.193, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 909, i32 4}
!320 = !{ptr @bnx2x_dcbx_admin_mib_updated_params._entry.192, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @bnx2x_dcbx_admin_mib_updated_params._entry_ptr.194, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.195, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1080, i32 2}
!324 = !{ptr @.str.196, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @bnx2x_dcbx_print_cos_params._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.198, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1082, i32 2}
!329 = !{ptr @bnx2x_dcbx_print_cos_params._entry.197, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr.199, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.201, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1087, i32 3}
!333 = !{ptr @bnx2x_dcbx_print_cos_params._entry.200, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr.202, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.204, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1091, i32 3}
!337 = !{ptr @bnx2x_dcbx_print_cos_params._entry.203, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr.205, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.207, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1095, i32 3}
!341 = !{ptr @bnx2x_dcbx_print_cos_params._entry.206, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr.208, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.210, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1099, i32 3}
!345 = !{ptr @bnx2x_dcbx_print_cos_params._entry.209, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr.211, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.213, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1105, i32 3}
!349 = !{ptr @bnx2x_dcbx_print_cos_params._entry.212, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr.214, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.216, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1109, i32 3}
!353 = !{ptr @bnx2x_dcbx_print_cos_params._entry.215, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @bnx2x_dcbx_print_cos_params._entry_ptr.217, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.218, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1943, i32 2}
!357 = !{ptr @.str.219, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @bnx2x_dcbnl_get_state._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @bnx2x_dcbnl_get_state._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.220, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1950, i32 2}
!362 = !{ptr @.str.221, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @bnx2x_dcbnl_set_state._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @bnx2x_dcbnl_set_state._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.222, !361, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.223, !361, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.225, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1955, i32 3}
!369 = !{ptr @bnx2x_dcbnl_set_state._entry.224, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @bnx2x_dcbnl_set_state._entry_ptr.226, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.227, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1967, i32 2}
!373 = !{ptr @.str.228, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @bnx2x_dcbnl_get_perm_hw_addr._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @bnx2x_dcbnl_get_perm_hw_addr._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.229, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 1984, i32 2}
!378 = !{ptr @.str.230, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @bnx2x_dcbnl_set_pg_tccfg_tx._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @bnx2x_dcbnl_set_pg_tccfg_tx._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.231, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2009, i32 2}
!383 = !{ptr @.str.232, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @bnx2x_dcbnl_set_pg_bwgcfg_tx._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @bnx2x_dcbnl_set_pg_bwgcfg_tx._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.233, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2023, i32 2}
!388 = !{ptr @.str.234, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @bnx2x_dcbnl_set_pg_tccfg_rx._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @bnx2x_dcbnl_set_pg_tccfg_rx._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.235, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2030, i32 2}
!393 = !{ptr @bnx2x_dcbnl_set_pg_bwgcfg_rx._entry, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @bnx2x_dcbnl_set_pg_bwgcfg_rx._entry_ptr, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.236, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2038, i32 2}
!397 = !{ptr @.str.237, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @bnx2x_dcbnl_get_pg_tccfg_tx._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @bnx2x_dcbnl_get_pg_tccfg_tx._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.238, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2064, i32 2}
!402 = !{ptr @.str.239, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @bnx2x_dcbnl_get_pg_bwgcfg_tx._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @bnx2x_dcbnl_get_pg_bwgcfg_tx._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.240, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2079, i32 2}
!407 = !{ptr @.str.241, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @bnx2x_dcbnl_get_pg_tccfg_rx._entry, !406, !"_entry", i1 false, i1 false}
!409 = !{ptr @bnx2x_dcbnl_get_pg_tccfg_rx._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.242, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2088, i32 2}
!412 = !{ptr @bnx2x_dcbnl_get_pg_bwgcfg_rx._entry, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @bnx2x_dcbnl_get_pg_bwgcfg_rx._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.243, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2097, i32 2}
!416 = !{ptr @bnx2x_dcbnl_set_pfc_cfg._entry, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @bnx2x_dcbnl_set_pfc_cfg._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.244, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2114, i32 2}
!420 = !{ptr @bnx2x_dcbnl_get_pfc_cfg._entry, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @bnx2x_dcbnl_get_pfc_cfg._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.245, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2128, i32 2}
!424 = !{ptr @.str.246, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @bnx2x_dcbnl_set_all._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @bnx2x_dcbnl_set_all._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.247, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2135, i32 7}
!429 = !{ptr @.str.249, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2144, i32 2}
!431 = !{ptr @bnx2x_dcbnl_set_all._entry.248, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @bnx2x_dcbnl_set_all._entry_ptr.250, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.251, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2181, i32 4}
!435 = !{ptr @.str.252, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @bnx2x_dcbnl_get_cap._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @bnx2x_dcbnl_get_cap._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.254, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2186, i32 3}
!440 = !{ptr @bnx2x_dcbnl_get_cap._entry.253, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @bnx2x_dcbnl_get_cap._entry_ptr.255, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.257, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2190, i32 2}
!444 = !{ptr @bnx2x_dcbnl_get_cap._entry.256, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @bnx2x_dcbnl_get_cap._entry_ptr.258, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.259, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2199, i32 2}
!448 = !{ptr @.str.260, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @bnx2x_dcbnl_get_numtcs._entry, !447, !"_entry", i1 false, i1 false}
!450 = !{ptr @bnx2x_dcbnl_get_numtcs._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.262, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2212, i32 4}
!453 = !{ptr @bnx2x_dcbnl_get_numtcs._entry.261, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @bnx2x_dcbnl_get_numtcs._entry_ptr.263, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @bnx2x_dcbnl_get_numtcs._entry.264, !456, !"_entry", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2217, i32 3}
!457 = !{ptr @bnx2x_dcbnl_get_numtcs._entry_ptr.265, !456, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.266, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2227, i32 2}
!460 = !{ptr @.str.267, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @bnx2x_dcbnl_set_numtcs._entry, !459, !"_entry", i1 false, i1 false}
!462 = !{ptr @bnx2x_dcbnl_set_numtcs._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.268, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2234, i32 2}
!465 = !{ptr @bnx2x_dcbnl_get_pfc_state._entry, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @bnx2x_dcbnl_get_pfc_state._entry_ptr, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.269, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2245, i32 2}
!469 = !{ptr @bnx2x_dcbnl_set_pfc_state._entry, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @bnx2x_dcbnl_set_pfc_state._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.270, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2340, i32 2}
!473 = !{ptr @.str.271, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @bnx2x_dcbnl_set_app_up._entry, !472, !"_entry", i1 false, i1 false}
!475 = !{ptr @bnx2x_dcbnl_set_app_up._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.273, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2344, i32 3}
!478 = !{ptr @bnx2x_dcbnl_set_app_up._entry.272, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @bnx2x_dcbnl_set_app_up._entry_ptr.274, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.276, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2354, i32 3}
!482 = !{ptr @bnx2x_dcbnl_set_app_up._entry.275, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @bnx2x_dcbnl_set_app_up._entry_ptr.277, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.278, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2324, i32 3}
!486 = !{ptr @.str.279, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @bnx2x_set_admin_app_up._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @bnx2x_set_admin_app_up._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.280, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2406, i32 2}
!491 = !{ptr @.str.281, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @bnx2x_dcbnl_get_featcfg._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @bnx2x_dcbnl_get_featcfg._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.283, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2435, i32 4}
!496 = !{ptr @bnx2x_dcbnl_get_featcfg._entry.282, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @bnx2x_dcbnl_get_featcfg._entry_ptr.284, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @bnx2x_dcbnl_get_featcfg._entry.285, !499, !"_entry", i1 false, i1 false}
!499 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2440, i32 3}
!500 = !{ptr @bnx2x_dcbnl_get_featcfg._entry_ptr.286, !499, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.287, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2453, i32 2}
!503 = !{ptr @.str.288, !502, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @bnx2x_dcbnl_set_featcfg._entry, !502, !"_entry", i1 false, i1 false}
!505 = !{ptr @bnx2x_dcbnl_set_featcfg._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @bnx2x_dcbnl_set_featcfg._entry.289, !507, !"_entry", i1 false, i1 false}
!507 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2476, i32 4}
!508 = !{ptr @bnx2x_dcbnl_set_featcfg._entry_ptr.290, !507, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @bnx2x_dcbnl_set_featcfg._entry.291, !510, !"_entry", i1 false, i1 false}
!510 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2481, i32 3}
!511 = !{ptr @bnx2x_dcbnl_set_featcfg._entry_ptr.292, !510, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.293, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2376, i32 2}
!514 = !{ptr @.str.294, !513, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @bnx2x_dcbnl_set_dcbx._entry, !513, !"_entry", i1 false, i1 false}
!516 = !{ptr @bnx2x_dcbnl_set_dcbx._entry_ptr, !513, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.296, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2381, i32 3}
!519 = !{ptr @bnx2x_dcbnl_set_dcbx._entry.295, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @bnx2x_dcbnl_set_dcbx._entry_ptr.297, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.299, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2387, i32 3}
!523 = !{ptr @bnx2x_dcbnl_set_dcbx._entry.298, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @bnx2x_dcbnl_set_dcbx._entry_ptr.300, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.301, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2494, i32 2}
!527 = !{ptr @.str.302, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @bnx2x_peer_appinfo._entry, !526, !"_entry", i1 false, i1 false}
!529 = !{ptr @bnx2x_peer_appinfo._entry_ptr, !526, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.303, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c", i32 2513, i32 2}
!532 = !{ptr @.str.304, !531, !"<string literal>", i1 false, i1 false}
!533 = !{ptr @bnx2x_peer_apptable._entry, !531, !"_entry", i1 false, i1 false}
!534 = !{ptr @bnx2x_peer_apptable._entry_ptr, !531, !"_entry_ptr", i1 false, i1 false}
!535 = !{i32 1, !"wchar_size", i32 2}
!536 = !{i32 1, !"min_enum_size", i32 4}
!537 = !{i32 8, !"branch-target-enforcement", i32 0}
!538 = !{i32 8, !"sign-return-address", i32 0}
!539 = !{i32 8, !"sign-return-address-all", i32 0}
!540 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!541 = !{i32 7, !"uwtable", i32 1}
!542 = !{i32 7, !"frame-pointer", i32 2}
!543 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!544 = !{!"branch_weights", i32 2000, i32 1}
!545 = !{i64 6601545}
!546 = !{i64 2157976616}
!547 = !{i64 2157978424}
!548 = !{i64 2157848946}
!549 = !{i64 2157730110}
!550 = !{i64 2157724338}
!551 = !{i64 2157725801}
!552 = !{i64 2157726716}
!553 = !{i64 6601127}
!554 = !{i64 2157722468}
!555 = !{i64 2157811133}
!556 = !{i64 2157812941}
!557 = !{i64 2157843485}
!558 = !{i64 2157845293}
!559 = !{i64 2157857435}
!560 = !{i32 0, i32 9}
!561 = !{i8 0, i8 2}
!562 = !{i64 2157892866}
!563 = !{i64 2157894494}
!564 = !{i64 2157730443}
!565 = !{i64 2157979935}
!566 = !{i64 2157981743}
