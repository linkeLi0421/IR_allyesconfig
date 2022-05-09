; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hclge_dbg_status_dfx_info = type { i32, [60 x i8] }
%struct.hclge_dbg_func = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hclge_dbg_item = type { [32 x i8], i16 }
%struct.hclge_dbg_reg_type_info = type { i32, ptr, %struct.hclge_dbg_reg_common_msg }
%struct.hclge_dbg_reg_common_msg = type { i32, i32, i32 }
%struct.hclge_dbg_dfx_message = type { i32, [60 x i8] }
%struct.hclge_dev = type { ptr, ptr, %struct.hclge_hw, %struct.hclge_misc_vector, %struct.hclge_mac_stats, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hclge_rst_stats, %struct.semaphore, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i16, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, %struct.hclge_tm_info, i16, i16, i16, ptr, ptr, i16, i16, i32, i32, %struct.timer_list, %struct.delayed_work, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.mutex, %struct.hclge_vlan_type_cfg, [4096 x [8 x i32]], [8 x i32], [8 x i32], %struct.hclge_fd_cfg, %struct.hlist_head, %struct.spinlock, i16, i32, i32, i32, i32, [128 x i32], i32, i8, i8, i16, i16, i16, i16, i16, %struct.anon.149, %struct.cpumask, ptr, ptr, %struct.hclge_comm_rss_cfg }
%struct.hclge_hw = type { %struct.hclge_comm_hw, %struct.hclge_mac, i32 }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.hclge_mac = type { i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [3 x i32], [3 x i32] }
%struct.hclge_misc_vector = type { ptr, i32, [32 x i8] }
%struct.hclge_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hclge_rst_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hclge_tm_info = type { i8, i8, [4 x i8], [8 x i8], [4 x %struct.hclge_pg_info], [8 x %struct.hclge_tc_info], i32, i8, i8 }
%struct.hclge_pg_info = type { i8, i8, i8, i32, [8 x i8] }
%struct.hclge_tc_info = type { i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hclge_vlan_type_cfg = type { i16, i16, i16, i16, i16, i16 }
%struct.hclge_fd_cfg = type { i8, i16, [2 x i32], [2 x i16], [2 x %struct.hclge_fd_key_cfg], [3 x %struct.hclge_fd_user_def_cfg] }
%struct.hclge_fd_key_cfg = type { i8, i8, i8, i8, i8, i32, i32 }
%struct.hclge_fd_user_def_cfg = type { i16, i16 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.149 = type { %union.anon.150, [8 x %struct.hclge_mac_tnl_stats] }
%union.anon.150 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hclge_mac_tnl_stats = type { i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.hclge_comm_rss_cfg = type { [40 x i8], ptr, i32, %struct.hclge_comm_rss_tuple_cfg, i32 }
%struct.hclge_comm_rss_tuple_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hclge_vport = type { i16, i16, i32, i8, i8, i8, [128 x i32], %struct.hclge_port_base_vlan_config, %struct.hclge_tx_vtag_cfg, %struct.hclge_rx_vtag_cfg, i16, i16, ptr, %struct.hnae3_handle, %struct.hnae3_handle, i32, i32, i32, %struct.hclge_vf_info, i8, i8, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.hclge_port_base_vlan_config = type { i16, %struct.hclge_vlan_info }
%struct.hclge_vlan_info = type { i16, i16, i16 }
%struct.hclge_tx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i16, i16, i8 }
%struct.hclge_rx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.102, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.102 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.hclge_vf_info = type { i32, [6 x i8], i32, i32, i32, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.101 = type { ptr }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.hclge_tm_nodes_cmd = type { i8, i8, i16, i16, i8, i8, i16, i16 }
%struct.hclge_tm_shaper_para = type { i32, i8, i8, i8, i8, i8, i8 }
%struct.hclge_bp_to_qs_map_cmd = type { i8, [2 x i8], i8, i32, i32 }
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
%struct.hclge_cfg_pause_param_cmd = type { [6 x i8], i8, i8, i16, [6 x i8], [6 x i8], i16 }
%struct.hclge_priv_wl = type { i16, i16 }
%struct.hclge_mac_ethertype_idx_rd_cmd = type { i8, i8, i16, [6 x i8], i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.hclge_common_lb_cmd = type { i8, i8, i8, [21 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.hclge_ptp = type { ptr, ptr, ptr, i32, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, %struct.spinlock, i32, i32, %struct.hclge_ptp_cycle, i32, i32, i32, i32, i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.hclge_ptp_cycle = type { i32, i32, i32 }
%struct.hclge_config_max_frm_size_cmd = type { i16, i8, [21 x i8] }
%struct.hclge_fd_rule = type { %struct.hlist_node, %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples, i32, i32, %union.anon.160, i16, i16, i16, i32, i32, i8 }
%struct.hclge_fd_rule_tuples = type { [6 x i8], [6 x i8], [4 x i32], [4 x i32], i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.160 = type { %struct.anon.163 }
%struct.anon.163 = type { %struct.hclge_fd_user_def_info }
%struct.hclge_fd_user_def_info = type { i32, i16, i16, i16 }
%struct.hclge_vlan_filter_ctrl_cmd = type { i8, i8, [2 x i8], i8, [19 x i8] }
%struct.hclge_vport_vtag_tx_cfg_cmd = type { i8, i8, [2 x i8], i16, i16, [8 x i8], [8 x i8] }
%struct.hclge_vport_vtag_rx_cfg_cmd = type { i8, i8, [6 x i8], [8 x i8], [8 x i8] }
%struct.hclge_mac_node = type { %struct.list_head, i32, [6 x i8] }
%struct.hclge_fd_tcam_config_1_cmd = type { i8, i8, i8, [1 x i8], i32, i8, [7 x i8], [8 x i8] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PF reset count: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FLR reset count: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GLOBAL reset count: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IMP reset count: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset done count: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HW reset done count: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset count: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset fail count: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@hclge_dbg_rst_info = internal constant { [7 x %struct.hclge_dbg_status_dfx_info], [96 x i8] } { [7 x %struct.hclge_dbg_status_dfx_info] [%struct.hclge_dbg_status_dfx_info { i32 132096, [60 x i8] c"vector0 interrupt enable status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 132864, [60 x i8] c"reset interrupt source\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 133120, [60 x i8] c"reset interrupt status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 133888, [60 x i8] c"RAS interrupt status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 133632, [60 x i8] c"hardware reset status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 159752, [60 x i8] c"handshake status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 134144, [60 x i8] c"function reset status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [96 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdev state: 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@hclge_dbg_cmd_func = internal constant { [36 x %struct.hclge_dbg_func], [112 x i8] } { [36 x %struct.hclge_dbg_func] [%struct.hclge_dbg_func { i32 0, ptr @hclge_dbg_dump_tm_nodes, ptr null }, %struct.hclge_dbg_func { i32 1, ptr @hclge_dbg_dump_tm_pri, ptr null }, %struct.hclge_dbg_func { i32 2, ptr @hclge_dbg_dump_tm_qset, ptr null }, %struct.hclge_dbg_func { i32 3, ptr @hclge_dbg_dump_tm_map, ptr null }, %struct.hclge_dbg_func { i32 4, ptr @hclge_dbg_dump_tm_pg, ptr null }, %struct.hclge_dbg_func { i32 5, ptr @hclge_dbg_dump_tm_port, ptr null }, %struct.hclge_dbg_func { i32 6, ptr @hclge_dbg_dump_tc, ptr null }, %struct.hclge_dbg_func { i32 7, ptr @hclge_dbg_dump_qos_pause_cfg, ptr null }, %struct.hclge_dbg_func { i32 8, ptr @hclge_dbg_dump_qos_pri_map, ptr null }, %struct.hclge_dbg_func { i32 9, ptr @hclge_dbg_dump_qos_buf_cfg, ptr null }, %struct.hclge_dbg_func { i32 13, ptr @hclge_dbg_dump_mac_uc, ptr null }, %struct.hclge_dbg_func { i32 14, ptr @hclge_dbg_dump_mac_mc, ptr null }, %struct.hclge_dbg_func { i32 15, ptr @hclge_dbg_dump_mng_table, ptr null }, %struct.hclge_dbg_func { i32 16, ptr @hclge_dbg_dump_loopback, ptr null }, %struct.hclge_dbg_func { i32 17, ptr @hclge_dbg_dump_ptp_info, ptr null }, %struct.hclge_dbg_func { i32 18, ptr @hclge_dbg_dump_interrupt, ptr null }, %struct.hclge_dbg_func { i32 19, ptr @hclge_dbg_dump_rst_info, ptr null }, %struct.hclge_dbg_func { i32 20, ptr @hclge_dbg_get_imp_stats_info, ptr null }, %struct.hclge_dbg_func { i32 21, ptr @hclge_dbg_dump_ncl_config, ptr null }, %struct.hclge_dbg_func { i32 22, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 23, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 24, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 25, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 26, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 27, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 28, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 29, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 30, ptr null, ptr @hclge_dbg_dump_reg_cmd }, %struct.hclge_dbg_func { i32 31, ptr @hclge_dbg_dump_mac, ptr null }, %struct.hclge_dbg_func { i32 32, ptr @hclge_dbg_dump_dcb, ptr null }, %struct.hclge_dbg_func { i32 37, ptr @hclge_dbg_dump_fd_tcam, ptr null }, %struct.hclge_dbg_func { i32 39, ptr @hclge_dbg_dump_mac_tnl_status, ptr null }, %struct.hclge_dbg_func { i32 40, ptr @hclge_dbg_dump_serv_info, ptr null }, %struct.hclge_dbg_func { i32 33, ptr @hclge_dbg_dump_vlan_config, ptr null }, %struct.hclge_dbg_func { i32 38, ptr @hclge_dbg_dump_fd_counter, ptr null }, %struct.hclge_dbg_func { i32 41, ptr @hclge_dbg_dump_umv_info, ptr null }], [112 x i8] zeroinitializer }, align 32
@hclge_dbg_read_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 2505, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid command(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclge_dbg_read_cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_dbg_read_cmd._entry_ptr = internal global ptr @hclge_dbg_read_cmd._entry, section ".printk_index", align 4
@hclge_dbg_dump_tm_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.12, i32 919, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to dump tm nodes, ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclge_dbg_dump_tm_nodes\00", [40 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tm_nodes._entry_ptr = internal global ptr @hclge_dbg_dump_tm_nodes._entry, section ".printk_index", align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"       BASE_ID  MAX_NUM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PG      %4u      %4u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PRI     %4u      %4u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QSET    %4u      %4u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QUEUE   %4u      %4u\0A\00", [42 x i8] zeroinitializer }, align 32
@tm_pri_items = internal constant { [17 x %struct.hclge_dbg_item], [158 x i8] } { [17 x %struct.hclge_dbg_item] [%struct.hclge_dbg_item { [32 x i8] c"ID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 4 }, %struct.hclge_dbg_item { [32 x i8] c"MODE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"DWRR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_IR_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_IR_U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_IR_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_BS_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_BS_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_FLAG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_RATE(Mbps)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_IR_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_IR_U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_IR_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_BS_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_BS_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_FLAG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_RATE(Mbps)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0 }], [158 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwrr\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sp\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%04u\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%4s\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%3u\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%6u\00", [28 x i8] zeroinitializer }, align 32
@tm_qset_items = internal constant { [12 x %struct.hclge_dbg_item], [104 x i8] } { [12 x %struct.hclge_dbg_item] [%struct.hclge_dbg_item { [32 x i8] c"ID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 4 }, %struct.hclge_dbg_item { [32 x i8] c"MAP_PRI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"LINK_VLD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"MODE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"DWRR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"IR_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"IR_U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"IR_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"BS_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"BS_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"FLAG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"RATE(Mbps)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0 }], [104 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%4u\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"QUEUE_ID   QSET_ID   PRI_ID   TC_ID\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%04u        %4u       %3u      %2u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tm_bp_qset_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.12, i32 841, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get bp to qset map, ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hclge_dbg_dump_tm_bp_qset_map\00", [34 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tm_bp_qset_map._entry_ptr = internal global ptr @hclge_dbg_dump_tm_bp_qset_map._entry, section ".printk_index", align 4
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"INDEX | TM BP QSET MAPPING:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%04d  | %08x:%08x:%08x:%08x:%08x:%08x:%08x:%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tm_pg_items = internal constant { [18 x %struct.hclge_dbg_item], [156 x i8] } { [18 x %struct.hclge_dbg_item] [%struct.hclge_dbg_item { [32 x i8] c"ID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"PRI_MAP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"MODE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"DWRR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_IR_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_IR_U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_IR_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_BS_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_BS_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_FLAG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"C_RATE(Mbps)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_IR_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_IR_U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_IR_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_BS_B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_BS_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_FLAG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"P_RATE(Mbps)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0 }], [156 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02u\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IR_B  IR_U  IR_S  BS_B  BS_S  FLAG  RATE(Mbps)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%3u   %3u   %3u   %3u   %3u     %1u   %6u\0A\00", [53 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.12, i32 651, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Only DCB-supported dev supports tc\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_dbg_dump_tc\00", [46 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tc._entry_ptr = internal global ptr @hclge_dbg_dump_tc._entry, section ".printk_index", align 4
@hclge_dbg_dump_tc._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.12, i32 659, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get tc weight, ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tc._entry_ptr.45 = internal global ptr @hclge_dbg_dump_tc._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enabled tc number: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"weight_offset: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TC    MODE  WEIGHT\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u     %4s    %3u\0A\00", [45 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_qos_pause_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.12, i32 1105, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to dump qos pause, ret = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hclge_dbg_dump_qos_pause_cfg\00", [35 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_qos_pause_cfg._entry_ptr = internal global ptr @hclge_dbg_dump_qos_pause_cfg._entry, section ".printk_index", align 4
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pause_trans_gap: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pause_trans_time: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_qos_pri_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.12, i32 1135, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to dump qos pri map, ret = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_dbg_dump_qos_pri_map\00", [37 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_qos_pri_map._entry_ptr = internal global ptr @hclge_dbg_dump_qos_pri_map._entry, section ".printk_index", align 4
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vlan_to_pri: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PRI  TC\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%u     %u\0A\00", [21 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tx_buf_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.12, i32 1166, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to dump tx buf, ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_dbg_dump_tx_buf_cfg\00", [38 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_tx_buf_cfg._entry_ptr = internal global ptr @hclge_dbg_dump_tx_buf_cfg._entry, section ".printk_index", align 4
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_packet_buf_tc_%d: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_priv_buf_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.12, i32 1191, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to dump rx priv buf, ret = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hclge_dbg_dump_rx_priv_buf_cfg\00", [33 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_priv_buf_cfg._entry_ptr = internal global ptr @hclge_dbg_dump_rx_priv_buf_cfg._entry, section ".printk_index", align 4
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_packet_buf_tc_%d: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_share_buf: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_common_wl_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.12, i32 1221, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to dump rx common wl, ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hclge_dbg_dump_rx_common_wl_cfg\00", [32 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_common_wl_cfg._entry_ptr = internal global ptr @hclge_dbg_dump_rx_common_wl_cfg._entry, section ".printk_index", align 4
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rx_com_wl: high: 0x%x, low: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_global_pkt_cnt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.12, i32 1247, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to dump rx global pkt cnt, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hclge_dbg_dump_rx_global_pkt_cnt\00", [63 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_global_pkt_cnt._entry_ptr = internal global ptr @hclge_dbg_dump_rx_global_pkt_cnt._entry, section ".printk_index", align 4
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rx_global_packet_cnt: high: 0x%x, low: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_priv_wl_buf_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.12, i32 1274, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to dump rx priv wl buf, ret = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hclge_dbg_dump_rx_priv_wl_buf_cfg\00", [62 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_priv_wl_buf_cfg._entry_ptr = internal global ptr @hclge_dbg_dump_rx_priv_wl_buf_cfg._entry, section ".printk_index", align 4
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rx_priv_wl_tc_%d: high: 0x%x, low: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_common_threshold_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.12, i32 1310, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to dump rx common threshold, ret = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"hclge_dbg_dump_rx_common_threshold_cfg\00", [57 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_rx_common_threshold_cfg._entry_ptr = internal global ptr @hclge_dbg_dump_rx_common_threshold_cfg._entry, section ".printk_index", align 4
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rx_com_thrd_tc_%d: high: 0x%x, low: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s MAC_LIST:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UC\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@mac_list_items = internal constant { [3 x %struct.hclge_dbg_item], [58 x i8] } { [3 x %struct.hclge_dbg_item] [%struct.hclge_dbg_item { [32 x i8] c"FUNC_ID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"MAC_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 12 }, %struct.hclge_dbg_item { [32 x i8] c"STATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }], [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%5s\00", [28 x i8] zeroinitializer }, align 32
@hclge_mac_state_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.85, ptr @.str.86, ptr @.str.87], [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vf%u\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pf\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TO_ADD\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TO_DEL\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"entry  mac_addr          mask  ether  \00", [57 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mask  vlan  mask  i_map  i_dir  e_type  \00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pf_id  vf_id  q_id  drop\0A\00", [38 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mng_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.12, i32 1399, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to dump manage table, ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_dbg_dump_mng_table\00", [39 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mng_table._entry_ptr = internal global ptr @hclge_dbg_dump_mng_table._entry, section ".printk_index", align 4
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%02u     %pM \00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%x     %04x   %x     %04x  \00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%x     %02x     %02x     \00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%x       %x      %02x     %04x  %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac id: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.12, i32 1846, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to dump app loopback status, ret = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclge_dbg_dump_loopback\00", [40 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_loopback._entry_ptr = internal global ptr @hclge_dbg_dump_loopback._entry, section ".printk_index", align 4
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"app loopback: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@state_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.107, ptr @.str.108], [24 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_loopback._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.99, ptr @.str.12, i32 1860, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to dump common loopback status, ret = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_loopback._entry_ptr.103 = internal global ptr @hclge_dbg_dump_loopback._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"serdes serial loopback: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"serdes parallel loopback: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy loopback: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phc %s's debug info:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptp enable: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ptp tx enable: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ptp rx enable: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"last rx time: %lu.%lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx count: %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"last tx start time: %lu.%lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx count: %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx skipped count: %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx timeout count: %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last tx seqid: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sw_cfg: %#x, hw_cfg: %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx type: %d, rx filter: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"num_nic_msi: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_roce_msi: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_msi_used: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_msi_left: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@hclge_dbg_get_imp_stats_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.12, i32 1736, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to get imp statistics bd number, ret = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hclge_dbg_get_imp_stats_info\00", [35 x i8] zeroinitializer }, align 32
@hclge_dbg_get_imp_stats_info._entry_ptr = internal global ptr @hclge_dbg_get_imp_stats_info._entry, section ".printk_index", align 4
@hclge_dbg_get_imp_stats_info._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.12, i32 1742, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"imp statistics bd number is 0!\0A\00", [32 x i8] zeroinitializer }, align 32
@hclge_dbg_get_imp_stats_info._entry_ptr.132 = internal global ptr @hclge_dbg_get_imp_stats_info._entry.130, section ".printk_index", align 4
@hclge_dbg_get_imp_stats_info._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.12, i32 1755, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get imp statistics, ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@hclge_dbg_get_imp_stats_info._entry_ptr.135 = internal global ptr @hclge_dbg_get_imp_stats_info._entry.133, section ".printk_index", align 4
@hclge_dbg_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.12, i32 161, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd(0x%x) send fail, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclge_dbg_cmd_send\00", [45 x i8] zeroinitializer }, align 32
@hclge_dbg_cmd_send._entry_ptr = internal global ptr @hclge_dbg_cmd_send._entry, section ".printk_index", align 4
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"offset | data\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%04x | \00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%08x  \00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%04x | 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@hclge_dbg_reg_info = internal constant { [12 x %struct.hclge_dbg_reg_type_info], [48 x i8] } { [12 x %struct.hclge_dbg_reg_type_info] [%struct.hclge_dbg_reg_type_info { i32 22, ptr @hclge_dbg_bios_common_reg, %struct.hclge_dbg_reg_common_msg { i32 12, i32 1, i32 68 } }, %struct.hclge_dbg_reg_type_info { i32 23, ptr @hclge_dbg_ssu_reg_0, %struct.hclge_dbg_reg_common_msg { i32 60, i32 2, i32 69 } }, %struct.hclge_dbg_reg_type_info { i32 23, ptr @hclge_dbg_ssu_reg_1, %struct.hclge_dbg_reg_common_msg { i32 90, i32 3, i32 70 } }, %struct.hclge_dbg_reg_type_info { i32 23, ptr @hclge_dbg_ssu_reg_2, %struct.hclge_dbg_reg_common_msg { i32 6, i32 12, i32 79 } }, %struct.hclge_dbg_reg_type_info { i32 24, ptr @hclge_dbg_igu_egu_reg, %struct.hclge_dbg_reg_common_msg { i32 54, i32 4, i32 71 } }, %struct.hclge_dbg_reg_type_info { i32 25, ptr @hclge_dbg_rpu_reg_0, %struct.hclge_dbg_reg_common_msg { i32 6, i32 5, i32 72 } }, %struct.hclge_dbg_reg_type_info { i32 25, ptr @hclge_dbg_rpu_reg_1, %struct.hclge_dbg_reg_common_msg { i32 12, i32 6, i32 73 } }, %struct.hclge_dbg_reg_type_info { i32 26, ptr @hclge_dbg_ncsi_reg, %struct.hclge_dbg_reg_common_msg { i32 60, i32 7, i32 74 } }, %struct.hclge_dbg_reg_type_info { i32 27, ptr @hclge_dbg_rtc_reg, %struct.hclge_dbg_reg_common_msg { i32 24, i32 8, i32 75 } }, %struct.hclge_dbg_reg_type_info { i32 28, ptr @hclge_dbg_ppp_reg, %struct.hclge_dbg_reg_common_msg { i32 132, i32 9, i32 76 } }, %struct.hclge_dbg_reg_type_info { i32 29, ptr @hclge_dbg_rcb_reg, %struct.hclge_dbg_reg_common_msg { i32 60, i32 10, i32 77 } }, %struct.hclge_dbg_reg_type_info { i32 30, ptr @hclge_dbg_tqp_reg, %struct.hclge_dbg_reg_common_msg { i32 12, i32 11, i32 78 } }], [48 x i8] zeroinitializer }, align 32
@hclge_dbg_bios_common_reg = internal constant { [12 x %struct.hclge_dbg_dfx_message], [192 x i8] } { [12 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BP_CPU_STATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_NIC_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_NIC_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_NIC_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_NIC_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_ROC_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_ROC_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_ROC_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DFX_MSIX_INFO_ROC_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [192 x i8] zeroinitializer }, align 32
@hclge_dbg_ssu_reg_0 = internal constant { [60 x %struct.hclge_dbg_dfx_message], [960 x i8] } { [60 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_ETS_PORT_STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_ETS_TCG_STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_BP_STATUS_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_BP_STATUS_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_BP_STATUS_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_BP_STATUS_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_BP_STATUS_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_BP_STATUS_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MAC_TX_PFC_IND\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MAC_SSU_RX_PFC_IND\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BTMP_AGEING_ST_B0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BTMP_AGEING_ST_B1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BTMP_AGEING_ST_B2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FULL_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PART_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_KEY_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_RLT_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LO_PRI_UNICAST_RLT_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"HI_PRI_MULTICAST_RLT_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LO_PRI_MULTICAST_RLT_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_PACKET_CURR_BUFFER_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BTMP_AGEING_RLS_CNT_BANK0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BTMP_AGEING_RLS_CNT_BANK1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BTMP_AGEING_RLS_CNT_BANK2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MB_RD_RLT_DROP_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_PPP_MAC_KEY_NUM_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_PPP_MAC_KEY_NUM_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_PPP_HOST_KEY_NUM_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_PPP_HOST_KEY_NUM_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_SSU_MAC_RLT_NUM_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_SSU_MAC_RLT_NUM_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_SSU_HOST_RLT_NUM_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_SSU_HOST_RLT_NUM_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_PACKET_IN_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_PACKET_IN_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_PACKET_OUT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_PACKET_OUT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_KEY_DROP_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MB_UNCOPY_NUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_OQ_DROP_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_OQ_DROP_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BANK_UNBALANCE_DROP_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BANK_UNBALANCE_RX_DROP_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NIC_L2_ERR_DROP_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"ROC_L2_ERR_DROP_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NIC_L2_ERR_DROP_PKT_CNT_RX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"ROC_L2_ERR_DROP_PKT_CNT_RX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_OQ_GLB_DROP_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LO_PRI_UNICAST_CUR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"HI_PRI_MULTICAST_CUR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LO_PRI_MULTICAST_CUR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [960 x i8] zeroinitializer }, align 32
@hclge_dbg_ssu_reg_1 = internal constant { [90 x %struct.hclge_dbg_dfx_message], [1440 x i8] } { [90 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"prt_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_TC_CURR_BUFFER_CNT_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PACKET_CURR_BUFFER_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_IN_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_IN_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_OUT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_OUT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_IN_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_IN_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_OUT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_OUT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"ROC_RX_PACKET_IN_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"ROC_RX_PACKET_IN_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"ROC_TX_PACKET_OUT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"ROC_TX_PACKET_OUT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_0_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_0_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_1_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_1_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_2_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_2_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_3_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_3_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_4_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_4_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_5_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_5_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_6_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_6_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_7_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_IN_CNT_7_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_0_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_0_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_1_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_1_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_2_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_2_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_3_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_3_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_4_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_4_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_5_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_5_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_6_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_6_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_7_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_PACKET_TC_OUT_CNT_7_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_0_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_0_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_1_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_1_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_2_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_2_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_3_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_3_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_4_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_4_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_5_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_5_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_6_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_6_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_7_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_IN_CNT_7_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_0_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_0_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_1_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_1_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_2_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_2_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_3_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_3_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_4_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_4_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_5_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_5_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_6_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_6_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_7_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"TX_PACKET_TC_OUT_CNT_7_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [1440 x i8] zeroinitializer }, align 32
@hclge_dbg_ssu_reg_2 = internal constant { [6 x %struct.hclge_dbg_dfx_message], [96 x i8] } { [6 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"OQ_INDEX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"QUEUE_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [96 x i8] zeroinitializer }, align 32
@hclge_dbg_igu_egu_reg = internal constant { [54 x %struct.hclge_dbg_dfx_message], [864 x i8] } { [54 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"prt_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_ERR_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_NO_SOF_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_1588_SHORT_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_1588_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_ERR_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OUT_L2_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OUT_L3_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OUT_L4_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_IN_L2_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_IN_L3_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_IN_L4_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_EL3E_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_EL4E_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_L3E_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_L4E_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_ROCEE_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OUT_UDP0_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_IN_UDP0_PKT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_MC_CAR_DROP_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_MC_CAR_DROP_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_BC_CAR_DROP_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_BC_CAR_DROP_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OVERSIZE_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OVERSIZE_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_UNDERSIZE_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_UNDERSIZE_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OUT_ALL_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_OUT_ALL_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_TX_OUT_ALL_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_TX_OUT_ALL_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_UNI_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_UNI_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_MULTI_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_MULTI_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_BROAD_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_BROAD_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_OUT_ALL_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_OUT_ALL_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_UNI_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_UNI_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_MULTI_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_MULTI_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_BROAD_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EGU_TX_BROAD_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_TX_KEY_NUM_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_TX_KEY_NUM_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_NON_TUN_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_NON_TUN_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_TUN_PKT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IGU_RX_TUN_PKT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [864 x i8] zeroinitializer }, align 32
@hclge_dbg_rpu_reg_0 = internal constant { [6 x %struct.hclge_dbg_dfx_message], [96 x i8] } { [6 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"tc_queue_num\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FSM_DFX_ST0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FSM_DFX_ST1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RPU_RX_PKT_DROP_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BUF_WAIT_TIMEOUT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BUF_WAIT_TIMEOUT_QID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [96 x i8] zeroinitializer }, align 32
@hclge_dbg_rpu_reg_1 = internal constant { [12 x %struct.hclge_dbg_dfx_message], [192 x i8] } { [12 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [192 x i8] zeroinitializer }, align 32
@hclge_dbg_ncsi_reg = internal constant { [60 x %struct.hclge_dbg_dfx_message], [960 x i8] } { [60 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_EGU_TX_FIFO_STS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_PAUSE_STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_CTRL_DMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_CTRL_SMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_CTRL_CKS_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_CTRL_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_PT_DMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_PT_SMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_PT_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_FCS_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_CTRL_DMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_CTRL_SMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_CTRL_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_PT_DMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_PT_SMAC_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_PT_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_PT_PKT_TRUNC_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_PT_PKT_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_TX_CTRL_PKT_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_CTRL_PKT_TRUNC_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_RX_CTRL_PKT_CFLIT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_OCTETS_OK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_OCTETS_BAD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_UC_PKTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_MC_PKTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_BC_PKTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PKTS_64OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PKTS_65TO127OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PKTS_128TO255OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PKTS_255TO511OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PKTS_512TO1023OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PKTS_1024TO1518OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PKTS_1519TOMAXOCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_FCS_ERRORS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_LONG_ERRORS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_JABBER_ERRORS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_RUNT_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_SHORT_ERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_FILT_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_OCTETS_TOTAL_FILT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_OCTETS_OK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_OCTETS_BAD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_UC_PKTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_MC_PKTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_BC_PKTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PKTS_64OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PKTS_65TO127OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PKTS_128TO255OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PKTS_256TO511OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PKTS_512TO1023OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PKTS_1024TO1518OCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PKTS_1519TOMAXOCTETS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_UNDERRUN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_CRC_ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_TX_PAUSE_FRAMES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PAD_PKTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NCSI_MAC_RX_PAUSE_FRAMES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [960 x i8] zeroinitializer }, align 32
@hclge_dbg_rtc_reg = internal constant { [24 x %struct.hclge_dbg_dfx_message], [384 x i8] } { [24 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_IGU_AFIFO_DFX_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LGE_EGU_AFIFO_DFX_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"CGE_IGU_AFIFO_DFX_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"CGE_IGU_AFIFO_DFX_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"CGE_EGU_AFIFO_DFX_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"CGE_EGU_AFIFO_DFX_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [384 x i8] zeroinitializer }, align 32
@hclge_dbg_ppp_reg = internal constant { [132 x %struct.hclge_dbg_dfx_message], [2112 x i8] } { [132 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_FROM_PRT_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_FROM_HOST_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_TX_VLAN_PROC_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_MNG_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_FD_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_NO_DST_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_MC_MBID_FULL_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_SC_FILTERED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_DROP_PKT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_PT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_MAC_ANTI_SPOOF_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_IG_VFV_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_IG_PRTV_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_CNM_PFC_PAUSE_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_TORUS_TC_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"DROP_TORUS_LPBK_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_HFS_STS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_RSLT_STS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_P3U_STS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_RSLT_DESCR_STS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_UMV_STS_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_UMV_STS_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_VFV_STS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_KEY_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_INFO_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_DROP_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_OUT_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_KEY_MATCH_DATA_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_KEY_MATCH_TCAM_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_INFO_MATCH_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_FREE_ENTRY_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_GRO_INNER_DFX_SIGNAL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_RX_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_RX_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_TX_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_TX_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_PRT2HOST_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_PRT2HOST_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_PRT2PRT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_PRT2PRT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_HOST2HOST_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_HOST2HOST_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_HOST2PRT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_HOST2PRT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_MC_FROM_PRT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_MC_FROM_PRT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_MC_FROM_HOST_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_MC_FROM_HOST_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MC_RD_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MC_RD_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MC_DROP_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MC_DROP_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MC_RD_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SSU_MC_RD_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_2HOST_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_2HOST_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_2PRT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_2PRT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTSNOS_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTSNOS_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTUP_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTUP_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTLCL_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTLCL_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTTGT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NTTGT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RTNS_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RTNS_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RTLPBK_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RTLPBK_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NR_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"NR_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RR_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RR_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MNG_TBL_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MNG_TBL_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FD_TBL_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FD_TBL_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FD_LKUP_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FD_LKUP_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BC_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"BC_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_UC_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_UC_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_MC_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_MC_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_VMDQ1_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_VMDQ1_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MTA_TBL_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MTA_TBL_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FWD_BONDING_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FWD_BONDING_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PROMIS_TBL_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PROMIS_TBL_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_TUNL_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_TUNL_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_BMC_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GET_BMC_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_PRT2BMC_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_PRT2BMC_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_HOST2BMC_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_HOST2BMC_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_BMC2HOST_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_BMC2HOST_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_BMC2PRT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"SEND_UC_BMC2PRT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_2BMC_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PPP_MC_2BMC_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"VLAN_MIRR_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"VLAN_MIRR_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IG_MIRR_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"IG_MIRR_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EG_MIRR_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"EG_MIRR_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_DEFAULT_HOST_HIT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_DEFAULT_HOST_HIT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LAN_PAIR_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"LAN_PAIR_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_MC_HIT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"UM_TBL_MC_HIT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MTA_TBL_HIT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"MTA_TBL_HIT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PROMIS_TBL_HIT_PKT_CNT_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"PROMIS_TBL_HIT_PKT_CNT_H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [2112 x i8] zeroinitializer }, align 32
@hclge_dbg_rcb_reg = internal constant { [60 x %struct.hclge_dbg_dfx_message], [960 x i8] } { [60 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FSM_DFX_ST0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FSM_DFX_ST1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FSM_DFX_ST2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"FIFO_DFX_ST11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_23\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_24\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_25\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_26\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_27\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_28\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_29\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"Q_CREDIT_VLD_31\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GRO_BD_SERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GRO_CONTEXT_SERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_STASH_CFG_SERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"AXI_RD_FBD_SERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GRO_BD_MERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"GRO_CONTEXT_MERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RX_STASH_CFG_MERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"AXI_RD_FBD_MERR_CNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 0, [60 x i8] c"Reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [960 x i8] zeroinitializer }, align 32
@hclge_dbg_tqp_reg = internal constant { [12 x %struct.hclge_dbg_dfx_message], [192 x i8] } { [12 x %struct.hclge_dbg_dfx_message] [%struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"q_num\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_RX_RING_TAIL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_RX_RING_HEAD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_RX_RING_FBDNUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_RX_RING_OFFSET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_RX_RING_FBDOFFSET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_RX_RING_PKTNUM_RECORD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_TX_RING_TAIL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_TX_RING_HEAD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_TX_RING_FBDNUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_TX_RING_OFFSET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_dfx_message { i32 1, [60 x i8] c"RCB_CFG_TX_RING_EBDNUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [192 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"item%u = %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"item%u\09\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\09\00", [27 x i8] zeroinitializer }, align 32
@hclge_dbg_get_dfx_bd_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.12, i32 125, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to get dfx bd_num, offset = %d, ret = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_dbg_get_dfx_bd_num\00", [39 x i8] zeroinitializer }, align 32
@hclge_dbg_get_dfx_bd_num._entry_ptr = internal global ptr @hclge_dbg_get_dfx_bd_num._entry, section ".printk_index", align 4
@hclge_dbg_get_dfx_bd_num._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.12, i32 134, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"The value of dfx bd_num is 0!\0A\00", [33 x i8] zeroinitializer }, align 32
@hclge_dbg_get_dfx_bd_num._entry_ptr.150 = internal global ptr @hclge_dbg_get_dfx_bd_num._entry.148, section ".printk_index", align 4
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %#x\0A\00", [23 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mac_enable_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.12, i32 295, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to dump mac enable status, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hclge_dbg_dump_mac_enable_status\00", [63 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mac_enable_status._entry_ptr = internal global ptr @hclge_dbg_dump_mac_enable_status._entry, section ".printk_index", align 4
@hclge_dbg_mac_en_status = internal constant { [14 x %struct.hclge_dbg_status_dfx_info], [224 x i8] } { [14 x %struct.hclge_dbg_status_dfx_info] [%struct.hclge_dbg_status_dfx_info { i32 6, [60 x i8] c"mac_trans_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 7, [60 x i8] c"mac_rcv_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 11, [60 x i8] c"pad_trans_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 12, [60 x i8] c"pad_rcv_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 13, [60 x i8] c"1588_trans_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 14, [60 x i8] c"1588_rcv_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 15, [60 x i8] c"mac_app_loop_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 16, [60 x i8] c"mac_line_loop_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 17, [60 x i8] c"mac_fcs_tx_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 18, [60 x i8] c"mac_rx_oversize_truncate_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 19, [60 x i8] c"mac_rx_fcs_strip_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 20, [60 x i8] c"mac_rx_fcs_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 21, [60 x i8] c"mac_tx_under_min_err_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hclge_dbg_status_dfx_info { i32 22, [60 x i8] c"mac_tx_oversize_truncate_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [224 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mac_frame_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.12, i32 324, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to dump mac frame size, ret = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hclge_dbg_dump_mac_frame_size\00", [34 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mac_frame_size._entry_ptr = internal global ptr @hclge_dbg_dump_mac_frame_size._entry, section ".printk_index", align 4
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_frame_size: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"min_frame_size: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mac_speed_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.12, i32 354, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to dump mac speed duplex, ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hclge_dbg_dump_mac_speed_duplex\00", [32 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_mac_speed_duplex._entry_ptr = internal global ptr @hclge_dbg_dump_mac_speed_duplex._entry, section ".printk_index", align 4
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speed: %#lx\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"duplex: %#x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"qset_id  roce_qset_mask  nic_qset_mask  qset_shaping_pass  qset_bp_status\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%04u           %#x            %#x             %#x               %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"pri_id  pri_mask  pri_cshaping_pass  pri_pshaping_pass\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%03u       %#x           %#x                %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pg_id  pg_mask  pg_cshaping_pass  pg_pshaping_pass\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%03u      %#x           %#x               %#x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nq_id  sch_nic_queue_cnt  sch_roce_queue_cnt\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%04u           %#x\00", [45 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"               %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_mask: %#x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"port_shaping_pass: %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCH_NIC_NUM: %#x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SCH_ROCE_NUM: %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pri_bp: %#x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fifo_dfx_info: %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sch_roce_fifo_afull_gap: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_private_waterline: %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm_bypass_en: %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SSU_TM_BYPASS_EN: %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSU_RESERVE_CFG: %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TC_MAP_SEL: %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IGU_PFC_PRI_EN: %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAC_PFC_PRI_EN: %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IGU_PRI_MAP_TC_CFG: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IGU_TX_PRI_MAP_TC_CFG: %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_fd_tcam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.12, i32 1522, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Only FD-supported dev supports dump fd tcam\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclge_dbg_dump_fd_tcam\00", [41 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_fd_tcam._entry_ptr = internal global ptr @hclge_dbg_dump_fd_tcam._entry, section ".printk_index", align 4
@hclge_dbg_dump_fd_tcam._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.12, i32 1543, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get rule number, ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_fd_tcam._entry_ptr.191 = internal global ptr @hclge_dbg_dump_fd_tcam._entry.189, section ".printk_index", align 4
@hclge_dbg_dump_fd_tcam._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.12, i32 1555, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get fd tcam key x, ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_fd_tcam._entry_ptr.194 = internal global ptr @hclge_dbg_dump_fd_tcam._entry.192, section ".printk_index", align 4
@hclge_dbg_dump_fd_tcam._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.188, ptr @.str.12, i32 1564, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get fd tcam key y, ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_fd_tcam._entry_ptr.197 = internal global ptr @hclge_dbg_dump_fd_tcam._entry.195, section ".printk_index", align 4
@.str.198 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read result tcam key %s(%u):\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Recently generated mac tnl interruption:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%07lu.%03lu] status = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"local_clock: [%5lu.%06lu]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"delta: %u(ms)\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.206 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"last_service_task_processed: %lu(jiffies)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"last_service_task_cnt: %lu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I_PORT_VLAN_FILTER: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"E_PORT_VLAN_FILTER: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@vlan_filter_items = internal constant { [4 x %struct.hclge_dbg_item], [56 x i8] } { [4 x %struct.hclge_dbg_item] [%struct.hclge_dbg_item { [32 x i8] c"FUNC_ID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"I_VF_VLAN_FILTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"E_VF_VLAN_FILTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"PORT_VLAN_FILTER_BYPASS\00\00\00\00\00\00\00\00\00", i16 0 }], [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NA\00", [29 x i8] zeroinitializer }, align 32
@hclge_get_vlan_filter_config_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.12, i32 2083, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to get vport%u vlan filter config, ret = %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hclge_get_vlan_filter_config_cmd\00", [63 x i8] zeroinitializer }, align 32
@hclge_get_vlan_filter_config_cmd._entry_ptr = internal global ptr @hclge_get_vlan_filter_config_cmd._entry, section ".printk_index", align 4
@hclge_get_port_vlan_filter_bypass_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.12, i32 2123, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"failed to get vport%u port vlan filter bypass state, ret = %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hclge_get_port_vlan_filter_bypass_state\00", [56 x i8] zeroinitializer }, align 32
@hclge_get_port_vlan_filter_bypass_state._entry_ptr = internal global ptr @hclge_get_port_vlan_filter_bypass_state._entry, section ".printk_index", align 4
@vlan_offload_items = internal constant { [15 x %struct.hclge_dbg_item], [98 x i8] } { [15 x %struct.hclge_dbg_item] [%struct.hclge_dbg_item { [32 x i8] c"FUNC_ID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"PVID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 4 }, %struct.hclge_dbg_item { [32 x i8] c"ACCEPT_TAG1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"ACCEPT_TAG2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"ACCEPT_UNTAG1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"ACCEPT_UNTAG2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"INSERT_TAG1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"INSERT_TAG2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"SHIFT_TAG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"STRIP_TAG1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"STRIP_TAG2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"DROP_TAG1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"DROP_TAG2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"PRI_ONLY_TAG1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.hclge_dbg_item { [32 x i8] c"PRI_ONLY_TAG2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0 }], [98 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@hclge_get_vlan_tx_offload_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.12, i32 2049, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get vport%u txvlan cfg, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hclge_get_vlan_tx_offload_cfg\00", [34 x i8] zeroinitializer }, align 32
@hclge_get_vlan_tx_offload_cfg._entry_ptr = internal global ptr @hclge_get_vlan_tx_offload_cfg._entry, section ".printk_index", align 4
@hclge_get_vlan_rx_offload_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.12, i32 2015, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get vport%u rxvlan cfg, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hclge_get_vlan_rx_offload_cfg\00", [34 x i8] zeroinitializer }, align 32
@hclge_get_vlan_rx_offload_cfg._entry_ptr = internal global ptr @hclge_get_vlan_rx_offload_cfg._entry, section ".printk_index", align 4
@.str.220 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"func_id\09hit_times\0A\00", [45 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_fd_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.12, i32 1598, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get fd counter, ret = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_dbg_dump_fd_counter\00", [38 x i8] zeroinitializer }, align 32
@hclge_dbg_dump_fd_counter._entry_ptr = internal global ptr @hclge_dbg_dump_fd_counter._entry, section ".printk_index", align 4
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s\09%llu\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"num_alloc_vport   : %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max_umv_size     : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wanted_umv_size  : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"priv_umv_size    : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"share_umv_size   : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vport(%u) used_umv_num : %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"used_mc_mac_num  : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1625, i32 41 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1627, i32 41 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1629, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1631, i32 41 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1633, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1635, i32 41 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1637, i32 41 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1639, i32 41 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"hclge_dbg_rst_info\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1610, i32 47 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1644, i32 42 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1649, i32 41 }
@___asan_gen_.264 = private unnamed_addr constant [19 x i8] c"hclge_dbg_cmd_func\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2339, i32 36 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2505, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 918, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 925, i32 41 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 926, i32 41 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 928, i32 41 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 930, i32 41 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 933, i32 41 }
@___asan_gen_.309 = private unnamed_addr constant [13 x i8] c"tm_pri_items\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 940, i32 36 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 978, i32 28 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1001, i32 57 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1002, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1005, i32 24 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1006, i32 24 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1007, i32 24 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 711, i32 30 }
@___asan_gen_.333 = private unnamed_addr constant [14 x i8] c"tm_qset_items\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1019, i32 36 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1078, i32 24 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 888, i32 6 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 890, i32 6 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 902, i32 42 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 839, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 848, i32 41 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 851, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant [12 x i8] c"tm_pg_items\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 681, i32 36 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 762, i32 24 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 763, i32 24 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 806, i32 5 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 808, i32 5 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 650, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 658, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 665, i32 41 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 667, i32 41 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 670, i32 41 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 673, i32 42 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1104, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1111, i32 41 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1113, i32 41 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1134, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1141, i32 41 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1143, i32 41 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1149, i32 42 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1165, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1173, i32 6 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1190, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1200, i32 6 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1203, i32 41 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1220, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1228, i32 5 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1246, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1253, i32 5 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1273, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1281, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1309, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1318, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1935, i32 41 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1936, i32 18 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1936, i32 25 }
@___asan_gen_.522 = private unnamed_addr constant [15 x i8] c"mac_list_items\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1913, i32 36 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1949, i32 25 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1950, i32 25 }
@___asan_gen_.531 = private unnamed_addr constant [20 x i8] c"hclge_mac_state_str\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 13, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 106, i32 16 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 108, i32 16 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 14, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 14, i32 12 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 14, i32 22 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1385, i32 5 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1387, i32 5 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1388, i32 41 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1398, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1406, i32 42 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1410, i32 6 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1418, i32 6 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1424, i32 6 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1839, i32 41 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1845, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1852, i32 41 }
@___asan_gen_.594 = private unnamed_addr constant [10 x i8] c"state_str\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 12, i32 27 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1858, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1865, i32 41 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1870, i32 41 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1875, i32 42 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 12, i32 43 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 12, i32 50 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2284, i32 41 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2286, i32 41 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2288, i32 5 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2288, i32 13 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2289, i32 41 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2292, i32 41 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2297, i32 41 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2299, i32 41 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2302, i32 41 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2304, i32 41 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2305, i32 41 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2307, i32 41 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2309, i32 41 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2316, i32 41 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2319, i32 41 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1681, i32 41 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1683, i32 41 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1685, i32 41 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1687, i32 41 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1734, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1742, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1754, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 160, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1703, i32 41 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1708, i32 43 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1710, i32 43 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1712, i32 43 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1783, i32 8 }
@___asan_gen_.720 = private unnamed_addr constant [19 x i8] c"hclge_dbg_reg_info\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 17, i32 45 }
@___asan_gen_.723 = private unnamed_addr constant [26 x i8] c"hclge_dbg_bios_common_reg\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 102, i32 43 }
@___asan_gen_.726 = private unnamed_addr constant [20 x i8] c"hclge_dbg_ssu_reg_0\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 118, i32 43 }
@___asan_gen_.729 = private unnamed_addr constant [20 x i8] c"hclge_dbg_ssu_reg_1\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 190, i32 43 }
@___asan_gen_.732 = private unnamed_addr constant [20 x i8] c"hclge_dbg_ssu_reg_2\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 297, i32 43 }
@___asan_gen_.735 = private unnamed_addr constant [22 x i8] c"hclge_dbg_igu_egu_reg\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 306, i32 43 }
@___asan_gen_.738 = private unnamed_addr constant [20 x i8] c"hclge_dbg_rpu_reg_0\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 371, i32 43 }
@___asan_gen_.741 = private unnamed_addr constant [20 x i8] c"hclge_dbg_rpu_reg_1\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 380, i32 43 }
@___asan_gen_.744 = private unnamed_addr constant [19 x i8] c"hclge_dbg_ncsi_reg\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 396, i32 43 }
@___asan_gen_.747 = private unnamed_addr constant [18 x i8] c"hclge_dbg_rtc_reg\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 468, i32 43 }
@___asan_gen_.750 = private unnamed_addr constant [18 x i8] c"hclge_dbg_ppp_reg\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 498, i32 43 }
@___asan_gen_.753 = private unnamed_addr constant [18 x i8] c"hclge_dbg_rcb_reg\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 654, i32 43 }
@___asan_gen_.756 = private unnamed_addr constant [18 x i8] c"hclge_dbg_tqp_reg\00", align 1
@___asan_gen_.757 = private unnamed_addr constant [62 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 726, i32 43 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 188, i32 45 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 192, i32 45 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 209, i32 46 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 123, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 134, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 256, i32 45 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 294, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant [24 x i8] c"hclge_dbg_mac_en_status\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 265, i32 47 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 323, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 330, i32 44 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 332, i32 44 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 353, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 360, i32 44 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 363, i32 44 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 398, i32 6 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 408, i32 7 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 429, i32 6 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 439, i32 7 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 455, i32 6 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 465, i32 7 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 480, i32 6 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 487, i32 45 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 496, i32 7 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 518, i32 44 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 520, i32 44 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 538, i32 44 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 540, i32 44 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 548, i32 44 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 550, i32 44 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 553, i32 6 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 556, i32 6 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 558, i32 44 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 560, i32 44 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 562, i32 44 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 573, i32 44 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 575, i32 44 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 577, i32 44 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 579, i32 44 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 582, i32 6 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1521, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1542, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1554, i32 4 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1563, i32 4 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1468, i32 5 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1468, i32 47 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1468, i32 53 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1475, i32 6 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1898, i32 5 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1904, i32 6 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1664, i32 41 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1666, i32 41 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1669, i32 5 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1671, i32 41 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2173, i32 30 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2175, i32 44 }
@___asan_gen_.966 = private unnamed_addr constant [18 x i8] c"vlan_filter_items\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2132, i32 36 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2199, i32 48 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2081, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2121, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant [19 x i8] c"vlan_offload_items\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2139, i32 36 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2234, i32 21 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2047, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 2013, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1589, i32 5 }
@___asan_gen_.1017 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1597, i32 4 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1604, i32 6 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1969, i32 29 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1971, i32 41 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1973, i32 41 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1975, i32 41 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1979, i32 41 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1984, i32 6 }
@___asan_gen_.1047 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1048 = private constant [62 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 1989, i32 41 }
@llvm.compiler.used = appending global [307 x ptr] [ptr @hclge_dbg_cmd_send._entry, ptr @hclge_dbg_cmd_send._entry_ptr, ptr @hclge_dbg_dump_fd_counter._entry, ptr @hclge_dbg_dump_fd_counter._entry_ptr, ptr @hclge_dbg_dump_fd_tcam._entry, ptr @hclge_dbg_dump_fd_tcam._entry.189, ptr @hclge_dbg_dump_fd_tcam._entry.192, ptr @hclge_dbg_dump_fd_tcam._entry.195, ptr @hclge_dbg_dump_fd_tcam._entry_ptr, ptr @hclge_dbg_dump_fd_tcam._entry_ptr.191, ptr @hclge_dbg_dump_fd_tcam._entry_ptr.194, ptr @hclge_dbg_dump_fd_tcam._entry_ptr.197, ptr @hclge_dbg_dump_loopback._entry, ptr @hclge_dbg_dump_loopback._entry.101, ptr @hclge_dbg_dump_loopback._entry_ptr, ptr @hclge_dbg_dump_loopback._entry_ptr.103, ptr @hclge_dbg_dump_mac_enable_status._entry, ptr @hclge_dbg_dump_mac_enable_status._entry_ptr, ptr @hclge_dbg_dump_mac_frame_size._entry, ptr @hclge_dbg_dump_mac_frame_size._entry_ptr, ptr @hclge_dbg_dump_mac_speed_duplex._entry, ptr @hclge_dbg_dump_mac_speed_duplex._entry_ptr, ptr @hclge_dbg_dump_mng_table._entry, ptr @hclge_dbg_dump_mng_table._entry_ptr, ptr @hclge_dbg_dump_qos_pause_cfg._entry, ptr @hclge_dbg_dump_qos_pause_cfg._entry_ptr, ptr @hclge_dbg_dump_qos_pri_map._entry, ptr @hclge_dbg_dump_qos_pri_map._entry_ptr, ptr @hclge_dbg_dump_rx_common_threshold_cfg._entry, ptr @hclge_dbg_dump_rx_common_threshold_cfg._entry_ptr, ptr @hclge_dbg_dump_rx_common_wl_cfg._entry, ptr @hclge_dbg_dump_rx_common_wl_cfg._entry_ptr, ptr @hclge_dbg_dump_rx_global_pkt_cnt._entry, ptr @hclge_dbg_dump_rx_global_pkt_cnt._entry_ptr, ptr @hclge_dbg_dump_rx_priv_buf_cfg._entry, ptr @hclge_dbg_dump_rx_priv_buf_cfg._entry_ptr, ptr @hclge_dbg_dump_rx_priv_wl_buf_cfg._entry, ptr @hclge_dbg_dump_rx_priv_wl_buf_cfg._entry_ptr, ptr @hclge_dbg_dump_tc._entry, ptr @hclge_dbg_dump_tc._entry.43, ptr @hclge_dbg_dump_tc._entry_ptr, ptr @hclge_dbg_dump_tc._entry_ptr.45, ptr @hclge_dbg_dump_tm_bp_qset_map._entry, ptr @hclge_dbg_dump_tm_bp_qset_map._entry_ptr, ptr @hclge_dbg_dump_tm_nodes._entry, ptr @hclge_dbg_dump_tm_nodes._entry_ptr, ptr @hclge_dbg_dump_tx_buf_cfg._entry, ptr @hclge_dbg_dump_tx_buf_cfg._entry_ptr, ptr @hclge_dbg_get_dfx_bd_num._entry, ptr @hclge_dbg_get_dfx_bd_num._entry.148, ptr @hclge_dbg_get_dfx_bd_num._entry_ptr, ptr @hclge_dbg_get_dfx_bd_num._entry_ptr.150, ptr @hclge_dbg_get_imp_stats_info._entry, ptr @hclge_dbg_get_imp_stats_info._entry.130, ptr @hclge_dbg_get_imp_stats_info._entry.133, ptr @hclge_dbg_get_imp_stats_info._entry_ptr, ptr @hclge_dbg_get_imp_stats_info._entry_ptr.132, ptr @hclge_dbg_get_imp_stats_info._entry_ptr.135, ptr @hclge_dbg_read_cmd._entry, ptr @hclge_dbg_read_cmd._entry_ptr, ptr @hclge_get_port_vlan_filter_bypass_state._entry, ptr @hclge_get_port_vlan_filter_bypass_state._entry_ptr, ptr @hclge_get_vlan_filter_config_cmd._entry, ptr @hclge_get_vlan_filter_config_cmd._entry_ptr, ptr @hclge_get_vlan_rx_offload_cfg._entry, ptr @hclge_get_vlan_rx_offload_cfg._entry_ptr, ptr @hclge_get_vlan_tx_offload_cfg._entry, ptr @hclge_get_vlan_tx_offload_cfg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hclge_dbg_rst_info, ptr @.str.8, ptr @.str.9, ptr @hclge_dbg_cmd_func, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @tm_pri_items, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @tm_qset_items, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @tm_pg_items, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @mac_list_items, ptr @.str.81, ptr @.str.82, ptr @hclge_mac_state_str, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @state_str, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @hclge_dbg_reg_info, ptr @hclge_dbg_bios_common_reg, ptr @hclge_dbg_ssu_reg_0, ptr @hclge_dbg_ssu_reg_1, ptr @hclge_dbg_ssu_reg_2, ptr @hclge_dbg_igu_egu_reg, ptr @hclge_dbg_rpu_reg_0, ptr @hclge_dbg_rpu_reg_1, ptr @hclge_dbg_ncsi_reg, ptr @hclge_dbg_rtc_reg, ptr @hclge_dbg_ppp_reg, ptr @hclge_dbg_rcb_reg, ptr @hclge_dbg_tqp_reg, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @hclge_dbg_mac_en_status, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @vlan_filter_items, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @vlan_offload_items, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230], section "llvm.metadata"
@0 = internal global [273 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_rst_info to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_cmd_func to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_read_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_tm_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_pri_items to i32), i32 578, i32 736, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_qset_items to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_tm_bp_qset_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_pg_items to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_tc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_tc._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_qos_pause_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_qos_pri_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_tx_buf_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_rx_priv_buf_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_rx_common_wl_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_rx_global_pkt_cnt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_rx_priv_wl_buf_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_rx_common_threshold_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_list_items to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mac_state_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_mng_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_loopback._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_get_imp_stats_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_get_imp_stats_info._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_get_imp_stats_info._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_reg_info to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_bios_common_reg to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_ssu_reg_0 to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_ssu_reg_1 to i32), i32 5760, i32 7200, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_ssu_reg_2 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_igu_egu_reg to i32), i32 3456, i32 4320, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_rpu_reg_0 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_rpu_reg_1 to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_ncsi_reg to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_rtc_reg to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_ppp_reg to i32), i32 8448, i32 10560, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_rcb_reg to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_tqp_reg to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_get_dfx_bd_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_get_dfx_bd_num._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_mac_enable_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_mac_en_status to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_mac_frame_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_mac_speed_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_fd_tcam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_fd_tcam._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_fd_tcam._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_fd_tcam._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_filter_items to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_get_vlan_filter_config_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_get_port_vlan_filter_bypass_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_offload_items to i32), i32 510, i32 608, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_get_vlan_tx_offload_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_get_vlan_rx_offload_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dbg_dump_fd_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_dbg_dump_rst_info(ptr nocapture noundef readonly %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_stats = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13
  %pf_rst_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %pf_rst_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pf_rst_cnt, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, i32 noundef %1) #11
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %call
  %sub2 = sub i32 %len, %call
  %flr_rst_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %flr_rst_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flr_rst_cnt, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub2, ptr noundef nonnull @.str.1, i32 noundef %3) #11
  %add5 = add i32 %call4, %call
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %add5
  %sub7 = sub i32 %len, %add5
  %global_rst_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13, i32 4
  %4 = ptrtoint ptr %global_rst_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %global_rst_cnt, align 8
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.2, i32 noundef %5) #11
  %add10 = add i32 %call9, %add5
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %add10
  %sub12 = sub i32 %len, %add10
  %imp_rst_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13, i32 5
  %6 = ptrtoint ptr %imp_rst_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imp_rst_cnt, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.3, i32 noundef %7) #11
  %add15 = add i32 %call14, %add10
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %add15
  %sub17 = sub i32 %len, %add15
  %8 = ptrtoint ptr %rst_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rst_stats, align 8
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.4, i32 noundef %9) #11
  %add20 = add i32 %call19, %add15
  %add.ptr21 = getelementptr i8, ptr %buf, i32 %add20
  %sub22 = sub i32 %len, %add20
  %hw_reset_done_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %hw_reset_done_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_reset_done_cnt, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.5, i32 noundef %11) #11
  %add25 = add i32 %call24, %add20
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %add25
  %sub27 = sub i32 %len, %add25
  %reset_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13, i32 6
  %12 = ptrtoint ptr %reset_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reset_cnt, align 8
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.6, i32 noundef %13) #11
  %add30 = add i32 %call29, %add25
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add30
  %sub32 = sub i32 %len, %add30
  %reset_fail_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 13, i32 7
  %14 = ptrtoint ptr %reset_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reset_fail_cnt, align 4
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.7, i32 noundef %15) #11
  %add35 = add i32 %call34, %add30
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %add35
  %sub38 = sub i32 %len, %add35
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %18 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 132096
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !526
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([7 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_rst_info, i32 0, i32 0, i32 1), i32 noundef %20) #11
  %add43 = add i32 %call42, %add35
  %add.ptr37.1 = getelementptr i8, ptr %buf, i32 %add43
  %sub38.1 = sub i32 %len, %add43
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %23 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.1 = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.1, i32 132864
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #11, !srcloc !526
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %call42.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37.1, i32 noundef %sub38.1, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([7 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_rst_info, i32 0, i32 1, i32 1), i32 noundef %25) #11
  %add43.1 = add i32 %call42.1, %add43
  %add.ptr37.2 = getelementptr i8, ptr %buf, i32 %add43.1
  %sub38.2 = sub i32 %len, %add43.1
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %28 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.2 = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.2, i32 133120
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #11, !srcloc !526
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %call42.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37.2, i32 noundef %sub38.2, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([7 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_rst_info, i32 0, i32 2, i32 1), i32 noundef %30) #11
  %add43.2 = add i32 %call42.2, %add43.1
  %add.ptr37.3 = getelementptr i8, ptr %buf, i32 %add43.2
  %sub38.3 = sub i32 %len, %add43.2
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %33 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.3 = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.3, i32 133888
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #11, !srcloc !526
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %call42.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37.3, i32 noundef %sub38.3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([7 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_rst_info, i32 0, i32 3, i32 1), i32 noundef %35) #11
  %add43.3 = add i32 %call42.3, %add43.2
  %add.ptr37.4 = getelementptr i8, ptr %buf, i32 %add43.3
  %sub38.4 = sub i32 %len, %add43.3
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %38 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.4 = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.4, i32 133632
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #11, !srcloc !526
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %call42.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37.4, i32 noundef %sub38.4, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([7 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_rst_info, i32 0, i32 4, i32 1), i32 noundef %40) #11
  %add43.4 = add i32 %call42.4, %add43.3
  %add.ptr37.5 = getelementptr i8, ptr %buf, i32 %add43.4
  %sub38.5 = sub i32 %len, %add43.4
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %43 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.5 = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.5, i32 159752
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #11, !srcloc !526
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %call42.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37.5, i32 noundef %sub38.5, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([7 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_rst_info, i32 0, i32 5, i32 1), i32 noundef %45) #11
  %add43.5 = add i32 %call42.5, %add43.4
  %add.ptr37.6 = getelementptr i8, ptr %buf, i32 %add43.5
  %sub38.6 = sub i32 %len, %add43.5
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %48 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.6 = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.6, i32 134144
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #11, !srcloc !526
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %call42.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37.6, i32 noundef %sub38.6, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([7 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_rst_info, i32 0, i32 6, i32 1), i32 noundef %50) #11
  %add43.6 = add i32 %call42.6, %add43.5
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %add43.6
  %sub45 = sub i32 %len, %add43.6
  %state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 5
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state, align 8
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.9, i32 noundef %52) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_dbg_read_cmd(ptr noundef %handle, i32 noundef %cmd, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %handle) #11
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [36 x %struct.hclge_dbg_func], ptr @hclge_dbg_cmd_func, i32 0, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cmd)
  %cmp2 = icmp eq i32 %3, %cmd
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %4 = add nsw i32 %i.023, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %tobool.not = icmp ult i32 %4, 9
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dbg_dump = getelementptr [36 x %struct.hclge_dbg_func], ptr @hclge_dbg_cmd_func, i32 0, i32 %i.023, i32 1
  %5 = ptrtoint ptr %dbg_dump to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbg_dump, align 4
  %call6 = tail call i32 %6(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dbg_dump_reg = getelementptr [36 x %struct.hclge_dbg_func], ptr @hclge_dbg_cmd_func, i32 0, i32 %i.023, i32 2
  %7 = ptrtoint ptr %dbg_dump_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dbg_dump_reg, align 4
  %call7 = tail call i32 %8(ptr noundef %1, i32 noundef %cmd, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %cmd) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else, %if.then4
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ %call7, %if.else ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hclge_get_vport(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_tm_nodes(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2070, i1 noundef zeroext true) #11
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.17) #11
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call1
  %sub3 = sub i32 %len, %call1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i32
  %pg_num = getelementptr inbounds %struct.hclge_tm_nodes_cmd, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %pg_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pg_num, align 2
  %conv4 = zext i8 %9 to i32
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv4) #11
  %add6 = add i32 %call5, %call1
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %add6
  %sub8 = sub i32 %len, %add6
  %pri_base_id = getelementptr inbounds %struct.hclge_tm_nodes_cmd, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %pri_base_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pri_base_id, align 1
  %conv9 = zext i8 %11 to i32
  %pri_num = getelementptr inbounds %struct.hclge_tm_nodes_cmd, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %pri_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pri_num, align 1
  %conv10 = zext i8 %13 to i32
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.19, i32 noundef %conv9, i32 noundef %conv10) #11
  %add12 = add i32 %call11, %add6
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %add12
  %sub14 = sub i32 %len, %add12
  %qset_base_id = getelementptr inbounds %struct.hclge_tm_nodes_cmd, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %qset_base_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %qset_base_id, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv15 = zext i16 %16 to i32
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv16 = zext i16 %19 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.20, i32 noundef %conv15, i32 noundef %conv16) #11
  %add18 = add i32 %call17, %add12
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %add18
  %sub20 = sub i32 %len, %add18
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %4, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %conv21 = zext i16 %22 to i32
  %queue_num = getelementptr inbounds %struct.hclge_tm_nodes_cmd, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %queue_num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %queue_num, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %conv22 = zext i16 %25 to i32
  %call23 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.21, i32 noundef %conv21, i32 noundef %conv22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_tm_pri(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data_str = alloca [17 x [32 x i8]], align 1
  %c_shaper_para = alloca %struct.hclge_tm_shaper_para, align 4
  %p_shaper_para = alloca %struct.hclge_tm_shaper_para, align 4
  %result = alloca [17 x ptr], align 4
  %content = alloca [256 x i8], align 1
  %pri_num = alloca i8, align 1
  %sch_mode = alloca i8, align 1
  %weight = alloca i8, align 1
  %j = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 544, ptr nonnull %data_str) #11
  %0 = call ptr @memset(ptr %data_str, i32 255, i32 544)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %c_shaper_para) #11
  %1 = call ptr @memset(ptr %c_shaper_para, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p_shaper_para) #11
  %2 = call ptr @memset(ptr %p_shaper_para, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %result) #11
  %3 = call ptr @memset(ptr %result, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %content) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pri_num) #11
  %4 = ptrtoint ptr %pri_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %pri_num, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sch_mode) #11
  %5 = ptrtoint ptr %sch_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %sch_mode, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %weight) #11
  %6 = ptrtoint ptr %weight to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %weight, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %j) #11
  %call = call i32 @hclge_tm_get_pri_num(ptr noundef %hdev, ptr noundef nonnull %pri_num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data_str, ptr %result, align 4
  %arrayidx.1 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 1
  %arrayidx4.1 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.1, ptr %arrayidx4.1, align 4
  %arrayidx.2 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 2
  %arrayidx4.2 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.2, ptr %arrayidx4.2, align 4
  %arrayidx.3 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 3
  %arrayidx4.3 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.3, ptr %arrayidx4.3, align 4
  %arrayidx.4 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 4
  %arrayidx4.4 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.4, ptr %arrayidx4.4, align 4
  %arrayidx.5 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 5
  %arrayidx4.5 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.5, ptr %arrayidx4.5, align 4
  %arrayidx.6 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 6
  %arrayidx4.6 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.6, ptr %arrayidx4.6, align 4
  %arrayidx.7 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 7
  %arrayidx4.7 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.7, ptr %arrayidx4.7, align 4
  %arrayidx.8 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 8
  %arrayidx4.8 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 8
  %15 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.8, ptr %arrayidx4.8, align 4
  %arrayidx.9 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 9
  %arrayidx4.9 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 9
  %16 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.9, ptr %arrayidx4.9, align 4
  %arrayidx.10 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 10
  %arrayidx4.10 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 10
  %17 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.10, ptr %arrayidx4.10, align 4
  %arrayidx.11 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 11
  %arrayidx4.11 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 11
  %18 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.11, ptr %arrayidx4.11, align 4
  %arrayidx.12 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 12
  %arrayidx4.12 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 12
  %19 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.12, ptr %arrayidx4.12, align 4
  %arrayidx.13 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 13
  %arrayidx4.13 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 13
  %20 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.13, ptr %arrayidx4.13, align 4
  %arrayidx.14 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 14
  %arrayidx4.14 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 14
  %21 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.14, ptr %arrayidx4.14, align 4
  %arrayidx.15 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 15
  %arrayidx4.15 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.15, ptr %arrayidx4.15, align 4
  %arrayidx.16 = getelementptr inbounds [17 x [32 x i8]], ptr %data_str, i32 0, i32 16
  %arrayidx4.16 = getelementptr inbounds [17 x ptr], ptr %result, i32 0, i32 16
  %23 = ptrtoint ptr %arrayidx4.16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.16, ptr %arrayidx4.16, align 4
  %24 = call ptr @memset(ptr %content, i32 32, i32 256)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %pos.042.i = phi ptr [ %content, %for.body.preheader ], [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.hclge_dbg_item, ptr @tm_pri_items, i32 %indvars.iv.i
  %call13.i = call i32 @strlen(ptr noundef %arrayidx8.i) #15
  %call14.i = call ptr @strncpy(ptr noundef %pos.042.i, ptr noundef %arrayidx8.i, i32 noundef %call13.i) #11
  %interval.i = getelementptr %struct.hclge_dbg_item, ptr @tm_pri_items, i32 %indvars.iv.i, i32 1
  %25 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %interval.i, align 2
  %conv22.i = zext i16 %26 to i32
  %add.i = add i32 %call13.i, %conv22.i
  %add.ptr.i = getelementptr i8, ptr %pos.042.i, i32 %add.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 17
  br i1 %exitcond.not.i, label %hclge_dbg_fill_content.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

hclge_dbg_fill_content.exit:                      ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 10, ptr %add.ptr.i, align 1
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %incdec.ptr.i, align 1
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.22, ptr noundef nonnull %content) #11
  %29 = ptrtoint ptr %pri_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pri_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp10109.not = icmp eq i8 %30, 0
  br i1 %cmp10109.not, label %hclge_dbg_fill_content.exit.cleanup_crit_edge, label %hclge_dbg_fill_content.exit.for.body12_crit_edge

hclge_dbg_fill_content.exit.for.body12_crit_edge: ; preds = %hclge_dbg_fill_content.exit
  br label %for.body12

hclge_dbg_fill_content.exit.cleanup_crit_edge:    ; preds = %hclge_dbg_fill_content.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body12:                                       ; preds = %hclge_dbg_fill_content.exit107.for.body12_crit_edge, %hclge_dbg_fill_content.exit.for.body12_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %hclge_dbg_fill_content.exit107.for.body12_crit_edge ], [ 0, %hclge_dbg_fill_content.exit.for.body12_crit_edge ]
  %pos.0111 = phi i32 [ %add, %hclge_dbg_fill_content.exit107.for.body12_crit_edge ], [ %call6, %hclge_dbg_fill_content.exit.for.body12_crit_edge ]
  %31 = trunc i32 %indvars.iv to i8
  %call13 = call i32 @hclge_tm_get_pri_sch_mode(ptr noundef %hdev, i8 noundef zeroext %31, ptr noundef nonnull %sch_mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body12.cleanup_crit_edge

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %for.body12
  %call17 = call i32 @hclge_tm_get_pri_weight(ptr noundef %hdev, i8 noundef zeroext %31, ptr noundef nonnull %weight) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @hclge_tm_get_pri_shaper(ptr noundef %hdev, i8 noundef zeroext %31, i32 noundef 2060, ptr noundef nonnull %c_shaper_para) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @hclge_tm_get_pri_shaper(ptr noundef %hdev, i8 noundef zeroext %31, i32 noundef 2061, ptr noundef nonnull %p_shaper_para) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %32 = ptrtoint ptr %sch_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sch_mode, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool30.not = icmp eq i8 %34, 0
  %cond = select i1 %tobool30.not, ptr @.str.24, ptr @.str.23
  %35 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %result, align 4
  %call35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %36, ptr noundef nonnull @.str.25, i32 noundef %indvars.iv)
  %37 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx4.1, align 4
  %call39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %38, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond)
  %39 = ptrtoint ptr %j to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %j, align 1
  %40 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx4.2, align 4
  %42 = ptrtoint ptr %weight to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %weight, align 1
  %conv43 = zext i8 %43 to i32
  %call44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %41, ptr noundef nonnull @.str.27, i32 noundef %conv43)
  call fastcc void @hclge_dbg_fill_shaper_content(ptr noundef nonnull %c_shaper_para, ptr noundef nonnull %result, ptr noundef nonnull %j)
  call fastcc void @hclge_dbg_fill_shaper_content(ptr noundef nonnull %p_shaper_para, ptr noundef nonnull %result, ptr noundef nonnull %j)
  %44 = call ptr @memset(ptr %content, i32 32, i32 256)
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.body.i95.for.body.i95_crit_edge, %if.end28
  %indvars.iv.i93 = phi i32 [ 0, %if.end28 ], [ %indvars.iv.next.i104, %for.body.i95.for.body.i95_crit_edge ]
  %pos.042.i94 = phi ptr [ %content, %if.end28 ], [ %add.ptr.i103, %for.body.i95.for.body.i95_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %result, i32 %indvars.iv.i93
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %call13.i96 = call i32 @strlen(ptr noundef %46) #15
  %call14.i97 = call ptr @strncpy(ptr noundef %pos.042.i94, ptr noundef %46, i32 noundef %call13.i96) #11
  %arrayidx16.i98 = getelementptr %struct.hclge_dbg_item, ptr @tm_pri_items, i32 %indvars.iv.i93
  %call19.i99 = call i32 @strlen(ptr noundef %arrayidx16.i98) #15
  %interval.i100 = getelementptr %struct.hclge_dbg_item, ptr @tm_pri_items, i32 %indvars.iv.i93, i32 1
  %47 = ptrtoint ptr %interval.i100 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %interval.i100, align 2
  %conv22.i101 = zext i16 %48 to i32
  %add.i102 = add i32 %call19.i99, %conv22.i101
  %add.ptr.i103 = getelementptr i8, ptr %pos.042.i94, i32 %add.i102
  %indvars.iv.next.i104 = add nuw nsw i32 %indvars.iv.i93, 1
  %exitcond.not.i105 = icmp eq i32 %indvars.iv.next.i104, 17
  br i1 %exitcond.not.i105, label %hclge_dbg_fill_content.exit107, label %for.body.i95.for.body.i95_crit_edge

for.body.i95.for.body.i95_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i95

hclge_dbg_fill_content.exit107:                   ; preds = %for.body.i95
  %incdec.ptr.i106 = getelementptr i8, ptr %add.ptr.i103, i32 1
  %49 = ptrtoint ptr %add.ptr.i103 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %add.ptr.i103, align 1
  %50 = ptrtoint ptr %incdec.ptr.i106 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %incdec.ptr.i106, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.0111
  %sub = sub i32 %len, %pos.0111
  %call50 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.22, ptr noundef nonnull %content) #11
  %add = add i32 %call50, %pos.0111
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %51 = ptrtoint ptr %pri_num to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pri_num, align 1
  %53 = zext i8 %52 to i32
  %cmp10 = icmp ult i32 %indvars.iv.next, %53
  br i1 %cmp10, label %hclge_dbg_fill_content.exit107.for.body12_crit_edge, label %hclge_dbg_fill_content.exit107.cleanup_crit_edge

hclge_dbg_fill_content.exit107.cleanup_crit_edge: ; preds = %hclge_dbg_fill_content.exit107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hclge_dbg_fill_content.exit107.for.body12_crit_edge: ; preds = %hclge_dbg_fill_content.exit107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

cleanup:                                          ; preds = %hclge_dbg_fill_content.exit107.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.body12.cleanup_crit_edge, %hclge_dbg_fill_content.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %hclge_dbg_fill_content.exit.cleanup_crit_edge ], [ %call13, %for.body12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ 0, %hclge_dbg_fill_content.exit107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %j) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %weight) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sch_mode) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pri_num) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %content) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %result) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p_shaper_para) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %c_shaper_para) #11
  call void @llvm.lifetime.end.p0(i64 544, ptr nonnull %data_str) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_tm_qset(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data_str = alloca [12 x [32 x i8]], align 1
  %result = alloca [12 x ptr], align 4
  %priority = alloca i8, align 1
  %link_vld = alloca i8, align 1
  %sch_mode = alloca i8, align 1
  %weight = alloca i8, align 1
  %shaper_para = alloca %struct.hclge_tm_shaper_para, align 4
  %content = alloca [256 x i8], align 1
  %qset_num = alloca i16, align 2
  %j = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %data_str) #11
  %0 = call ptr @memset(ptr %data_str, i32 255, i32 384)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %result) #11
  %1 = getelementptr inbounds i8, ptr %result, i32 40
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %priority) #11
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %priority, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_vld) #11
  %4 = ptrtoint ptr %link_vld to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %link_vld, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sch_mode) #11
  %5 = ptrtoint ptr %sch_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %sch_mode, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %weight) #11
  %6 = ptrtoint ptr %weight to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %weight, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %shaper_para) #11
  %7 = call ptr @memset(ptr %shaper_para, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %content) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qset_num) #11
  %8 = ptrtoint ptr %qset_num to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %qset_num, align 2, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %j) #11
  %call = call i32 @hclge_tm_get_qset_num(ptr noundef %hdev, ptr noundef nonnull %qset_num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %9 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data_str, ptr %result, align 4
  %arrayidx.1 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 1
  %arrayidx4.1 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.1, ptr %arrayidx4.1, align 4
  %arrayidx.2 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 2
  %arrayidx4.2 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.2, ptr %arrayidx4.2, align 4
  %arrayidx.3 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 3
  %arrayidx4.3 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.3, ptr %arrayidx4.3, align 4
  %arrayidx.4 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 4
  %arrayidx4.4 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.4, ptr %arrayidx4.4, align 4
  %arrayidx.5 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 5
  %arrayidx4.5 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.5, ptr %arrayidx4.5, align 4
  %arrayidx.6 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 6
  %arrayidx4.6 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.6, ptr %arrayidx4.6, align 4
  %arrayidx.7 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 7
  %arrayidx4.7 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.7, ptr %arrayidx4.7, align 4
  %arrayidx.8 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 8
  %arrayidx4.8 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 8
  %17 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.8, ptr %arrayidx4.8, align 4
  %arrayidx.9 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 9
  %arrayidx4.9 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.9, ptr %arrayidx4.9, align 4
  %arrayidx.10 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 10
  %arrayidx4.10 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 10
  %19 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.10, ptr %arrayidx4.10, align 4
  %arrayidx.11 = getelementptr inbounds [12 x [32 x i8]], ptr %data_str, i32 0, i32 11
  %arrayidx4.11 = getelementptr inbounds [12 x ptr], ptr %result, i32 0, i32 11
  %20 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.11, ptr %arrayidx4.11, align 4
  %21 = call ptr @memset(ptr %content, i32 32, i32 256)
  %call13.i = call i32 @strlen(ptr noundef nonnull @tm_qset_items) #15
  %call14.i = call ptr @strncpy(ptr noundef nonnull %content, ptr noundef nonnull @tm_qset_items, i32 noundef %call13.i) #11
  %add.i = add i32 %call13.i, 4
  %add.ptr.i = getelementptr i8, ptr %content, i32 %add.i
  %call13.i.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 1)) #15
  %call14.i.1 = call ptr @strncpy(ptr noundef %add.ptr.i, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 1), i32 noundef %call13.i.1) #11
  %add.i.1 = add i32 %call13.i.1, 2
  %add.ptr.i.1 = getelementptr i8, ptr %add.ptr.i, i32 %add.i.1
  %call13.i.2 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 2)) #15
  %call14.i.2 = call ptr @strncpy(ptr noundef %add.ptr.i.1, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 2), i32 noundef %call13.i.2) #11
  %add.i.2 = add i32 %call13.i.2, 2
  %add.ptr.i.2 = getelementptr i8, ptr %add.ptr.i.1, i32 %add.i.2
  %call13.i.3 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 3)) #15
  %call14.i.3 = call ptr @strncpy(ptr noundef %add.ptr.i.2, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 3), i32 noundef %call13.i.3) #11
  %add.i.3 = add i32 %call13.i.3, 2
  %add.ptr.i.3 = getelementptr i8, ptr %add.ptr.i.2, i32 %add.i.3
  %call13.i.4 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 4)) #15
  %call14.i.4 = call ptr @strncpy(ptr noundef %add.ptr.i.3, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 4), i32 noundef %call13.i.4) #11
  %add.i.4 = add i32 %call13.i.4, 2
  %add.ptr.i.4 = getelementptr i8, ptr %add.ptr.i.3, i32 %add.i.4
  %call13.i.5 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 5)) #15
  %call14.i.5 = call ptr @strncpy(ptr noundef %add.ptr.i.4, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 5), i32 noundef %call13.i.5) #11
  %add.i.5 = add i32 %call13.i.5, 2
  %add.ptr.i.5 = getelementptr i8, ptr %add.ptr.i.4, i32 %add.i.5
  %call13.i.6 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 6)) #15
  %call14.i.6 = call ptr @strncpy(ptr noundef %add.ptr.i.5, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 6), i32 noundef %call13.i.6) #11
  %add.i.6 = add i32 %call13.i.6, 2
  %add.ptr.i.6 = getelementptr i8, ptr %add.ptr.i.5, i32 %add.i.6
  %call13.i.7 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 7)) #15
  %call14.i.7 = call ptr @strncpy(ptr noundef %add.ptr.i.6, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 7), i32 noundef %call13.i.7) #11
  %add.i.7 = add i32 %call13.i.7, 2
  %add.ptr.i.7 = getelementptr i8, ptr %add.ptr.i.6, i32 %add.i.7
  %call13.i.8 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 8)) #15
  %call14.i.8 = call ptr @strncpy(ptr noundef %add.ptr.i.7, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 8), i32 noundef %call13.i.8) #11
  %add.i.8 = add i32 %call13.i.8, 2
  %add.ptr.i.8 = getelementptr i8, ptr %add.ptr.i.7, i32 %add.i.8
  %call13.i.9 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 9)) #15
  %call14.i.9 = call ptr @strncpy(ptr noundef %add.ptr.i.8, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 9), i32 noundef %call13.i.9) #11
  %add.i.9 = add i32 %call13.i.9, 2
  %add.ptr.i.9 = getelementptr i8, ptr %add.ptr.i.8, i32 %add.i.9
  %call13.i.10 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 10)) #15
  %call14.i.10 = call ptr @strncpy(ptr noundef %add.ptr.i.9, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 10), i32 noundef %call13.i.10) #11
  %add.i.10 = add i32 %call13.i.10, 2
  %add.ptr.i.10 = getelementptr i8, ptr %add.ptr.i.9, i32 %add.i.10
  %call13.i.11 = call i32 @strlen(ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 11)) #15
  %call14.i.11 = call ptr @strncpy(ptr noundef %add.ptr.i.10, ptr noundef getelementptr inbounds ([12 x %struct.hclge_dbg_item], ptr @tm_qset_items, i32 0, i32 11), i32 noundef %call13.i.11) #11
  %add.ptr.i.11 = getelementptr i8, ptr %add.ptr.i.10, i32 %call13.i.11
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i.11, i32 1
  %22 = ptrtoint ptr %add.ptr.i.11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %add.ptr.i.11, align 1
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %incdec.ptr.i, align 1
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.22, ptr noundef nonnull %content) #11
  %24 = ptrtoint ptr %qset_num to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %qset_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp10119.not = icmp eq i16 %25, 0
  br i1 %cmp10119.not, label %for.body.preheader.cleanup_crit_edge, label %for.body.preheader.for.body12_crit_edge

for.body.preheader.for.body12_crit_edge:          ; preds = %for.body.preheader
  br label %for.body12

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body12:                                       ; preds = %hclge_dbg_fill_content.exit117.for.body12_crit_edge, %for.body.preheader.for.body12_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %hclge_dbg_fill_content.exit117.for.body12_crit_edge ], [ 0, %for.body.preheader.for.body12_crit_edge ]
  %pos.0121 = phi i32 [ %add, %hclge_dbg_fill_content.exit117.for.body12_crit_edge ], [ %call6, %for.body.preheader.for.body12_crit_edge ]
  %26 = trunc i32 %indvars.iv to i16
  %call13 = call i32 @hclge_tm_get_qset_map_pri(ptr noundef %hdev, i16 noundef zeroext %26, ptr noundef nonnull %priority, ptr noundef nonnull %link_vld) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body12.cleanup_crit_edge

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %for.body12
  %call17 = call i32 @hclge_tm_get_qset_sch_mode(ptr noundef %hdev, i16 noundef zeroext %26, ptr noundef nonnull %sch_mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @hclge_tm_get_qset_weight(ptr noundef %hdev, i16 noundef zeroext %26, ptr noundef nonnull %weight) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @hclge_tm_get_qset_shaper(ptr noundef %hdev, i16 noundef zeroext %26, ptr noundef nonnull %shaper_para) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %27 = ptrtoint ptr %sch_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sch_mode, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool30.not = icmp eq i8 %29, 0
  %cond = select i1 %tobool30.not, ptr @.str.24, ptr @.str.23
  %30 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %result, align 4
  %call35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %31, ptr noundef nonnull @.str.25, i32 noundef %indvars.iv)
  %32 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx4.1, align 4
  %34 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priority, align 1
  %conv39 = zext i8 %35 to i32
  %call40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %33, ptr noundef nonnull @.str.29, i32 noundef %conv39)
  %36 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx4.2, align 4
  %38 = ptrtoint ptr %link_vld to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %link_vld, align 1
  %conv44 = zext i8 %39 to i32
  %call45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %37, ptr noundef nonnull @.str.29, i32 noundef %conv44)
  %40 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx4.3, align 4
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %41, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond)
  %42 = ptrtoint ptr %j to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %j, align 1
  %43 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx4.4, align 4
  %45 = ptrtoint ptr %weight to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %weight, align 1
  %conv53 = zext i8 %46 to i32
  %call54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %conv53)
  call fastcc void @hclge_dbg_fill_shaper_content(ptr noundef nonnull %shaper_para, ptr noundef nonnull %result, ptr noundef nonnull %j)
  %47 = call ptr @memset(ptr %content, i32 32, i32 256)
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.body.i105.for.body.i105_crit_edge, %if.end28
  %indvars.iv.i103 = phi i32 [ 0, %if.end28 ], [ %indvars.iv.next.i114, %for.body.i105.for.body.i105_crit_edge ]
  %pos.042.i104 = phi ptr [ %content, %if.end28 ], [ %add.ptr.i113, %for.body.i105.for.body.i105_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %result, i32 %indvars.iv.i103
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %call13.i106 = call i32 @strlen(ptr noundef %49) #15
  %call14.i107 = call ptr @strncpy(ptr noundef %pos.042.i104, ptr noundef %49, i32 noundef %call13.i106) #11
  %arrayidx16.i108 = getelementptr %struct.hclge_dbg_item, ptr @tm_qset_items, i32 %indvars.iv.i103
  %call19.i109 = call i32 @strlen(ptr noundef %arrayidx16.i108) #15
  %interval.i110 = getelementptr %struct.hclge_dbg_item, ptr @tm_qset_items, i32 %indvars.iv.i103, i32 1
  %50 = ptrtoint ptr %interval.i110 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %interval.i110, align 2
  %conv22.i111 = zext i16 %51 to i32
  %add.i112 = add i32 %call19.i109, %conv22.i111
  %add.ptr.i113 = getelementptr i8, ptr %pos.042.i104, i32 %add.i112
  %indvars.iv.next.i114 = add nuw nsw i32 %indvars.iv.i103, 1
  %exitcond.not.i115 = icmp eq i32 %indvars.iv.next.i114, 12
  br i1 %exitcond.not.i115, label %hclge_dbg_fill_content.exit117, label %for.body.i105.for.body.i105_crit_edge

for.body.i105.for.body.i105_crit_edge:            ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i105

hclge_dbg_fill_content.exit117:                   ; preds = %for.body.i105
  %incdec.ptr.i116 = getelementptr i8, ptr %add.ptr.i113, i32 1
  %52 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 10, ptr %add.ptr.i113, align 1
  %53 = ptrtoint ptr %incdec.ptr.i116 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %incdec.ptr.i116, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.0121
  %sub = sub i32 %len, %pos.0121
  %call59 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.22, ptr noundef nonnull %content) #11
  %add = add i32 %call59, %pos.0121
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %54 = ptrtoint ptr %qset_num to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %qset_num, align 2
  %56 = zext i16 %55 to i32
  %cmp10 = icmp ult i32 %indvars.iv.next, %56
  br i1 %cmp10, label %hclge_dbg_fill_content.exit117.for.body12_crit_edge, label %hclge_dbg_fill_content.exit117.cleanup_crit_edge

hclge_dbg_fill_content.exit117.cleanup_crit_edge: ; preds = %hclge_dbg_fill_content.exit117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hclge_dbg_fill_content.exit117.for.body12_crit_edge: ; preds = %hclge_dbg_fill_content.exit117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

cleanup:                                          ; preds = %hclge_dbg_fill_content.exit117.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.body12.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ], [ %call13, %for.body12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ 0, %hclge_dbg_fill_content.exit117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %j) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qset_num) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %content) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %shaper_para) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %weight) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sch_mode) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_vld) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %priority) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %result) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %data_str) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_tm_map(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %qset_mapping.i = alloca [40 x i32], align 4
  %desc.i = alloca %struct.hclge_desc, align 4
  %qset_id = alloca i16, align 2
  %link_vld = alloca i8, align 1
  %pri_id = alloca i8, align 1
  %tc_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qset_id) #11
  %0 = ptrtoint ptr %qset_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %qset_id, align 2, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_vld) #11
  %1 = ptrtoint ptr %link_vld to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link_vld, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pri_id) #11
  %2 = ptrtoint ptr %pri_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pri_id, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tc_id) #11
  %3 = ptrtoint ptr %tc_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %tc_id, align 1, !annotation !528
  %num_tqps = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 16
  %4 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_tqps, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp76.not = icmp eq i16 %5, 0
  br i1 %cmp76.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %7 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %qs_group_id.i = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, ptr %6, i32 0, i32 2
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %arrayidx20.i = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 7
  %arrayidx23.i = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 6
  %arrayidx26.i = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 5
  %arrayidx29.i = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 4
  %arrayidx32.i = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 3
  %arrayidx35.i = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 2
  %arrayidx38.i = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 1
  %arrayidx20.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 15
  %arrayidx23.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 14
  %arrayidx26.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 13
  %arrayidx29.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 12
  %arrayidx32.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 11
  %arrayidx35.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 10
  %arrayidx38.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 9
  %arrayidx40.i.1 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 8
  %arrayidx20.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 23
  %arrayidx23.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 22
  %arrayidx26.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 21
  %arrayidx29.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 20
  %arrayidx32.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 19
  %arrayidx35.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 18
  %arrayidx38.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 17
  %arrayidx40.i.2 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 16
  %arrayidx20.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 31
  %arrayidx23.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 30
  %arrayidx26.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 29
  %arrayidx29.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 28
  %arrayidx32.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 27
  %arrayidx35.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 26
  %arrayidx38.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 25
  %arrayidx40.i.3 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 24
  %arrayidx20.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 39
  %arrayidx23.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 38
  %arrayidx26.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 37
  %arrayidx29.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 36
  %arrayidx32.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 35
  %arrayidx35.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 34
  %arrayidx38.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 33
  %arrayidx40.i.4 = getelementptr inbounds [40 x i32], ptr %qset_mapping.i, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %pos.078 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.1, %for.inc.for.body_crit_edge ]
  %8 = trunc i32 %indvars.iv to i16
  %call = call i32 @hclge_tm_get_q_to_qs_map(ptr noundef %hdev, i16 noundef zeroext %8, ptr noundef nonnull %qset_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %qset_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %qset_id, align 2
  %call3 = call i32 @hclge_tm_get_qset_map_pri(ptr noundef %hdev, i16 noundef zeroext %10, ptr noundef nonnull %pri_id, ptr noundef nonnull %link_vld) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @hclge_tm_get_q_to_tc(ptr noundef %hdev, i16 noundef zeroext %8, ptr noundef nonnull %tc_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.078
  %sub = sub i32 %len, %pos.078
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.30) #11
  %add = add i32 %call11, %pos.078
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %add
  %sub13 = sub i32 %len, %add
  %11 = ptrtoint ptr %qset_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %qset_id, align 2
  %conv15 = zext i16 %12 to i32
  %13 = ptrtoint ptr %pri_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pri_id, align 1
  %conv16 = zext i8 %14 to i32
  %15 = ptrtoint ptr %tc_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tc_id, align 1
  %conv17 = zext i8 %16 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.31, i32 noundef %indvars.iv, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #11
  %add19 = add i32 %call18, %add
  %17 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ae_dev, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flag, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  br i1 %tobool20.not, label %if.end10.for.inc_crit_edge, label %if.end22

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end22:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %tc_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tc_id, align 1
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %add19
  %sub24 = sub i32 %len, %add19
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %qset_mapping.i) #11
  %24 = call ptr @memset(ptr %qset_mapping.i, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %25 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %26 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_tqps, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %27)
  %cmp.i = icmp ult i16 %27, 1025
  %conv4.i = select i1 %cmp.i, i32 32, i32 40
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end22
  %indvars.iv.i = phi i32 [ 0, %if.end22 ], [ %indvars.iv.next.i, %if.end.i.for.body.i_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 2069, i1 noundef zeroext true) #11
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %23, ptr %6, align 4
  %29 = trunc i32 %indvars.iv.i to i8
  %30 = ptrtoint ptr %qs_group_id.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %qs_group_id.i, align 1
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %call.i) #14
  br label %hclge_dbg_dump_tm_bp_qset_map.exit

if.end.i:                                         ; preds = %for.body.i
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %7, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #11
  %arrayidx.i = getelementptr [40 x i32], ptr %qset_mapping.i, i32 0, i32 %indvars.iv.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv4.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %call8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.35) #11
  %add.ptr15.i = getelementptr i8, ptr %add.ptr23, i32 %call8.i
  %sub16.i = sub i32 %sub24, %call8.i
  %37 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx20.i, align 4
  %39 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx23.i, align 4
  %41 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx26.i, align 4
  %43 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx29.i, align 4
  %45 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx32.i, align 4
  %47 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx35.i, align 4
  %49 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx38.i, align 4
  %51 = ptrtoint ptr %qset_mapping.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qset_mapping.i, align 4
  %call41.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.i, i32 noundef %sub16.i, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #11
  %add42.i = add i32 %call41.i, %call8.i
  %add.ptr15.i.1 = getelementptr i8, ptr %add.ptr23, i32 %add42.i
  %sub16.i.1 = sub i32 %sub24, %add42.i
  %53 = ptrtoint ptr %arrayidx20.i.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx20.i.1, align 4
  %55 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx23.i.1, align 4
  %57 = ptrtoint ptr %arrayidx26.i.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx26.i.1, align 4
  %59 = ptrtoint ptr %arrayidx29.i.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx29.i.1, align 4
  %61 = ptrtoint ptr %arrayidx32.i.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx32.i.1, align 4
  %63 = ptrtoint ptr %arrayidx35.i.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx35.i.1, align 4
  %65 = ptrtoint ptr %arrayidx38.i.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx38.i.1, align 4
  %67 = ptrtoint ptr %arrayidx40.i.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx40.i.1, align 4
  %call41.i.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.i.1, i32 noundef %sub16.i.1, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #11
  %add42.i.1 = add i32 %call41.i.1, %add42.i
  %add.ptr15.i.2 = getelementptr i8, ptr %add.ptr23, i32 %add42.i.1
  %sub16.i.2 = sub i32 %sub24, %add42.i.1
  %69 = ptrtoint ptr %arrayidx20.i.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx20.i.2, align 4
  %71 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx23.i.2, align 4
  %73 = ptrtoint ptr %arrayidx26.i.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx26.i.2, align 4
  %75 = ptrtoint ptr %arrayidx29.i.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx29.i.2, align 4
  %77 = ptrtoint ptr %arrayidx32.i.2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx32.i.2, align 4
  %79 = ptrtoint ptr %arrayidx35.i.2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx35.i.2, align 4
  %81 = ptrtoint ptr %arrayidx38.i.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx38.i.2, align 4
  %83 = ptrtoint ptr %arrayidx40.i.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx40.i.2, align 4
  %call41.i.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.i.2, i32 noundef %sub16.i.2, ptr noundef nonnull @.str.36, i32 noundef 512, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84) #11
  %add42.i.2 = add i32 %call41.i.2, %add42.i.1
  %add.ptr15.i.3 = getelementptr i8, ptr %add.ptr23, i32 %add42.i.2
  %sub16.i.3 = sub i32 %sub24, %add42.i.2
  %85 = ptrtoint ptr %arrayidx20.i.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx20.i.3, align 4
  %87 = ptrtoint ptr %arrayidx23.i.3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx23.i.3, align 4
  %89 = ptrtoint ptr %arrayidx26.i.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx26.i.3, align 4
  %91 = ptrtoint ptr %arrayidx29.i.3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx29.i.3, align 4
  %93 = ptrtoint ptr %arrayidx32.i.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx32.i.3, align 4
  %95 = ptrtoint ptr %arrayidx35.i.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx35.i.3, align 4
  %97 = ptrtoint ptr %arrayidx38.i.3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx38.i.3, align 4
  %99 = ptrtoint ptr %arrayidx40.i.3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx40.i.3, align 4
  %call41.i.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.i.3, i32 noundef %sub16.i.3, ptr noundef nonnull @.str.36, i32 noundef 768, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %100) #11
  %add42.i.3 = add i32 %call41.i.3, %add42.i.2
  br i1 %cmp.i, label %for.end.i.hclge_dbg_dump_tm_bp_qset_map.exit_crit_edge, label %for.body14.i.4

for.end.i.hclge_dbg_dump_tm_bp_qset_map.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_dump_tm_bp_qset_map.exit

for.body14.i.4:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15.i.4 = getelementptr i8, ptr %add.ptr23, i32 %add42.i.3
  %sub16.i.4 = sub i32 %sub24, %add42.i.3
  %101 = ptrtoint ptr %arrayidx20.i.4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx20.i.4, align 4
  %103 = ptrtoint ptr %arrayidx23.i.4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx23.i.4, align 4
  %105 = ptrtoint ptr %arrayidx26.i.4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx26.i.4, align 4
  %107 = ptrtoint ptr %arrayidx29.i.4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx29.i.4, align 4
  %109 = ptrtoint ptr %arrayidx32.i.4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx32.i.4, align 4
  %111 = ptrtoint ptr %arrayidx35.i.4 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx35.i.4, align 4
  %113 = ptrtoint ptr %arrayidx38.i.4 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx38.i.4, align 4
  %115 = ptrtoint ptr %arrayidx40.i.4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx40.i.4, align 4
  %call41.i.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.i.4, i32 noundef %sub16.i.4, ptr noundef nonnull @.str.36, i32 noundef 1024, i32 noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %116) #11
  %add42.i.4 = add i32 %call41.i.4, %add42.i.3
  br label %hclge_dbg_dump_tm_bp_qset_map.exit

hclge_dbg_dump_tm_bp_qset_map.exit:               ; preds = %for.body14.i.4, %for.end.i.hclge_dbg_dump_tm_bp_qset_map.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %add42.i.3, %for.end.i.hclge_dbg_dump_tm_bp_qset_map.exit_crit_edge ], [ %add42.i.4, %for.body14.i.4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %qset_mapping.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp26 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp26, label %hclge_dbg_dump_tm_bp_qset_map.exit.cleanup_crit_edge, label %if.end29

hclge_dbg_dump_tm_bp_qset_map.exit.cleanup_crit_edge: ; preds = %hclge_dbg_dump_tm_bp_qset_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %hclge_dbg_dump_tm_bp_qset_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add30 = add i32 %retval.0.i, %add19
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add30
  %sub32 = sub i32 %len, %add30
  %call33 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.32) #11
  %add34 = add i32 %call33, %add30
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %if.end10.for.inc_crit_edge
  %pos.1 = phi i32 [ %add34, %if.end29 ], [ %add19, %if.end10.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %117 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %num_tqps, align 4
  %119 = zext i16 %118 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %119
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %hclge_dbg_dump_tm_bp_qset_map.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %retval.0.i, %hclge_dbg_dump_tm_bp_qset_map.exit.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tc_id) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pri_id) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_vld) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qset_id) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_tm_pg(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %c_shaper_para.i = alloca %struct.hclge_tm_shaper_para, align 4
  %p_shaper_para.i = alloca %struct.hclge_tm_shaper_para, align 4
  %result.i = alloca [18 x ptr], align 4
  %sch_mode.i = alloca i8, align 1
  %weight.i = alloca i8, align 1
  %pri_bit_map.i = alloca i8, align 1
  %j.i = alloca i8, align 1
  %content.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 576) #16
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %c_shaper_para.i) #11
  %1 = call ptr @memset(ptr %c_shaper_para.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p_shaper_para.i) #11
  %2 = call ptr @memset(ptr %p_shaper_para.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %result.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sch_mode.i) #11
  %3 = ptrtoint ptr %sch_mode.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %sch_mode.i, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %weight.i) #11
  %4 = ptrtoint ptr %weight.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %weight.i, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pri_bit_map.i) #11
  %5 = ptrtoint ptr %pri_bit_map.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %pri_bit_map.i, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %j.i) #11
  %6 = ptrtoint ptr %j.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %j.i, align 1, !annotation !528
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %content.i) #11
  %7 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %result.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 32
  %arrayidx.1.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %arrayidx.1.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %call7.i.i.i, i32 64
  %arrayidx.2.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.1.i, ptr %arrayidx.2.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %call7.i.i.i, i32 96
  %arrayidx.3.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.2.i, ptr %arrayidx.3.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %call7.i.i.i, i32 128
  %arrayidx.4.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.3.i, ptr %arrayidx.4.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %call7.i.i.i, i32 160
  %arrayidx.5.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.4.i, ptr %arrayidx.5.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %call7.i.i.i, i32 192
  %arrayidx.6.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.5.i, ptr %arrayidx.6.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %call7.i.i.i, i32 224
  %arrayidx.7.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.6.i, ptr %arrayidx.7.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %call7.i.i.i, i32 256
  %arrayidx.8.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 8
  %15 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.7.i, ptr %arrayidx.8.i, align 4
  %add.ptr.8.i = getelementptr i8, ptr %call7.i.i.i, i32 288
  %arrayidx.9.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 9
  %16 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.8.i, ptr %arrayidx.9.i, align 4
  %add.ptr.9.i = getelementptr i8, ptr %call7.i.i.i, i32 320
  %arrayidx.10.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 10
  %17 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.9.i, ptr %arrayidx.10.i, align 4
  %add.ptr.10.i = getelementptr i8, ptr %call7.i.i.i, i32 352
  %arrayidx.11.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 11
  %18 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.10.i, ptr %arrayidx.11.i, align 4
  %add.ptr.11.i = getelementptr i8, ptr %call7.i.i.i, i32 384
  %arrayidx.12.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 12
  %19 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.11.i, ptr %arrayidx.12.i, align 4
  %add.ptr.12.i = getelementptr i8, ptr %call7.i.i.i, i32 416
  %arrayidx.13.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 13
  %20 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.12.i, ptr %arrayidx.13.i, align 4
  %add.ptr.13.i = getelementptr i8, ptr %call7.i.i.i, i32 448
  %arrayidx.14.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 14
  %21 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.13.i, ptr %arrayidx.14.i, align 4
  %add.ptr.14.i = getelementptr i8, ptr %call7.i.i.i, i32 480
  %arrayidx.15.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.14.i, ptr %arrayidx.15.i, align 4
  %add.ptr.15.i = getelementptr i8, ptr %call7.i.i.i, i32 512
  %arrayidx.16.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 16
  %23 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.15.i, ptr %arrayidx.16.i, align 4
  %add.ptr.16.i = getelementptr i8, ptr %call7.i.i.i, i32 544
  %arrayidx.17.i = getelementptr inbounds [18 x ptr], ptr %result.i, i32 0, i32 17
  %24 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.16.i, ptr %arrayidx.17.i, align 4
  %25 = call ptr @memset(ptr %content.i, i32 32, i32 256)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end
  %indvars.iv.i.i = phi i32 [ 0, %if.end ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pos.042.i.i = phi ptr [ %content.i, %if.end ], [ %add.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.hclge_dbg_item, ptr @tm_pg_items, i32 %indvars.iv.i.i
  %call13.i.i = call i32 @strlen(ptr noundef %arrayidx8.i.i) #15
  %call14.i.i = call ptr @strncpy(ptr noundef %pos.042.i.i, ptr noundef %arrayidx8.i.i, i32 noundef %call13.i.i) #11
  %interval.i.i = getelementptr %struct.hclge_dbg_item, ptr @tm_pg_items, i32 %indvars.iv.i.i, i32 1
  %26 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %interval.i.i, align 2
  %conv22.i.i = zext i16 %27 to i32
  %add.i.i = add i32 %call13.i.i, %conv22.i.i
  %add.ptr.i.i = getelementptr i8, ptr %pos.042.i.i, i32 %add.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 18
  br i1 %exitcond.not.i.i, label %hclge_dbg_fill_content.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

hclge_dbg_fill_content.exit.i:                    ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %add.ptr.i.i, align 1
  %29 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %incdec.ptr.i.i, align 1
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.22, ptr noundef nonnull %content.i) #11
  %num_pg.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %30 = ptrtoint ptr %num_pg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_pg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp7120.not.i = icmp eq i8 %31, 0
  br i1 %cmp7120.not.i, label %hclge_dbg_fill_content.exit.i.__hclge_dbg_dump_tm_pg.exit_crit_edge, label %hclge_dbg_fill_content.exit.i.for.body9.i_crit_edge

hclge_dbg_fill_content.exit.i.for.body9.i_crit_edge: ; preds = %hclge_dbg_fill_content.exit.i
  br label %for.body9.i

hclge_dbg_fill_content.exit.i.__hclge_dbg_dump_tm_pg.exit_crit_edge: ; preds = %hclge_dbg_fill_content.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hclge_dbg_dump_tm_pg.exit

for.body9.i:                                      ; preds = %hclge_dbg_fill_content.exit117.i.for.body9.i_crit_edge, %hclge_dbg_fill_content.exit.i.for.body9.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %hclge_dbg_fill_content.exit117.i.for.body9.i_crit_edge ], [ 0, %hclge_dbg_fill_content.exit.i.for.body9.i_crit_edge ]
  %pos.0122.i = phi i32 [ %add56.i, %hclge_dbg_fill_content.exit117.i.for.body9.i_crit_edge ], [ %call.i, %hclge_dbg_fill_content.exit.i.for.body9.i_crit_edge ]
  %32 = trunc i32 %indvars.iv.i to i8
  %call10.i = call i32 @hclge_tm_get_pg_to_pri_map(ptr noundef %hdev, i8 noundef zeroext %32, ptr noundef nonnull %pri_bit_map.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body9.i.__hclge_dbg_dump_tm_pg.exit_crit_edge

for.body9.i.__hclge_dbg_dump_tm_pg.exit_crit_edge: ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hclge_dbg_dump_tm_pg.exit

if.end.i:                                         ; preds = %for.body9.i
  %call11.i = call i32 @hclge_tm_get_pg_sch_mode(ptr noundef %hdev, i8 noundef zeroext %32, ptr noundef nonnull %sch_mode.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i.__hclge_dbg_dump_tm_pg.exit_crit_edge

if.end.i.__hclge_dbg_dump_tm_pg.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hclge_dbg_dump_tm_pg.exit

if.end14.i:                                       ; preds = %if.end.i
  %call15.i = call i32 @hclge_tm_get_pg_weight(ptr noundef %hdev, i8 noundef zeroext %32, ptr noundef nonnull %weight.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.__hclge_dbg_dump_tm_pg.exit_crit_edge

if.end14.i.__hclge_dbg_dump_tm_pg.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hclge_dbg_dump_tm_pg.exit

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = call i32 @hclge_tm_get_pg_shaper(ptr noundef %hdev, i8 noundef zeroext %32, i32 noundef 2062, ptr noundef nonnull %c_shaper_para.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.__hclge_dbg_dump_tm_pg.exit_crit_edge

if.end18.i.__hclge_dbg_dump_tm_pg.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hclge_dbg_dump_tm_pg.exit

if.end22.i:                                       ; preds = %if.end18.i
  %call23.i = call i32 @hclge_tm_get_pg_shaper(ptr noundef %hdev, i8 noundef zeroext %32, i32 noundef 2063, ptr noundef nonnull %p_shaper_para.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.__hclge_dbg_dump_tm_pg.exit_crit_edge

if.end22.i.__hclge_dbg_dump_tm_pg.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hclge_dbg_dump_tm_pg.exit

if.end26.i:                                       ; preds = %if.end22.i
  %33 = ptrtoint ptr %sch_mode.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sch_mode.i, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool28.not.i = icmp eq i8 %35, 0
  %cond.i = select i1 %tobool28.not.i, ptr @.str.24, ptr @.str.23
  %36 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %result.i, align 4
  %call33.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %37, ptr noundef nonnull @.str.37, i32 noundef %indvars.iv.i) #11
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.1.i, align 4
  %40 = ptrtoint ptr %pri_bit_map.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pri_bit_map.i, align 1
  %conv37.i = zext i8 %41 to i32
  %call38.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %39, ptr noundef nonnull @.str.38, i32 noundef %conv37.i) #11
  %42 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.2.i, align 4
  %call42.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %43, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond.i) #11
  %44 = ptrtoint ptr %j.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %j.i, align 1
  %45 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.3.i, align 4
  %47 = ptrtoint ptr %weight.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %weight.i, align 1
  %conv46.i = zext i8 %48 to i32
  %call47.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %46, ptr noundef nonnull @.str.27, i32 noundef %conv46.i) #11
  call fastcc void @hclge_dbg_fill_shaper_content(ptr noundef nonnull %c_shaper_para.i, ptr noundef nonnull %result.i, ptr noundef nonnull %j.i) #11
  call fastcc void @hclge_dbg_fill_shaper_content(ptr noundef nonnull %p_shaper_para.i, ptr noundef nonnull %result.i, ptr noundef nonnull %j.i) #11
  %49 = call ptr @memset(ptr %content.i, i32 32, i32 256)
  br label %for.body.i105.i

for.body.i105.i:                                  ; preds = %for.body.i105.i.for.body.i105.i_crit_edge, %if.end26.i
  %indvars.iv.i103.i = phi i32 [ 0, %if.end26.i ], [ %indvars.iv.next.i114.i, %for.body.i105.i.for.body.i105.i_crit_edge ]
  %pos.042.i104.i = phi ptr [ %content.i, %if.end26.i ], [ %add.ptr.i113.i, %for.body.i105.i.for.body.i105.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %result.i, i32 %indvars.iv.i103.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %call13.i106.i = call i32 @strlen(ptr noundef %51) #15
  %call14.i107.i = call ptr @strncpy(ptr noundef %pos.042.i104.i, ptr noundef %51, i32 noundef %call13.i106.i) #11
  %arrayidx16.i108.i = getelementptr %struct.hclge_dbg_item, ptr @tm_pg_items, i32 %indvars.iv.i103.i
  %call19.i109.i = call i32 @strlen(ptr noundef %arrayidx16.i108.i) #15
  %interval.i110.i = getelementptr %struct.hclge_dbg_item, ptr @tm_pg_items, i32 %indvars.iv.i103.i, i32 1
  %52 = ptrtoint ptr %interval.i110.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %interval.i110.i, align 2
  %conv22.i111.i = zext i16 %53 to i32
  %add.i112.i = add i32 %call19.i109.i, %conv22.i111.i
  %add.ptr.i113.i = getelementptr i8, ptr %pos.042.i104.i, i32 %add.i112.i
  %indvars.iv.next.i114.i = add nuw nsw i32 %indvars.iv.i103.i, 1
  %exitcond.not.i115.i = icmp eq i32 %indvars.iv.next.i114.i, 18
  br i1 %exitcond.not.i115.i, label %hclge_dbg_fill_content.exit117.i, label %for.body.i105.i.for.body.i105.i_crit_edge

for.body.i105.i.for.body.i105.i_crit_edge:        ; preds = %for.body.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i105.i

hclge_dbg_fill_content.exit117.i:                 ; preds = %for.body.i105.i
  %incdec.ptr.i116.i = getelementptr i8, ptr %add.ptr.i113.i, i32 1
  %54 = ptrtoint ptr %add.ptr.i113.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 10, ptr %add.ptr.i113.i, align 1
  %55 = ptrtoint ptr %incdec.ptr.i116.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %incdec.ptr.i116.i, align 1
  %add.ptr52.i = getelementptr i8, ptr %buf, i32 %pos.0122.i
  %sub53.i = sub i32 %len, %pos.0122.i
  %call55.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52.i, i32 noundef %sub53.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %content.i) #11
  %add56.i = add i32 %call55.i, %pos.0122.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %56 = ptrtoint ptr %num_pg.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_pg.i, align 1
  %58 = zext i8 %57 to i32
  %cmp7.i = icmp ult i32 %indvars.iv.next.i, %58
  br i1 %cmp7.i, label %hclge_dbg_fill_content.exit117.i.for.body9.i_crit_edge, label %hclge_dbg_fill_content.exit117.i.__hclge_dbg_dump_tm_pg.exit_crit_edge

hclge_dbg_fill_content.exit117.i.__hclge_dbg_dump_tm_pg.exit_crit_edge: ; preds = %hclge_dbg_fill_content.exit117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hclge_dbg_dump_tm_pg.exit

hclge_dbg_fill_content.exit117.i.for.body9.i_crit_edge: ; preds = %hclge_dbg_fill_content.exit117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9.i

__hclge_dbg_dump_tm_pg.exit:                      ; preds = %hclge_dbg_fill_content.exit117.i.__hclge_dbg_dump_tm_pg.exit_crit_edge, %if.end22.i.__hclge_dbg_dump_tm_pg.exit_crit_edge, %if.end18.i.__hclge_dbg_dump_tm_pg.exit_crit_edge, %if.end14.i.__hclge_dbg_dump_tm_pg.exit_crit_edge, %if.end.i.__hclge_dbg_dump_tm_pg.exit_crit_edge, %for.body9.i.__hclge_dbg_dump_tm_pg.exit_crit_edge, %hclge_dbg_fill_content.exit.i.__hclge_dbg_dump_tm_pg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %hclge_dbg_fill_content.exit.i.__hclge_dbg_dump_tm_pg.exit_crit_edge ], [ %call10.i, %for.body9.i.__hclge_dbg_dump_tm_pg.exit_crit_edge ], [ %call11.i, %if.end.i.__hclge_dbg_dump_tm_pg.exit_crit_edge ], [ %call15.i, %if.end14.i.__hclge_dbg_dump_tm_pg.exit_crit_edge ], [ %call19.i, %if.end18.i.__hclge_dbg_dump_tm_pg.exit_crit_edge ], [ %call23.i, %if.end22.i.__hclge_dbg_dump_tm_pg.exit_crit_edge ], [ 0, %hclge_dbg_fill_content.exit117.i.__hclge_dbg_dump_tm_pg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %content.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %j.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pri_bit_map.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %weight.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sch_mode.i) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %result.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p_shaper_para.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %c_shaper_para.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %__hclge_dbg_dump_tm_pg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__hclge_dbg_dump_tm_pg.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_tm_port(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %shaper_para = alloca %struct.hclge_tm_shaper_para, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %shaper_para) #11
  %0 = call ptr @memset(ptr %shaper_para, i32 255, i32 12)
  %call = call i32 @hclge_tm_get_port_shaper(ptr noundef %hdev, ptr noundef nonnull %shaper_para) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.39) #11
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call1
  %sub3 = sub i32 %len, %call1
  %ir_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %shaper_para, i32 0, i32 1
  %1 = ptrtoint ptr %ir_b to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ir_b, align 4
  %conv = zext i8 %2 to i32
  %ir_u = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %shaper_para, i32 0, i32 2
  %3 = ptrtoint ptr %ir_u to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ir_u, align 1
  %conv4 = zext i8 %4 to i32
  %ir_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %shaper_para, i32 0, i32 3
  %5 = ptrtoint ptr %ir_s to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ir_s, align 2
  %conv5 = zext i8 %6 to i32
  %bs_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %shaper_para, i32 0, i32 4
  %7 = ptrtoint ptr %bs_b to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bs_b, align 1
  %conv6 = zext i8 %8 to i32
  %bs_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %shaper_para, i32 0, i32 5
  %9 = ptrtoint ptr %bs_s to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bs_s, align 4
  %conv7 = zext i8 %10 to i32
  %flag = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %shaper_para, i32 0, i32 6
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flag, align 1
  %conv8 = zext i8 %12 to i32
  %13 = ptrtoint ptr %shaper_para to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shaper_para, align 4
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %shaper_para) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_tc(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %3 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ae_dev, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flag, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2115, i1 noundef zeroext true) #11
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.44, i32 noundef %call) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tm_info = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %12 = ptrtoint ptr %tm_info to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tm_info, align 8
  %conv = zext i8 %13 to i32
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.46, i32 noundef %conv) #11
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %call9
  %sub11 = sub i32 %len, %call9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %conv12 = zext i8 %15 to i32
  %call13 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.47, i32 noundef %conv12) #11
  %add14 = add i32 %call13, %call9
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %add14
  %sub16 = sub i32 %len, %add14
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.48) #11
  %add18 = add i32 %add14, %call17
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool22.not, ptr @.str.24, ptr @.str.23
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %add18
  %sub24 = sub i32 %len, %add18
  %arrayidx29 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 0
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %19 to i32
  %call31 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef nonnull %cond, i32 noundef %conv30) #11
  %add32 = add i32 %call31, %add18
  %arrayidx.1 = getelementptr inbounds [8 x i8], ptr %0, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not.1 = icmp eq i8 %21, 0
  %cond.1 = select i1 %tobool22.not.1, ptr @.str.24, ptr @.str.23
  %add.ptr23.1 = getelementptr i8, ptr %buf, i32 %add32
  %sub24.1 = sub i32 %len, %add32
  %arrayidx29.1 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %23 to i32
  %call31.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.1, i32 noundef %sub24.1, ptr noundef nonnull @.str.49, i32 noundef 1, ptr noundef nonnull %cond.1, i32 noundef %conv30.1) #11
  %add32.1 = add i32 %call31.1, %add32
  %arrayidx.2 = getelementptr inbounds [8 x i8], ptr %0, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not.2 = icmp eq i8 %25, 0
  %cond.2 = select i1 %tobool22.not.2, ptr @.str.24, ptr @.str.23
  %add.ptr23.2 = getelementptr i8, ptr %buf, i32 %add32.1
  %sub24.2 = sub i32 %len, %add32.1
  %arrayidx29.2 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %27 to i32
  %call31.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.2, i32 noundef %sub24.2, ptr noundef nonnull @.str.49, i32 noundef 2, ptr noundef nonnull %cond.2, i32 noundef %conv30.2) #11
  %add32.2 = add i32 %call31.2, %add32.1
  %arrayidx.3 = getelementptr inbounds [8 x i8], ptr %0, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not.3 = icmp eq i8 %29, 0
  %cond.3 = select i1 %tobool22.not.3, ptr @.str.24, ptr @.str.23
  %add.ptr23.3 = getelementptr i8, ptr %buf, i32 %add32.2
  %sub24.3 = sub i32 %len, %add32.2
  %arrayidx29.3 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %31 to i32
  %call31.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.3, i32 noundef %sub24.3, ptr noundef nonnull @.str.49, i32 noundef 3, ptr noundef nonnull %cond.3, i32 noundef %conv30.3) #11
  %add32.3 = add i32 %call31.3, %add32.2
  %arrayidx.4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not.4 = icmp eq i8 %33, 0
  %cond.4 = select i1 %tobool22.not.4, ptr @.str.24, ptr @.str.23
  %add.ptr23.4 = getelementptr i8, ptr %buf, i32 %add32.3
  %sub24.4 = sub i32 %len, %add32.3
  %arrayidx29.4 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx29.4, align 1
  %conv30.4 = zext i8 %35 to i32
  %call31.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.4, i32 noundef %sub24.4, ptr noundef nonnull @.str.49, i32 noundef 4, ptr noundef nonnull %cond.4, i32 noundef %conv30.4) #11
  %add32.4 = add i32 %call31.4, %add32.3
  %arrayidx.5 = getelementptr inbounds [8 x i8], ptr %0, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool22.not.5 = icmp eq i8 %37, 0
  %cond.5 = select i1 %tobool22.not.5, ptr @.str.24, ptr @.str.23
  %add.ptr23.5 = getelementptr i8, ptr %buf, i32 %add32.4
  %sub24.5 = sub i32 %len, %add32.4
  %arrayidx29.5 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 5
  %38 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx29.5, align 1
  %conv30.5 = zext i8 %39 to i32
  %call31.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.5, i32 noundef %sub24.5, ptr noundef nonnull @.str.49, i32 noundef 5, ptr noundef nonnull %cond.5, i32 noundef %conv30.5) #11
  %add32.5 = add i32 %call31.5, %add32.4
  %arrayidx.6 = getelementptr inbounds [8 x i8], ptr %0, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool22.not.6 = icmp eq i8 %41, 0
  %cond.6 = select i1 %tobool22.not.6, ptr @.str.24, ptr @.str.23
  %add.ptr23.6 = getelementptr i8, ptr %buf, i32 %add32.5
  %sub24.6 = sub i32 %len, %add32.5
  %arrayidx29.6 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 6
  %42 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx29.6, align 1
  %conv30.6 = zext i8 %43 to i32
  %call31.6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.6, i32 noundef %sub24.6, ptr noundef nonnull @.str.49, i32 noundef 6, ptr noundef nonnull %cond.6, i32 noundef %conv30.6) #11
  %add32.6 = add i32 %call31.6, %add32.5
  %arrayidx.7 = getelementptr inbounds [8 x i8], ptr %0, i32 0, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool22.not.7 = icmp eq i8 %45, 0
  %cond.7 = select i1 %tobool22.not.7, ptr @.str.24, ptr @.str.23
  %add.ptr23.7 = getelementptr i8, ptr %buf, i32 %add32.6
  %sub24.7 = sub i32 %len, %add32.6
  %arrayidx29.7 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 4, i32 7
  %46 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx29.7, align 1
  %conv30.7 = zext i8 %47 to i32
  %call31.7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.7, i32 noundef %sub24.7, ptr noundef nonnull @.str.49, i32 noundef 7, ptr noundef nonnull %cond.7, i32 noundef %conv30.7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ %call, %do.end5 ], [ -95, %do.end ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_qos_pause_cfg(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 1795, i1 noundef zeroext true) #11
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %pause_trans_gap = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pause_trans_gap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pause_trans_gap, align 2
  %conv = zext i8 %6 to i32
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.52, i32 noundef %conv) #11
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call1
  %sub3 = sub i32 %len, %call1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %3, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv4 = zext i16 %9 to i32
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.53, i32 noundef %conv4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_qos_pri_map(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 1801, i1 noundef zeroext true) #11
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %3, align 4
  %5 = trunc i40 %bf.load to i32
  %6 = lshr i32 %5, 4
  %conv = and i32 %6, 15
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.56, i32 noundef %conv) #11
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call1
  %sub3 = sub i32 %len, %call1
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.57) #11
  %add5 = add i32 %call4, %call1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4
  %9 = and i8 %8, 15
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %add5
  %sub17 = sub i32 %len, %add5
  %conv19 = zext i8 %9 to i32
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.58, i32 noundef 0, i32 noundef %conv19) #11
  %add21 = add i32 %call20, %add5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 4
  %shr11.1 = lshr i8 %11, 4
  %add.ptr16.1 = getelementptr i8, ptr %buf, i32 %add21
  %sub17.1 = sub i32 %len, %add21
  %conv19.1 = zext i8 %shr11.1 to i32
  %call20.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16.1, i32 noundef %sub17.1, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef %conv19.1) #11
  %add21.1 = add i32 %call20.1, %add21
  %arrayidx.2 = getelementptr inbounds i8, ptr %3, i32 1
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %14 = and i8 %13, 15
  %add.ptr16.2 = getelementptr i8, ptr %buf, i32 %add21.1
  %sub17.2 = sub i32 %len, %add21.1
  %conv19.2 = zext i8 %14 to i32
  %call20.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16.2, i32 noundef %sub17.2, ptr noundef nonnull @.str.58, i32 noundef 2, i32 noundef %conv19.2) #11
  %add21.2 = add i32 %call20.2, %add21.1
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2, align 1
  %shr11.3 = lshr i8 %16, 4
  %add.ptr16.3 = getelementptr i8, ptr %buf, i32 %add21.2
  %sub17.3 = sub i32 %len, %add21.2
  %conv19.3 = zext i8 %shr11.3 to i32
  %call20.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16.3, i32 noundef %sub17.3, ptr noundef nonnull @.str.58, i32 noundef 3, i32 noundef %conv19.3) #11
  %add21.3 = add i32 %call20.3, %add21.2
  %arrayidx.4 = getelementptr inbounds i8, ptr %3, i32 2
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4, align 2
  %19 = and i8 %18, 15
  %add.ptr16.4 = getelementptr i8, ptr %buf, i32 %add21.3
  %sub17.4 = sub i32 %len, %add21.3
  %conv19.4 = zext i8 %19 to i32
  %call20.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16.4, i32 noundef %sub17.4, ptr noundef nonnull @.str.58, i32 noundef 4, i32 noundef %conv19.4) #11
  %add21.4 = add i32 %call20.4, %add21.3
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 2
  %shr11.5 = lshr i8 %21, 4
  %add.ptr16.5 = getelementptr i8, ptr %buf, i32 %add21.4
  %sub17.5 = sub i32 %len, %add21.4
  %conv19.5 = zext i8 %shr11.5 to i32
  %call20.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16.5, i32 noundef %sub17.5, ptr noundef nonnull @.str.58, i32 noundef 5, i32 noundef %conv19.5) #11
  %add21.5 = add i32 %call20.5, %add21.4
  %arrayidx.6 = getelementptr inbounds i8, ptr %3, i32 3
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.6, align 1
  %24 = and i8 %23, 15
  %add.ptr16.6 = getelementptr i8, ptr %buf, i32 %add21.5
  %sub17.6 = sub i32 %len, %add21.5
  %conv19.6 = zext i8 %24 to i32
  %call20.6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16.6, i32 noundef %sub17.6, ptr noundef nonnull @.str.58, i32 noundef 6, i32 noundef %conv19.6) #11
  %add21.6 = add i32 %call20.6, %add21.5
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6, align 1
  %shr11.7 = lshr i8 %26, 4
  %add.ptr16.7 = getelementptr i8, ptr %buf, i32 %add21.6
  %sub17.7 = sub i32 %len, %add21.6
  %conv19.7 = zext i8 %shr11.7 to i32
  %call20.7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16.7, i32 noundef %sub17.7, ptr noundef nonnull @.str.58, i32 noundef 7, i32 noundef %conv19.7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_qos_buf_cfg(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc.i159 = alloca [2 x %struct.hclge_desc], align 4
  %desc.i140 = alloca [2 x %struct.hclge_desc], align 4
  %desc.i130 = alloca %struct.hclge_desc, align 4
  %desc.i118 = alloca %struct.hclge_desc, align 4
  %desc.i95 = alloca %struct.hclge_desc, align 4
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %0 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 2305, i1 noundef zeroext true) #11
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %do.end.i

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %4 = call i16 @llvm.bswap.i16(i16 %3) #11
  %conv.i = zext i16 %4 to i32
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef %conv.i) #11
  %add.ptr.1.i = getelementptr i8, ptr %buf, i32 %call1.i
  %sub.1.i = sub i32 %len, %call1.i
  %arrayidx.1.i = getelementptr inbounds [8 x i16], ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.1.i, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6) #11
  %conv.1.i = zext i16 %7 to i32
  %call1.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1.i, i32 noundef %sub.1.i, ptr noundef nonnull @.str.61, i32 noundef 1, i32 noundef %conv.1.i) #11
  %add.1.i = add i32 %call1.1.i, %call1.i
  %add.ptr.2.i = getelementptr i8, ptr %buf, i32 %add.1.i
  %sub.2.i = sub i32 %len, %add.1.i
  %arrayidx.2.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.2.i, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %9) #11
  %conv.2.i = zext i16 %10 to i32
  %call1.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2.i, i32 noundef %sub.2.i, ptr noundef nonnull @.str.61, i32 noundef 2, i32 noundef %conv.2.i) #11
  %add.2.i = add i32 %call1.2.i, %add.1.i
  %add.ptr.3.i = getelementptr i8, ptr %buf, i32 %add.2.i
  %sub.3.i = sub i32 %len, %add.2.i
  %arrayidx.3.i = getelementptr inbounds [8 x i16], ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.3.i, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12) #11
  %conv.3.i = zext i16 %13 to i32
  %call1.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3.i, i32 noundef %sub.3.i, ptr noundef nonnull @.str.61, i32 noundef 3, i32 noundef %conv.3.i) #11
  %add.3.i = add i32 %call1.3.i, %add.2.i
  %add.ptr.4.i = getelementptr i8, ptr %buf, i32 %add.3.i
  %sub.4.i = sub i32 %len, %add.3.i
  %arrayidx.4.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.4.i, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15) #11
  %conv.4.i = zext i16 %16 to i32
  %call1.4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4.i, i32 noundef %sub.4.i, ptr noundef nonnull @.str.61, i32 noundef 4, i32 noundef %conv.4.i) #11
  %add.4.i = add i32 %call1.4.i, %add.3.i
  %add.ptr.5.i = getelementptr i8, ptr %buf, i32 %add.4.i
  %sub.5.i = sub i32 %len, %add.4.i
  %arrayidx.5.i = getelementptr inbounds [8 x i16], ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.5.i, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #11
  %conv.5.i = zext i16 %19 to i32
  %call1.5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5.i, i32 noundef %sub.5.i, ptr noundef nonnull @.str.61, i32 noundef 5, i32 noundef %conv.5.i) #11
  %add.5.i = add i32 %call1.5.i, %add.4.i
  %add.ptr.6.i = getelementptr i8, ptr %buf, i32 %add.5.i
  %sub.6.i = sub i32 %len, %add.5.i
  %arrayidx.6.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.6.i, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21) #11
  %conv.6.i = zext i16 %22 to i32
  %call1.6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6.i, i32 noundef %sub.6.i, ptr noundef nonnull @.str.61, i32 noundef 6, i32 noundef %conv.6.i) #11
  %add.6.i = add i32 %call1.6.i, %add.5.i
  %add.ptr.7.i = getelementptr i8, ptr %buf, i32 %add.6.i
  %sub.7.i = sub i32 %len, %add.6.i
  %arrayidx.7.i = getelementptr inbounds [8 x i16], ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.7.i, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #11
  %conv.7.i = zext i16 %25 to i32
  %call1.7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7.i, i32 noundef %sub.7.i, ptr noundef nonnull @.str.61, i32 noundef 7, i32 noundef %conv.7.i) #11
  %add.7.i = add i32 %call1.7.i, %add.6.i
  br label %hclge_dbg_dump_tx_buf_cfg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59, i32 noundef %call.i) #14
  br label %hclge_dbg_dump_tx_buf_cfg.exit

hclge_dbg_dump_tx_buf_cfg.exit:                   ; preds = %do.end.i, %for.body.preheader.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %add.7.i, %for.body.preheader.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %hclge_dbg_dump_tx_buf_cfg.exit.cleanup_crit_edge, label %if.end

hclge_dbg_dump_tx_buf_cfg.exit.cleanup_crit_edge: ; preds = %hclge_dbg_dump_tx_buf_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %hclge_dbg_dump_tx_buf_cfg.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i95) #11
  %28 = call ptr @memset(ptr %desc.i95, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i95, i32 noundef 2306, i1 noundef zeroext true) #11
  %call.i97 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i95, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %if.end.i, label %do.end.i100

do.end.i100:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev, align 8
  %dev.i99 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i99, ptr noundef nonnull @.str.62, i32 noundef %call.i97) #14
  br label %hclge_dbg_dump_rx_priv_buf_cfg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub2 = sub i32 %len, %retval.0.i
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %retval.0.i
  %31 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i95, i32 0, i32 4, i32 4
  %32 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i95, i32 0, i32 4
  %call1.i101 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub2, ptr noundef nonnull @.str.32) #11
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1, i32 %call1.i101
  %sub3.i = sub i32 %sub2, %call1.i101
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 4
  %35 = call i16 @llvm.bswap.i16(i16 %34) #11
  %conv.i102 = zext i16 %35 to i32
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef %conv.i102) #11
  %add5.i = add i32 %call4.i, %call1.i101
  %add.ptr2.1.i = getelementptr i8, ptr %add.ptr1, i32 %add5.i
  %sub3.1.i = sub i32 %sub2, %add5.i
  %arrayidx.1.i103 = getelementptr inbounds [8 x i16], ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i103 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.1.i103, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37) #11
  %conv.1.i104 = zext i16 %38 to i32
  %call4.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.1.i, i32 noundef %sub3.1.i, ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef %conv.1.i104) #11
  %add5.1.i = add i32 %call4.1.i, %add5.i
  %add.ptr2.2.i = getelementptr i8, ptr %add.ptr1, i32 %add5.1.i
  %sub3.2.i = sub i32 %sub2, %add5.1.i
  %arrayidx.2.i105 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i95, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %arrayidx.2.i105 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.2.i105, align 4
  %41 = call i16 @llvm.bswap.i16(i16 %40) #11
  %conv.2.i106 = zext i16 %41 to i32
  %call4.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.2.i, i32 noundef %sub3.2.i, ptr noundef nonnull @.str.64, i32 noundef 2, i32 noundef %conv.2.i106) #11
  %add5.2.i = add i32 %call4.2.i, %add5.1.i
  %add.ptr2.3.i = getelementptr i8, ptr %add.ptr1, i32 %add5.2.i
  %sub3.3.i = sub i32 %sub2, %add5.2.i
  %arrayidx.3.i107 = getelementptr inbounds [8 x i16], ptr %32, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i107 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.3.i107, align 2
  %44 = call i16 @llvm.bswap.i16(i16 %43) #11
  %conv.3.i108 = zext i16 %44 to i32
  %call4.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.3.i, i32 noundef %sub3.3.i, ptr noundef nonnull @.str.64, i32 noundef 3, i32 noundef %conv.3.i108) #11
  %add5.3.i = add i32 %call4.3.i, %add5.2.i
  %add.ptr2.4.i = getelementptr i8, ptr %add.ptr1, i32 %add5.3.i
  %sub3.4.i = sub i32 %sub2, %add5.3.i
  %arrayidx.4.i109 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i95, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %arrayidx.4.i109 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.4.i109, align 4
  %47 = call i16 @llvm.bswap.i16(i16 %46) #11
  %conv.4.i110 = zext i16 %47 to i32
  %call4.4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.4.i, i32 noundef %sub3.4.i, ptr noundef nonnull @.str.64, i32 noundef 4, i32 noundef %conv.4.i110) #11
  %add5.4.i = add i32 %call4.4.i, %add5.3.i
  %add.ptr2.5.i = getelementptr i8, ptr %add.ptr1, i32 %add5.4.i
  %sub3.5.i = sub i32 %sub2, %add5.4.i
  %arrayidx.5.i111 = getelementptr inbounds [8 x i16], ptr %32, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx.5.i111 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.5.i111, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #11
  %conv.5.i112 = zext i16 %50 to i32
  %call4.5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.5.i, i32 noundef %sub3.5.i, ptr noundef nonnull @.str.64, i32 noundef 5, i32 noundef %conv.5.i112) #11
  %add5.5.i = add i32 %call4.5.i, %add5.4.i
  %add.ptr2.6.i = getelementptr i8, ptr %add.ptr1, i32 %add5.5.i
  %sub3.6.i = sub i32 %sub2, %add5.5.i
  %arrayidx.6.i113 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i95, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %arrayidx.6.i113 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.6.i113, align 4
  %53 = call i16 @llvm.bswap.i16(i16 %52) #11
  %conv.6.i114 = zext i16 %53 to i32
  %call4.6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.6.i, i32 noundef %sub3.6.i, ptr noundef nonnull @.str.64, i32 noundef 6, i32 noundef %conv.6.i114) #11
  %add5.6.i = add i32 %call4.6.i, %add5.5.i
  %add.ptr2.7.i = getelementptr i8, ptr %add.ptr1, i32 %add5.6.i
  %sub3.7.i = sub i32 %sub2, %add5.6.i
  %arrayidx.7.i115 = getelementptr inbounds [8 x i16], ptr %32, i32 0, i32 7
  %54 = ptrtoint ptr %arrayidx.7.i115 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.7.i115, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55) #11
  %conv.7.i116 = zext i16 %56 to i32
  %call4.7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.7.i, i32 noundef %sub3.7.i, ptr noundef nonnull @.str.64, i32 noundef 7, i32 noundef %conv.7.i116) #11
  %add5.7.i = add i32 %call4.7.i, %add5.6.i
  %add.ptr6.i = getelementptr i8, ptr %add.ptr1, i32 %add5.7.i
  %sub7.i = sub i32 %sub2, %add5.7.i
  %57 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %31, align 4
  %59 = call i16 @llvm.bswap.i16(i16 %58) #11
  %conv8.i = zext i16 %59 to i32
  %call9.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.i, i32 noundef %sub7.i, ptr noundef nonnull @.str.65, i32 noundef %conv8.i) #11
  %add10.i = add i32 %call9.i, %add5.7.i
  br label %hclge_dbg_dump_rx_priv_buf_cfg.exit

hclge_dbg_dump_rx_priv_buf_cfg.exit:              ; preds = %if.end.i, %do.end.i100
  %retval.0.i117 = phi i32 [ %call.i97, %do.end.i100 ], [ %add10.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i117)
  %cmp4 = icmp slt i32 %retval.0.i117, 0
  br i1 %cmp4, label %hclge_dbg_dump_rx_priv_buf_cfg.exit.cleanup_crit_edge, label %if.end6

hclge_dbg_dump_rx_priv_buf_cfg.exit.cleanup_crit_edge: ; preds = %hclge_dbg_dump_rx_priv_buf_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %hclge_dbg_dump_rx_priv_buf_cfg.exit
  %add7 = add nuw i32 %retval.0.i117, %retval.0.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i118) #11
  %60 = call ptr @memset(ptr %desc.i118, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i118, i32 noundef 2309, i1 noundef zeroext true) #11
  %call.i120 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i118, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %if.end.i128, label %do.end.i123

do.end.i123:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hdev, align 8
  %dev.i122 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i122, ptr noundef nonnull @.str.66, i32 noundef %call.i120) #14
  br label %hclge_dbg_dump_rx_common_wl_cfg.exit

if.end.i128:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %sub9 = sub i32 %len, %add7
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %add7
  %63 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i118, i32 0, i32 4
  %call1.i124 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.32) #11
  %add.ptr2.i125 = getelementptr i8, ptr %add.ptr8, i32 %call1.i124
  %sub3.i126 = sub i32 %sub9, %call1.i124
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %63, align 4
  %66 = call i16 @llvm.bswap.i16(i16 %65) #11
  %conv.i127 = zext i16 %66 to i32
  %low.i = getelementptr inbounds %struct.hclge_priv_wl, ptr %63, i32 0, i32 1
  %67 = ptrtoint ptr %low.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %low.i, align 2
  %69 = call i16 @llvm.bswap.i16(i16 %68) #11
  %conv5.i = zext i16 %69 to i32
  %call6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i125, i32 noundef %sub3.i126, ptr noundef nonnull @.str.68, i32 noundef %conv.i127, i32 noundef %conv5.i) #11
  %add7.i = add i32 %call6.i, %call1.i124
  br label %hclge_dbg_dump_rx_common_wl_cfg.exit

hclge_dbg_dump_rx_common_wl_cfg.exit:             ; preds = %if.end.i128, %do.end.i123
  %retval.0.i129 = phi i32 [ %call.i120, %do.end.i123 ], [ %add7.i, %if.end.i128 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129)
  %cmp11 = icmp slt i32 %retval.0.i129, 0
  br i1 %cmp11, label %hclge_dbg_dump_rx_common_wl_cfg.exit.cleanup_crit_edge, label %if.end13

hclge_dbg_dump_rx_common_wl_cfg.exit.cleanup_crit_edge: ; preds = %hclge_dbg_dump_rx_common_wl_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %hclge_dbg_dump_rx_common_wl_cfg.exit
  %add14 = add i32 %retval.0.i129, %add7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i130) #11
  %70 = call ptr @memset(ptr %desc.i130, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i130, i32 noundef 2310, i1 noundef zeroext true) #11
  %call.i132 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i130, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.end.i138, label %do.end.i135

do.end.i135:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hdev, align 8
  %dev.i134 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i134, ptr noundef nonnull @.str.69, i32 noundef %call.i132) #14
  br label %hclge_dbg_dump_rx_global_pkt_cnt.exit

if.end.i138:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %sub16 = sub i32 %len, %add14
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %add14
  %73 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i130, i32 0, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 4
  %76 = call i16 @llvm.bswap.i16(i16 %75) #11
  %conv.i136 = zext i16 %76 to i32
  %low.i137 = getelementptr inbounds %struct.hclge_priv_wl, ptr %73, i32 0, i32 1
  %77 = ptrtoint ptr %low.i137 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %low.i137, align 2
  %79 = call i16 @llvm.bswap.i16(i16 %78) #11
  %conv2.i = zext i16 %79 to i32
  %call3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.71, i32 noundef %conv.i136, i32 noundef %conv2.i) #11
  br label %hclge_dbg_dump_rx_global_pkt_cnt.exit

hclge_dbg_dump_rx_global_pkt_cnt.exit:            ; preds = %if.end.i138, %do.end.i135
  %retval.0.i139 = phi i32 [ %call.i132, %do.end.i135 ], [ %call3.i, %if.end.i138 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i130) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i139)
  %cmp18 = icmp slt i32 %retval.0.i139, 0
  br i1 %cmp18, label %hclge_dbg_dump_rx_global_pkt_cnt.exit.cleanup_crit_edge, label %if.end20

hclge_dbg_dump_rx_global_pkt_cnt.exit.cleanup_crit_edge: ; preds = %hclge_dbg_dump_rx_global_pkt_cnt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %hclge_dbg_dump_rx_global_pkt_cnt.exit
  %add21 = add i32 %retval.0.i139, %add14
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %add21
  %sub23 = sub i32 %len, %add21
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.32) #11
  %add25 = add i32 %call24, %add21
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %80 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ae_dev, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flag, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not = icmp eq i32 %84, 0
  br i1 %tobool.not, label %if.end20.cleanup_crit_edge, label %if.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i140) #11
  %85 = call ptr @memset(ptr %desc.i140, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i140, i32 noundef 2307, i1 noundef zeroext true) #11
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i140, i32 0, i32 1
  %86 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %flag.i, align 2
  %88 = or i16 %87, 1024
  store i16 %88, ptr %flag.i, align 2
  %arrayidx3.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i140, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx3.i, i32 noundef 2307, i1 noundef zeroext true) #11
  %call.i142 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i140, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.end.i157, label %do.end.i145

do.end.i145:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hdev, align 8
  %dev.i144 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i144, ptr noundef nonnull @.str.72, i32 noundef %call.i142) #14
  br label %hclge_dbg_dump_rx_priv_wl_buf_cfg.exit

if.end.i157:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %sub29 = sub i32 %len, %add25
  %add.ptr28 = getelementptr i8, ptr %buf, i32 %add25
  %data.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i140, i32 0, i32 4
  %91 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %data.i, align 4
  %93 = call i16 @llvm.bswap.i16(i16 %92) #11
  %conv8.i146 = zext i16 %93 to i32
  %low.i147 = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %low.i147 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %low.i147, align 2
  %96 = call i16 @llvm.bswap.i16(i16 %95) #11
  %conv11.i = zext i16 %96 to i32
  %call12.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef %conv8.i146, i32 noundef %conv11.i) #11
  %add.ptr.1.i148 = getelementptr i8, ptr %add.ptr28, i32 %call12.i
  %sub.1.i149 = sub i32 %sub29, %call12.i
  %arrayidx7.1.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i140, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx7.1.i, align 4
  %99 = call i16 @llvm.bswap.i16(i16 %98) #11
  %conv8.1.i = zext i16 %99 to i32
  %low.1.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %low.1.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %low.1.i, align 2
  %102 = call i16 @llvm.bswap.i16(i16 %101) #11
  %conv11.1.i = zext i16 %102 to i32
  %call12.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1.i148, i32 noundef %sub.1.i149, ptr noundef nonnull @.str.74, i32 noundef 1, i32 noundef %conv8.1.i, i32 noundef %conv11.1.i) #11
  %add.1.i150 = add i32 %call12.1.i, %call12.i
  %add.ptr.2.i151 = getelementptr i8, ptr %add.ptr28, i32 %add.1.i150
  %sub.2.i152 = sub i32 %sub29, %add.1.i150
  %arrayidx7.2.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i140, i32 0, i32 4, i32 2
  %103 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx7.2.i, align 4
  %105 = call i16 @llvm.bswap.i16(i16 %104) #11
  %conv8.2.i = zext i16 %105 to i32
  %low.2.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %low.2.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %low.2.i, align 2
  %108 = call i16 @llvm.bswap.i16(i16 %107) #11
  %conv11.2.i = zext i16 %108 to i32
  %call12.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2.i151, i32 noundef %sub.2.i152, ptr noundef nonnull @.str.74, i32 noundef 2, i32 noundef %conv8.2.i, i32 noundef %conv11.2.i) #11
  %add.2.i153 = add i32 %call12.2.i, %add.1.i150
  %add.ptr.3.i154 = getelementptr i8, ptr %add.ptr28, i32 %add.2.i153
  %sub.3.i155 = sub i32 %sub29, %add.2.i153
  %arrayidx7.3.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i140, i32 0, i32 4, i32 3
  %109 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx7.3.i, align 4
  %111 = call i16 @llvm.bswap.i16(i16 %110) #11
  %conv8.3.i = zext i16 %111 to i32
  %low.3.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %low.3.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %low.3.i, align 2
  %114 = call i16 @llvm.bswap.i16(i16 %113) #11
  %conv11.3.i = zext i16 %114 to i32
  %call12.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3.i154, i32 noundef %sub.3.i155, ptr noundef nonnull @.str.74, i32 noundef 3, i32 noundef %conv8.3.i, i32 noundef %conv11.3.i) #11
  %add.3.i156 = add i32 %call12.3.i, %add.2.i153
  %data14.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i140, i32 0, i32 1, i32 4
  %add.ptr20.i = getelementptr i8, ptr %add.ptr28, i32 %add.3.i156
  %sub21.i = sub i32 %sub29, %add.3.i156
  %115 = ptrtoint ptr %data14.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %data14.i, align 4
  %117 = call i16 @llvm.bswap.i16(i16 %116) #11
  %conv26.i = zext i16 %117 to i32
  %low29.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data14.i, i32 0, i32 0, i32 1
  %118 = ptrtoint ptr %low29.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %low29.i, align 2
  %120 = call i16 @llvm.bswap.i16(i16 %119) #11
  %conv30.i = zext i16 %120 to i32
  %call31.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.i, i32 noundef %sub21.i, ptr noundef nonnull @.str.74, i32 noundef 4, i32 noundef %conv26.i, i32 noundef %conv30.i) #11
  %add32.i = add i32 %call31.i, %add.3.i156
  %add.ptr20.1.i = getelementptr i8, ptr %add.ptr28, i32 %add32.i
  %sub21.1.i = sub i32 %sub29, %add32.i
  %arrayidx24.1.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i140, i32 0, i32 1, i32 4, i32 1
  %121 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx24.1.i, align 4
  %123 = call i16 @llvm.bswap.i16(i16 %122) #11
  %conv26.1.i = zext i16 %123 to i32
  %low29.1.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data14.i, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %low29.1.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %low29.1.i, align 2
  %126 = call i16 @llvm.bswap.i16(i16 %125) #11
  %conv30.1.i = zext i16 %126 to i32
  %call31.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.1.i, i32 noundef %sub21.1.i, ptr noundef nonnull @.str.74, i32 noundef 5, i32 noundef %conv26.1.i, i32 noundef %conv30.1.i) #11
  %add32.1.i = add i32 %call31.1.i, %add32.i
  %add.ptr20.2.i = getelementptr i8, ptr %add.ptr28, i32 %add32.1.i
  %sub21.2.i = sub i32 %sub29, %add32.1.i
  %arrayidx24.2.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i140, i32 0, i32 1, i32 4, i32 2
  %127 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx24.2.i, align 4
  %129 = call i16 @llvm.bswap.i16(i16 %128) #11
  %conv26.2.i = zext i16 %129 to i32
  %low29.2.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data14.i, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %low29.2.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %low29.2.i, align 2
  %132 = call i16 @llvm.bswap.i16(i16 %131) #11
  %conv30.2.i = zext i16 %132 to i32
  %call31.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.2.i, i32 noundef %sub21.2.i, ptr noundef nonnull @.str.74, i32 noundef 6, i32 noundef %conv26.2.i, i32 noundef %conv30.2.i) #11
  %add32.2.i = add i32 %call31.2.i, %add32.1.i
  %add.ptr20.3.i = getelementptr i8, ptr %add.ptr28, i32 %add32.2.i
  %sub21.3.i = sub i32 %sub29, %add32.2.i
  %arrayidx24.3.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i140, i32 0, i32 1, i32 4, i32 3
  %133 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx24.3.i, align 4
  %135 = call i16 @llvm.bswap.i16(i16 %134) #11
  %conv26.3.i = zext i16 %135 to i32
  %low29.3.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data14.i, i32 0, i32 3, i32 1
  %136 = ptrtoint ptr %low29.3.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %low29.3.i, align 2
  %138 = call i16 @llvm.bswap.i16(i16 %137) #11
  %conv30.3.i = zext i16 %138 to i32
  %call31.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.3.i, i32 noundef %sub21.3.i, ptr noundef nonnull @.str.74, i32 noundef 7, i32 noundef %conv26.3.i, i32 noundef %conv30.3.i) #11
  %add32.3.i = add i32 %call31.3.i, %add32.2.i
  br label %hclge_dbg_dump_rx_priv_wl_buf_cfg.exit

hclge_dbg_dump_rx_priv_wl_buf_cfg.exit:           ; preds = %if.end.i157, %do.end.i145
  %retval.0.i158 = phi i32 [ %call.i142, %do.end.i145 ], [ %add32.3.i, %if.end.i157 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i140) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i158)
  %cmp31 = icmp slt i32 %retval.0.i158, 0
  br i1 %cmp31, label %hclge_dbg_dump_rx_priv_wl_buf_cfg.exit.cleanup_crit_edge, label %if.end33

hclge_dbg_dump_rx_priv_wl_buf_cfg.exit.cleanup_crit_edge: ; preds = %hclge_dbg_dump_rx_priv_wl_buf_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %hclge_dbg_dump_rx_priv_wl_buf_cfg.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i159) #11
  %139 = call ptr @memset(ptr %desc.i159, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i159, i32 noundef 2308, i1 noundef zeroext true) #11
  %flag.i160 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i159, i32 0, i32 1
  %140 = ptrtoint ptr %flag.i160 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %flag.i160, align 2
  %142 = or i16 %141, 1024
  store i16 %142, ptr %flag.i160, align 2
  %arrayidx3.i161 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i159, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx3.i161, i32 noundef 2308, i1 noundef zeroext true) #11
  %call.i163 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i159, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool.not.i164 = icmp eq i32 %call.i163, 0
  br i1 %tobool.not.i164, label %if.end.i181, label %do.end.i166

do.end.i166:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hdev, align 8
  %dev.i165 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i165, ptr noundef nonnull @.str.75, i32 noundef %call.i163) #14
  br label %hclge_dbg_dump_rx_common_threshold_cfg.exit

if.end.i181:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %add34 = add i32 %retval.0.i158, %add25
  %sub36 = sub i32 %len, %add34
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %add34
  %call4.i167 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.32) #11
  %data.i168 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i159, i32 0, i32 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr35, i32 %call4.i167
  %sub9.i = sub i32 %sub36, %call4.i167
  %145 = ptrtoint ptr %data.i168 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %data.i168, align 4
  %147 = call i16 @llvm.bswap.i16(i16 %146) #11
  %conv11.i169 = zext i16 %147 to i32
  %low.i170 = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i168, i32 0, i32 0, i32 1
  %148 = ptrtoint ptr %low.i170 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %low.i170, align 2
  %150 = call i16 @llvm.bswap.i16(i16 %149) #11
  %conv14.i = zext i16 %150 to i32
  %call15.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.i, i32 noundef %sub9.i, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef %conv11.i169, i32 noundef %conv14.i) #11
  %add16.i = add i32 %call15.i, %call4.i167
  %add.ptr8.1.i = getelementptr i8, ptr %add.ptr35, i32 %add16.i
  %sub9.1.i = sub i32 %sub36, %add16.i
  %arrayidx10.1.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i159, i32 0, i32 4, i32 1
  %151 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %arrayidx10.1.i, align 4
  %153 = call i16 @llvm.bswap.i16(i16 %152) #11
  %conv11.1.i171 = zext i16 %153 to i32
  %low.1.i172 = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i168, i32 0, i32 1, i32 1
  %154 = ptrtoint ptr %low.1.i172 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %low.1.i172, align 2
  %156 = call i16 @llvm.bswap.i16(i16 %155) #11
  %conv14.1.i = zext i16 %156 to i32
  %call15.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.1.i, i32 noundef %sub9.1.i, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef %conv11.1.i171, i32 noundef %conv14.1.i) #11
  %add16.1.i = add i32 %call15.1.i, %add16.i
  %add.ptr8.2.i = getelementptr i8, ptr %add.ptr35, i32 %add16.1.i
  %sub9.2.i = sub i32 %sub36, %add16.1.i
  %arrayidx10.2.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i159, i32 0, i32 4, i32 2
  %157 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %arrayidx10.2.i, align 4
  %159 = call i16 @llvm.bswap.i16(i16 %158) #11
  %conv11.2.i173 = zext i16 %159 to i32
  %low.2.i174 = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i168, i32 0, i32 2, i32 1
  %160 = ptrtoint ptr %low.2.i174 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %low.2.i174, align 2
  %162 = call i16 @llvm.bswap.i16(i16 %161) #11
  %conv14.2.i = zext i16 %162 to i32
  %call15.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.2.i, i32 noundef %sub9.2.i, ptr noundef nonnull @.str.77, i32 noundef 2, i32 noundef %conv11.2.i173, i32 noundef %conv14.2.i) #11
  %add16.2.i = add i32 %call15.2.i, %add16.1.i
  %add.ptr8.3.i = getelementptr i8, ptr %add.ptr35, i32 %add16.2.i
  %sub9.3.i = sub i32 %sub36, %add16.2.i
  %arrayidx10.3.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i159, i32 0, i32 4, i32 3
  %163 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx10.3.i, align 4
  %165 = call i16 @llvm.bswap.i16(i16 %164) #11
  %conv11.3.i175 = zext i16 %165 to i32
  %low.3.i176 = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data.i168, i32 0, i32 3, i32 1
  %166 = ptrtoint ptr %low.3.i176 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %low.3.i176, align 2
  %168 = call i16 @llvm.bswap.i16(i16 %167) #11
  %conv14.3.i = zext i16 %168 to i32
  %call15.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.3.i, i32 noundef %sub9.3.i, ptr noundef nonnull @.str.77, i32 noundef 3, i32 noundef %conv11.3.i175, i32 noundef %conv14.3.i) #11
  %add16.3.i = add i32 %call15.3.i, %add16.2.i
  %data18.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i159, i32 0, i32 1, i32 4
  %add.ptr24.i = getelementptr i8, ptr %add.ptr35, i32 %add16.3.i
  %sub25.i = sub i32 %sub36, %add16.3.i
  %169 = ptrtoint ptr %data18.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %data18.i, align 4
  %171 = call i16 @llvm.bswap.i16(i16 %170) #11
  %conv30.i177 = zext i16 %171 to i32
  %low33.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data18.i, i32 0, i32 0, i32 1
  %172 = ptrtoint ptr %low33.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %low33.i, align 2
  %174 = call i16 @llvm.bswap.i16(i16 %173) #11
  %conv34.i = zext i16 %174 to i32
  %call35.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24.i, i32 noundef %sub25.i, ptr noundef nonnull @.str.77, i32 noundef 4, i32 noundef %conv30.i177, i32 noundef %conv34.i) #11
  %add36.i = add i32 %call35.i, %add16.3.i
  %add.ptr24.1.i = getelementptr i8, ptr %add.ptr35, i32 %add36.i
  %sub25.1.i = sub i32 %sub36, %add36.i
  %arrayidx28.1.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i159, i32 0, i32 1, i32 4, i32 1
  %175 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx28.1.i, align 4
  %177 = call i16 @llvm.bswap.i16(i16 %176) #11
  %conv30.1.i178 = zext i16 %177 to i32
  %low33.1.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data18.i, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %low33.1.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %low33.1.i, align 2
  %180 = call i16 @llvm.bswap.i16(i16 %179) #11
  %conv34.1.i = zext i16 %180 to i32
  %call35.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24.1.i, i32 noundef %sub25.1.i, ptr noundef nonnull @.str.77, i32 noundef 5, i32 noundef %conv30.1.i178, i32 noundef %conv34.1.i) #11
  %add36.1.i = add i32 %call35.1.i, %add36.i
  %add.ptr24.2.i = getelementptr i8, ptr %add.ptr35, i32 %add36.1.i
  %sub25.2.i = sub i32 %sub36, %add36.1.i
  %arrayidx28.2.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i159, i32 0, i32 1, i32 4, i32 2
  %181 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %arrayidx28.2.i, align 4
  %183 = call i16 @llvm.bswap.i16(i16 %182) #11
  %conv30.2.i179 = zext i16 %183 to i32
  %low33.2.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data18.i, i32 0, i32 2, i32 1
  %184 = ptrtoint ptr %low33.2.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %low33.2.i, align 2
  %186 = call i16 @llvm.bswap.i16(i16 %185) #11
  %conv34.2.i = zext i16 %186 to i32
  %call35.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24.2.i, i32 noundef %sub25.2.i, ptr noundef nonnull @.str.77, i32 noundef 6, i32 noundef %conv30.2.i179, i32 noundef %conv34.2.i) #11
  %add36.2.i = add i32 %call35.2.i, %add36.1.i
  %add.ptr24.3.i = getelementptr i8, ptr %add.ptr35, i32 %add36.2.i
  %sub25.3.i = sub i32 %sub36, %add36.2.i
  %arrayidx28.3.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i159, i32 0, i32 1, i32 4, i32 3
  %187 = ptrtoint ptr %arrayidx28.3.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx28.3.i, align 4
  %189 = call i16 @llvm.bswap.i16(i16 %188) #11
  %conv30.3.i180 = zext i16 %189 to i32
  %low33.3.i = getelementptr inbounds [4 x %struct.hclge_priv_wl], ptr %data18.i, i32 0, i32 3, i32 1
  %190 = ptrtoint ptr %low33.3.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %low33.3.i, align 2
  %192 = call i16 @llvm.bswap.i16(i16 %191) #11
  %conv34.3.i = zext i16 %192 to i32
  %call35.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24.3.i, i32 noundef %sub25.3.i, ptr noundef nonnull @.str.77, i32 noundef 7, i32 noundef %conv30.3.i180, i32 noundef %conv34.3.i) #11
  %add36.3.i = add i32 %call35.3.i, %add36.2.i
  br label %hclge_dbg_dump_rx_common_threshold_cfg.exit

hclge_dbg_dump_rx_common_threshold_cfg.exit:      ; preds = %if.end.i181, %do.end.i166
  %retval.0.i182 = phi i32 [ %call.i163, %do.end.i166 ], [ %add36.3.i, %if.end.i181 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i159) #11
  %193 = call i32 @llvm.smin.i32(i32 %retval.0.i182, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %hclge_dbg_dump_rx_common_threshold_cfg.exit, %hclge_dbg_dump_rx_priv_wl_buf_cfg.exit.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %hclge_dbg_dump_rx_global_pkt_cnt.exit.cleanup_crit_edge, %hclge_dbg_dump_rx_common_wl_cfg.exit.cleanup_crit_edge, %hclge_dbg_dump_rx_priv_buf_cfg.exit.cleanup_crit_edge, %hclge_dbg_dump_tx_buf_cfg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %hclge_dbg_dump_tx_buf_cfg.exit.cleanup_crit_edge ], [ %retval.0.i117, %hclge_dbg_dump_rx_priv_buf_cfg.exit.cleanup_crit_edge ], [ %retval.0.i129, %hclge_dbg_dump_rx_common_wl_cfg.exit.cleanup_crit_edge ], [ %retval.0.i139, %hclge_dbg_dump_rx_global_pkt_cnt.exit.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %retval.0.i158, %hclge_dbg_dump_rx_priv_wl_buf_cfg.exit.cleanup_crit_edge ], [ %193, %hclge_dbg_dump_rx_common_threshold_cfg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_mac_uc(ptr nocapture noundef readonly %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hclge_dbg_dump_mac_list(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_mac_mc(ptr nocapture noundef readonly %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hclge_dbg_dump_mac_list(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_mng_table(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 4
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 5
  %5 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.88) #11
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %call
  %sub2 = sub i32 %len, %call
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub2, ptr noundef nonnull @.str.89) #11
  %add4 = add i32 %call3, %call
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %add4
  %sub6 = sub i32 %len, %add4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.90) #11
  %add8 = add i32 %add4, %call7
  %index = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, ptr %0, i32 0, i32 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %resp_code = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, ptr %0, i32 0, i32 1
  %vlan_tag = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, ptr %0, i32 0, i32 2
  %i_port_direction = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, ptr %0, i32 0, i32 10
  %egress_port = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, ptr %0, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0129 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %pos.0128 = phi i32 [ %add8, %entry ], [ %pos.1, %for.inc.for.body_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 8453, i1 noundef zeroext true) #11
  %conv = trunc i32 %i.0129 to i16
  %6 = call i16 @llvm.bswap.i16(i16 %conv)
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %index, align 2
  %call9 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %call9) #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %resp_code to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %resp_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.end.for.inc_crit_edge, label %if.end12

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %pos.0128
  %sub14 = sub i32 %len, %pos.0128
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %conv16 = zext i16 %14 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.93, i32 noundef %conv16, ptr noundef %1) #11
  %add18 = add i32 %call17, %pos.0128
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %add18
  %sub20 = sub i32 %len, %add18
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 4
  %conv21 = zext i8 %16 to i32
  %and = lshr i32 %conv21, 1
  %and.lobit = and i32 %and, 1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %2, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv24 = zext i16 %19 to i32
  %and27 = lshr i32 %conv21, 2
  %and27.lobit = and i32 %and27, 1
  %20 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vlan_tag, align 2
  %22 = and i16 %21, -241
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %and34 = zext i16 %23 to i32
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.94, i32 noundef %and.lobit, i32 noundef %conv24, i32 noundef %and27.lobit, i32 noundef %and34) #11
  %add36 = add i32 %call35, %add18
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %add36
  %sub38 = sub i32 %len, %add36
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %0, align 4
  %26 = and i8 %25, 1
  %27 = zext i8 %26 to i32
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 4
  %conv47 = zext i8 %29 to i32
  %30 = ptrtoint ptr %i_port_direction to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i_port_direction, align 1
  %conv48 = zext i8 %31 to i32
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.95, i32 noundef %27, i32 noundef %conv47, i32 noundef %conv48) #11
  %add50 = add i32 %call49, %add36
  %32 = ptrtoint ptr %egress_port to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %egress_port, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %conv51 = zext i16 %34 to i32
  %add.ptr52 = getelementptr i8, ptr %buf, i32 %add50
  %sub53 = sub i32 %len, %add50
  %and54 = lshr i32 %conv51, 11
  %and54.lobit = and i32 %and54, 1
  %and60 = and i32 %conv51, 7
  %shr = lshr i32 %conv51, 3
  %and61 = and i32 %shr, 255
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %3, align 4
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv62 = zext i16 %37 to i32
  %and63 = lshr i32 %conv51, 13
  %and63.lobit = and i32 %and63, 1
  %call69 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.96, i32 noundef %and54.lobit, i32 noundef %and60, i32 noundef %and61, i32 noundef %conv62, i32 noundef %and63.lobit) #11
  %add70 = add i32 %call69, %add50
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.end.for.inc_crit_edge
  %pos.1 = phi i32 [ %add70, %if.end12 ], [ %pos.0128, %if.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_loopback(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %mac = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 1
  %phydev1 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 1, i32 17
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac, align 4
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.97, i32 noundef %conv) #11
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 769, i1 noundef zeroext true) #11
  %call7 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %call7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %10 = lshr i32 %9, 23
  %conv8 = and i32 %10, 1
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %call
  %sub10 = sub i32 %len, %call
  %arrayidx = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %conv8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.100, ptr noundef %12) #11
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 789, i1 noundef zeroext true) #11
  %call14 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.102, i32 noundef %call14) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %add12 = add i32 %call11, %call
  %enable = getelementptr inbounds %struct.hclge_common_lb_cmd, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable, align 1
  %17 = and i8 %16, 1
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %add12
  %sub27 = sub i32 %len, %add12
  %idxprom28 = zext i8 %17 to i32
  %arrayidx29 = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom28
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29, align 4
  %call30 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.104, ptr noundef %19) #11
  %add31 = add i32 %call30, %add12
  %20 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable, align 1
  %22 = lshr i8 %21, 2
  %.lobit = and i8 %22, 1
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %add31
  %sub38 = sub i32 %len, %add31
  %idxprom39 = zext i8 %.lobit to i32
  %arrayidx40 = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom39
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx40, align 4
  %call41 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.105, ptr noundef %24) #11
  %add42 = add i32 %call41, %add31
  %tobool43.not = icmp eq ptr %1, null
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %loopback_enabled = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %loopback_enabled to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %loopback_enabled, align 8
  %26 = lshr i16 %bf.load, 7
  %add.ptr46 = getelementptr i8, ptr %buf, i32 %add42
  %sub47 = sub i32 %len, %add42
  %27 = and i16 %26, 1
  %idxprom48 = zext i16 %27 to i32
  %arrayidx49 = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom48
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx49, align 4
  %call50 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.106, ptr noundef %29) #11
  br label %cleanup

if.else:                                          ; preds = %if.end22
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %30 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ae_dev, align 4
  %caps = getelementptr inbounds %struct.hnae3_ae_dev, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %caps, align 4
  %34 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool54.not = icmp eq i32 %34, 0
  br i1 %tobool54.not, label %if.else.cleanup_crit_edge, label %if.then55

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable, align 1
  %37 = and i8 %36, 8
  %add.ptr60 = getelementptr i8, ptr %buf, i32 %add42
  %sub61 = sub i32 %len, %add42
  %idxprom62 = zext i8 %37 to i32
  %arrayidx63 = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom62
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx63, align 4
  %call64 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.106, ptr noundef %39) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.else.cleanup_crit_edge, %if.then44, %do.end19, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call14, %do.end19 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %if.then44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_ptp_info(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %hw_cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 85
  %0 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp1, align 4
  %ptp_cfg = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptp_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_cfg) #11
  %4 = ptrtoint ptr %hw_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hw_cfg, align 4, !annotation !528
  %name = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 5, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.109, ptr noundef %name) #11
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 %len, %call
  %flags = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %cond = select i1 %tobool.not, ptr @.str.112, ptr @.str.111
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.110, ptr noundef nonnull %cond) #11
  %add6 = add i32 %call5, %call
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %add6
  %sub8 = sub i32 %len, %add6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.112, ptr @.str.111
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.113, ptr noundef nonnull %cond12) #11
  %add14 = add i32 %call13, %add6
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %add14
  %sub16 = sub i32 %len, %add14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.112, ptr @.str.111
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.114, ptr noundef nonnull %cond20) #11
  %add22 = add i32 %call21, %add14
  %last_rx23 = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %last_rx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_rx23, align 4
  %call24 = tail call i32 @jiffies_to_msecs(i32 noundef %14) #11
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %add22
  %sub26 = sub i32 %len, %add22
  %call24.frozen = freeze i32 %call24
  %div = udiv i32 %call24.frozen, 1000
  %15 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %call24.frozen, %15
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.115, i32 noundef %div, i32 noundef %rem.decomposed) #11
  %add28 = add i32 %call27, %add22
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %add28
  %sub30 = sub i32 %len, %add28
  %rx_cnt = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %rx_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_cnt, align 4
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.116, i32 noundef %17) #11
  %add32 = add i32 %call31, %add28
  %tx_start33 = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %tx_start33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_start33, align 4
  %call34 = tail call i32 @jiffies_to_msecs(i32 noundef %19) #11
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %add32
  %sub36 = sub i32 %len, %add32
  %call34.frozen = freeze i32 %call34
  %div37 = udiv i32 %call34.frozen, 1000
  %20 = mul i32 %div37, 1000
  %rem38.decomposed = sub i32 %call34.frozen, %20
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.117, i32 noundef %div37, i32 noundef %rem38.decomposed) #11
  %add40 = add i32 %call39, %add32
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %add40
  %sub42 = sub i32 %len, %add40
  %tx_cnt = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_cnt, align 4
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.118, i32 noundef %22) #11
  %add44 = add i32 %call43, %add40
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %add44
  %sub46 = sub i32 %len, %add44
  %tx_skipped = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %tx_skipped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_skipped, align 4
  %call47 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.119, i32 noundef %24) #11
  %add48 = add i32 %call47, %add44
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %add48
  %sub50 = sub i32 %len, %add48
  %tx_timeout = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 17
  %25 = ptrtoint ptr %tx_timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_timeout, align 4
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.120, i32 noundef %26) #11
  %add52 = add i32 %call51, %add48
  %add.ptr53 = getelementptr i8, ptr %buf, i32 %add52
  %sub54 = sub i32 %len, %add52
  %last_tx_seqid = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %last_tx_seqid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_tx_seqid, align 4
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.121, i32 noundef %28) #11
  %call57 = call i32 @hclge_ptp_cfg_qry(ptr noundef %hdev, ptr noundef nonnull %hw_cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add56 = add i32 %call55, %add52
  %add.ptr59 = getelementptr i8, ptr %buf, i32 %add56
  %sub60 = sub i32 %len, %add56
  %29 = ptrtoint ptr %hw_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_cfg, align 4
  %call61 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.122, i32 noundef %3, i32 noundef %30) #11
  %add62 = add i32 %call61, %add56
  %add.ptr63 = getelementptr i8, ptr %buf, i32 %add62
  %sub64 = sub i32 %len, %add62
  %tx_type = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_type, align 4
  %rx_filter = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 6, i32 2
  %33 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_filter, align 4
  %call66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.123, i32 noundef %32, i32 noundef %34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_cfg) #11
  ret i32 %call57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_interrupt(ptr nocapture noundef readonly %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_nic_msi = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 43
  %0 = ptrtoint ptr %num_nic_msi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_nic_msi, align 8
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.124, i32 noundef %conv) #11
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %call
  %sub2 = sub i32 %len, %call
  %num_roce_msi = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 44
  %2 = ptrtoint ptr %num_roce_msi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_roce_msi, align 2
  %conv3 = zext i16 %3 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub2, ptr noundef nonnull @.str.125, i32 noundef %conv3) #11
  %add5 = add i32 %call4, %call
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %add5
  %sub7 = sub i32 %len, %add5
  %num_msi_used = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 40
  %4 = ptrtoint ptr %num_msi_used to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_msi_used, align 4
  %conv8 = zext i16 %5 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.126, i32 noundef %conv8) #11
  %add10 = add i32 %call9, %add5
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %add10
  %sub12 = sub i32 %len, %add10
  %num_msi_left = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 39
  %6 = ptrtoint ptr %num_msi_left to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_msi_left, align 2
  %conv13 = zext i16 %7 to i32
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.127, i32 noundef %conv13) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_get_imp_stats_info(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 28690, i1 noundef zeroext true) #11
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.128, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.131) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 32) #11
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end9.cleanup_crit_edge, label %if.end7.i.i, !prof !529

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end9
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #17
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end13

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i.i
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call8.i.i, i32 noundef 28691, i1 noundef zeroext true) #11
  %data.i = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14.i = icmp ugt i32 %6, 1
  br i1 %cmp14.i, label %if.end13.for.body.i_crit_edge, label %if.end13.for.end.i_crit_edge

if.end13.for.end.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end13.for.body.i_crit_edge ]
  %desc.015.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call8.i.i, %if.end13.for.body.i_crit_edge ]
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.015.i, i32 0, i32 1
  %13 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flag.i, align 2
  %15 = or i16 %14, 1024
  store i16 %15, ptr %flag.i, align 2
  %incdec.ptr.i = getelementptr %struct.hclge_desc, ptr %desc.015.i, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %incdec.ptr.i, i32 noundef 28691, i1 noundef zeroext true) #11
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end13.for.end.i_crit_edge
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %call8.i.i, i32 noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22, label %if.then16

if.then16:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.136, i32 noundef 28691, i32 noundef %call.i) #14
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  %18 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.134, i32 noundef %call.i) #14
  br label %cleanup

if.end22:                                         ; preds = %for.end.i
  %call.i43 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.138) #11
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.cond.preheader.i.while.cond.preheader.i_crit_edge, %if.end22
  %i.049.i = phi i32 [ %inc18.i, %while.cond.preheader.i.while.cond.preheader.i_crit_edge ], [ 0, %if.end22 ]
  %pos.048.i = phi i32 [ %add16.2.i, %while.cond.preheader.i.while.cond.preheader.i_crit_edge ], [ %call.i43, %if.end22 ]
  %offset.047.i = phi i32 [ %add17.2.i, %while.cond.preheader.i.while.cond.preheader.i_crit_edge ], [ 0, %if.end22 ]
  %desc_index.046.i = phi ptr [ %incdec.ptr.i44, %while.cond.preheader.i.while.cond.preheader.i_crit_edge ], [ %call8.i.i, %if.end22 ]
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %pos.048.i
  %sub3.i = sub i32 %len, %pos.048.i
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.139, i32 noundef %offset.047.i) #11
  %add5.i = add i32 %call4.i, %pos.048.i
  %add.ptr6.i = getelementptr i8, ptr %buf, i32 %add5.i
  %sub7.i = sub i32 %len, %add5.i
  %arrayidx.i = getelementptr %struct.hclge_desc, ptr %desc_index.046.i, i32 0, i32 4, i32 0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #11
  %call8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.i, i32 noundef %sub7.i, ptr noundef nonnull @.str.140, i32 noundef %22) #11
  %add9.i = add i32 %call8.i, %add5.i
  %add.ptr10.i = getelementptr i8, ptr %buf, i32 %add9.i
  %sub11.i = sub i32 %len, %add9.i
  %arrayidx14.i = getelementptr %struct.hclge_desc, ptr %desc_index.046.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx14.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #11
  %call15.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i, i32 noundef %sub11.i, ptr noundef nonnull @.str.141, i32 noundef %25) #11
  %add16.i = add i32 %call15.i, %add9.i
  %add17.i = add i32 %offset.047.i, 8
  %add.ptr2.1.i = getelementptr i8, ptr %buf, i32 %add16.i
  %sub3.1.i = sub i32 %len, %add16.i
  %call4.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.1.i, i32 noundef %sub3.1.i, ptr noundef nonnull @.str.139, i32 noundef %add17.i) #11
  %add5.1.i = add i32 %call4.1.i, %add16.i
  %add.ptr6.1.i = getelementptr i8, ptr %buf, i32 %add5.1.i
  %sub7.1.i = sub i32 %len, %add5.1.i
  %arrayidx.1.i = getelementptr %struct.hclge_desc, ptr %desc_index.046.i, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #11
  %call8.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.1.i, i32 noundef %sub7.1.i, ptr noundef nonnull @.str.140, i32 noundef %28) #11
  %add9.1.i = add i32 %call8.1.i, %add5.1.i
  %add.ptr10.1.i = getelementptr i8, ptr %buf, i32 %add9.1.i
  %sub11.1.i = sub i32 %len, %add9.1.i
  %arrayidx14.1.i = getelementptr %struct.hclge_desc, ptr %desc_index.046.i, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx14.1.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #11
  %call15.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.1.i, i32 noundef %sub11.1.i, ptr noundef nonnull @.str.141, i32 noundef %31) #11
  %add16.1.i = add i32 %call15.1.i, %add9.1.i
  %add17.1.i = add i32 %offset.047.i, 16
  %add.ptr2.2.i = getelementptr i8, ptr %buf, i32 %add16.1.i
  %sub3.2.i = sub i32 %len, %add16.1.i
  %call4.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.2.i, i32 noundef %sub3.2.i, ptr noundef nonnull @.str.139, i32 noundef %add17.1.i) #11
  %add5.2.i = add i32 %call4.2.i, %add16.1.i
  %add.ptr6.2.i = getelementptr i8, ptr %buf, i32 %add5.2.i
  %sub7.2.i = sub i32 %len, %add5.2.i
  %arrayidx.2.i = getelementptr %struct.hclge_desc, ptr %desc_index.046.i, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #11
  %call8.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.2.i, i32 noundef %sub7.2.i, ptr noundef nonnull @.str.140, i32 noundef %34) #11
  %add9.2.i = add i32 %call8.2.i, %add5.2.i
  %add.ptr10.2.i = getelementptr i8, ptr %buf, i32 %add9.2.i
  %sub11.2.i = sub i32 %len, %add9.2.i
  %arrayidx14.2.i = getelementptr %struct.hclge_desc, ptr %desc_index.046.i, i32 0, i32 4, i32 5
  %35 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx14.2.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #11
  %call15.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.2.i, i32 noundef %sub11.2.i, ptr noundef nonnull @.str.141, i32 noundef %37) #11
  %add16.2.i = add i32 %call15.2.i, %add9.2.i
  %add17.2.i = add i32 %offset.047.i, 24
  %incdec.ptr.i44 = getelementptr %struct.hclge_desc, ptr %desc_index.046.i, i32 1
  %inc18.i = add nuw i32 %i.049.i, 1
  %exitcond.not.i45 = icmp eq i32 %inc18.i, %6
  br i1 %exitcond.not.i45, label %hclge_dbg_imp_info_data_print.exit, label %while.cond.preheader.i.while.cond.preheader.i_crit_edge

while.cond.preheader.i.while.cond.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

hclge_dbg_imp_info_data_print.exit:               ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %hclge_dbg_imp_info_data_print.exit, %if.then16, %if.end7.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %if.then16 ], [ 0, %hclge_dbg_imp_info_data_print.exit ], [ -22, %do.end6 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_ncl_config(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca [5 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 255, i32 160)
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.138) #11
  %data.i = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %incdec.ptr.i = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 1
  %flag.i.1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 1, i32 1
  %incdec.ptr.i.1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 2
  %flag.i.2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 2, i32 1
  %incdec.ptr.i.2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 3
  %flag.i.3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 3, i32 1
  %incdec.ptr.i.3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 4
  br label %while.body

while.body:                                       ; preds = %hclge_ncl_config_data_print.exit.while.body_crit_edge, %entry
  %pos.040 = phi i32 [ %call, %entry ], [ %add.5.i, %hclge_ncl_config_data_print.exit.while.body_crit_edge ]
  %index.039 = phi i32 [ 16384, %entry ], [ %sub9.5.i, %hclge_ncl_config_data_print.exit.while.body_crit_edge ]
  %sub1 = sub nsw i32 16384, %index.039
  call void @__sanitizer_cov_trace_const_cmp4(i32 115, i32 %index.039)
  %cmp2 = icmp ugt i32 %index.039, 115
  %shl = shl i32 %index.039, 16
  %data0.0.v = select i1 %cmp2, i32 7602176, i32 %shl
  %data0.0 = or i32 %data0.0.v, %sub1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 28689, i1 noundef zeroext true) #11
  %1 = call i32 @llvm.bswap.i32(i32 %data0.0) #11
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %data.i, align 4
  %3 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flag.i, align 2
  %5 = or i16 %4, 1024
  store i16 %5, ptr %flag.i, align 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %incdec.ptr.i, i32 noundef 28689, i1 noundef zeroext true) #11
  %6 = ptrtoint ptr %flag.i.1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flag.i.1, align 2
  %8 = or i16 %7, 1024
  store i16 %8, ptr %flag.i.1, align 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %incdec.ptr.i.1, i32 noundef 28689, i1 noundef zeroext true) #11
  %9 = ptrtoint ptr %flag.i.2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flag.i.2, align 2
  %11 = or i16 %10, 1024
  store i16 %11, ptr %flag.i.2, align 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %incdec.ptr.i.2, i32 noundef 28689, i1 noundef zeroext true) #11
  %12 = ptrtoint ptr %flag.i.3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flag.i.3, align 2
  %14 = or i16 %13, 1024
  store i16 %14, ptr %flag.i.3, align 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %incdec.ptr.i.3, i32 noundef 28689, i1 noundef zeroext true) #11
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.for.cond1.preheader.i_crit_edge, label %hclge_dbg_cmd_send.exit

while.body.for.cond1.preheader.i_crit_edge:       ; preds = %while.body
  br label %for.cond1.preheader.i

hclge_dbg_cmd_send.exit:                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.136, i32 noundef 28689, i32 noundef %call.i) #14
  br label %cleanup

for.cond1.preheader.i:                            ; preds = %if.end.5.i.for.cond1.preheader.i_crit_edge, %while.body.for.cond1.preheader.i_crit_edge
  %index.1 = phi i32 [ %sub9.5.i, %if.end.5.i.for.cond1.preheader.i_crit_edge ], [ %index.039, %while.body.for.cond1.preheader.i_crit_edge ]
  %pos.1 = phi i32 [ %add.5.i, %if.end.5.i.for.cond1.preheader.i_crit_edge ], [ %pos.040, %while.body.for.cond1.preheader.i_crit_edge ]
  %i.035.i = phi i32 [ %inc14.i, %if.end.5.i.for.cond1.preheader.i_crit_edge ], [ 0, %while.body.for.cond1.preheader.i_crit_edge ]
  %offset.034.i = phi i32 [ %add8.5.i, %if.end.5.i.for.cond1.preheader.i_crit_edge ], [ %sub1, %while.body.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.035.i)
  %cmp4.i = icmp eq i32 %i.035.i, 0
  br i1 %cmp4.i, label %for.cond1.preheader.i.if.end.1.i_crit_edge, label %if.end.i

for.cond1.preheader.i.if.end.1.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1.i

if.end.i:                                         ; preds = %for.cond1.preheader.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %pos.1
  %sub6.i = sub i32 %len, %pos.1
  %arrayidx7.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %i.035.i, i32 4, i32 0
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7.i, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #11
  %call.i18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub6.i, ptr noundef nonnull @.str.142, i32 noundef %offset.034.i, i32 noundef %19) #11
  %add.i = add i32 %call.i18, %pos.1
  %add8.i = add i32 %offset.034.i, 4
  %sub9.i = add i32 %index.1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.i)
  %cmp10.i = icmp slt i32 %sub9.i, 1
  br i1 %cmp10.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end.1.i_crit_edge

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1.i:                                       ; preds = %if.end.i.if.end.1.i_crit_edge, %for.cond1.preheader.i.if.end.1.i_crit_edge
  %index.2 = phi i32 [ %index.1, %for.cond1.preheader.i.if.end.1.i_crit_edge ], [ %sub9.i, %if.end.i.if.end.1.i_crit_edge ]
  %pos.2 = phi i32 [ %pos.1, %for.cond1.preheader.i.if.end.1.i_crit_edge ], [ %add.i, %if.end.i.if.end.1.i_crit_edge ]
  %offset.2.i = phi i32 [ %offset.034.i, %for.cond1.preheader.i.if.end.1.i_crit_edge ], [ %add8.i, %if.end.i.if.end.1.i_crit_edge ]
  %add.ptr.1.i = getelementptr i8, ptr %buf, i32 %pos.2
  %sub6.1.i = sub i32 %len, %pos.2
  %arrayidx7.1.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %i.035.i, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.1.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #11
  %call.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1.i, i32 noundef %sub6.1.i, ptr noundef nonnull @.str.142, i32 noundef %offset.2.i, i32 noundef %22) #11
  %sub9.1.i = add i32 %index.2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.1.i)
  %cmp10.1.i = icmp slt i32 %sub9.1.i, 1
  br i1 %cmp10.1.i, label %if.end.1.i.cleanup_crit_edge, label %if.end.2.i

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2.i:                                       ; preds = %if.end.1.i
  %add.1.i = add i32 %call.1.i, %pos.2
  %add8.1.i = add i32 %offset.2.i, 4
  %add.ptr.2.i = getelementptr i8, ptr %buf, i32 %add.1.i
  %sub6.2.i = sub i32 %len, %add.1.i
  %arrayidx7.2.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %i.035.i, i32 4, i32 2
  %23 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.2.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #11
  %call.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2.i, i32 noundef %sub6.2.i, ptr noundef nonnull @.str.142, i32 noundef %add8.1.i, i32 noundef %25) #11
  %sub9.2.i = add i32 %index.2, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.2.i)
  %cmp10.2.i = icmp slt i32 %sub9.2.i, 1
  br i1 %cmp10.2.i, label %if.end.2.i.cleanup_crit_edge, label %if.end.3.i

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.3.i:                                       ; preds = %if.end.2.i
  %add.2.i = add i32 %call.2.i, %add.1.i
  %add8.2.i = add i32 %offset.2.i, 8
  %add.ptr.3.i = getelementptr i8, ptr %buf, i32 %add.2.i
  %sub6.3.i = sub i32 %len, %add.2.i
  %arrayidx7.3.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %i.035.i, i32 4, i32 3
  %26 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7.3.i, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #11
  %call.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3.i, i32 noundef %sub6.3.i, ptr noundef nonnull @.str.142, i32 noundef %add8.2.i, i32 noundef %28) #11
  %sub9.3.i = add i32 %index.2, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.3.i)
  %cmp10.3.i = icmp slt i32 %sub9.3.i, 1
  br i1 %cmp10.3.i, label %if.end.3.i.cleanup_crit_edge, label %if.end.4.i

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.4.i:                                       ; preds = %if.end.3.i
  %add.3.i = add i32 %call.3.i, %add.2.i
  %add8.3.i = add i32 %offset.2.i, 12
  %add.ptr.4.i = getelementptr i8, ptr %buf, i32 %add.3.i
  %sub6.4.i = sub i32 %len, %add.3.i
  %arrayidx7.4.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %i.035.i, i32 4, i32 4
  %29 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.4.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #11
  %call.4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4.i, i32 noundef %sub6.4.i, ptr noundef nonnull @.str.142, i32 noundef %add8.3.i, i32 noundef %31) #11
  %sub9.4.i = add i32 %index.2, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.4.i)
  %cmp10.4.i = icmp slt i32 %sub9.4.i, 1
  br i1 %cmp10.4.i, label %if.end.4.i.cleanup_crit_edge, label %if.end.5.i

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.5.i:                                       ; preds = %if.end.4.i
  %add.4.i = add i32 %call.4.i, %add.3.i
  %add8.4.i = add i32 %offset.2.i, 16
  %add.ptr.5.i = getelementptr i8, ptr %buf, i32 %add.4.i
  %sub6.5.i = sub i32 %len, %add.4.i
  %arrayidx7.5.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %i.035.i, i32 4, i32 5
  %32 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.5.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #11
  %call.5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5.i, i32 noundef %sub6.5.i, ptr noundef nonnull @.str.142, i32 noundef %add8.4.i, i32 noundef %34) #11
  %add.5.i = add i32 %call.5.i, %add.4.i
  %add8.5.i = add i32 %offset.2.i, 20
  %sub9.5.i = add i32 %index.2, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.5.i)
  %cmp10.5.i = icmp slt i32 %sub9.5.i, 1
  %inc14.i = add nuw nsw i32 %i.035.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc14.i)
  %exitcond.not.i19 = icmp eq i32 %inc14.i, 5
  %or.cond.i = select i1 %cmp10.5.i, i1 true, i1 %exitcond.not.i19
  br i1 %or.cond.i, label %hclge_ncl_config_data_print.exit, label %if.end.5.i.for.cond1.preheader.i_crit_edge

if.end.5.i.for.cond1.preheader.i_crit_edge:       ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

hclge_ncl_config_data_print.exit:                 ; preds = %if.end.5.i
  %cmp = icmp sgt i32 %sub9.5.i, 0
  br i1 %cmp, label %hclge_ncl_config_data_print.exit.while.body_crit_edge, label %hclge_ncl_config_data_print.exit.cleanup_crit_edge

hclge_ncl_config_data_print.exit.cleanup_crit_edge: ; preds = %hclge_ncl_config_data_print.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hclge_ncl_config_data_print.exit.while.body_crit_edge: ; preds = %hclge_ncl_config_data_print.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %hclge_ncl_config_data_print.exit.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %hclge_dbg_cmd_send.exit
  %retval.0 = phi i32 [ %call.i, %hclge_dbg_cmd_send.exit ], [ 0, %if.end.1.i.cleanup_crit_edge ], [ 0, %if.end.2.i.cleanup_crit_edge ], [ 0, %if.end.3.i.cleanup_crit_edge ], [ 0, %if.end.4.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %hclge_ncl_config_data_print.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_reg_cmd(ptr noundef %hdev, i32 noundef %cmd, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc.i.i21 = alloca [4 x %struct.hclge_desc], align 4
  %desc.i.i = alloca [4 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %cmd)
  %cmp3 = icmp eq i32 %cmd, 30
  %hw.i.i84 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0130 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %pos.0129 = phi i32 [ 0, %entry ], [ %pos.11, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cmd)
  %cmp2 = icmp eq i32 %1, %cmd
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %dfx_msg.i = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 1
  %2 = ptrtoint ptr %dfx_msg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dfx_msg.i, align 4
  %reg_msg1.i = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 2
  %offset.i = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 2, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %desc.i.i) #11
  %6 = call ptr @memset(ptr %desc.i.i, i32 255, i32 128)
  %call.i.i = call i32 @hclge_query_bd_num_cmd_send(ptr noundef %hdev, ptr noundef nonnull %desc.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.146, i32 noundef %5, i32 noundef %call.i.i) #14
  br label %hclge_dbg_get_dfx_bd_num.exit.thread.i

if.end.i.i:                                       ; preds = %if.then4
  %.frozen = freeze i32 %5
  %div.i.i = sdiv i32 %.frozen, 6
  %9 = mul i32 %div.i.i, 6
  %rem.i.i.decomposed = sub i32 %.frozen, %9
  %arrayidx1.i.i = getelementptr [4 x %struct.hclge_desc], ptr %desc.i.i, i32 0, i32 %div.i.i, i32 4, i32 %rem.i.i.decomposed
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i.i, label %do.end6.i.i, label %if.end.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 8
  %dev8.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.149) #14
  br label %hclge_dbg_get_dfx_bd_num.exit.thread.i

hclge_dbg_get_dfx_bd_num.exit.thread.i:           ; preds = %do.end6.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %do.end6.i.i ], [ %call.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %desc.i.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %desc.i.i) #11
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 32) #11
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !529

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end.i
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #17
  %tobool4.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end6.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end7.i.i.i
  %mul.i = mul nuw nsw i32 %12, 6
  %18 = ptrtoint ptr %reg_msg1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_msg1.i, align 4
  %20 = call i32 @llvm.smin.i32(i32 %mul.i, i32 %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7142.not.i = icmp eq i32 %20, 0
  br i1 %cmp7142.not.i, label %if.end6.i.for.end19.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.for.end19.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %pos.1 = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ %pos.0129, %if.end6.i.for.body.i_crit_edge ]
  %cnt.0145.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %dfx_message.0143.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %3, %if.end6.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %pos.1
  %sub.i = sub i32 %len, %pos.1
  %inc.i = add nuw i32 %cnt.0145.i, 1
  %message.i = getelementptr inbounds %struct.hclge_dbg_dfx_message, ptr %dfx_message.0143.i, i32 0, i32 1
  %call8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.143, i32 noundef %cnt.0145.i, ptr noundef %message.i) #11
  %add.i = add i32 %call8.i, %pos.1
  %incdec.ptr.i = getelementptr %struct.hclge_dbg_dfx_message, ptr %dfx_message.0143.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %20
  br i1 %exitcond.not.i, label %for.body.i.for.body12.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.body12.i_crit_edge:                ; preds = %for.body.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body.i.for.body12.i_crit_edge
  %pos.2 = phi i32 [ %add16.i, %for.body12.i.for.body12.i_crit_edge ], [ %add.i, %for.body.i.for.body12.i_crit_edge ]
  %i.1147.i = phi i32 [ %inc18.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.body.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %buf, i32 %pos.2
  %sub14.i = sub i32 %len, %pos.2
  %call15.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13.i, i32 noundef %sub14.i, ptr noundef nonnull @.str.144, i32 noundef %i.1147.i) #11
  %add16.i = add i32 %call15.i, %pos.2
  %inc18.i = add nuw i32 %i.1147.i, 1
  %exitcond156.not.i = icmp eq i32 %inc18.i, %20
  br i1 %exitcond156.not.i, label %for.body12.i.for.end19.i_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.body12.i.for.end19.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19.i

for.end19.i:                                      ; preds = %for.body12.i.for.end19.i_crit_edge, %if.end6.i.for.end19.i_crit_edge
  %pos.3 = phi i32 [ %pos.0129, %if.end6.i.for.end19.i_crit_edge ], [ %add16.i, %for.body12.i.for.end19.i_crit_edge ]
  %add.ptr20.i = getelementptr i8, ptr %buf, i32 %pos.3
  %sub21.i = sub i32 %len, %pos.3
  %call22.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.i, i32 noundef %sub21.i, ptr noundef nonnull @.str.32) #11
  %vport.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %21 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vport.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp25152.not.i = icmp eq i16 %24, 0
  br i1 %cmp25152.not.i, label %for.end19.i.for.end58.i_crit_edge, label %for.body27.lr.ph.i

for.end19.i.for.end58.i_crit_edge:                ; preds = %for.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end58.i

for.body27.lr.ph.i:                               ; preds = %for.end19.i
  %add23.i = add i32 %call22.i, %pos.3
  %cmd.i = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 2, i32 2
  %data.i.i = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14.i.i = icmp sgt i32 %12, 1
  %25 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd.i, align 4
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.end51.i.for.body27.i_crit_edge, %for.body27.lr.ph.i
  %pos.4 = phi i32 [ %add23.i, %for.body27.lr.ph.i ], [ %add55.i, %for.end51.i.for.body27.i_crit_edge ]
  %index.0153.i = phi i32 [ 0, %for.body27.lr.ph.i ], [ %inc57.i, %for.end51.i.for.body27.i_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call8.i.i.i, i32 noundef %26, i1 noundef zeroext true) #11
  %27 = call i32 @llvm.bswap.i32(i32 %index.0153.i) #11
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %data.i.i, align 8
  br i1 %cmp14.i.i, label %for.body27.i.for.body.i.i_crit_edge, label %for.body27.i.for.end.i.i_crit_edge

for.body27.i.for.end.i.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body27.i.for.body.i.i_crit_edge:              ; preds = %for.body27.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body27.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %for.body27.i.for.body.i.i_crit_edge ]
  %desc.015.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call8.i.i.i, %for.body27.i.for.body.i.i_crit_edge ]
  %flag.i.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.015.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flag.i.i, align 2
  %31 = or i16 %30, 1024
  store i16 %31, ptr %flag.i.i, align 2
  %incdec.ptr.i.i = getelementptr %struct.hclge_desc, ptr %desc.015.i.i, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %incdec.ptr.i.i, i32 noundef %26, i1 noundef zeroext true) #11
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.body27.i.for.end.i.i_crit_edge
  %call.i121.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i84, ptr noundef nonnull %call8.i.i.i, i32 noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool.not.i122.i = icmp eq i32 %call.i121.i, 0
  br i1 %tobool.not.i122.i, label %for.cond33.preheader.i, label %hclge_dbg_cmd_send.exit.thread.i

for.cond33.preheader.i:                           ; preds = %for.end.i.i
  br i1 %cmp7142.not.i, label %for.cond33.preheader.i.for.end51.i_crit_edge, label %for.cond33.preheader.i.for.body36.i_crit_edge

for.cond33.preheader.i.for.body36.i_crit_edge:    ; preds = %for.cond33.preheader.i
  br label %for.body36.i

for.cond33.preheader.i.for.end51.i_crit_edge:     ; preds = %for.cond33.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end51.i

hclge_dbg_cmd_send.exit.thread.i:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdev, align 8
  %dev.i123.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i123.i, ptr noundef nonnull @.str.136, i32 noundef %26, i32 noundef %call.i121.i) #14
  br label %for.end58.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %for.cond33.preheader.i.for.body36.i_crit_edge
  %pos.5 = phi i32 [ %add47.i, %for.body36.i.for.body36.i_crit_edge ], [ %pos.4, %for.cond33.preheader.i.for.body36.i_crit_edge ]
  %desc.0150.i = phi ptr [ %desc.1.i, %for.body36.i.for.body36.i_crit_edge ], [ %call8.i.i.i, %for.cond33.preheader.i.for.body36.i_crit_edge ]
  %i.2149.i = phi i32 [ %inc49.i, %for.body36.i.for.body36.i_crit_edge ], [ 0, %for.cond33.preheader.i.for.body36.i_crit_edge ]
  %rem.i = urem i32 %i.2149.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2149.i)
  %cmp37.not.i = icmp ne i32 %i.2149.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool39.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp37.not.i, %tobool39.not.i
  %desc.1.idx.i = zext i1 %or.cond.i to i32
  %desc.1.i = getelementptr %struct.hclge_desc, ptr %desc.0150.i, i32 %desc.1.idx.i
  %add.ptr43.i = getelementptr i8, ptr %buf, i32 %pos.5
  %sub44.i = sub i32 %len, %pos.5
  %arrayidx45.i = getelementptr %struct.hclge_desc, ptr %desc.0150.i, i32 %desc.1.idx.i, i32 4, i32 %rem.i
  %34 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx45.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #11
  %call46.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43.i, i32 noundef %sub44.i, ptr noundef nonnull @.str.145, i32 noundef %36) #11
  %add47.i = add i32 %call46.i, %pos.5
  %inc49.i = add nuw i32 %i.2149.i, 1
  %exitcond157.not.i = icmp eq i32 %inc49.i, %20
  br i1 %exitcond157.not.i, label %for.body36.i.for.end51.i_crit_edge, label %for.body36.i.for.body36.i_crit_edge

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body36.i

for.body36.i.for.end51.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end51.i

for.end51.i:                                      ; preds = %for.body36.i.for.end51.i_crit_edge, %for.cond33.preheader.i.for.end51.i_crit_edge
  %pos.6 = phi i32 [ %pos.4, %for.cond33.preheader.i.for.end51.i_crit_edge ], [ %add47.i, %for.body36.i.for.end51.i_crit_edge ]
  %add.ptr52.i = getelementptr i8, ptr %buf, i32 %pos.6
  %sub53.i = sub i32 %len, %pos.6
  %call54.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52.i, i32 noundef %sub53.i, ptr noundef nonnull @.str.32) #11
  %add55.i = add i32 %call54.i, %pos.6
  %inc57.i = add nuw nsw i32 %index.0153.i, 1
  %37 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vport.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 8
  %conv.i = zext i16 %40 to i32
  %cmp25.i = icmp ult i32 %inc57.i, %conv.i
  br i1 %cmp25.i, label %for.end51.i.for.body27.i_crit_edge, label %for.end51.i.for.end58.i_crit_edge

for.end51.i.for.end58.i_crit_edge:                ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end58.i

for.end51.i.for.body27.i_crit_edge:               ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27.i

for.end58.i:                                      ; preds = %for.end51.i.for.end58.i_crit_edge, %hclge_dbg_cmd_send.exit.thread.i, %for.end19.i.for.end58.i_crit_edge
  %ret.1.i = phi i32 [ %call.i121.i, %hclge_dbg_cmd_send.exit.thread.i ], [ 0, %for.end19.i.for.end58.i_crit_edge ], [ 0, %for.end51.i.for.end58.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %reg_msg1.i22 = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 2
  %dfx_msg.i23 = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 1
  %41 = ptrtoint ptr %dfx_msg.i23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dfx_msg.i23, align 4
  %offset.i24 = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 2, i32 1
  %43 = ptrtoint ptr %offset.i24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset.i24, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %desc.i.i21) #11
  %45 = call ptr @memset(ptr %desc.i.i21, i32 255, i32 128)
  %call.i.i25 = call i32 @hclge_query_bd_num_cmd_send(ptr noundef %hdev, ptr noundef nonnull %desc.i.i21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i33, label %do.end.i.i28

do.end.i.i28:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hdev, align 8
  %dev.i.i27 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i27, ptr noundef nonnull @.str.146, i32 noundef %44, i32 noundef %call.i.i25) #14
  br label %hclge_dbg_get_dfx_bd_num.exit.thread.i37

if.end.i.i33:                                     ; preds = %if.end
  %.frozen202 = freeze i32 %44
  %div.i.i30 = sdiv i32 %.frozen202, 6
  %48 = mul i32 %div.i.i30, 6
  %rem.i.i29.decomposed = sub i32 %.frozen202, %48
  %arrayidx1.i.i31 = getelementptr [4 x %struct.hclge_desc], ptr %desc.i.i21, i32 0, i32 %div.i.i30, i32 4, i32 %rem.i.i29.decomposed
  %49 = ptrtoint ptr %arrayidx1.i.i31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx1.i.i31, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool2.not.i.i32 = icmp eq i32 %50, 0
  br i1 %tobool2.not.i.i32, label %do.end6.i.i35, label %if.end.i38

do.end6.i.i35:                                    ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hdev, align 8
  %dev8.i.i34 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i.i34, ptr noundef nonnull @.str.149) #14
  br label %hclge_dbg_get_dfx_bd_num.exit.thread.i37

hclge_dbg_get_dfx_bd_num.exit.thread.i37:         ; preds = %do.end6.i.i35, %do.end.i.i28
  %retval.0.i.ph.i36 = phi i32 [ -22, %do.end6.i.i35 ], [ %call.i.i25, %do.end.i.i28 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %desc.i.i21) #11
  br label %cleanup

if.end.i38:                                       ; preds = %if.end.i.i33
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %desc.i.i21) #11
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 32) #11
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %if.end.i38.cleanup_crit_edge, label %if.end7.i.i.i69, !prof !529

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i.i69:                                  ; preds = %if.end.i38
  %56 = extractvalue { i32, i1 } %54, 0
  %call8.i.i.i68 = call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #17
  %tobool4.not.i71 = icmp eq ptr %call8.i.i.i68, null
  br i1 %tobool4.not.i71, label %if.end7.i.i.i69.cleanup_crit_edge, label %if.end6.i76

if.end7.i.i.i69.cleanup_crit_edge:                ; preds = %if.end7.i.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i76:                                      ; preds = %if.end7.i.i.i69
  %cmd.i73 = getelementptr [12 x %struct.hclge_dbg_reg_type_info], ptr @hclge_dbg_reg_info, i32 0, i32 %i.0130, i32 2, i32 2
  %57 = ptrtoint ptr %cmd.i73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmd.i73, align 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call8.i.i.i68, i32 noundef %58, i1 noundef zeroext true) #11
  %data.i.i74 = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i.i68, i32 0, i32 4
  %59 = ptrtoint ptr %data.i.i74 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %data.i.i74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp14.i.i75 = icmp ugt i32 %51, 1
  br i1 %cmp14.i.i75, label %if.end6.i76.for.body.i.i83_crit_edge, label %if.end6.i76.for.end.i.i85_crit_edge

if.end6.i76.for.end.i.i85_crit_edge:              ; preds = %if.end6.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i85

if.end6.i76.for.body.i.i83_crit_edge:             ; preds = %if.end6.i76
  br label %for.body.i.i83

for.body.i.i83:                                   ; preds = %for.body.i.i83.for.body.i.i83_crit_edge, %if.end6.i76.for.body.i.i83_crit_edge
  %i.016.i.i77 = phi i32 [ %inc.i.i81, %for.body.i.i83.for.body.i.i83_crit_edge ], [ 1, %if.end6.i76.for.body.i.i83_crit_edge ]
  %desc.015.i.i78 = phi ptr [ %incdec.ptr.i.i80, %for.body.i.i83.for.body.i.i83_crit_edge ], [ %call8.i.i.i68, %if.end6.i76.for.body.i.i83_crit_edge ]
  %flag.i.i79 = getelementptr inbounds %struct.hclge_desc, ptr %desc.015.i.i78, i32 0, i32 1
  %60 = ptrtoint ptr %flag.i.i79 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flag.i.i79, align 2
  %62 = or i16 %61, 1024
  store i16 %62, ptr %flag.i.i79, align 2
  %incdec.ptr.i.i80 = getelementptr %struct.hclge_desc, ptr %desc.015.i.i78, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %incdec.ptr.i.i80, i32 noundef %58, i1 noundef zeroext true) #11
  %inc.i.i81 = add nuw nsw i32 %i.016.i.i77, 1
  %exitcond.not.i.i82 = icmp eq i32 %inc.i.i81, %51
  br i1 %exitcond.not.i.i82, label %for.body.i.i83.for.end.i.i85_crit_edge, label %for.body.i.i83.for.body.i.i83_crit_edge

for.body.i.i83.for.body.i.i83_crit_edge:          ; preds = %for.body.i.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i83

for.body.i.i83.for.end.i.i85_crit_edge:           ; preds = %for.body.i.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i85

for.end.i.i85:                                    ; preds = %for.body.i.i83.for.end.i.i85_crit_edge, %if.end6.i76.for.end.i.i85_crit_edge
  %call.i51.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i84, ptr noundef nonnull %call8.i.i.i68, i32 noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i52.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.end.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hdev, align 8
  %dev.i53.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i53.i, ptr noundef nonnull @.str.136, i32 noundef %58, i32 noundef %call.i51.i) #14
  call void @kfree(ptr noundef nonnull %call8.i.i.i68) #11
  br label %cleanup

if.end10.i:                                       ; preds = %for.end.i.i85
  %mul.i86 = mul i32 %51, 6
  %65 = ptrtoint ptr %reg_msg1.i22 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_msg1.i22, align 4
  %67 = call i32 @llvm.smin.i32(i32 %mul.i86, i32 %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1171.not.i = icmp eq i32 %67, 0
  br i1 %cmp1171.not.i, label %if.end10.i.hclge_dbg_dump_reg_common.exit_crit_edge, label %if.end10.i.for.body.i91_crit_edge

if.end10.i.for.body.i91_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i91

if.end10.i.hclge_dbg_dump_reg_common.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_dump_reg_common.exit

for.body.i91:                                     ; preds = %for.inc.i.for.body.i91_crit_edge, %if.end10.i.for.body.i91_crit_edge
  %pos.7 = phi i32 [ %pos.8, %for.inc.i.for.body.i91_crit_edge ], [ %pos.0129, %if.end10.i.for.body.i91_crit_edge ]
  %i.074.i = phi i32 [ %inc.i96, %for.inc.i.for.body.i91_crit_edge ], [ 0, %if.end10.i.for.body.i91_crit_edge ]
  %desc.073.i = phi ptr [ %desc.1.i90, %for.inc.i.for.body.i91_crit_edge ], [ %call8.i.i.i68, %if.end10.i.for.body.i91_crit_edge ]
  %dfx_message.072.i = phi ptr [ %incdec.ptr20.i, %for.inc.i.for.body.i91_crit_edge ], [ %42, %if.end10.i.for.body.i91_crit_edge ]
  %rem.i87 = urem i32 %i.074.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.074.i)
  %cmp12.not.i = icmp ne i32 %i.074.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i87)
  %tobool13.not.i = icmp eq i32 %rem.i87, 0
  %or.cond.i88 = and i1 %cmp12.not.i, %tobool13.not.i
  %desc.1.idx.i89 = zext i1 %or.cond.i88 to i32
  %desc.1.i90 = getelementptr %struct.hclge_desc, ptr %desc.073.i, i32 %desc.1.idx.i89
  %68 = ptrtoint ptr %dfx_message.072.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dfx_message.072.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool16.not.i = icmp eq i32 %69, 0
  br i1 %tobool16.not.i, label %for.body.i91.for.inc.i_crit_edge, label %if.end18.i

for.body.i91.for.inc.i_crit_edge:                 ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end18.i:                                       ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i92 = getelementptr i8, ptr %buf, i32 %pos.7
  %sub.i93 = sub i32 %len, %pos.7
  %message.i94 = getelementptr inbounds %struct.hclge_dbg_dfx_message, ptr %dfx_message.072.i, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.hclge_desc, ptr %desc.073.i, i32 %desc.1.idx.i89, i32 4, i32 %rem.i87
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #11
  %call19.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i92, i32 noundef %sub.i93, ptr noundef nonnull @.str.151, ptr noundef %message.i94, i32 noundef %72) #11
  %add.i95 = add i32 %call19.i, %pos.7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i, %for.body.i91.for.inc.i_crit_edge
  %pos.8 = phi i32 [ %pos.7, %for.body.i91.for.inc.i_crit_edge ], [ %add.i95, %if.end18.i ]
  %inc.i96 = add nuw i32 %i.074.i, 1
  %incdec.ptr20.i = getelementptr %struct.hclge_dbg_dfx_message, ptr %dfx_message.072.i, i32 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, %67
  br i1 %exitcond.not.i97, label %for.inc.i.hclge_dbg_dump_reg_common.exit_crit_edge, label %for.inc.i.for.body.i91_crit_edge

for.inc.i.for.body.i91_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i91

for.inc.i.hclge_dbg_dump_reg_common.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_dump_reg_common.exit

hclge_dbg_dump_reg_common.exit:                   ; preds = %for.inc.i.hclge_dbg_dump_reg_common.exit_crit_edge, %if.end10.i.hclge_dbg_dump_reg_common.exit_crit_edge
  %pos.9 = phi i32 [ %pos.0129, %if.end10.i.hclge_dbg_dump_reg_common.exit_crit_edge ], [ %pos.8, %for.inc.i.hclge_dbg_dump_reg_common.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i68) #11
  br label %for.inc

for.inc:                                          ; preds = %hclge_dbg_dump_reg_common.exit, %for.body.for.inc_crit_edge
  %pos.11 = phi i32 [ %pos.9, %hclge_dbg_dump_reg_common.exit ], [ %pos.0129, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9.i, %if.end7.i.i.i69.cleanup_crit_edge, %if.end.i38.cleanup_crit_edge, %hclge_dbg_get_dfx_bd_num.exit.thread.i37, %for.end58.i, %if.end7.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %hclge_dbg_get_dfx_bd_num.exit.thread.i
  %retval.0 = phi i32 [ %ret.1.i, %for.end58.i ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ %retval.0.i.ph.i, %hclge_dbg_get_dfx_bd_num.exit.thread.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ %retval.0.i.ph.i36, %hclge_dbg_get_dfx_bd_num.exit.thread.i37 ], [ %call.i51.i, %if.then9.i ], [ -12, %if.end7.i.i.i69.cleanup_crit_edge ], [ -12, %if.end.i38.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_mac(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc.i26 = alloca %struct.hclge_desc, align 4
  %desc.i16 = alloca %struct.hclge_desc, align 4
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %0 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 769, i1 noundef zeroext true) #11
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hclge_dbg_dump_mac_enable_status.exit

if.end.i:                                         ; preds = %entry
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = call i32 @llvm.bswap.i32(i32 %3) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %pos.0 = phi i32 [ 0, %if.end.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [14 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_mac_en_status, i32 0, i32 %i.019.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %pos.0
  %sub.i = sub i32 %len, %pos.0
  %message.i = getelementptr [14 x %struct.hclge_dbg_status_dfx_info], ptr @hclge_dbg_mac_en_status, i32 0, i32 %i.019.i, i32 1
  %shl.i = shl nuw i32 1, %6
  %and.i = and i32 %shl.i, %4
  %shr.i = lshr i32 %and.i, %6
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.151, ptr noundef %message.i, i32 noundef %shr.i) #11
  %add.i = add i32 %call4.i, %pos.0
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

hclge_dbg_dump_mac_enable_status.exit:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.152, i32 noundef %call.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i16) #11
  %9 = call ptr @memset(ptr %desc.i16, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i16, i32 noundef 776, i1 noundef zeroext true) #11
  %call.i18 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i16, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end4, label %hclge_dbg_dump_mac_frame_size.exit

hclge_dbg_dump_mac_frame_size.exit:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 8
  %dev.i20 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i20, ptr noundef nonnull @.str.154, i32 noundef %call.i18) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i16) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i16, i32 0, i32 4
  %add.ptr.i22 = getelementptr i8, ptr %buf, i32 %add.i
  %sub.i23 = sub i32 %len, %add.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14) #11
  %conv.i = zext i16 %15 to i32
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i22, i32 noundef %sub.i23, ptr noundef nonnull @.str.156, i32 noundef %conv.i) #11
  %add.i24 = add i32 %call1.i, %add.i
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %add.i24
  %sub3.i = sub i32 %len, %add.i24
  %min_frm_size.i = getelementptr inbounds %struct.hclge_config_max_frm_size_cmd, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %min_frm_size.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %min_frm_size.i, align 2
  %conv4.i = zext i8 %17 to i32
  %call5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.157, i32 noundef %conv4.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i16) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i26) #11
  %18 = call ptr @memset(ptr %desc.i26, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i26, i32 noundef 777, i1 noundef zeroext true) #11
  %call.i28 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i26, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i39, label %do.end.i31

do.end.i31:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 8
  %dev.i30 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i30, ptr noundef nonnull @.str.158, i32 noundef %call.i28) #14
  br label %hclge_dbg_dump_mac_speed_duplex.exit

if.end.i39:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %add6.i = add i32 %call5.i, %add.i24
  %21 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i26, i32 0, i32 4
  %add.ptr.i32 = getelementptr i8, ptr %buf, i32 %add6.i
  %sub.i33 = sub i32 %len, %add6.i
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %24 = and i8 %23, 63
  %and.i34 = zext i8 %24 to i32
  %call1.i35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i32, i32 noundef %sub.i33, ptr noundef nonnull @.str.160, i32 noundef %and.i34) #11
  %add.i36 = add i32 %call1.i35, %add6.i
  %add.ptr2.i37 = getelementptr i8, ptr %buf, i32 %add.i36
  %sub3.i38 = sub i32 %len, %add.i36
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %21, align 4
  %27 = lshr i8 %26, 7
  %28 = zext i8 %27 to i32
  %call8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i37, i32 noundef %sub3.i38, ptr noundef nonnull @.str.161, i32 noundef %28) #11
  br label %hclge_dbg_dump_mac_speed_duplex.exit

hclge_dbg_dump_mac_speed_duplex.exit:             ; preds = %if.end.i39, %do.end.i31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i26) #11
  br label %cleanup

cleanup:                                          ; preds = %hclge_dbg_dump_mac_speed_duplex.exit, %hclge_dbg_dump_mac_frame_size.exit, %hclge_dbg_dump_mac_enable_status.exit
  %retval.0 = phi i32 [ %call.i28, %hclge_dbg_dump_mac_speed_duplex.exit ], [ %call.i, %hclge_dbg_dump_mac_enable_status.exit ], [ %call.i18, %hclge_dbg_dump_mac_frame_size.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_dcb(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc.i107 = alloca %struct.hclge_desc, align 4
  %desc.i90 = alloca %struct.hclge_desc, align 4
  %desc.i70 = alloca %struct.hclge_desc, align 4
  %desc.i43 = alloca %struct.hclge_desc, align 4
  %pri_num.i = alloca i8, align 1
  %desc.i = alloca %struct.hclge_desc, align 4
  %qset_num.i = alloca i16, align 2
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #11
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pos, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %3 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qset_num.i) #11
  %4 = ptrtoint ptr %qset_num.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %qset_num.i, align 2, !annotation !528
  %call.i = call i32 @hclge_tm_get_qset_num(ptr noundef %hdev, ptr noundef nonnull %qset_num.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.hclge_dbg_dump_dcb_qset.exit_crit_edge

entry.hclge_dbg_dump_dcb_qset.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_dump_dcb_qset.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %6
  %sub.i = sub i32 %len, %6
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.162) #11
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pos, align 4
  %add.i = add i32 %8, %call1.i
  store i32 %add.i, ptr %pos, align 4
  %9 = ptrtoint ptr %qset_num.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %qset_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp49.not.i = icmp eq i16 %10, 0
  br i1 %cmp49.not.i, label %if.end.i.if.end_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %hw.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end8.i.for.body.i_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 2116, i1 noundef zeroext true) #11
  %11 = call i32 @llvm.bswap.i32(i32 %indvars.iv.i) #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %call.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i, label %hclge_dbg_cmd_send.exit.i

hclge_dbg_cmd_send.exit.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.136, i32 noundef 2116, i32 noundef %call.i.i) #14
  br label %hclge_dbg_dump_dcb_qset.exit

if.end8.i:                                        ; preds = %for.body.i
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pos, align 4
  %add.ptr10.i = getelementptr i8, ptr %buf, i32 %18
  %sub11.i = sub i32 %len, %18
  %bf.lshr.i = lshr i32 %16, 31
  %bf.lshr15.i = lshr i32 %16, 30
  %bf.clear.i = and i32 %bf.lshr15.i, 1
  %bf.lshr18.i = lshr i32 %16, 29
  %bf.clear19.i = and i32 %bf.lshr18.i, 1
  %sum.shift.i = lshr i32 %16, 28
  %bf.clear23.i = and i32 %sum.shift.i, 1
  %call25.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i, i32 noundef %sub11.i, ptr noundef nonnull @.str.163, i32 noundef %indvars.iv.i, i32 noundef %bf.lshr.i, i32 noundef %bf.clear.i, i32 noundef %bf.clear19.i, i32 noundef %bf.clear23.i) #11
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos, align 4
  %add26.i = add i32 %20, %call25.i
  store i32 %add26.i, ptr %pos, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %21 = ptrtoint ptr %qset_num.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %qset_num.i, align 2
  %23 = zext i16 %22 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %23
  br i1 %cmp.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

hclge_dbg_dump_dcb_qset.exit:                     ; preds = %hclge_dbg_cmd_send.exit.i, %entry.hclge_dbg_dump_dcb_qset.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.hclge_dbg_dump_dcb_qset.exit_crit_edge ], [ %call.i.i, %hclge_dbg_cmd_send.exit.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qset_num.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qset_num.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i43) #11
  %24 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i43, i32 0, i32 4
  %25 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i43, i32 0, i32 4, i32 1
  %26 = call ptr @memset(ptr %desc.i43, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pri_num.i) #11
  %27 = ptrtoint ptr %pri_num.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %pri_num.i, align 1, !annotation !528
  %call.i44 = call i32 @hclge_tm_get_pri_num(ptr noundef %hdev, ptr noundef nonnull %pri_num.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end.i50, label %if.end.hclge_dbg_dump_dcb_pri.exit_crit_edge

if.end.hclge_dbg_dump_dcb_pri.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_dump_dcb_pri.exit

if.end.i50:                                       ; preds = %if.end
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos, align 4
  %add.ptr.i46 = getelementptr i8, ptr %buf, i32 %29
  %sub.i47 = sub i32 %len, %29
  %call1.i48 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i46, i32 noundef %sub.i47, ptr noundef nonnull @.str.164) #11
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pos, align 4
  %add.i49 = add i32 %31, %call1.i48
  store i32 %add.i49, ptr %pos, align 4
  %32 = ptrtoint ptr %pri_num.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pri_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp44.not.i = icmp eq i8 %33, 0
  br i1 %cmp44.not.i, label %if.end.i50.if.end4_crit_edge, label %for.body.lr.ph.i52

if.end.i50.if.end4_crit_edge:                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.body.lr.ph.i52:                               ; preds = %if.end.i50
  %hw.i.i51 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body.i56

for.body.i56:                                     ; preds = %if.end8.i68.for.body.i56_crit_edge, %for.body.lr.ph.i52
  %indvars.iv.i53 = phi i32 [ 0, %for.body.lr.ph.i52 ], [ %indvars.iv.next.i66, %if.end8.i68.for.body.i56_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i43, i32 noundef 2117, i1 noundef zeroext true) #11
  %34 = shl nuw i32 %indvars.iv.i53, 24
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %24, align 4
  %call.i.i54 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i51, ptr noundef nonnull %desc.i43, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %tobool.not.i.i55 = icmp eq i32 %call.i.i54, 0
  br i1 %tobool.not.i.i55, label %if.end8.i68, label %hclge_dbg_cmd_send.exit.i58

hclge_dbg_cmd_send.exit.i58:                      ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdev, align 8
  %dev.i.i57 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i57, ptr noundef nonnull @.str.136, i32 noundef 2117, i32 noundef %call.i.i54) #14
  br label %hclge_dbg_dump_dcb_pri.exit

if.end8.i68:                                      ; preds = %for.body.i56
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %25, align 4
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pos, align 4
  %add.ptr10.i59 = getelementptr i8, ptr %buf, i32 %41
  %sub11.i60 = sub i32 %len, %41
  %bf.lshr.i61 = lshr i32 %39, 31
  %bf.lshr15.i62 = lshr i32 %39, 30
  %bf.clear.i63 = and i32 %bf.lshr15.i62, 1
  %sum.shift.i64 = lshr i32 %39, 29
  %bf.clear19.i65 = and i32 %sum.shift.i64, 1
  %call21.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i59, i32 noundef %sub11.i60, ptr noundef nonnull @.str.165, i32 noundef %indvars.iv.i53, i32 noundef %bf.lshr.i61, i32 noundef %bf.clear.i63, i32 noundef %bf.clear19.i65) #11
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pos, align 4
  %add22.i = add i32 %43, %call21.i
  store i32 %add22.i, ptr %pos, align 4
  %indvars.iv.next.i66 = add nuw nsw i32 %indvars.iv.i53, 1
  %44 = ptrtoint ptr %pri_num.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pri_num.i, align 1
  %46 = zext i8 %45 to i32
  %cmp.i67 = icmp ult i32 %indvars.iv.next.i66, %46
  br i1 %cmp.i67, label %if.end8.i68.for.body.i56_crit_edge, label %if.end8.i68.if.end4_crit_edge

if.end8.i68.if.end4_crit_edge:                    ; preds = %if.end8.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end8.i68.for.body.i56_crit_edge:               ; preds = %if.end8.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i56

hclge_dbg_dump_dcb_pri.exit:                      ; preds = %hclge_dbg_cmd_send.exit.i58, %if.end.hclge_dbg_dump_dcb_pri.exit_crit_edge
  %retval.0.i69 = phi i32 [ %call.i44, %if.end.hclge_dbg_dump_dcb_pri.exit_crit_edge ], [ %call.i.i54, %hclge_dbg_cmd_send.exit.i58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pri_num.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i43) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end8.i68.if.end4_crit_edge, %if.end.i50.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pri_num.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i43) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i70) #11
  %47 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i70, i32 0, i32 4
  %48 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i70, i32 0, i32 4, i32 1
  %49 = call ptr @memset(ptr %desc.i70, i32 255, i32 32)
  %50 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pos, align 4
  %add.ptr.i71 = getelementptr i8, ptr %buf, i32 %51
  %sub.i72 = sub i32 %len, %51
  %call.i73 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i71, i32 noundef %sub.i72, ptr noundef nonnull @.str.166) #11
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pos, align 4
  %add.i74 = add i32 %53, %call.i73
  store i32 %add.i74, ptr %pos, align 4
  %num_pg.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %54 = ptrtoint ptr %num_pg.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_pg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp37.not.i = icmp eq i8 %55, 0
  br i1 %cmp37.not.i, label %if.end4.if.end8_crit_edge, label %for.body.lr.ph.i76

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.lr.ph.i76:                               ; preds = %if.end4
  %hw.i.i75 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body.i80

for.body.i80:                                     ; preds = %if.end.i88.for.body.i80_crit_edge, %for.body.lr.ph.i76
  %indvars.iv.i77 = phi i32 [ 0, %for.body.lr.ph.i76 ], [ %indvars.iv.next.i86, %if.end.i88.for.body.i80_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i70, i32 noundef 2118, i1 noundef zeroext true) #11
  %56 = shl nuw i32 %indvars.iv.i77, 24
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %47, align 4
  %call.i.i78 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i75, ptr noundef nonnull %desc.i70, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.end.i88, label %hclge_dbg_dump_dcb_pg.exit

if.end.i88:                                       ; preds = %for.body.i80
  %58 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %48, align 4
  %60 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pos, align 4
  %add.ptr6.i = getelementptr i8, ptr %buf, i32 %61
  %sub7.i = sub i32 %len, %61
  %bf.lshr.i83 = lshr i32 %59, 31
  %bf.lshr11.i = lshr i32 %59, 30
  %bf.clear.i84 = and i32 %bf.lshr11.i, 1
  %sum.shift.i85 = lshr i32 %59, 29
  %bf.clear15.i = and i32 %sum.shift.i85, 1
  %call17.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.i, i32 noundef %sub7.i, ptr noundef nonnull @.str.167, i32 noundef %indvars.iv.i77, i32 noundef %bf.lshr.i83, i32 noundef %bf.clear.i84, i32 noundef %bf.clear15.i) #11
  %62 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pos, align 4
  %add18.i = add i32 %63, %call17.i
  store i32 %add18.i, ptr %pos, align 4
  %indvars.iv.next.i86 = add nuw nsw i32 %indvars.iv.i77, 1
  %64 = ptrtoint ptr %num_pg.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_pg.i, align 1
  %66 = zext i8 %65 to i32
  %cmp.i87 = icmp ult i32 %indvars.iv.next.i86, %66
  br i1 %cmp.i87, label %if.end.i88.for.body.i80_crit_edge, label %if.end.i88.if.end8_crit_edge

if.end.i88.if.end8_crit_edge:                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.i88.for.body.i80_crit_edge:                ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i80

hclge_dbg_dump_dcb_pg.exit:                       ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hdev, align 8
  %dev.i.i81 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i81, ptr noundef nonnull @.str.136, i32 noundef 2118, i32 noundef %call.i.i78) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i70) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end.i88.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i70) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i90) #11
  %69 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i90, i32 0, i32 4
  %70 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i90, i32 0, i32 4, i32 1
  %71 = call ptr @memset(ptr %desc.i90, i32 255, i32 32)
  %72 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pos, align 4
  %add.ptr.i91 = getelementptr i8, ptr %buf, i32 %73
  %sub.i92 = sub i32 %len, %73
  %call.i93 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i91, i32 noundef %sub.i92, ptr noundef nonnull @.str.168) #11
  %74 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pos, align 4
  %add.i94 = add i32 %75, %call.i93
  store i32 %add.i94, ptr %pos, align 4
  %num_tqps.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 16
  %76 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_tqps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp52.not.i = icmp eq i16 %77, 0
  br i1 %cmp52.not.i, label %if.end8.if.end12_crit_edge, label %for.body.lr.ph.i96

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

for.body.lr.ph.i96:                               ; preds = %if.end8
  %hw.i.i95 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body.i100

for.body.i100:                                    ; preds = %if.end14.i.for.body.i100_crit_edge, %for.body.lr.ph.i96
  %indvars.iv.i97 = phi i32 [ 0, %for.body.lr.ph.i96 ], [ %indvars.iv.next.i104, %if.end14.i.for.body.i100_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i90, i32 noundef 2120, i1 noundef zeroext true) #11
  %78 = call i32 @llvm.bswap.i32(i32 %indvars.iv.i97) #11
  %79 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %69, align 4
  %call.i.i98 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i95, ptr noundef nonnull %desc.i90, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %call.i.i98, 0
  br i1 %tobool.not.i.i99, label %if.end.i103, label %hclge_dbg_cmd_send.exit.i102

hclge_dbg_cmd_send.exit.i102:                     ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hdev, align 8
  %dev.i.i101 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i101, ptr noundef nonnull @.str.136, i32 noundef 2120, i32 noundef %call.i.i98) #14
  br label %hclge_dbg_dump_dcb_queue.exit

if.end.i103:                                      ; preds = %for.body.i100
  %82 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pos, align 4
  %add.ptr5.i = getelementptr i8, ptr %buf, i32 %83
  %sub6.i = sub i32 %len, %83
  %84 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %70, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #11
  %call8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5.i, i32 noundef %sub6.i, ptr noundef nonnull @.str.169, i32 noundef %indvars.iv.i97, i32 noundef %86) #11
  %87 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pos, align 4
  %add9.i = add i32 %88, %call8.i
  store i32 %add9.i, ptr %pos, align 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i90, i32 noundef 2121, i1 noundef zeroext true) #11
  %89 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %78, ptr %69, align 4
  %call.i46.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i95, ptr noundef nonnull %desc.i90, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i47.i, label %if.end14.i, label %hclge_dbg_cmd_send.exit50.i

hclge_dbg_cmd_send.exit50.i:                      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hdev, align 8
  %dev.i48.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i48.i, ptr noundef nonnull @.str.136, i32 noundef 2121, i32 noundef %call.i46.i) #14
  br label %hclge_dbg_dump_dcb_queue.exit

if.end14.i:                                       ; preds = %if.end.i103
  %92 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pos, align 4
  %add.ptr15.i = getelementptr i8, ptr %buf, i32 %93
  %sub16.i = sub i32 %len, %93
  %94 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %70, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #11
  %call19.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.i, i32 noundef %sub16.i, ptr noundef nonnull @.str.170, i32 noundef %96) #11
  %97 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pos, align 4
  %add20.i = add i32 %98, %call19.i
  store i32 %add20.i, ptr %pos, align 4
  %indvars.iv.next.i104 = add nuw nsw i32 %indvars.iv.i97, 1
  %99 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %num_tqps.i, align 4
  %101 = zext i16 %100 to i32
  %cmp.i105 = icmp ult i32 %indvars.iv.next.i104, %101
  br i1 %cmp.i105, label %if.end14.i.for.body.i100_crit_edge, label %if.end14.i.if.end12_crit_edge

if.end14.i.if.end12_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end14.i.for.body.i100_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i100

hclge_dbg_dump_dcb_queue.exit:                    ; preds = %hclge_dbg_cmd_send.exit50.i, %hclge_dbg_cmd_send.exit.i102
  %retval.0.i106 = phi i32 [ %call.i.i98, %hclge_dbg_cmd_send.exit.i102 ], [ %call.i46.i, %hclge_dbg_cmd_send.exit50.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i90) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end14.i.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i90) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i107) #11
  %102 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i107, i32 0, i32 4
  %103 = call ptr @memset(ptr %desc.i107, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i107, i32 noundef 2119, i1 noundef zeroext true) #11
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %102, align 4
  %hw.i.i108 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i.i109 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i108, ptr noundef nonnull %desc.i107, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %call.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.end16, label %hclge_dbg_dump_dcb_port.exit

hclge_dbg_dump_dcb_port.exit:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hdev, align 8
  %dev.i.i111 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i111, ptr noundef nonnull @.str.136, i32 noundef 2119, i32 noundef %call.i.i109) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i107) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %107 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i107, i32 0, i32 4, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %110 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pos, align 4
  %add.ptr.i113 = getelementptr i8, ptr %buf, i32 %111
  %sub.i114 = sub i32 %len, %111
  %bf.lshr.i115 = lshr i32 %109, 31
  %call3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i113, i32 noundef %sub.i114, ptr noundef nonnull @.str.171, i32 noundef %bf.lshr.i115) #11
  %112 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pos, align 4
  %add.i116 = add i32 %113, %call3.i
  store i32 %add.i116, ptr %pos, align 4
  %add.ptr4.i = getelementptr i8, ptr %buf, i32 %add.i116
  %sub5.i = sub i32 %len, %add.i116
  %sum.shift.i117 = lshr i32 %109, 30
  %bf.clear.i118 = and i32 %sum.shift.i117, 1
  %call9.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4.i, i32 noundef %sub5.i, ptr noundef nonnull @.str.172, i32 noundef %bf.clear.i118) #11
  %114 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pos, align 4
  %add10.i = add i32 %115, %call9.i
  store i32 %add10.i, ptr %pos, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i107) #11
  %call17 = call fastcc i32 @hclge_dbg_dump_dcb_tm(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %pos)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %hclge_dbg_dump_dcb_port.exit, %hclge_dbg_dump_dcb_queue.exit, %hclge_dbg_dump_dcb_pg.exit, %hclge_dbg_dump_dcb_pri.exit, %hclge_dbg_dump_dcb_qset.exit
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %retval.0.i, %hclge_dbg_dump_dcb_qset.exit ], [ %retval.0.i69, %hclge_dbg_dump_dcb_pri.exit ], [ %call.i.i78, %hclge_dbg_dump_dcb_pg.exit ], [ %retval.0.i106, %hclge_dbg_dump_dcb_queue.exit ], [ %call.i.i109, %hclge_dbg_dump_dcb_port.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_fd_tcam(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rule_num1 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 66, i32 2
  %0 = ptrtoint ptr %rule_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rule_num1, align 4
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %2 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_dev, align 4
  %caps = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %caps, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.187) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hclge_fd_rule_num = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 69
  %8 = ptrtoint ptr %hclge_fd_rule_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hclge_fd_rule_num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 2) #11
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end5.cleanup_crit_edge, label %if.end7.i.i, !prof !529

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end5
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #17
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 256) #16
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %fd_rule_lock.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 68
  tail call void @_raw_spin_lock_bh(ptr noundef %fd_rule_lock.i) #11
  %fd_rule_list.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 67
  %14 = ptrtoint ptr %fd_rule_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fd_rule_list.i, align 4
  %tobool2.not33.i = icmp eq ptr %15, null
  br i1 %tobool2.not33.i, label %if.end13.hclge_dbg_get_rules_location.exit_crit_edge, label %if.end13.land.rhs.i_crit_edge

if.end13.land.rhs.i_crit_edge:                    ; preds = %if.end13
  br label %land.rhs.i

if.end13.hclge_dbg_get_rules_location.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_get_rules_location.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end13.land.rhs.i_crit_edge
  %rule.035.i = phi ptr [ %17, %land.rhs.i.land.rhs.i_crit_edge ], [ %15, %if.end13.land.rhs.i_crit_edge ]
  %cnt.034.i = phi i32 [ %inc.i, %land.rhs.i.land.rhs.i_crit_edge ], [ 0, %if.end13.land.rhs.i_crit_edge ]
  %16 = ptrtoint ptr %rule.035.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rule.035.i, align 4
  %location.i = getelementptr inbounds %struct.hclge_fd_rule, ptr %rule.035.i, i32 0, i32 8
  %18 = ptrtoint ptr %location.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %location.i, align 4
  %arrayidx.i = getelementptr i16, ptr %call8.i.i, i32 %cnt.034.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx.i, align 2
  %inc.i = add i32 %cnt.034.i, 1
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %land.rhs.i.hclge_dbg_get_rules_location.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i.hclge_dbg_get_rules_location.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_get_rules_location.exit

hclge_dbg_get_rules_location.exit:                ; preds = %land.rhs.i.hclge_dbg_get_rules_location.exit_crit_edge, %if.end13.hclge_dbg_get_rules_location.exit_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %if.end13.hclge_dbg_get_rules_location.exit_crit_edge ], [ %inc.i, %land.rhs.i.hclge_dbg_get_rules_location.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %fd_rule_lock.i) #11
  %21 = ptrtoint ptr %hclge_fd_rule_num to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hclge_fd_rule_num, align 4
  %conv.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.lcssa.i, i32 %conv.i)
  %cmp.not.i = icmp ne i32 %cnt.0.lcssa.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa.i)
  %cmp17.i = icmp eq i32 %cnt.0.lcssa.i, 0
  %or.cond.i = or i1 %cmp17.i, %cmp.not.i
  %retval.0.i = select i1 %or.cond.i, i32 -22, i32 %cnt.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then15, label %hclge_dbg_get_rules_location.exit.for.body_crit_edge

hclge_dbg_get_rules_location.exit.for.body_crit_edge: ; preds = %hclge_dbg_get_rules_location.exit
  br label %for.body

if.then15:                                        ; preds = %hclge_dbg_get_rules_location.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdev, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.190, i32 noundef %retval.0.i) #14
  br label %out

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %hclge_dbg_get_rules_location.exit.for.body_crit_edge
  %pos.0114 = phi i32 [ %add46, %if.end42.for.body_crit_edge ], [ 0, %hclge_dbg_get_rules_location.exit.for.body_crit_edge ]
  %i.0113 = phi i32 [ %inc, %if.end42.for.body_crit_edge ], [ 0, %hclge_dbg_get_rules_location.exit.for.body_crit_edge ]
  %arrayidx23 = getelementptr i16, ptr %call8.i.i, i32 %i.0113
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx23, align 2
  %conv = zext i16 %26 to i32
  %.fca.1.insert = insertvalue [2 x i32] [i32 16777215, i32 poison], i32 %conv, 1
  %call24 = tail call fastcc i32 @hclge_dbg_fd_tcam_read(ptr noundef %hdev, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i, [2 x i32] %.fca.1.insert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.193, i32 noundef %call24) #14
  br label %out

if.end32:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.0114
  %sub = sub i32 %len, %pos.0114
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i) #11
  %call34 = tail call fastcc i32 @hclge_dbg_fd_tcam_read(ptr noundef %hdev, i1 noundef zeroext false, ptr noundef nonnull %call7.i.i, [2 x i32] %.fca.1.insert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.196, i32 noundef %call34) #14
  br label %out

if.end42:                                         ; preds = %if.end32
  %add = add i32 %call33, %pos.0114
  %add.ptr43 = getelementptr i8, ptr %buf, i32 %add
  %sub44 = sub i32 %len, %add
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i) #11
  %add46 = add i32 %call45, %add
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i
  br i1 %exitcond.not, label %if.end42.out_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end42.out_crit_edge, %do.end39, %do.end29, %if.then15
  %ret.1 = phi i32 [ %retval.0.i, %if.then15 ], [ %call24, %do.end29 ], [ %call34, %do.end39 ], [ 0, %if.end42.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then12, %if.end7.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %if.then12 ], [ -95, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_mac_tnl_status(ptr nocapture noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.202) #11
  %mac_tnl_log = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83
  %out = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %mac_tnl_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_tnl_log, align 8
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not321 = icmp eq i32 %1, %3
  br i1 %cmp.not321, label %entry.while.end_crit_edge, label %if.then31.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then31.lr.ph:                                  ; preds = %entry
  %buf2 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83, i32 1
  %mask = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83, i32 0, i32 0, i32 2
  br label %if.then31

if.then31:                                        ; preds = %if.then31.if.then31_crit_edge, %if.then31.lr.ph
  %4 = phi i32 [ %3, %if.then31.lr.ph ], [ %16, %if.then31.if.then31_crit_edge ]
  %pos.0322 = phi i32 [ %call, %if.then31.lr.ph ], [ %add220, %if.then31.if.then31_crit_edge ]
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 8
  %and = and i32 %6, %4
  %arrayidx = getelementptr %struct.hclge_mac_tnl_stats, ptr %buf2, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %7)
  %stats.sroa.0.0.copyload315 = load i64, ptr %arrayidx, align 8
  %stats.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %8 = ptrtoint ptr %stats.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %stats.sroa.7.0.copyload316 = load i32, ptr %stats.sroa.7.0.arrayidx.sroa_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !530
  %9 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %out, align 4
  %conv33 = trunc i64 %stats.sroa.0.0.copyload315 to i32
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %stats.sroa.0.0.copyload315, i32 0) #18, !srcloc !531
  %asmresult.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %stats.sroa.0.0.copyload315, i64 %asmresult.i, i32 %asmresult4.i) #18, !srcloc !532
  %asmresult10.i = extractvalue { i64, i32 } %12, 0
  %div182313 = lshr i64 %asmresult10.i, 29
  %conv185 = trunc i64 %div182313 to i32
  %mul186.neg = mul i32 %conv185, -1000000000
  %sub187 = add i32 %mul186.neg, %conv33
  %add.ptr214 = getelementptr i8, ptr %buf, i32 %pos.0322
  %sub215 = sub i32 %len, %pos.0322
  %div218 = udiv i32 %sub187, 1000
  %call219 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr214, i32 noundef %sub215, ptr noundef nonnull @.str.203, i32 noundef %conv185, i32 noundef %div218, i32 noundef %stats.sroa.7.0.copyload316) #11
  %add220 = add i32 %call219, %pos.0322
  %13 = ptrtoint ptr %mac_tnl_log to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_tnl_log, align 8
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.then31.while.end_crit_edge, label %if.then31.if.then31_crit_edge

if.then31.if.then31_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then31.while.end_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.then31.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_serv_info(ptr nocapture noundef readonly %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #11
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %call.i, i32 0) #18, !srcloc !531
  %asmresult.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %call.i, i64 %asmresult.i, i32 %asmresult4.i) #18, !srcloc !532
  %asmresult10.i = extractvalue { i64, i32 } %1, 0
  %conv15 = trunc i64 %call.i to i32
  %div159299 = lshr i64 %asmresult10.i, 29
  %conv160 = trunc i64 %div159299 to i32
  %mul161.neg = mul i32 %conv160, -1000000000
  %sub162 = add i32 %mul161.neg, %conv15
  %div183 = udiv i32 %sub162, 1000
  %call184 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.204, i32 noundef %conv160, i32 noundef %div183) #11
  %add.ptr186 = getelementptr i8, ptr %buf, i32 %call184
  %sub187 = sub i32 %len, %call184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_serv_processed = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 71
  %3 = ptrtoint ptr %last_serv_processed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_serv_processed, align 4
  %sub188 = sub i32 %2, %4
  %call189 = tail call i32 @jiffies_to_msecs(i32 noundef %sub188) #11
  %call190 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr186, i32 noundef %sub187, ptr noundef nonnull @.str.205, i32 noundef %call189) #11
  %add191 = add i32 %call190, %call184
  %add.ptr192 = getelementptr i8, ptr %buf, i32 %add191
  %sub193 = sub i32 %len, %add191
  %5 = ptrtoint ptr %last_serv_processed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_serv_processed, align 4
  %call195 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr192, i32 noundef %sub193, ptr noundef nonnull @.str.206, i32 noundef %6) #11
  %add196 = add i32 %call195, %add191
  %add.ptr197 = getelementptr i8, ptr %buf, i32 %add196
  %sub198 = sub i32 %len, %add196
  %serv_processed_cnt = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 70
  %7 = ptrtoint ptr %serv_processed_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serv_processed_cnt, align 8
  %call199 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr197, i32 noundef %sub198, ptr noundef nonnull @.str.207, i32 noundef %8) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_vlan_config(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %desc.i132.i7 = alloca %struct.hclge_desc, align 4
  %desc.i.i8 = alloca %struct.hclge_desc, align 4
  %str_id.i9 = alloca [16 x i8], align 1
  %str_pvid.i = alloca [16 x i8], align 1
  %result.i = alloca [15 x ptr], align 4
  %content.i10 = alloca [512 x i8], align 1
  %desc.i132.i = alloca %struct.hclge_desc, align 4
  %desc.i123.i = alloca %struct.hclge_desc, align 4
  %desc.i.i = alloca %struct.hclge_desc, align 4
  %content.i = alloca [256 x i8], align 1
  %str_id.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %content.i) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str_id.i) #11
  %0 = call ptr @memset(ptr %str_id.i, i32 255, i32 16)
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %call.i = tail call i32 @pci_num_vf(ptr noundef %2) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #11
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 1
  %5 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i, i32 noundef 4352, i1 noundef zeroext true) #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %3, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 4
  %hw.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i, ptr noundef nonnull %desc.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i, label %hclge_get_vlan_filter_state.exit.i

hclge_get_vlan_filter_state.exit.i:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.211, i32 noundef 0, i32 noundef %call.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #11
  br label %hclge_dbg_dump_vlan_filter_config.exit.thread

if.end.i:                                         ; preds = %entry
  %conv.i = add i32 %call.i, 1
  %vlan_fe1.i.i = getelementptr inbounds %struct.hclge_vlan_filter_ctrl_cmd, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %vlan_fe1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vlan_fe1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #11
  %and.i = and i8 %11, 1
  %12 = lshr i8 %11, 1
  %.lobit.i = and i8 %12, 1
  %idxprom.i = zext i8 %and.i to i32
  %arrayidx.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %call8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.208, ptr noundef %14) #11
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %call8.i
  %sub.i = sub i32 %len, %call8.i
  %idxprom10.i = zext i8 %.lobit.i to i32
  %arrayidx11.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom10.i
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11.i, align 4
  %call12.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.209, ptr noundef %16) #11
  %add13.i = add i32 %call12.i, %call8.i
  %17 = call ptr @memset(ptr %content.i, i32 32, i32 256)
  %call13.i.i = call i32 @strlen(ptr noundef nonnull @vlan_filter_items) #15
  %call14.i.i = call ptr @strncpy(ptr noundef nonnull %content.i, ptr noundef nonnull @vlan_filter_items, i32 noundef %call13.i.i) #11
  %add.i.i = add i32 %call13.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %content.i, i32 %add.i.i
  %call13.i.1.i = call i32 @strlen(ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 1)) #15
  %call14.i.1.i = call ptr @strncpy(ptr noundef %add.ptr.i.i, ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 1), i32 noundef %call13.i.1.i) #11
  %add.i.1.i = add i32 %call13.i.1.i, 2
  %add.ptr.i.1.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.1.i
  %call13.i.2.i = call i32 @strlen(ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 2)) #15
  %call14.i.2.i = call ptr @strncpy(ptr noundef %add.ptr.i.1.i, ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 2), i32 noundef %call13.i.2.i) #11
  %add.i.2.i = add i32 %call13.i.2.i, 2
  %add.ptr.i.2.i = getelementptr i8, ptr %add.ptr.i.1.i, i32 %add.i.2.i
  %call13.i.3.i = call i32 @strlen(ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 3)) #15
  %call14.i.3.i = call ptr @strncpy(ptr noundef %add.ptr.i.2.i, ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 3), i32 noundef %call13.i.3.i) #11
  %add.ptr.i.3.i = getelementptr i8, ptr %add.ptr.i.2.i, i32 %call13.i.3.i
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr.i.3.i, i32 1
  %18 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %add.ptr.i.3.i, align 1
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %incdec.ptr.i.i, align 1
  %add.ptr14.i = getelementptr i8, ptr %buf, i32 %add13.i
  %sub15.i = sub i32 %len, %add13.i
  %call17.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.i, i32 noundef %sub15.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %content.i) #11
  %add18.i = add i32 %call17.i, %add13.i
  %conv20.i = and i32 %conv.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20.i)
  %cmp166.not.i = icmp eq i32 %conv20.i, 0
  br i1 %cmp166.not.i, label %if.end.i.if.end_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %20 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i123.i, i32 0, i32 4
  %21 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i123.i, i32 0, i32 4, i32 1
  %vlan_fe1.i129.i = getelementptr inbounds %struct.hclge_vlan_filter_ctrl_cmd, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i132.i, i32 0, i32 4
  %ae_dev.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %23 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i132.i, i32 0, i32 4, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.0 = phi i32 [ %add18.i, %for.body.lr.ph.i ], [ %add67.i, %cond.end.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %cond.end.i.for.body.i_crit_edge ]
  %bypass.0167.i = phi i8 [ -1, %for.body.lr.ph.i ], [ %bypass.1.ph.i, %cond.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i123.i) #11
  %24 = call ptr @memset(ptr %desc.i123.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i123.i, i32 noundef 4352, i1 noundef zeroext true) #11
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %20, align 4
  %26 = trunc i32 %indvars.iv.i to i8
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %21, align 4
  %call.i.i125.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i, ptr noundef nonnull %desc.i123.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125.i)
  %tobool.not.i.i126.i = icmp eq i32 %call.i.i125.i, 0
  br i1 %tobool.not.i.i126.i, label %if.end25.i, label %hclge_get_vlan_filter_state.exit131.i

hclge_get_vlan_filter_state.exit131.i:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev, align 8
  %dev.i.i127.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i127.i, ptr noundef nonnull @.str.211, i32 noundef %indvars.iv.i, i32 noundef %call.i.i125.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i123.i) #11
  br label %hclge_dbg_dump_vlan_filter_config.exit.thread

if.end25.i:                                       ; preds = %for.body.i
  %30 = ptrtoint ptr %vlan_fe1.i129.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vlan_fe1.i129.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i123.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i132.i) #11
  %32 = call ptr @memset(ptr %desc.i132.i, i32 255, i32 32)
  %33 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ae_dev.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %caps.i.i, align 4
  %37 = and i32 %36, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.end25.i.if.end37.i_crit_edge, label %if.end.i133.i

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.end.i133.i:                                    ; preds = %if.end25.i
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i132.i, i32 noundef 4355, i1 noundef zeroext true) #11
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %26, ptr %23, align 4
  %call3.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i, ptr noundef nonnull %desc.i132.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %hclge_get_port_vlan_filter_bypass_state.exit.i

if.end6.i.i:                                      ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %22, align 4
  %41 = and i8 %40, 1
  br label %if.end37.i

hclge_get_port_vlan_filter_bypass_state.exit.i:   ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.213, i32 noundef %indvars.iv.i, i32 noundef %call3.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i132.i) #11
  br label %hclge_dbg_dump_vlan_filter_config.exit.thread

if.end37.i:                                       ; preds = %if.end6.i.i, %if.end25.i.if.end37.i_crit_edge
  %bypass.1.ph.i = phi i8 [ %41, %if.end6.i.i ], [ %bypass.0167.i, %if.end25.i.if.end37.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i132.i) #11
  %44 = lshr i8 %31, 1
  %.lobit121.i = and i8 %44, 1
  %and27.i = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %tobool.not.i134.i = icmp eq i32 %indvars.iv.i, 0
  br i1 %tobool.not.i134.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add nsw i32 %indvars.iv.i, -1
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str_id.i, ptr noundef nonnull @.str.83, i32 noundef %sub.i.i) #11
  br label %hclge_dbg_get_func_id_str.exit.i

if.else.i.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = call ptr @memcpy(ptr %str_id.i, ptr @.str.84, i32 3)
  br label %hclge_dbg_get_func_id_str.exit.i

hclge_dbg_get_func_id_str.exit.i:                 ; preds = %if.else.i.i, %if.then.i.i
  %idxprom42.i = zext i8 %and27.i to i32
  %arrayidx43.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom42.i
  %46 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx43.i, align 4
  %idxprom47.i = zext i8 %.lobit121.i to i32
  %arrayidx48.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom47.i
  %48 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx48.i, align 4
  %50 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ae_dev.i.i, align 4
  %caps.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %caps.i, align 4
  %54 = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool54.not.i = icmp eq i32 %54, 0
  br i1 %tobool54.not.i, label %hclge_dbg_get_func_id_str.exit.i.cond.end.i_crit_edge, label %cond.true.i

hclge_dbg_get_func_id_str.exit.i.cond.end.i_crit_edge: ; preds = %hclge_dbg_get_func_id_str.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %hclge_dbg_get_func_id_str.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom55.i = zext i8 %bypass.1.ph.i to i32
  %arrayidx56.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom55.i
  %55 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx56.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %hclge_dbg_get_func_id_str.exit.i.cond.end.i_crit_edge
  %cond57.i = phi ptr [ %56, %cond.true.i ], [ @.str.210, %hclge_dbg_get_func_id_str.exit.i.cond.end.i_crit_edge ]
  %57 = call ptr @memset(ptr %content.i, i32 32, i32 256)
  %call13.i141.i = call i32 @strlen(ptr noundef nonnull %str_id.i) #15
  %call14.i142.i = call ptr @strncpy(ptr noundef nonnull %content.i, ptr noundef nonnull %str_id.i, i32 noundef %call13.i141.i) #11
  %call19.i144.i = call i32 @strlen(ptr noundef nonnull @vlan_filter_items) #15
  %add.i147.i = add i32 %call19.i144.i, 2
  %add.ptr.i148.i = getelementptr i8, ptr %content.i, i32 %add.i147.i
  %call13.i141.1.i = call i32 @strlen(ptr noundef %47) #15
  %call14.i142.1.i = call ptr @strncpy(ptr noundef %add.ptr.i148.i, ptr noundef %47, i32 noundef %call13.i141.1.i) #11
  %call19.i144.1.i = call i32 @strlen(ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 1)) #15
  %add.i147.1.i = add i32 %call19.i144.1.i, 2
  %add.ptr.i148.1.i = getelementptr i8, ptr %add.ptr.i148.i, i32 %add.i147.1.i
  %call13.i141.2.i = call i32 @strlen(ptr noundef %49) #15
  %call14.i142.2.i = call ptr @strncpy(ptr noundef %add.ptr.i148.1.i, ptr noundef %49, i32 noundef %call13.i141.2.i) #11
  %call19.i144.2.i = call i32 @strlen(ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 2)) #15
  %add.i147.2.i = add i32 %call19.i144.2.i, 2
  %add.ptr.i148.2.i = getelementptr i8, ptr %add.ptr.i148.1.i, i32 %add.i147.2.i
  %call13.i141.3.i = call i32 @strlen(ptr noundef %cond57.i) #15
  %call14.i142.3.i = call ptr @strncpy(ptr noundef %add.ptr.i148.2.i, ptr noundef %cond57.i, i32 noundef %call13.i141.3.i) #11
  %call19.i144.3.i = call i32 @strlen(ptr noundef getelementptr inbounds ([4 x %struct.hclge_dbg_item], ptr @vlan_filter_items, i32 0, i32 3)) #15
  %add.ptr.i148.3.i = getelementptr i8, ptr %add.ptr.i148.2.i, i32 %call19.i144.3.i
  %incdec.ptr.i152.i = getelementptr i8, ptr %add.ptr.i148.3.i, i32 1
  %58 = ptrtoint ptr %add.ptr.i148.3.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 10, ptr %add.ptr.i148.3.i, align 1
  %59 = ptrtoint ptr %incdec.ptr.i152.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %incdec.ptr.i152.i, align 1
  %add.ptr63.i = getelementptr i8, ptr %buf, i32 %pos.0
  %sub64.i = sub i32 %len, %pos.0
  %call66.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63.i, i32 noundef %sub64.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %content.i) #11
  %add67.i = add i32 %call66.i, %pos.0
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv20.i
  br i1 %exitcond.not.i, label %cond.end.i.if.end_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cond.end.i.if.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

hclge_dbg_dump_vlan_filter_config.exit.thread:    ; preds = %hclge_get_port_vlan_filter_bypass_state.exit.i, %hclge_get_vlan_filter_state.exit131.i, %hclge_get_vlan_filter_state.exit.i
  %retval.0.i.ph = phi i32 [ %call3.i.i, %hclge_get_port_vlan_filter_bypass_state.exit.i ], [ %call.i.i125.i, %hclge_get_vlan_filter_state.exit131.i ], [ %call.i.i.i, %hclge_get_vlan_filter_state.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str_id.i) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %content.i) #11
  br label %cleanup

if.end:                                           ; preds = %cond.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %pos.1 = phi i32 [ %add18.i, %if.end.i.if.end_crit_edge ], [ %add67.i, %cond.end.i.if.end_crit_edge ]
  %add.ptr69.i = getelementptr i8, ptr %buf, i32 %pos.1
  %sub70.i = sub i32 %len, %pos.1
  %call71.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69.i, i32 noundef %sub70.i, ptr noundef nonnull @.str.32) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str_id.i) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %content.i) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str_id.i9) #11
  %60 = call ptr @memset(ptr %str_id.i9, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str_pvid.i) #11
  %61 = call ptr @memset(ptr %str_pvid.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result.i) #11
  %62 = call ptr @memset(ptr %result.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %content.i10) #11
  %63 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hdev, align 8
  %call.i11 = call i32 @pci_num_vf(ptr noundef %64) #11
  %65 = call ptr @memset(ptr %content.i10, i32 32, i32 512)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end
  %indvars.iv.i.i = phi i32 [ 0, %if.end ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pos.042.i.i = phi ptr [ %content.i10, %if.end ], [ %add.ptr.i.i15, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.hclge_dbg_item, ptr @vlan_offload_items, i32 %indvars.iv.i.i
  %call13.i.i12 = call i32 @strlen(ptr noundef %arrayidx8.i.i) #15
  %call14.i.i13 = call ptr @strncpy(ptr noundef %pos.042.i.i, ptr noundef %arrayidx8.i.i, i32 noundef %call13.i.i12) #11
  %interval.i.i = getelementptr %struct.hclge_dbg_item, ptr @vlan_offload_items, i32 %indvars.iv.i.i, i32 1
  %66 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %interval.i.i, align 2
  %conv22.i.i = zext i16 %67 to i32
  %add.i.i14 = add i32 %call13.i.i12, %conv22.i.i
  %add.ptr.i.i15 = getelementptr i8, ptr %pos.042.i.i, i32 %add.i.i14
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 15
  br i1 %exitcond.not.i.i, label %hclge_dbg_fill_content.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

hclge_dbg_fill_content.exit.i:                    ; preds = %for.body.i.i
  %add72.i = add i32 %call71.i, %pos.1
  %conv.i16 = add i32 %call.i11, 1
  %incdec.ptr.i.i17 = getelementptr i8, ptr %add.ptr.i.i15, i32 1
  %68 = ptrtoint ptr %add.ptr.i.i15 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 10, ptr %add.ptr.i.i15, align 1
  %69 = ptrtoint ptr %incdec.ptr.i.i17 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %incdec.ptr.i.i17, align 1
  %add.ptr.i18 = getelementptr i8, ptr %buf, i32 %add72.i
  %sub.i19 = sub i32 %len, %add72.i
  %call2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i18, i32 noundef %sub.i19, ptr noundef nonnull @.str.22, ptr noundef nonnull %content.i10) #11
  %conv5.i = and i32 %conv.i16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5.i)
  %cmp203.not.i = icmp eq i32 %conv5.i, 0
  br i1 %cmp203.not.i, label %hclge_dbg_fill_content.exit.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge, label %for.body.lr.ph.i20

hclge_dbg_fill_content.exit.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge: ; preds = %hclge_dbg_fill_content.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_dump_vlan_offload_config.exit

for.body.lr.ph.i20:                               ; preds = %hclge_dbg_fill_content.exit.i
  %add3.i = add i32 %call2.i, %add72.i
  %70 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i8, i32 0, i32 4
  %71 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i8, i32 0, i32 4, i32 2
  %vf_offset.i.i = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, ptr %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i8, i32 0, i32 4, i32 1
  %73 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i132.i7, i32 0, i32 4
  %74 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i132.i7, i32 0, i32 4, i32 2
  %vf_offset.i133.i = getelementptr inbounds %struct.hclge_vport_vtag_rx_cfg_cmd, ptr %73, i32 0, i32 1
  %arrayidx20.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 1
  %arrayidx25.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 2
  %arrayidx30.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 3
  %arrayidx35.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 4
  %arrayidx40.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 5
  %arrayidx45.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 6
  %arrayidx50.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 7
  %arrayidx55.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 8
  %arrayidx60.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 9
  %arrayidx65.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 10
  %arrayidx70.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 11
  %arrayidx75.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 12
  %arrayidx80.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 13
  %arrayidx85.i = getelementptr inbounds [15 x ptr], ptr %result.i, i32 0, i32 14
  br label %for.body.i24

for.body.i24:                                     ; preds = %hclge_dbg_fill_content.exit171.i.for.body.i24_crit_edge, %for.body.lr.ph.i20
  %pos.3 = phi i32 [ %add3.i, %for.body.lr.ph.i20 ], [ %add92.i, %hclge_dbg_fill_content.exit171.i.for.body.i24_crit_edge ]
  %indvars.iv.i21 = phi i32 [ 0, %for.body.lr.ph.i20 ], [ %indvars.iv.next.i31, %hclge_dbg_fill_content.exit171.i.for.body.i24_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i8) #11
  %75 = call ptr @memset(ptr %desc.i.i8, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i8, i32 noundef 3841, i1 noundef zeroext true) #11
  %76 = trunc i32 %indvars.iv.i21 to i8
  %div61.i.i = lshr i8 %76, 6
  %77 = ptrtoint ptr %vf_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %div61.i.i, ptr %vf_offset.i.i, align 1
  %78 = lshr i32 %indvars.iv.i21, 3
  %79 = and i32 %78, 7
  %rem6.i.i = and i8 %76, 7
  %shl.i.i = shl nuw i8 1, %rem6.i.i
  %arrayidx.i.i = getelementptr [8 x i8], ptr %71, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %shl.i.i, ptr %arrayidx.i.i, align 1
  %call.i.i22 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i, ptr noundef nonnull %desc.i.i8, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end.i26, label %hclge_get_vlan_tx_offload_cfg.exit.i

hclge_get_vlan_tx_offload_cfg.exit.i:             ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hdev, align 8
  %dev.i.i25 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i25, ptr noundef nonnull @.str.216, i32 noundef %indvars.iv.i21, i32 noundef %call.i.i22) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i8) #11
  br label %hclge_dbg_dump_vlan_offload_config.exit

if.end.i26:                                       ; preds = %for.body.i24
  %83 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %70, align 4
  %85 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %72, align 4
  %and.i.i = and i8 %84, 1
  %and12.i.i = lshr i8 %84, 5
  %87 = and i8 %and12.i.i, 1
  %and16.i.i = lshr i8 %84, 1
  %88 = and i8 %and16.i.i, 1
  %and20.i.i = lshr i8 %84, 6
  %89 = and i8 %and20.i.i, 1
  %and24.i.i = lshr i8 %84, 2
  %90 = and i8 %and24.i.i, 1
  %and28.i.i = lshr i8 %84, 3
  %91 = and i8 %and28.i.i, 1
  %92 = lshr i8 %84, 7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i132.i7) #11
  %93 = call ptr @memset(ptr %desc.i132.i7, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i132.i7, i32 noundef 3842, i1 noundef zeroext true) #11
  %94 = ptrtoint ptr %vf_offset.i133.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %div61.i.i, ptr %vf_offset.i133.i, align 1
  %arrayidx.i137.i = getelementptr [8 x i8], ptr %74, i32 0, i32 %79
  %95 = ptrtoint ptr %arrayidx.i137.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %shl.i.i, ptr %arrayidx.i137.i, align 1
  %call.i139.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i, ptr noundef nonnull %desc.i132.i7, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %tobool.not.i140.i = icmp eq i32 %call.i139.i, 0
  br i1 %tobool.not.i140.i, label %if.end11.i, label %hclge_get_vlan_rx_offload_cfg.exit.i

hclge_get_vlan_rx_offload_cfg.exit.i:             ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hdev, align 8
  %dev.i142.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i142.i, ptr noundef nonnull @.str.218, i32 noundef %indvars.iv.i21, i32 noundef %call.i139.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i132.i7) #11
  br label %hclge_dbg_dump_vlan_offload_config.exit

if.end11.i:                                       ; preds = %if.end.i26
  %98 = call i16 @llvm.bswap.i16(i16 %86) #11
  %99 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %73, align 4
  %and.i144.i = and i8 %100, 1
  %and12.i145.i = lshr i8 %100, 1
  %101 = and i8 %and12.i145.i, 1
  %and16.i146.i = lshr i8 %100, 5
  %102 = and i8 %and16.i146.i, 1
  %and20.i147.i = lshr i8 %100, 6
  %103 = and i8 %and20.i147.i, 1
  %and24.i148.i = lshr i8 %100, 2
  %104 = and i8 %and24.i148.i, 1
  %105 = lshr i8 %100, 3
  %106 = and i8 %105, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i132.i7) #11
  %conv13.i = zext i16 %98 to i32
  %call14.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str_pvid.i, ptr noundef nonnull @.str.215, i32 noundef %conv13.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i21)
  %tobool.not.i150.i = icmp eq i32 %indvars.iv.i21, 0
  br i1 %tobool.not.i150.i, label %if.else.i.i29, label %if.then.i.i28

if.then.i.i28:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i27 = add nsw i32 %indvars.iv.i21, -1
  %call.i152.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str_id.i9, ptr noundef nonnull @.str.83, i32 noundef %sub.i.i27) #11
  br label %hclge_dbg_get_func_id_str.exit.i30

if.else.i.i29:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = call ptr @memcpy(ptr %str_id.i9, ptr @.str.84, i32 3)
  br label %hclge_dbg_get_func_id_str.exit.i30

hclge_dbg_get_func_id_str.exit.i30:               ; preds = %if.else.i.i29, %if.then.i.i28
  %108 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %str_id.i9, ptr %result.i, align 4
  %109 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %str_pvid.i, ptr %arrayidx20.i, align 4
  %idxprom21.i = zext i8 %and.i.i to i32
  %arrayidx22.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom21.i
  %110 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx22.i, align 4
  %112 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %arrayidx25.i, align 4
  %idxprom26.i = zext i8 %87 to i32
  %arrayidx27.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom26.i
  %113 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx27.i, align 4
  %115 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %arrayidx30.i, align 4
  %idxprom31.i = zext i8 %88 to i32
  %arrayidx32.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom31.i
  %116 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx32.i, align 4
  %118 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %arrayidx35.i, align 4
  %idxprom36.i = zext i8 %89 to i32
  %arrayidx37.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom36.i
  %119 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx37.i, align 4
  %121 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %arrayidx40.i, align 4
  %idxprom41.i = zext i8 %90 to i32
  %arrayidx42.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom41.i
  %122 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx42.i, align 4
  %124 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %arrayidx45.i, align 4
  %idxprom46.i = zext i8 %91 to i32
  %arrayidx47.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom46.i
  %125 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx47.i, align 4
  %127 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %arrayidx50.i, align 4
  %idxprom51.i = zext i8 %92 to i32
  %arrayidx52.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom51.i
  %128 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx52.i, align 4
  %130 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %arrayidx55.i, align 4
  %idxprom56.i = zext i8 %and.i144.i to i32
  %arrayidx57.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom56.i
  %131 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx57.i, align 4
  %133 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %arrayidx60.i, align 4
  %idxprom61.i = zext i8 %101 to i32
  %arrayidx62.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom61.i
  %134 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx62.i, align 4
  %136 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %arrayidx65.i, align 4
  %idxprom66.i = zext i8 %102 to i32
  %arrayidx67.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom66.i
  %137 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx67.i, align 4
  %139 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %arrayidx70.i, align 4
  %idxprom71.i = zext i8 %103 to i32
  %arrayidx72.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom71.i
  %140 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx72.i, align 4
  %142 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %arrayidx75.i, align 4
  %idxprom76.i = zext i8 %104 to i32
  %arrayidx77.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom76.i
  %143 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx77.i, align 4
  %145 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %arrayidx80.i, align 4
  %idxprom81.i = zext i8 %106 to i32
  %arrayidx82.i = getelementptr [2 x ptr], ptr @state_str, i32 0, i32 %idxprom81.i
  %146 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx82.i, align 4
  %148 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %arrayidx85.i, align 4
  %149 = call ptr @memset(ptr %content.i10, i32 32, i32 512)
  br label %for.body.i156.i

for.body.i156.i:                                  ; preds = %for.body.i156.i.for.body.i156.i_crit_edge, %hclge_dbg_get_func_id_str.exit.i30
  %indvars.iv.i154.i = phi i32 [ 0, %hclge_dbg_get_func_id_str.exit.i30 ], [ %indvars.iv.next.i167.i, %for.body.i156.i.for.body.i156.i_crit_edge ]
  %pos.042.i155.i = phi ptr [ %content.i10, %hclge_dbg_get_func_id_str.exit.i30 ], [ %add.ptr.i166.i, %for.body.i156.i.for.body.i156.i_crit_edge ]
  %arrayidx.i157.i = getelementptr ptr, ptr %result.i, i32 %indvars.iv.i154.i
  %150 = ptrtoint ptr %arrayidx.i157.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i157.i, align 4
  %call13.i159.i = call i32 @strlen(ptr noundef %151) #15
  %call14.i160.i = call ptr @strncpy(ptr noundef %pos.042.i155.i, ptr noundef %151, i32 noundef %call13.i159.i) #11
  %arrayidx16.i161.i = getelementptr %struct.hclge_dbg_item, ptr @vlan_offload_items, i32 %indvars.iv.i154.i
  %call19.i162.i = call i32 @strlen(ptr noundef %arrayidx16.i161.i) #15
  %interval.i163.i = getelementptr %struct.hclge_dbg_item, ptr @vlan_offload_items, i32 %indvars.iv.i154.i, i32 1
  %152 = ptrtoint ptr %interval.i163.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %interval.i163.i, align 2
  %conv22.i164.i = zext i16 %153 to i32
  %add.i165.i = add i32 %call19.i162.i, %conv22.i164.i
  %add.ptr.i166.i = getelementptr i8, ptr %pos.042.i155.i, i32 %add.i165.i
  %indvars.iv.next.i167.i = add nuw nsw i32 %indvars.iv.i154.i, 1
  %exitcond.not.i168.i = icmp eq i32 %indvars.iv.next.i167.i, 15
  br i1 %exitcond.not.i168.i, label %hclge_dbg_fill_content.exit171.i, label %for.body.i156.i.for.body.i156.i_crit_edge

for.body.i156.i.for.body.i156.i_crit_edge:        ; preds = %for.body.i156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i156.i

hclge_dbg_fill_content.exit171.i:                 ; preds = %for.body.i156.i
  %incdec.ptr.i170.i = getelementptr i8, ptr %add.ptr.i166.i, i32 1
  %154 = ptrtoint ptr %add.ptr.i166.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 10, ptr %add.ptr.i166.i, align 1
  %155 = ptrtoint ptr %incdec.ptr.i170.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %incdec.ptr.i170.i, align 1
  %add.ptr88.i = getelementptr i8, ptr %buf, i32 %pos.3
  %sub89.i = sub i32 %len, %pos.3
  %call91.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88.i, i32 noundef %sub89.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %content.i10) #11
  %add92.i = add i32 %call91.i, %pos.3
  %indvars.iv.next.i31 = add nuw nsw i32 %indvars.iv.i21, 1
  %exitcond.not.i32 = icmp eq i32 %indvars.iv.next.i31, %conv5.i
  br i1 %exitcond.not.i32, label %hclge_dbg_fill_content.exit171.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge, label %hclge_dbg_fill_content.exit171.i.for.body.i24_crit_edge

hclge_dbg_fill_content.exit171.i.for.body.i24_crit_edge: ; preds = %hclge_dbg_fill_content.exit171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i24

hclge_dbg_fill_content.exit171.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge: ; preds = %hclge_dbg_fill_content.exit171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_dbg_dump_vlan_offload_config.exit

hclge_dbg_dump_vlan_offload_config.exit:          ; preds = %hclge_dbg_fill_content.exit171.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge, %hclge_get_vlan_rx_offload_cfg.exit.i, %hclge_get_vlan_tx_offload_cfg.exit.i, %hclge_dbg_fill_content.exit.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge
  %retval.0.i33 = phi i32 [ %call.i.i22, %hclge_get_vlan_tx_offload_cfg.exit.i ], [ %call.i139.i, %hclge_get_vlan_rx_offload_cfg.exit.i ], [ 0, %hclge_dbg_fill_content.exit.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge ], [ 0, %hclge_dbg_fill_content.exit171.i.hclge_dbg_dump_vlan_offload_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %content.i10) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str_pvid.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str_id.i9) #11
  br label %cleanup

cleanup:                                          ; preds = %hclge_dbg_dump_vlan_offload_config.exit, %hclge_dbg_dump_vlan_filter_config.exit.thread
  %retval.0 = phi i32 [ %retval.0.i33, %hclge_dbg_dump_vlan_offload_config.exit ], [ %retval.0.i.ph, %hclge_dbg_dump_vlan_filter_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_fd_counter(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %str_id = alloca [16 x i8], align 1
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %1) #11
  %conv = add i32 %call, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str_id) #11
  %2 = call ptr @memset(ptr %str_id, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %5 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.220) #11
  %conv4 = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp39.not = icmp eq i32 %conv4, 0
  br i1 %cmp39.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %hclge_dbg_get_func_id_str.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %hclge_dbg_get_func_id_str.exit.for.body_crit_edge ]
  %pos.040 = phi i32 [ %call1, %for.body.lr.ph ], [ %add16, %hclge_dbg_get_func_id_str.exit.for.body_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 4613, i1 noundef zeroext true) #11
  %6 = trunc i32 %indvars.iv to i16
  %7 = shl nuw i16 %6, 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %3, align 4
  %call7 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.221, i32 noundef %call7) #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %4, align 8
  %13 = call i64 @llvm.bswap.i64(i64 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %tobool.not.i = icmp eq i32 %indvars.iv, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add nsw i32 %indvars.iv, -1
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str_id, ptr noundef nonnull @.str.83, i32 noundef %sub.i) #11
  br label %hclge_dbg_get_func_id_str.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call ptr @memcpy(ptr %str_id, ptr @.str.84, i32 3)
  br label %hclge_dbg_get_func_id_str.exit

hclge_dbg_get_func_id_str.exit:                   ; preds = %if.else.i, %if.then.i
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %pos.040
  %sub13 = sub i32 %len, %pos.040
  %call15 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.223, ptr noundef nonnull %str_id, i64 noundef %13) #11
  %add16 = add i32 %call15, %pos.040
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv4
  br i1 %exitcond.not, label %hclge_dbg_get_func_id_str.exit.cleanup_crit_edge, label %hclge_dbg_get_func_id_str.exit.for.body_crit_edge

hclge_dbg_get_func_id_str.exit.for.body_crit_edge: ; preds = %hclge_dbg_get_func_id_str.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

hclge_dbg_get_func_id_str.exit.cleanup_crit_edge: ; preds = %hclge_dbg_get_func_id_str.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %hclge_dbg_get_func_id_str.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %hclge_dbg_get_func_id_str.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str_id) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_dbg_dump_umv_info(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %1) #11
  %conv = add i32 %call, 1
  %num_alloc_vport = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %2 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_alloc_vport, align 2
  %conv1 = zext i16 %3 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.224, i32 noundef %conv1) #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %call2
  %sub = sub i32 %len, %call2
  %max_umv_size = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 79
  %4 = ptrtoint ptr %max_umv_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_umv_size, align 8
  %conv4 = zext i16 %5 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.225, i32 noundef %conv4) #11
  %add6 = add i32 %call5, %call2
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %add6
  %sub8 = sub i32 %len, %add6
  %wanted_umv_size = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 78
  %6 = ptrtoint ptr %wanted_umv_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wanted_umv_size, align 2
  %conv9 = zext i16 %7 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.226, i32 noundef %conv9) #11
  %add11 = add i32 %call10, %add6
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %add11
  %sub13 = sub i32 %len, %add11
  %priv_umv_size = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 80
  %8 = ptrtoint ptr %priv_umv_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %priv_umv_size, align 2
  %conv14 = zext i16 %9 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.227, i32 noundef %conv14) #11
  %add16 = add i32 %call15, %add11
  %vport_lock = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %vport_lock, i32 noundef 0) #11
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add16
  %sub18 = sub i32 %len, %add16
  %share_umv_size = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 81
  %10 = ptrtoint ptr %share_umv_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %share_umv_size, align 4
  %conv19 = zext i16 %11 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.228, i32 noundef %conv19) #11
  %add21 = add i32 %call20, %add16
  %conv23 = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23)
  %cmp80.not = icmp eq i32 %conv23, 0
  br i1 %cmp80.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vport25 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %pos.081 = phi i32 [ %add21, %for.body.lr.ph ], [ %add31, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %vport25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport25, align 4
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %pos.081
  %sub27 = sub i32 %len, %pos.081
  %used_umv_num = getelementptr %struct.hclge_vport, ptr %13, i32 %indvars.iv, i32 10
  %14 = ptrtoint ptr %used_umv_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %used_umv_num, align 8
  %conv29 = zext i16 %15 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.229, i32 noundef %indvars.iv, i32 noundef %conv29) #11
  %add31 = add i32 %call30, %pos.081
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv23
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %add21, %entry.for.end_crit_edge ], [ %add31, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vport_lock) #11
  %add.ptr33 = getelementptr i8, ptr %buf, i32 %pos.0.lcssa
  %sub34 = sub i32 %len, %pos.0.lcssa
  %used_mc_mac_num = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 82
  %16 = ptrtoint ptr %used_mc_mac_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %used_mc_mac_num, align 2
  %conv35 = zext i16 %17 to i32
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.230, i32 noundef %conv35) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pri_num(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pri_sch_mode(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pri_weight(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pri_shaper(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclge_dbg_fill_shaper_content(ptr nocapture noundef readonly %para, ptr nocapture noundef readonly %result, ptr nocapture noundef %index) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 1
  %inc = add i8 %1, 1
  store i8 %inc, ptr %index, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr ptr, ptr %result, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ir_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 1
  %4 = ptrtoint ptr %ir_b to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ir_b, align 4
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %conv)
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 1
  %inc1 = add i8 %7, 1
  store i8 %inc1, ptr %index, align 1
  %idxprom2 = zext i8 %7 to i32
  %arrayidx3 = getelementptr ptr, ptr %result, i32 %idxprom2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %ir_u = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 2
  %10 = ptrtoint ptr %ir_u to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ir_u, align 1
  %conv4 = zext i8 %11 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %conv4)
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index, align 1
  %inc6 = add i8 %13, 1
  store i8 %inc6, ptr %index, align 1
  %idxprom7 = zext i8 %13 to i32
  %arrayidx8 = getelementptr ptr, ptr %result, i32 %idxprom7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  %ir_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 3
  %16 = ptrtoint ptr %ir_s to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ir_s, align 2
  %conv9 = zext i8 %17 to i32
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef %conv9)
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index, align 1
  %inc11 = add i8 %19, 1
  store i8 %inc11, ptr %index, align 1
  %idxprom12 = zext i8 %19 to i32
  %arrayidx13 = getelementptr ptr, ptr %result, i32 %idxprom12
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx13, align 4
  %bs_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 4
  %22 = ptrtoint ptr %bs_b to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bs_b, align 1
  %conv14 = zext i8 %23 to i32
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %conv14)
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %index, align 1
  %inc16 = add i8 %25, 1
  store i8 %inc16, ptr %index, align 1
  %idxprom17 = zext i8 %25 to i32
  %arrayidx18 = getelementptr ptr, ptr %result, i32 %idxprom17
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx18, align 4
  %bs_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 5
  %28 = ptrtoint ptr %bs_s to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bs_s, align 4
  %conv19 = zext i8 %29 to i32
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef %conv19)
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index, align 1
  %inc21 = add i8 %31, 1
  store i8 %inc21, ptr %index, align 1
  %idxprom22 = zext i8 %31 to i32
  %arrayidx23 = getelementptr ptr, ptr %result, i32 %idxprom22
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx23, align 4
  %flag = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 6
  %34 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flag, align 1
  %conv24 = zext i8 %35 to i32
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %33, ptr noundef nonnull @.str.27, i32 noundef %conv24)
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %index, align 1
  %inc26 = add i8 %37, 1
  store i8 %inc26, ptr %index, align 1
  %idxprom27 = zext i8 %37 to i32
  %arrayidx28 = getelementptr ptr, ptr %result, i32 %idxprom27
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx28, align 4
  %40 = ptrtoint ptr %para to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %para, align 4
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %39, ptr noundef nonnull @.str.28, i32 noundef %41)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_qset_num(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_qset_map_pri(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_qset_sch_mode(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_qset_weight(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_qset_shaper(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_q_to_qs_map(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_q_to_tc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pg_to_pri_map(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pg_sch_mode(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pg_weight(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_pg_shaper(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_get_port_shaper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclge_dbg_dump_mac_list(ptr nocapture noundef readonly %hdev, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %is_unicast) unnamed_addr #0 align 64 {
entry:
  %data_str = alloca [3 x [32 x i8]], align 1
  %content = alloca [256 x i8], align 1
  %str_id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %data_str) #11
  %0 = call ptr @memset(ptr %data_str, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %content) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str_id) #11
  %arrayidx.1 = getelementptr inbounds [3 x [32 x i8]], ptr %data_str, i32 0, i32 1
  %arrayidx.2 = getelementptr inbounds [3 x [32 x i8]], ptr %data_str, i32 0, i32 2
  %cond = select i1 %is_unicast, ptr @.str.79, ptr @.str.80
  %1 = call ptr @memset(ptr %str_id, i32 255, i32 16)
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.78, ptr noundef nonnull %cond) #11
  %2 = call ptr @memset(ptr %content, i32 32, i32 256)
  %call13.i = call i32 @strlen(ptr noundef nonnull @mac_list_items) #15
  %call14.i = call ptr @strncpy(ptr noundef nonnull %content, ptr noundef nonnull @mac_list_items, i32 noundef %call13.i) #11
  %add.i = add i32 %call13.i, 2
  %add.ptr.i = getelementptr i8, ptr %content, i32 %add.i
  %call13.i.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([3 x %struct.hclge_dbg_item], ptr @mac_list_items, i32 0, i32 1)) #15
  %call14.i.1 = call ptr @strncpy(ptr noundef %add.ptr.i, ptr noundef getelementptr inbounds ([3 x %struct.hclge_dbg_item], ptr @mac_list_items, i32 0, i32 1), i32 noundef %call13.i.1) #11
  %add.i.1 = add i32 %call13.i.1, 12
  %add.ptr.i.1 = getelementptr i8, ptr %add.ptr.i, i32 %add.i.1
  %call13.i.2 = call i32 @strlen(ptr noundef getelementptr inbounds ([3 x %struct.hclge_dbg_item], ptr @mac_list_items, i32 0, i32 2)) #15
  %call14.i.2 = call ptr @strncpy(ptr noundef %add.ptr.i.1, ptr noundef getelementptr inbounds ([3 x %struct.hclge_dbg_item], ptr @mac_list_items, i32 0, i32 2), i32 noundef %call13.i.2) #11
  %add.i.2 = add i32 %call13.i.2, 2
  %add.ptr.i.2 = getelementptr i8, ptr %add.ptr.i.1, i32 %add.i.2
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i.2, i32 1
  %3 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %add.ptr.i.2, align 1
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %incdec.ptr.i, align 1
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call
  %sub4 = sub i32 %len, %call
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.22, ptr noundef nonnull %content) #11
  %num_alloc_vport = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %5 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_alloc_vport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp9111.not = icmp eq i16 %6, 0
  br i1 %cmp9111.not, label %entry.for.end58_crit_edge, label %for.body11.lr.ph

entry.for.end58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end58

for.body11.lr.ph:                                 ; preds = %entry
  %add7 = add i32 %call6, %call
  %vport12 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  br label %for.body11

for.body11:                                       ; preds = %for.end54.for.body11_crit_edge, %for.body11.lr.ph
  %func_id.0113 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc57, %for.end54.for.body11_crit_edge ]
  %pos.0112 = phi i32 [ %add7, %for.body11.lr.ph ], [ %pos.1.lcssa, %for.end54.for.body11_crit_edge ]
  %7 = ptrtoint ptr %vport12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vport12, align 4
  %uc_mac_list = getelementptr %struct.hclge_vport, ptr %8, i32 %func_id.0113, i32 22
  %mc_mac_list = getelementptr %struct.hclge_vport, ptr %8, i32 %func_id.0113, i32 23
  %cond16 = select i1 %is_unicast, ptr %uc_mac_list, ptr %mc_mac_list
  %mac_list_lock = getelementptr %struct.hclge_vport, ptr %8, i32 %func_id.0113, i32 21
  call void @_raw_spin_lock_bh(ptr noundef %mac_list_lock) #11
  %9 = ptrtoint ptr %cond16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cond16, align 4
  %cmp25.not107 = icmp eq ptr %10, %cond16
  br i1 %cmp25.not107, label %for.body11.for.end54_crit_edge, label %for.body27.lr.ph

for.body11.for.end54_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.body27.lr.ph:                                 ; preds = %for.body11
  %conv29 = trunc i32 %func_id.0113 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv29)
  %tobool.not.i = icmp eq i8 %conv29, 0
  %conv.i = and i32 %func_id.0113, 255
  %sub.i = add nsw i32 %conv.i, -1
  br label %for.body27

for.body27:                                       ; preds = %hclge_dbg_get_func_id_str.exit.for.body27_crit_edge, %for.body27.lr.ph
  %mac_node.0109 = phi ptr [ %10, %for.body27.lr.ph ], [ %tmp.0, %hclge_dbg_get_func_id_str.exit.for.body27_crit_edge ]
  %pos.1108 = phi i32 [ %pos.0112, %for.body27.lr.ph ], [ %add47, %hclge_dbg_get_func_id_str.exit.for.body27_crit_edge ]
  %11 = ptrtoint ptr %mac_node.0109 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.0 = load ptr, ptr %mac_node.0109, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str_id, ptr noundef nonnull @.str.83, i32 noundef %sub.i) #11
  br label %hclge_dbg_get_func_id_str.exit

if.else.i:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  %12 = call ptr @memcpy(ptr %str_id, ptr @.str.84, i32 3)
  br label %hclge_dbg_get_func_id_str.exit

hclge_dbg_get_func_id_str.exit:                   ; preds = %if.else.i, %if.then.i
  %mac_addr = getelementptr inbounds %struct.hclge_mac_node, ptr %mac_node.0109, i32 0, i32 2
  %call36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.81, ptr noundef %mac_addr)
  %state = getelementptr inbounds %struct.hclge_mac_node, ptr %mac_node.0109, i32 0, i32 1
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %arrayidx39 = getelementptr [3 x ptr], ptr @hclge_mac_state_str, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx39, align 4
  %call40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.82, ptr noundef %16)
  %17 = call ptr @memset(ptr %content, i32 32, i32 256)
  %call13.i94 = call i32 @strlen(ptr noundef nonnull %str_id) #15
  %call14.i95 = call ptr @strncpy(ptr noundef nonnull %content, ptr noundef nonnull %str_id, i32 noundef %call13.i94) #11
  %call19.i97 = call i32 @strlen(ptr noundef nonnull @mac_list_items) #15
  %add.i100 = add i32 %call19.i97, 2
  %add.ptr.i101 = getelementptr i8, ptr %content, i32 %add.i100
  %call13.i94.1 = call i32 @strlen(ptr noundef %arrayidx.1) #15
  %call14.i95.1 = call ptr @strncpy(ptr noundef %add.ptr.i101, ptr noundef %arrayidx.1, i32 noundef %call13.i94.1) #11
  %call19.i97.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([3 x %struct.hclge_dbg_item], ptr @mac_list_items, i32 0, i32 1)) #15
  %add.i100.1 = add i32 %call19.i97.1, 12
  %add.ptr.i101.1 = getelementptr i8, ptr %add.ptr.i101, i32 %add.i100.1
  %call13.i94.2 = call i32 @strlen(ptr noundef %arrayidx.2) #15
  %call14.i95.2 = call ptr @strncpy(ptr noundef %add.ptr.i101.1, ptr noundef %arrayidx.2, i32 noundef %call13.i94.2) #11
  %call19.i97.2 = call i32 @strlen(ptr noundef getelementptr inbounds ([3 x %struct.hclge_dbg_item], ptr @mac_list_items, i32 0, i32 2)) #15
  %add.i100.2 = add i32 %call19.i97.2, 2
  %add.ptr.i101.2 = getelementptr i8, ptr %add.ptr.i101.1, i32 %add.i100.2
  %incdec.ptr.i104 = getelementptr i8, ptr %add.ptr.i101.2, i32 1
  %18 = ptrtoint ptr %add.ptr.i101.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %add.ptr.i101.2, align 1
  %19 = ptrtoint ptr %incdec.ptr.i104 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %incdec.ptr.i104, align 1
  %add.ptr43 = getelementptr i8, ptr %buf, i32 %pos.1108
  %sub44 = sub i32 %len, %pos.1108
  %call46 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.22, ptr noundef nonnull %content) #11
  %add47 = add i32 %call46, %pos.1108
  %cmp25.not = icmp eq ptr %tmp.0, %cond16
  br i1 %cmp25.not, label %hclge_dbg_get_func_id_str.exit.for.end54_crit_edge, label %hclge_dbg_get_func_id_str.exit.for.body27_crit_edge

hclge_dbg_get_func_id_str.exit.for.body27_crit_edge: ; preds = %hclge_dbg_get_func_id_str.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27

hclge_dbg_get_func_id_str.exit.for.end54_crit_edge: ; preds = %hclge_dbg_get_func_id_str.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.end54:                                        ; preds = %hclge_dbg_get_func_id_str.exit.for.end54_crit_edge, %for.body11.for.end54_crit_edge
  %pos.1.lcssa = phi i32 [ %pos.0112, %for.body11.for.end54_crit_edge ], [ %add47, %hclge_dbg_get_func_id_str.exit.for.end54_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %mac_list_lock) #11
  %inc57 = add nuw nsw i32 %func_id.0113, 1
  %20 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_alloc_vport, align 2
  %conv = zext i16 %21 to i32
  %cmp9 = icmp ult i32 %inc57, %conv
  br i1 %cmp9, label %for.end54.for.body11_crit_edge, label %for.end54.for.end58_crit_edge

for.end54.for.end58_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end58

for.end54.for.body11_crit_edge:                   ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

for.end58:                                        ; preds = %for.end54.for.end58_crit_edge, %entry.for.end58_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str_id) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %content) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %data_str) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_ptp_cfg_qry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_query_bd_num_cmd_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_dbg_dump_dcb_tm(ptr noundef %hdev, ptr noundef %buf, i32 noundef %len, ptr noundef %pos) unnamed_addr #0 align 64 {
entry:
  %desc = alloca [2 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2129, i1 noundef zeroext true) #11
  %data.i = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data.i, align 4
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %hclge_dbg_cmd_send.exit

hclge_dbg_cmd_send.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.136, i32 noundef 2129, i32 noundef %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc.sroa.gep = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %desc.sroa.gep205 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %5
  %sub = sub i32 %len, %5
  %arrayidx1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.173, i32 noundef %8) #11
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pos, align 4
  %add = add i32 %10, %call2
  store i32 %add, ptr %pos, align 4
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %add
  %sub4 = sub i32 %len, %add
  %arrayidx7 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.174, i32 noundef %13) #11
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos, align 4
  %add9 = add i32 %15, %call8
  store i32 %add9, ptr %pos, align 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2128, i1 noundef zeroext true) #11
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %data.i, align 4
  %17 = ptrtoint ptr %desc.sroa.gep to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc.sroa.gep, align 2
  %19 = or i16 %18, 1024
  store i16 %19, ptr %desc.sroa.gep, align 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %desc.sroa.gep205, i32 noundef 2128, i1 noundef zeroext true) #11
  %call.i191 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i192, label %if.end15, label %hclge_dbg_cmd_send.exit195

hclge_dbg_cmd_send.exit195:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev, align 8
  %dev.i193 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i193, ptr noundef nonnull @.str.136, i32 noundef 2128, i32 noundef %call.i191) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos, align 4
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %23
  %sub17 = sub i32 %len, %23
  %24 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.175, i32 noundef %26) #11
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos, align 4
  %add22 = add i32 %28, %call21
  store i32 %add22, ptr %pos, align 4
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %add22
  %sub24 = sub i32 %len, %add22
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.176, i32 noundef %31) #11
  %32 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pos, align 4
  %add29 = add i32 %33, %call28
  store i32 %add29, ptr %pos, align 4
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %add29
  %sub31 = sub i32 %len, %add29
  %arrayidx34 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx34, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.177, i32 noundef %36) #11
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos, align 4
  %add36 = add i32 %38, %call35
  store i32 %add36, ptr %pos, align 4
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %add36
  %sub38 = sub i32 %len, %add36
  %arrayidx41 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx41, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.178, i32 noundef %41) #11
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pos, align 4
  %add43 = add i32 %43, %call42
  store i32 %add43, ptr %pos, align 4
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %add43
  %sub45 = sub i32 %len, %add43
  %arrayidx48 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 5
  %44 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx48, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.179, i32 noundef %46) #11
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pos, align 4
  %add50 = add i32 %48, %call49
  store i32 %add50, ptr %pos, align 4
  %add.ptr51 = getelementptr i8, ptr %buf, i32 %add50
  %sub52 = sub i32 %len, %add50
  %data54 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data54, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %call56 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51, i32 noundef %sub52, ptr noundef nonnull @.str.180, i32 noundef %51) #11
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pos, align 4
  %add57 = add i32 %53, %call56
  store i32 %add57, ptr %pos, align 4
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %add57
  %sub59 = sub i32 %len, %add57
  %arrayidx62 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 1
  %54 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx62, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %call63 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.181, i32 noundef %56) #11
  %57 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pos, align 4
  %add64 = add i32 %58, %call63
  store i32 %add64, ptr %pos, align 4
  %media_type = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 1, i32 3
  %59 = ptrtoint ptr %media_type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %media_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %cmp = icmp eq i8 %60, 2
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end68

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %if.end15
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2130, i1 noundef zeroext true) #11
  %61 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %data.i, align 4
  %call.i198 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i199, label %if.end74, label %hclge_dbg_cmd_send.exit203

hclge_dbg_cmd_send.exit203:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hdev, align 8
  %dev.i201 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i201, ptr noundef nonnull @.str.136, i32 noundef 2130, i32 noundef %call.i198) #14
  br label %cleanup

if.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pos, align 4
  %add.ptr75 = getelementptr i8, ptr %buf, i32 %65
  %sub76 = sub i32 %len, %65
  %66 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx1, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %call80 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.182, i32 noundef %68) #11
  %69 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pos, align 4
  %add81 = add i32 %70, %call80
  store i32 %add81, ptr %pos, align 4
  %add.ptr82 = getelementptr i8, ptr %buf, i32 %add81
  %sub83 = sub i32 %len, %add81
  %71 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx7, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %call87 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr82, i32 noundef %sub83, ptr noundef nonnull @.str.183, i32 noundef %73) #11
  %74 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pos, align 4
  %add88 = add i32 %75, %call87
  store i32 %add88, ptr %pos, align 4
  %add.ptr89 = getelementptr i8, ptr %buf, i32 %add88
  %sub90 = sub i32 %len, %add88
  %76 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx34, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %call94 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.184, i32 noundef %78) #11
  %79 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pos, align 4
  %add95 = add i32 %80, %call94
  store i32 %add95, ptr %pos, align 4
  %add.ptr96 = getelementptr i8, ptr %buf, i32 %add95
  %sub97 = sub i32 %len, %add95
  %81 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx41, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %call101 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.185, i32 noundef %83) #11
  %84 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pos, align 4
  %add102 = add i32 %85, %call101
  store i32 %add102, ptr %pos, align 4
  %add.ptr103 = getelementptr i8, ptr %buf, i32 %add102
  %sub104 = sub i32 %len, %add102
  %86 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx48, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  %call108 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr103, i32 noundef %sub104, ptr noundef nonnull @.str.186, i32 noundef %88) #11
  %89 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pos, align 4
  %add109 = add i32 %90, %call108
  store i32 %add109, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %hclge_dbg_cmd_send.exit203, %if.end15.cleanup_crit_edge, %hclge_dbg_cmd_send.exit195, %hclge_dbg_cmd_send.exit
  %retval.0 = phi i32 [ 0, %if.end74 ], [ %call.i, %hclge_dbg_cmd_send.exit ], [ %call.i191, %hclge_dbg_cmd_send.exit195 ], [ 0, %if.end15.cleanup_crit_edge ], [ %call.i198, %hclge_dbg_cmd_send.exit203 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_dbg_fd_tcam_read(ptr noundef %hdev, i1 noundef zeroext %sel_x, ptr noundef %tcam_buf, [2 x i32] %tcam_msg.coerce) unnamed_addr #0 align 64 {
entry:
  %desc = alloca [3 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_msg.coerce.fca.0.extract = extractvalue [2 x i32] %tcam_msg.coerce, 0
  %tcam_msg.sroa.0.0.extract.shift = lshr i32 %tcam_msg.coerce.fca.0.extract, 24
  %tcam_msg.sroa.0.0.extract.trunc = trunc i32 %tcam_msg.sroa.0.0.extract.shift to i8
  %tcam_msg.coerce.fca.1.extract = extractvalue [2 x i32] %tcam_msg.coerce, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 255, i32 96)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 4611, i1 noundef zeroext true) #11
  %flag = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flag, align 2
  %3 = or i16 %2, 1024
  store i16 %3, ptr %flag, align 2
  %arrayidx3 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx3, i32 noundef 4611, i1 noundef zeroext true) #11
  %flag5 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %flag5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flag5, align 2
  %6 = or i16 %5, 1024
  store i16 %6, ptr %flag5, align 2
  %arrayidx9 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx9, i32 noundef 4611, i1 noundef zeroext true) #11
  %data = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tcam_msg.sroa.0.0.extract.trunc, ptr %data, align 4
  %conv19 = zext i1 %sel_x to i8
  %xy_sel = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %xy_sel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv19, ptr %xy_sel, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %tcam_msg.coerce.fca.1.extract)
  %index = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %index, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data15 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 2, i32 4
  %data12 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4
  %cond24 = select i1 %sel_x, ptr @.str.199, ptr @.str.200
  %call26 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %tcam_buf, i32 noundef 256, ptr noundef nonnull @.str.198, ptr noundef nonnull %cond24, i32 noundef %tcam_msg.coerce.fca.1.extract) #11
  %tcam_data = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 4
  %add.ptr29 = getelementptr i8, ptr %tcam_buf, i32 %call26
  %sub30 = sub i32 256, %call26
  %incdec.ptr = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 5
  %11 = ptrtoint ptr %tcam_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tcam_data, align 4
  %call31 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.201, i32 noundef %12) #11
  %add32 = add i32 %call31, %call26
  %add.ptr29.1 = getelementptr i8, ptr %tcam_buf, i32 %add32
  %sub30.1 = sub i32 256, %add32
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr, align 4
  %call31.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29.1, i32 noundef %sub30.1, ptr noundef nonnull @.str.201, i32 noundef %14) #11
  %add32.1 = add i32 %call31.1, %add32
  %add.ptr39 = getelementptr i8, ptr %tcam_buf, i32 %add32.1
  %sub40 = sub i32 256, %add32.1
  %incdec.ptr41 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 1
  %15 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data12, align 4
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.201, i32 noundef %16) #11
  %add43 = add i32 %call42, %add32.1
  %add.ptr39.1 = getelementptr i8, ptr %tcam_buf, i32 %add43
  %sub40.1 = sub i32 256, %add43
  %incdec.ptr41.1 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 2
  %17 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr41, align 4
  %call42.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.1, i32 noundef %sub40.1, ptr noundef nonnull @.str.201, i32 noundef %18) #11
  %add43.1 = add i32 %call42.1, %add43
  %add.ptr39.2 = getelementptr i8, ptr %tcam_buf, i32 %add43.1
  %sub40.2 = sub i32 256, %add43.1
  %incdec.ptr41.2 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 3
  %19 = ptrtoint ptr %incdec.ptr41.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr41.1, align 4
  %call42.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.2, i32 noundef %sub40.2, ptr noundef nonnull @.str.201, i32 noundef %20) #11
  %add43.2 = add i32 %call42.2, %add43.1
  %add.ptr39.3 = getelementptr i8, ptr %tcam_buf, i32 %add43.2
  %sub40.3 = sub i32 256, %add43.2
  %incdec.ptr41.3 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 4
  %21 = ptrtoint ptr %incdec.ptr41.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr41.2, align 4
  %call42.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.3, i32 noundef %sub40.3, ptr noundef nonnull @.str.201, i32 noundef %22) #11
  %add43.3 = add i32 %call42.3, %add43.2
  %add.ptr39.4 = getelementptr i8, ptr %tcam_buf, i32 %add43.3
  %sub40.4 = sub i32 256, %add43.3
  %incdec.ptr41.4 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 5
  %23 = ptrtoint ptr %incdec.ptr41.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr41.3, align 4
  %call42.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.4, i32 noundef %sub40.4, ptr noundef nonnull @.str.201, i32 noundef %24) #11
  %add43.4 = add i32 %call42.4, %add43.3
  %add.ptr39.5 = getelementptr i8, ptr %tcam_buf, i32 %add43.4
  %sub40.5 = sub i32 256, %add43.4
  %25 = ptrtoint ptr %incdec.ptr41.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr41.4, align 4
  %call42.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.5, i32 noundef %sub40.5, ptr noundef nonnull @.str.201, i32 noundef %26) #11
  %add43.5 = add i32 %call42.5, %add43.4
  %add.ptr53 = getelementptr i8, ptr %tcam_buf, i32 %add43.5
  %sub54 = sub i32 256, %add43.5
  %incdec.ptr55 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 2, i32 4, i32 1
  %27 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data15, align 4
  %call56 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.201, i32 noundef %28) #11
  %add57 = add i32 %call56, %add43.5
  %add.ptr53.1 = getelementptr i8, ptr %tcam_buf, i32 %add57
  %sub54.1 = sub i32 256, %add57
  %incdec.ptr55.1 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 2, i32 4, i32 2
  %29 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr55, align 4
  %call56.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53.1, i32 noundef %sub54.1, ptr noundef nonnull @.str.201, i32 noundef %30) #11
  %add57.1 = add i32 %call56.1, %add57
  %add.ptr53.2 = getelementptr i8, ptr %tcam_buf, i32 %add57.1
  %sub54.2 = sub i32 256, %add57.1
  %incdec.ptr55.2 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 2, i32 4, i32 3
  %31 = ptrtoint ptr %incdec.ptr55.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr55.1, align 4
  %call56.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53.2, i32 noundef %sub54.2, ptr noundef nonnull @.str.201, i32 noundef %32) #11
  %add57.2 = add i32 %call56.2, %add57.1
  %add.ptr53.3 = getelementptr i8, ptr %tcam_buf, i32 %add57.2
  %sub54.3 = sub i32 256, %add57.2
  %incdec.ptr55.3 = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc, i32 0, i32 2, i32 4, i32 4
  %33 = ptrtoint ptr %incdec.ptr55.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr55.2, align 4
  %call56.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53.3, i32 noundef %sub54.3, ptr noundef nonnull @.str.201, i32 noundef %34) #11
  %add57.3 = add i32 %call56.3, %add57.2
  %add.ptr53.4 = getelementptr i8, ptr %tcam_buf, i32 %add57.3
  %sub54.4 = sub i32 256, %add57.3
  %35 = ptrtoint ptr %incdec.ptr55.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr55.3, align 4
  %call56.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53.4, i32 noundef %sub54.4, ptr noundef nonnull @.str.201, i32 noundef %36) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %desc) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !118, !120, !121, !122, !123, !125, !127, !129, !131, !132, !133, !134, !136, !138, !139, !140, !141, !143, !145, !147, !148, !149, !150, !152, !154, !155, !156, !157, !159, !161, !162, !163, !164, !166, !168, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !207, !208, !210, !212, !214, !216, !218, !220, !221, !222, !223, !225, !227, !228, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !344, !346, !347, !348, !350, !352, !353, !354, !355, !357, !359, !360, !361, !362, !364, !366, !368, !369, !370, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !471, !472, !473, !475, !477, !478, !479, !480, !482, !484, !486, !487, !488, !489, !491, !492, !493, !494, !496, !498, !499, !500, !501, !503, !505, !507, !509, !511, !513, !515}
!llvm.module.flags = !{!517, !518, !519, !520, !521, !522, !523, !524}
!llvm.ident = !{!525}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1625, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1627, i32 41}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1629, i32 41}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1631, i32 41}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1633, i32 41}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1635, i32 41}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1637, i32 41}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1639, i32 41}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1644, i32 42}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1649, i32 41}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2505, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hclge_dbg_read_cmd._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @hclge_dbg_read_cmd._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hclge_dbg_rst_info, !29, !"hclge_dbg_rst_info", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1610, i32 47}
!30 = !{ptr @hclge_dbg_cmd_func, !31, !"hclge_dbg_cmd_func", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2339, i32 36}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 918, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hclge_dbg_dump_tm_nodes._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hclge_dbg_dump_tm_nodes._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 925, i32 41}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 926, i32 41}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 928, i32 41}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 930, i32 41}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 933, i32 41}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 978, i32 28}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1001, i32 57}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1002, i32 11}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1005, i32 24}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1006, i32 24}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1007, i32 24}
!59 = !{ptr @tm_pri_items, !60, !"tm_pri_items", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 940, i32 36}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 711, i32 30}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1078, i32 24}
!65 = !{ptr @tm_qset_items, !66, !"tm_qset_items", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1019, i32 36}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 888, i32 6}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 890, i32 6}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 902, i32 42}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 839, i32 4}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hclge_dbg_dump_tm_bp_qset_map._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hclge_dbg_dump_tm_bp_qset_map._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 848, i32 41}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 851, i32 5}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 762, i32 24}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 763, i32 24}
!86 = !{ptr @tm_pg_items, !87, !"tm_pg_items", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 681, i32 36}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 806, i32 5}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 808, i32 5}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 650, i32 3}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @hclge_dbg_dump_tc._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @hclge_dbg_dump_tc._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 658, i32 3}
!99 = !{ptr @hclge_dbg_dump_tc._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @hclge_dbg_dump_tc._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 665, i32 41}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 667, i32 41}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 670, i32 41}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 673, i32 42}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1104, i32 3}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hclge_dbg_dump_qos_pause_cfg._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @hclge_dbg_dump_qos_pause_cfg._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1111, i32 41}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1113, i32 41}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1134, i32 3}
!120 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @hclge_dbg_dump_qos_pri_map._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @hclge_dbg_dump_qos_pri_map._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1141, i32 41}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1143, i32 41}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1149, i32 42}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1165, i32 3}
!131 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @hclge_dbg_dump_tx_buf_cfg._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @hclge_dbg_dump_tx_buf_cfg._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1173, i32 6}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1190, i32 3}
!138 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @hclge_dbg_dump_rx_priv_buf_cfg._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @hclge_dbg_dump_rx_priv_buf_cfg._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1200, i32 6}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1203, i32 41}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1220, i32 3}
!147 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @hclge_dbg_dump_rx_common_wl_cfg._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @hclge_dbg_dump_rx_common_wl_cfg._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1228, i32 5}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1246, i32 3}
!154 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @hclge_dbg_dump_rx_global_pkt_cnt._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @hclge_dbg_dump_rx_global_pkt_cnt._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1253, i32 5}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1273, i32 3}
!161 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @hclge_dbg_dump_rx_priv_wl_buf_cfg._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @hclge_dbg_dump_rx_priv_wl_buf_cfg._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1281, i32 5}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1309, i32 3}
!168 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @hclge_dbg_dump_rx_common_threshold_cfg._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @hclge_dbg_dump_rx_common_threshold_cfg._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1318, i32 5}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1935, i32 41}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1936, i32 18}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1936, i32 25}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1949, i32 25}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1950, i32 25}
!183 = !{ptr @mac_list_items, !184, !"mac_list_items", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1913, i32 36}
!185 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 106, i32 16}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 108, i32 16}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 14, i32 2}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 14, i32 12}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 14, i32 22}
!195 = !{ptr @hclge_mac_state_str, !196, !"hclge_mac_state_str", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 13, i32 27}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1385, i32 5}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1387, i32 5}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1388, i32 41}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1398, i32 4}
!205 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @hclge_dbg_dump_mng_table._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @hclge_dbg_dump_mng_table._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1406, i32 42}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1410, i32 6}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1418, i32 6}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1424, i32 6}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1839, i32 41}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1845, i32 3}
!220 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @hclge_dbg_dump_loopback._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @hclge_dbg_dump_loopback._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1852, i32 41}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1858, i32 3}
!227 = !{ptr @hclge_dbg_dump_loopback._entry.101, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @hclge_dbg_dump_loopback._entry_ptr.103, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1865, i32 41}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1870, i32 41}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1875, i32 42}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 12, i32 43}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 12, i32 50}
!239 = !{ptr @state_str, !240, !"state_str", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 12, i32 27}
!241 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2284, i32 41}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2286, i32 41}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2288, i32 5}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2288, i32 13}
!249 = !{ptr @.str.113, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2289, i32 41}
!251 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2292, i32 41}
!253 = !{ptr @.str.115, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2297, i32 41}
!255 = !{ptr @.str.116, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2299, i32 41}
!257 = !{ptr @.str.117, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2302, i32 41}
!259 = !{ptr @.str.118, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2304, i32 41}
!261 = !{ptr @.str.119, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2305, i32 41}
!263 = !{ptr @.str.120, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2307, i32 41}
!265 = !{ptr @.str.121, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2309, i32 41}
!267 = !{ptr @.str.122, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2316, i32 41}
!269 = !{ptr @.str.123, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2319, i32 41}
!271 = !{ptr @.str.124, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1681, i32 41}
!273 = !{ptr @.str.125, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1683, i32 41}
!275 = !{ptr @.str.126, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1685, i32 41}
!277 = !{ptr @.str.127, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1687, i32 41}
!279 = !{ptr @.str.128, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1734, i32 3}
!281 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @hclge_dbg_get_imp_stats_info._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @hclge_dbg_get_imp_stats_info._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1742, i32 3}
!286 = !{ptr @hclge_dbg_get_imp_stats_info._entry.130, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @hclge_dbg_get_imp_stats_info._entry_ptr.132, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.134, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1754, i32 3}
!290 = !{ptr @hclge_dbg_get_imp_stats_info._entry.133, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @hclge_dbg_get_imp_stats_info._entry_ptr.135, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.136, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 160, i32 3}
!294 = !{ptr @.str.137, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @hclge_dbg_cmd_send._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @hclge_dbg_cmd_send._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.138, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1703, i32 41}
!299 = !{ptr @.str.139, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1708, i32 43}
!301 = !{ptr @.str.140, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1710, i32 43}
!303 = !{ptr @.str.141, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1712, i32 43}
!305 = !{ptr @.str.142, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1783, i32 8}
!307 = !{ptr @hclge_dbg_reg_info, !308, !"hclge_dbg_reg_info", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 17, i32 45}
!309 = !{ptr @hclge_dbg_bios_common_reg, !310, !"hclge_dbg_bios_common_reg", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 102, i32 43}
!311 = !{ptr @hclge_dbg_ssu_reg_0, !312, !"hclge_dbg_ssu_reg_0", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 118, i32 43}
!313 = !{ptr @hclge_dbg_ssu_reg_1, !314, !"hclge_dbg_ssu_reg_1", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 190, i32 43}
!315 = !{ptr @hclge_dbg_ssu_reg_2, !316, !"hclge_dbg_ssu_reg_2", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 297, i32 43}
!317 = !{ptr @hclge_dbg_igu_egu_reg, !318, !"hclge_dbg_igu_egu_reg", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 306, i32 43}
!319 = !{ptr @hclge_dbg_rpu_reg_0, !320, !"hclge_dbg_rpu_reg_0", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 371, i32 43}
!321 = !{ptr @hclge_dbg_rpu_reg_1, !322, !"hclge_dbg_rpu_reg_1", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 380, i32 43}
!323 = !{ptr @hclge_dbg_ncsi_reg, !324, !"hclge_dbg_ncsi_reg", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 396, i32 43}
!325 = !{ptr @hclge_dbg_rtc_reg, !326, !"hclge_dbg_rtc_reg", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 468, i32 43}
!327 = !{ptr @hclge_dbg_ppp_reg, !328, !"hclge_dbg_ppp_reg", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 498, i32 43}
!329 = !{ptr @hclge_dbg_rcb_reg, !330, !"hclge_dbg_rcb_reg", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 654, i32 43}
!331 = !{ptr @hclge_dbg_tqp_reg, !332, !"hclge_dbg_tqp_reg", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.h", i32 726, i32 43}
!333 = !{ptr @.str.143, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 188, i32 45}
!335 = !{ptr @.str.144, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 192, i32 45}
!337 = !{ptr @.str.145, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 209, i32 46}
!339 = !{ptr @.str.146, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 123, i32 3}
!341 = !{ptr @.str.147, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @hclge_dbg_get_dfx_bd_num._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @hclge_dbg_get_dfx_bd_num._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.149, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 134, i32 3}
!346 = !{ptr @hclge_dbg_get_dfx_bd_num._entry.148, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @hclge_dbg_get_dfx_bd_num._entry_ptr.150, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.151, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 256, i32 45}
!350 = !{ptr @.str.152, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 294, i32 3}
!352 = !{ptr @.str.153, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @hclge_dbg_dump_mac_enable_status._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @hclge_dbg_dump_mac_enable_status._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @hclge_dbg_mac_en_status, !356, !"hclge_dbg_mac_en_status", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 265, i32 47}
!357 = !{ptr @.str.154, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 323, i32 3}
!359 = !{ptr @.str.155, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @hclge_dbg_dump_mac_frame_size._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @hclge_dbg_dump_mac_frame_size._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.156, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 330, i32 44}
!364 = !{ptr @.str.157, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 332, i32 44}
!366 = !{ptr @.str.158, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 353, i32 3}
!368 = !{ptr @.str.159, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @hclge_dbg_dump_mac_speed_duplex._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @hclge_dbg_dump_mac_speed_duplex._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.160, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 360, i32 44}
!373 = !{ptr @.str.161, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 363, i32 44}
!375 = !{ptr @.str.162, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 398, i32 6}
!377 = !{ptr @.str.163, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 408, i32 7}
!379 = !{ptr @.str.164, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 429, i32 6}
!381 = !{ptr @.str.165, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 439, i32 7}
!383 = !{ptr @.str.166, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 455, i32 6}
!385 = !{ptr @.str.167, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 465, i32 7}
!387 = !{ptr @.str.168, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 480, i32 6}
!389 = !{ptr @.str.169, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 487, i32 45}
!391 = !{ptr @.str.170, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 496, i32 7}
!393 = !{ptr @.str.171, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 518, i32 44}
!395 = !{ptr @.str.172, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 520, i32 44}
!397 = !{ptr @.str.173, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 538, i32 44}
!399 = !{ptr @.str.174, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 540, i32 44}
!401 = !{ptr @.str.175, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 548, i32 44}
!403 = !{ptr @.str.176, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 550, i32 44}
!405 = !{ptr @.str.177, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 553, i32 6}
!407 = !{ptr @.str.178, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 556, i32 6}
!409 = !{ptr @.str.179, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 558, i32 44}
!411 = !{ptr @.str.180, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 560, i32 44}
!413 = !{ptr @.str.181, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 562, i32 44}
!415 = !{ptr @.str.182, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 573, i32 44}
!417 = !{ptr @.str.183, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 575, i32 44}
!419 = !{ptr @.str.184, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 577, i32 44}
!421 = !{ptr @.str.185, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 579, i32 44}
!423 = !{ptr @.str.186, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 582, i32 6}
!425 = !{ptr @.str.187, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1521, i32 3}
!427 = !{ptr @.str.188, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @hclge_dbg_dump_fd_tcam._entry, !426, !"_entry", i1 false, i1 false}
!429 = !{ptr @hclge_dbg_dump_fd_tcam._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.190, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1542, i32 3}
!432 = !{ptr @hclge_dbg_dump_fd_tcam._entry.189, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @hclge_dbg_dump_fd_tcam._entry_ptr.191, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.193, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1554, i32 4}
!436 = !{ptr @hclge_dbg_dump_fd_tcam._entry.192, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @hclge_dbg_dump_fd_tcam._entry_ptr.194, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.196, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1563, i32 4}
!440 = !{ptr @hclge_dbg_dump_fd_tcam._entry.195, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @hclge_dbg_dump_fd_tcam._entry_ptr.197, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.198, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1468, i32 5}
!444 = !{ptr @.str.199, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1468, i32 47}
!446 = !{ptr @.str.200, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1468, i32 53}
!448 = !{ptr @.str.201, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1475, i32 6}
!450 = !{ptr @.str.202, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1898, i32 5}
!452 = !{ptr @.str.203, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1904, i32 6}
!454 = !{ptr @.str.204, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1664, i32 41}
!456 = !{ptr @.str.205, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1666, i32 41}
!458 = !{ptr @.str.206, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1669, i32 5}
!460 = !{ptr @.str.207, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1671, i32 41}
!462 = !{ptr @.str.208, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2173, i32 30}
!464 = !{ptr @.str.209, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2175, i32 44}
!466 = !{ptr @.str.210, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2199, i32 48}
!468 = !{ptr @.str.211, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2081, i32 3}
!470 = !{ptr @.str.212, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @hclge_get_vlan_filter_config_cmd._entry, !469, !"_entry", i1 false, i1 false}
!472 = !{ptr @hclge_get_vlan_filter_config_cmd._entry_ptr, !469, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @vlan_filter_items, !474, !"vlan_filter_items", i1 false, i1 false}
!474 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2132, i32 36}
!475 = !{ptr @.str.213, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2121, i32 3}
!477 = !{ptr @.str.214, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @hclge_get_port_vlan_filter_bypass_state._entry, !476, !"_entry", i1 false, i1 false}
!479 = !{ptr @hclge_get_port_vlan_filter_bypass_state._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.215, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2234, i32 21}
!482 = !{ptr @vlan_offload_items, !483, !"vlan_offload_items", i1 false, i1 false}
!483 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2139, i32 36}
!484 = !{ptr @.str.216, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2047, i32 3}
!486 = !{ptr @.str.217, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @hclge_get_vlan_tx_offload_cfg._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @hclge_get_vlan_tx_offload_cfg._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.218, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 2013, i32 3}
!491 = !{ptr @.str.219, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @hclge_get_vlan_rx_offload_cfg._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @hclge_get_vlan_rx_offload_cfg._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.220, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1589, i32 5}
!496 = !{ptr @.str.221, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1597, i32 4}
!498 = !{ptr @.str.222, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @hclge_dbg_dump_fd_counter._entry, !497, !"_entry", i1 false, i1 false}
!500 = !{ptr @hclge_dbg_dump_fd_counter._entry_ptr, !497, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.223, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1604, i32 6}
!503 = !{ptr @.str.224, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1969, i32 29}
!505 = !{ptr @.str.225, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1971, i32 41}
!507 = !{ptr @.str.226, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1973, i32 41}
!509 = !{ptr @.str.227, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1975, i32 41}
!511 = !{ptr @.str.228, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1979, i32 41}
!513 = !{ptr @.str.229, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1984, i32 6}
!515 = !{ptr @.str.230, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_debugfs.c", i32 1989, i32 41}
!517 = !{i32 1, !"wchar_size", i32 2}
!518 = !{i32 1, !"min_enum_size", i32 4}
!519 = !{i32 8, !"branch-target-enforcement", i32 0}
!520 = !{i32 8, !"sign-return-address", i32 0}
!521 = !{i32 8, !"sign-return-address-all", i32 0}
!522 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!523 = !{i32 7, !"uwtable", i32 1}
!524 = !{i32 7, !"frame-pointer", i32 2}
!525 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!526 = !{i64 6542520}
!527 = !{i64 2157609314}
!528 = !{!"auto-init"}
!529 = !{!"branch_weights", i32 1, i32 2000}
!530 = !{i64 2158211947}
!531 = !{i64 884155, i64 884182, i64 884204, i64 884232}
!532 = !{i64 884563, i64 884590, i64 884623, i64 884644, i64 884671, i64 884697}
