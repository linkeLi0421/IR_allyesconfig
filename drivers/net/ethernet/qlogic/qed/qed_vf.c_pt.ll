; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_vf.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_vf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.6, i32 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_ufp_info = type { i32, i32, i8 }
%struct.qed_dmae_info = type { %struct.mutex, i8, i32, ptr, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qed_qm_info = type { ptr, ptr, ptr, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8 }
%struct.qed_storm_stats = type { %struct.storm_stats, %struct.storm_stats, %struct.storm_stats, %struct.storm_stats }
%struct.storm_stats = type { i32, i32 }
%struct.dbg_tools_data = type { %struct.dbg_grc_data, %struct.dbg_bus_data, %struct.idle_chk_data, [40 x i8], [132 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.pretend_params, i32 }
%struct.dbg_grc_data = type { i8, i8, i16, [48 x i32] }
%struct.dbg_bus_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.dbg_bus_trigger_state_data], i8, i8, i8, i8, i32, %struct.dbg_bus_pci_buf_data, [132 x %struct.dbg_bus_block_data], [6 x %struct.dbg_bus_storm_data] }
%struct.dbg_bus_trigger_state_data = type { i8, i8, i8, i8 }
%struct.dbg_bus_pci_buf_data = type { %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr, i32 }
%struct.dbg_bus_mem_addr = type { i32, i32 }
%struct.dbg_bus_block_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dbg_bus_storm_data = type { i8, i8, i8, i8, i8, i8, %union.dbg_bus_storm_eid_params, i32 }
%union.dbg_bus_storm_eid_params = type { %struct.dbg_bus_storm_eid_range_params }
%struct.dbg_bus_storm_eid_range_params = type { i8, i8 }
%struct.idle_chk_data = type { i32, i8, i8, i16 }
%struct.pretend_params = type { i8, i8, i16 }
%struct.virt_mem_desc = type { ptr, i32 }
%struct.qed_db_recovery_info = type { %struct.list_head, %struct.spinlock, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qed_vf_iov = type { ptr, i32, ptr, i32, %struct.mutex, ptr, %struct.qed_bulletin, %struct.qed_bulletin_content, %struct.pfvf_acquire_resp_tlv, i8, [16 x ptr], i8 }
%struct.qed_bulletin = type { i32, ptr, i32 }
%struct.qed_bulletin_content = type { i32, i32, i64, [6 x i8], i8, i8, i8, i8, i8, i8, [4 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, [2 x i8], i32, i32, i32, i16, i16 }
%struct.pfvf_acquire_resp_tlv = type { %struct.pfvf_tlv, %struct.pf_vf_pfdev_info, %struct.pf_vf_resc, i32, i32 }
%struct.pfvf_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.channel_tlv = type { i16, i16 }
%struct.pf_vf_pfdev_info = type { i32, i32, i16, i16, i16, i16, i64, i16, i8, i8, i16, i8, i8, %struct.pfvf_stats_info, [6 x i8], i8, i8 }
%struct.pfvf_stats_info = type { %struct.pfvf_storm_stats, %struct.pfvf_storm_stats, %struct.pfvf_storm_stats, %struct.pfvf_storm_stats }
%struct.pfvf_storm_stats = type { i32, i32 }
%struct.pf_vf_resc = type { [16 x %struct.hw_sb_info], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hw_sb_info = type { i16, i8, [5 x i8] }
%struct.vfpf_first_tlv = type { %struct.channel_tlv, i32, i64 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.106 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.105, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.105 = type { ptr }
%struct.vfpf_acquire_tlv = type { %struct.vfpf_first_tlv, %struct.vf_pf_vfdev_info, %struct.vf_pf_resc_request, i64, i32, i32 }
%struct.vf_pf_vfdev_info = type { i64, i8, i8, i8, i8, i32, i16, i8, i8, i8, [3 x i8] }
%struct.vf_pf_resc_request = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.vfpf_update_tunn_param_tlv = type { %struct.vfpf_first_tlv, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, [2 x i8] }
%struct.pfvf_update_tunn_param_tlv = type { %struct.pfvf_tlv, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.qed_queue_cid_params = type { i8, i16, i8 }
%struct.vfpf_start_rxq_tlv = type { %struct.vfpf_first_tlv, i64, i64, i64, i16, i16, i16, i16, i16, i16, i8, [3 x i8] }
%struct.qed_queue_cid = type { %struct.qed_queue_cid_params, %struct.qed_queue_cid_params, i16, i8, i32, i16, i8, i8, i8, i8, i8, ptr }
%struct.vfpf_qid_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.pfvf_start_queue_resp_tlv = type { %struct.pfvf_tlv, i32, [4 x i8] }
%struct.vfpf_stop_rxqs_tlv = type { %struct.vfpf_first_tlv, i16, i8, i8, [4 x i8] }
%struct.vfpf_start_txq_tlv = type { %struct.vfpf_first_tlv, i64, i16, i16, i16, i16, i32, i16, i8, [3 x i8] }
%struct.vfpf_stop_txqs_tlv = type { %struct.vfpf_first_tlv, i16, i8, [5 x i8] }
%struct.vfpf_vport_start_tlv = type { %struct.vfpf_first_tlv, [16 x i64], i32, i16, i16, i8, i8, i8, i8, [4 x i8] }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.qed_sp_vport_update_params = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, [8 x i32], ptr, %struct.qed_filter_accept_flags, ptr, i8, i8, i8 }
%struct.qed_filter_accept_flags = type { i8, i8, i8, i8 }
%struct.vfpf_vport_update_activate_tlv = type { %struct.channel_tlv, i8, i8, i8, i8 }
%struct.vfpf_vport_update_tx_switch_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.vfpf_vport_update_mcast_bin_tlv = type { %struct.channel_tlv, [4 x i8], [4 x i64], [4 x i64] }
%struct.vfpf_vport_update_accept_param_tlv = type { %struct.channel_tlv, i8, i8, i8, i8 }
%struct.vfpf_vport_update_rss_tlv = type { %struct.channel_tlv, i8, i8, i8, i8, [128 x i16], [10 x i32] }
%struct.qed_rss_params = type { i8, i8, i8, i8, i8, i8, i8, i8, [128 x ptr], [10 x i32] }
%struct.vfpf_vport_update_accept_any_vlan_tlv = type { %struct.channel_tlv, i8, i8, [2 x i8] }
%struct.qed_filter_mcast = type { i32, i8, i8, i8, [64 x [6 x i8]] }
%struct.vfpf_ucast_filter_tlv = type { %struct.vfpf_first_tlv, i8, i8, [6 x i8], i16, [3 x i16] }
%struct.qed_filter_ucast = type { i32, i32, i8, i8, i8, i8, [6 x i8], i8, i16, i32 }
%struct.vfpf_read_coal_req_tlv = type { %struct.vfpf_first_tlv, i16, i8, [5 x i8] }
%struct.pfvf_read_coal_resp_tlv = type { %struct.pfvf_tlv, i16, [6 x i8] }
%struct.vfpf_bulletin_update_mac_tlv = type { %struct.vfpf_first_tlv, [6 x i8], [2 x i8] }
%struct.vfpf_update_coalesce = type { %struct.vfpf_first_tlv, i16, i16, i16, [2 x i8] }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_eth_cb_ops = type { %struct.qed_common_cb_ops, ptr, ptr }
%struct.qed_common_cb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@qed_vf_hw_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\015[%s:%d(%s)]VF's Request mailbox [%p virt 0x%llx phys], Response mailbox [%p virt 0x%llx phys]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_vf_hw_prepare\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/qlogic/qed/qed_vf.c\00", [55 x i8] zeroinitializer }, align 32
@qed_vf_hw_prepare._entry_ptr = internal global ptr @qed_vf_hw_prepare._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_vf_hw_prepare._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]VF's bulletin Board [%p virt 0x%llx phys 0x%08x bytes]\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_vf_hw_prepare._entry_ptr.6 = internal global ptr @qed_vf_hw_prepare._entry.4, section ".printk_index", align 4
@qed_vf_hw_prepare.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&p_iov->mutex\00", [18 x i8] zeroinitializer }, align 32
@qed_vf_hw_prepare._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Regview [%p], Doorbell [%p], Device-doorbell [%p]\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_vf_hw_prepare._entry_ptr.10 = internal global ptr @qed_vf_hw_prepare._entry.8, section ".printk_index", align 4
@qed_vf_pf_tunnel_param_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed to update tunnel parameters\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_vf_pf_tunnel_param_update\00", [34 x i8] zeroinitializer }, align 32
@qed_vf_pf_tunnel_param_update._entry_ptr = internal global ptr @qed_vf_pf_tunnel_param_update._entry, section ".printk_index", align 4
@qed_vf_pf_rxq_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]Rxq[0x%02x]: producer at %p [offset 0x%08x]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_vf_pf_rxq_start\00", [44 x i8] zeroinitializer }, align 32
@qed_vf_pf_rxq_start._entry_ptr = internal global ptr @qed_vf_pf_rxq_start._entry, section ".printk_index", align 4
@qed_vf_pf_txq_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]Txq[0x%02x.%02x]: doorbell at %p [offset 0x%08x]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_vf_pf_txq_start\00", [44 x i8] zeroinitializer }, align 32
@qed_vf_pf_txq_start._entry_ptr = internal global ptr @qed_vf_pf_txq_start._entry, section ".printk_index", align 4
@qed_vf_pf_bulletin_update_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Requesting bulletin update for MAC[%pM]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_vf_pf_bulletin_update_mac\00", [34 x i8] zeroinitializer }, align 32
@qed_vf_pf_bulletin_update_mac._entry_ptr = internal global ptr @qed_vf_pf_bulletin_update_mac._entry, section ".printk_index", align 4
@qed_vf_pf_set_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\015[%s:%d(%s)]Setting coalesce rx_coal = %d, tx_coal = %d at queue = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_vf_pf_set_coalesce\00", [41 x i8] zeroinitializer }, align 32
@qed_vf_pf_set_coalesce._entry_ptr = internal global ptr @qed_vf_pf_set_coalesce._entry, section ".printk_index", align 4
@qed_vf_get_igu_sb_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]vf_sriov_info isn't initialized\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_vf_get_igu_sb_id\00", [43 x i8] zeroinitializer }, align 32
@qed_vf_get_igu_sb_id._entry_ptr = internal global ptr @qed_vf_get_igu_sb_id._entry, section ".printk_index", align 4
@qed_vf_set_sb_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.2, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_vf_set_sb_info\00", [45 x i8] zeroinitializer }, align 32
@qed_vf_set_sb_info._entry_ptr = internal global ptr @qed_vf_set_sb_info._entry, section ".printk_index", align 4
@qed_vf_set_sb_info._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Can't configure SB %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_vf_set_sb_info._entry_ptr.26 = internal global ptr @qed_vf_set_sb_info._entry.24, section ".printk_index", align 4
@qed_vf_read_bulletin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Read a bulletin update %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_vf_read_bulletin\00", [43 x i8] zeroinitializer }, align 32
@qed_vf_read_bulletin._entry_ptr = internal global ptr @qed_vf_read_bulletin._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_vf_pf_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]attempting to acquire resources\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_vf_pf_acquire\00", [46 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr = internal global ptr @qed_vf_pf_acquire._entry, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]VF retrying to acquire due to VPC timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.33 = internal global ptr @qed_vf_pf_acquire._entry.31, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]resources acquired\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.36 = internal global ptr @qed_vf_pf_acquire._entry.34, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"\015[%s:%d(%s)]PF uses an incompatible fastpath HSI %02x.%02x [VF requires %02x.%02x]. Please change to a VF driver using %02x.xx.\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.39 = internal global ptr @qed_vf_pf_acquire._entry.37, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\015[%s:%d(%s)]PF uses very old drivers. Please change to a VF driver using no later than 8.8.x.x.\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.42 = internal global ptr @qed_vf_pf_acquire._entry.40, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]PF is old - try re-acquire to see if it supports FW-version override\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.45 = internal global ptr @qed_vf_pf_acquire._entry.43, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]PF rejected acquisition by VF\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.48 = internal global ptr @qed_vf_pf_acquire._entry.46, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.30, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[%s:%d(%s)]PF returned error %d to VF acquisition request\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.51 = internal global ptr @qed_vf_pf_acquire._entry.49, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.30, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015[%s:%d(%s)]100g VF\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.54 = internal global ptr @qed_vf_pf_acquire._entry.52, section ".printk_index", align 4
@qed_vf_pf_acquire._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.30, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]PF is using older fastpath HSI; %02x.%02x is configured\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire._entry_ptr.57 = internal global ptr @qed_vf_pf_acquire._entry.55, section ".printk_index", align 4
@qed_vf_pf_acquire_reduce_resc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [196 x i8], [60 x i8] } { [196 x i8] c"\015[%s:%d(%s)]PF unwilling to fulfill resource request: rxq [%02x/%02x] txq [%02x/%02x] sbs [%02x/%02x] mac [%02x/%02x] vlan [%02x/%02x] mc [%02x/%02x] cids [%02x/%02x]. Try PF recommended amount\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_vf_pf_acquire_reduce_resc\00", [34 x i8] zeroinitializer }, align 32
@qed_vf_pf_acquire_reduce_resc._entry_ptr = internal global ptr @qed_vf_pf_acquire_reduce_resc._entry, section ".printk_index", align 4
@qed_vf_pf_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]preparing to send 0x%04x tlv over vf pf channel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_vf_pf_prep\00", [17 x i8] zeroinitializer }, align 32
@qed_vf_pf_prep._entry_ptr = internal global ptr @qed_vf_pf_prep._entry, section ".printk_index", align 4
@qed_send_msg2pf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\015[%s:%d(%s)]VF -> PF [%02x] message: [%08x, %08x] --> %p, %08x --> %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_send_msg2pf\00", [16 x i8] zeroinitializer }, align 32
@qed_send_msg2pf._entry_ptr = internal global ptr @qed_send_msg2pf._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qed_send_msg2pf._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]VF <-- PF Timeout [Type %d]\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_send_msg2pf._entry_ptr.66 = internal global ptr @qed_send_msg2pf._entry.64, section ".printk_index", align 4
@qed_send_msg2pf._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]PF response: %d [Type %d]\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_send_msg2pf._entry_ptr.69 = internal global ptr @qed_send_msg2pf._entry.67, section ".printk_index", align 4
@qed_send_msg2pf._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_send_msg2pf._entry_ptr.71 = internal global ptr @qed_send_msg2pf._entry.70, section ".printk_index", align 4
@qed_vf_update_tunn_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\015[%s:%d(%s)]tunn mode: vxlan=0x%x, l2geneve=0x%x, ipgeneve=0x%x, l2gre=0x%x, ipgre=0x%x\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_vf_update_tunn_param\00", [39 x i8] zeroinitializer }, align 32
@qed_vf_update_tunn_param._entry_ptr = internal global ptr @qed_vf_update_tunn_param._entry, section ".printk_index", align 4
@qed_vf_pf_req_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]VF request status = 0x%x, PF reply status = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_vf_pf_req_end\00", [46 x i8] zeroinitializer }, align 32
@qed_vf_pf_req_end._entry_ptr = internal global ptr @qed_vf_pf_req_end._entry, section ".printk_index", align 4
@qed_vf_handle_vp_update_tlvs_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]TLV[%d] Configuration %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qed_vf_handle_vp_update_tlvs_resp\00", [62 x i8] zeroinitializer }, align 32
@qed_vf_handle_vp_update_tlvs_resp._entry_ptr = internal global ptr @qed_vf_handle_vp_update_tlvs_resp._entry, section ".printk_index", align 4
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"succeeded\00", [22 x i8] zeroinitializer }, align 32
@qed_vf_handle_vp_update_is_needed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Unexpected vport-update TLV[%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qed_vf_handle_vp_update_is_needed\00", [62 x i8] zeroinitializer }, align 32
@qed_vf_handle_vp_update_is_needed._entry_ptr = internal global ptr @qed_vf_handle_vp_update_is_needed._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [10 x i64] [i64 8, i64 15, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 503, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 519, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 524, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 552, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 714, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 789, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 892, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1397, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1426, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1459, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1472, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1477, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1509, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 297, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 308, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 333, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 342, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 356, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 361, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 372, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 376, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 407, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 414, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 219, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 25, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 82, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 124, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 131, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 135, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 663, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 51, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1063, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.335 = private constant [44 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_vf.c\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1040, i32 3 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @qed_send_msg2pf._entry, ptr @qed_send_msg2pf._entry.64, ptr @qed_send_msg2pf._entry.67, ptr @qed_send_msg2pf._entry.70, ptr @qed_send_msg2pf._entry_ptr, ptr @qed_send_msg2pf._entry_ptr.66, ptr @qed_send_msg2pf._entry_ptr.69, ptr @qed_send_msg2pf._entry_ptr.71, ptr @qed_vf_get_igu_sb_id._entry, ptr @qed_vf_get_igu_sb_id._entry_ptr, ptr @qed_vf_handle_vp_update_is_needed._entry, ptr @qed_vf_handle_vp_update_is_needed._entry_ptr, ptr @qed_vf_handle_vp_update_tlvs_resp._entry, ptr @qed_vf_handle_vp_update_tlvs_resp._entry_ptr, ptr @qed_vf_hw_prepare._entry, ptr @qed_vf_hw_prepare._entry.4, ptr @qed_vf_hw_prepare._entry.8, ptr @qed_vf_hw_prepare._entry_ptr, ptr @qed_vf_hw_prepare._entry_ptr.10, ptr @qed_vf_hw_prepare._entry_ptr.6, ptr @qed_vf_pf_acquire._entry, ptr @qed_vf_pf_acquire._entry.31, ptr @qed_vf_pf_acquire._entry.34, ptr @qed_vf_pf_acquire._entry.37, ptr @qed_vf_pf_acquire._entry.40, ptr @qed_vf_pf_acquire._entry.43, ptr @qed_vf_pf_acquire._entry.46, ptr @qed_vf_pf_acquire._entry.49, ptr @qed_vf_pf_acquire._entry.52, ptr @qed_vf_pf_acquire._entry.55, ptr @qed_vf_pf_acquire._entry_ptr, ptr @qed_vf_pf_acquire._entry_ptr.33, ptr @qed_vf_pf_acquire._entry_ptr.36, ptr @qed_vf_pf_acquire._entry_ptr.39, ptr @qed_vf_pf_acquire._entry_ptr.42, ptr @qed_vf_pf_acquire._entry_ptr.45, ptr @qed_vf_pf_acquire._entry_ptr.48, ptr @qed_vf_pf_acquire._entry_ptr.51, ptr @qed_vf_pf_acquire._entry_ptr.54, ptr @qed_vf_pf_acquire._entry_ptr.57, ptr @qed_vf_pf_acquire_reduce_resc._entry, ptr @qed_vf_pf_acquire_reduce_resc._entry_ptr, ptr @qed_vf_pf_bulletin_update_mac._entry, ptr @qed_vf_pf_bulletin_update_mac._entry_ptr, ptr @qed_vf_pf_prep._entry, ptr @qed_vf_pf_prep._entry_ptr, ptr @qed_vf_pf_req_end._entry, ptr @qed_vf_pf_req_end._entry_ptr, ptr @qed_vf_pf_rxq_start._entry, ptr @qed_vf_pf_rxq_start._entry_ptr, ptr @qed_vf_pf_set_coalesce._entry, ptr @qed_vf_pf_set_coalesce._entry_ptr, ptr @qed_vf_pf_tunnel_param_update._entry, ptr @qed_vf_pf_tunnel_param_update._entry_ptr, ptr @qed_vf_pf_txq_start._entry, ptr @qed_vf_pf_txq_start._entry_ptr, ptr @qed_vf_read_bulletin._entry, ptr @qed_vf_read_bulletin._entry_ptr, ptr @qed_vf_set_sb_info._entry, ptr @qed_vf_set_sb_info._entry.24, ptr @qed_vf_set_sb_info._entry_ptr, ptr @qed_vf_set_sb_info._entry_ptr.26, ptr @qed_vf_update_tunn_param._entry, ptr @qed_vf_update_tunn_param._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @qed_vf_hw_prepare.__key, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_hw_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_hw_prepare._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_hw_prepare.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_hw_prepare._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_tunnel_param_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_rxq_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_txq_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_bulletin_update_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_set_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_get_igu_sb_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_set_sb_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_set_sb_info._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_read_bulletin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_acquire_reduce_resc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_send_msg2pf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_send_msg2pf._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_send_msg2pf._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_send_msg2pf._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_update_tunn_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_pf_req_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_handle_vp_update_tlvs_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vf_handle_vp_update_is_needed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_release(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_qed_vf_pf_release(ptr noundef %p_hwfn, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_qed_vf_pf_release(ptr noundef %p_hwfn, i1 noundef zeroext %b_final) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 12) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 12, i16 noundef zeroext 16) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %call1 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %16 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %17, i32 0, i32 1
  %call2 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %qed_vf_pf_prep.exit.if.end_crit_edge

qed_vf_pf_prep.exit.if.end_crit_edge:             ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.not = icmp eq i8 %19, 1
  %spec.select = select i1 %cmp.not, i32 0, i32 -11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %qed_vf_pf_prep.exit.if.end_crit_edge
  %rc.0 = phi i32 [ %call2, %qed_vf_pf_prep.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %20 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i63 = getelementptr inbounds %struct.qed_vf_iov, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pf2vf_reply.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf2vf_reply.i63, align 8
  %24 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i65 = icmp eq i8 %25, 0
  br i1 %cmp.i65, label %land.rhs.i69, label %if.end.qed_vf_pf_req_end.exit_crit_edge

if.end.qed_vf_pf_req_end.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i69:                                     ; preds = %if.end
  %dp_module.i66 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %26 = ptrtoint ptr %dp_module.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module.i66, align 4
  %and.i67 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i68, label %land.rhs.i69.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i72, !prof !159

land.rhs.i69.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i72:                                       ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #14
  %name.i70 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %29 to i32
  %call.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i70, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i72, %land.rhs.i69.qed_vf_pf_req_end.exit_crit_edge, %if.end.qed_vf_pf_req_end.exit_crit_edge
  %30 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i73 = getelementptr inbounds %struct.qed_vf_iov, ptr %31, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i73) #12
  br i1 %b_final, label %if.end8, label %qed_vf_pf_req_end.exit.cleanup_crit_edge

qed_vf_pf_req_end.exit.cleanup_crit_edge:         ; preds = %qed_vf_pf_req_end.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %qed_vf_pf_req_end.exit
  %b_int_enabled = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 40
  %32 = ptrtoint ptr %b_int_enabled to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %b_int_enabled, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %tobool9.not = icmp eq ptr %34, null
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %36, i32 0, i32 50
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %vf2pf_request_phys = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %vf2pf_request_phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vf2pf_request_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef nonnull %34, i32 noundef %40, i32 noundef 0) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %41 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pf2vf_reply.i, align 8
  %tobool14.not = icmp eq ptr %42, null
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_hwfn, align 8
  %pdev17 = getelementptr inbounds %struct.qed_dev, ptr %44, i32 0, i32 50
  %45 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev17, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pf2vf_reply_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev18, i32 noundef 1024, ptr noundef nonnull %42, i32 noundef %48, i32 noundef 0) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  %p_virt = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %p_virt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_virt, align 4
  %tobool21.not = icmp eq ptr %50, null
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %if.then22

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %bulletin = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %p_hwfn, align 8
  %pdev24 = getelementptr inbounds %struct.qed_dev, ptr %52, i32 0, i32 50
  %53 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev24, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bulletin, align 8
  tail call void @dma_free_attrs(ptr noundef %dev25, i32 noundef 80, ptr noundef nonnull %50, i32 noundef %56, i32 noundef 0) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end20.if.end29_crit_edge
  %57 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vf_iov_info, align 8
  tail call void @kfree(ptr noundef %58) #12
  %59 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %vf_iov_info, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %qed_vf_pf_req_end.exit.cleanup_crit_edge
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_vf_hw_bar_size(ptr nocapture noundef readonly %p_hwfn, i32 noundef %bar_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bar_id)
  %cmp = icmp eq i32 %bar_id, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %bar_size1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 1, i32 12
  %2 = ptrtoint ptr %bar_size1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bar_size1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl, %if.then2 ], [ 131072, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_hw_prepare(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 33
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %2 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %num_hwfns, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %5 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regview, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 12288
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !160
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  %conv = trunc i32 %8 to i16
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %9 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %opaque_fid, align 4
  %10 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regview, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 12292
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #12, !srcloc !160
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %concrete_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 9
  %14 = ptrtoint ptr %concrete_fid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %concrete_fid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 536) #16
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %doorbells = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 13
  %16 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %doorbells, align 8
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regview, align 4
  %add.ptr18 = getelementptr i8, ptr %19, i32 12288
  %20 = ptrtoint ptr %doorbells to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr18, ptr %doorbells, align 8
  br label %if.end33

if.else:                                          ; preds = %if.end14
  %cmp = icmp eq ptr %hwfns, %p_hwfn
  br i1 %cmp, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %b_doorbell_bar = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %b_doorbell_bar to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %b_doorbell_bar, align 4
  br label %if.end33

if.else22:                                        ; preds = %if.else
  %vf_iov_info = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 33, i32 0, i32 43
  %22 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vf_iov_info, align 8
  %b_doorbell_bar23 = getelementptr inbounds %struct.qed_vf_iov, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %b_doorbell_bar23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b_doorbell_bar23, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool24.not = icmp eq i8 %25, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  %b_doorbell_bar26 = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %b_doorbell_bar26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %b_doorbell_bar26, align 4
  br label %if.end33

if.else27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regview, align 4
  %add.ptr29 = getelementptr i8, ptr %28, i32 12288
  %29 = ptrtoint ptr %doorbells to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr29, ptr %doorbells, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.then25, %if.then21, %if.then16
  %30 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %31, i32 0, i32 50
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %vf2pf_request_phys = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef %vf2pf_request_phys, i32 noundef 3264, i32 noundef 0) #12
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %if.end33.free_p_iov_crit_edge, label %if.end39

if.end33.free_p_iov_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_p_iov

if.end39:                                         ; preds = %if.end33
  %35 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_hwfn, align 8
  %pdev41 = getelementptr inbounds %struct.qed_dev, ptr %36, i32 0, i32 50
  %37 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev41, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %pf2vf_reply_phys = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 3
  %call.i282 = tail call ptr @dma_alloc_attrs(ptr noundef %dev42, i32 noundef 1024, ptr noundef %pf2vf_reply_phys, i32 noundef 3264, i32 noundef 0) #12
  %pf2vf_reply = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i282, ptr %pf2vf_reply, align 8
  %tobool45.not = icmp eq ptr %call.i282, null
  br i1 %tobool45.not, label %if.end39.free_vf2pf_request_crit_edge, label %do.body

if.end39.free_vf2pf_request_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_vf2pf_request

do.body:                                          ; preds = %if.end39
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %40 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp49 = icmp eq i8 %41, 0
  br i1 %cmp49, label %land.rhs, label %do.body.do.end69_crit_edge

do.body.do.end69_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %42 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dp_module, align 4
  %and = and i32 %43, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %land.rhs.do.end69_crit_edge, label %do.end, !prof !159

land.rhs.do.end69_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool57.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool57.not, ptr @.str.3, ptr %name
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %vf2pf_request_phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vf2pf_request_phys, align 4
  %conv62 = zext i32 %47 to i64
  %48 = ptrtoint ptr %pf2vf_reply_phys to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pf2vf_reply_phys, align 4
  %conv65 = zext i32 %49 to i64
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 508, ptr noundef nonnull %spec.select, ptr noundef %45, i64 noundef %conv62, ptr noundef nonnull %call.i282, i64 noundef %conv65) #15
  br label %do.end69

do.end69:                                         ; preds = %do.end, %land.rhs.do.end69_crit_edge, %do.body.do.end69_crit_edge
  %bulletin = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 6
  %size = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 80, ptr %size, align 8
  %51 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %p_hwfn, align 8
  %pdev71 = getelementptr inbounds %struct.qed_dev, ptr %52, i32 0, i32 50
  %53 = ptrtoint ptr %pdev71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev71, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %call.i283 = tail call ptr @dma_alloc_attrs(ptr noundef %dev72, i32 noundef 80, ptr noundef %bulletin, i32 noundef 3264, i32 noundef 0) #12
  %p_virt = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %p_virt to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i283, ptr %p_virt, align 4
  %tobool80.not = icmp eq ptr %call.i283, null
  br i1 %tobool80.not, label %free_pf2vf_reply, label %do.body83

do.body83:                                        ; preds = %do.end69
  %56 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp86 = icmp eq i8 %57, 0
  br i1 %cmp86, label %land.rhs88, label %do.body83.do.body124_crit_edge

do.body83.do.body124_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body124

land.rhs88:                                       ; preds = %do.body83
  %dp_module89 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %58 = ptrtoint ptr %dp_module89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dp_module89, align 4
  %and90 = and i32 %59, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %land.rhs88.do.body124_crit_edge, label %do.end102, !prof !159

land.rhs88.do.body124_crit_edge:                  ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body124

do.end102:                                        ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #14
  %name104 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool106.not = icmp eq ptr %name104, null
  %spec.select280 = select i1 %tobool106.not, ptr @.str.3, ptr %name104
  %60 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bulletin, align 8
  %conv117 = zext i32 %61 to i64
  %62 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size, align 8
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 522, ptr noundef nonnull %spec.select280, ptr noundef nonnull %call.i283, i64 noundef %conv117, i32 noundef %63) #15
  br label %do.body124

do.body124:                                       ; preds = %do.end102, %land.rhs88.do.body124_crit_edge, %do.body83.do.body124_crit_edge
  %mutex = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @qed_vf_hw_prepare.__key) #12
  %vf_iov_info127 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %64 = ptrtoint ptr %vf_iov_info127 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %vf_iov_info127, align 8
  %65 = ptrtoint ptr %hw_info to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %hw_info, align 8
  %call129 = tail call fastcc i32 @qed_vf_pf_acquire(ptr noundef %p_hwfn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %land.lhs.true, label %do.body124.do.body154_crit_edge

do.body124.do.body154_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body154

land.lhs.true:                                    ; preds = %do.body124
  %b_doorbell_bar131 = getelementptr inbounds %struct.qed_vf_iov, ptr %call7.i.i, i32 0, i32 11
  %66 = ptrtoint ptr %b_doorbell_bar131 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %b_doorbell_bar131, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool132.not = icmp eq i8 %67, 0
  br i1 %tobool132.not, label %land.lhs.true.do.body154_crit_edge, label %land.lhs.true134

land.lhs.true.do.body154_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body154

land.lhs.true134:                                 ; preds = %land.lhs.true
  %68 = ptrtoint ptr %vf_iov_info127 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vf_iov_info127, align 8
  %bar_size1.i = getelementptr inbounds %struct.qed_vf_iov, ptr %69, i32 0, i32 8, i32 1, i32 12
  %70 = ptrtoint ptr %bar_size1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bar_size1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i, label %land.lhs.true137, label %land.lhs.true134.do.body154_crit_edge

land.lhs.true134.do.body154_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body154

land.lhs.true137:                                 ; preds = %land.lhs.true134
  %72 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %p_hwfn, align 8
  %num_hwfns139 = getelementptr inbounds %struct.qed_dev, ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %num_hwfns139 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_hwfns139, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp141 = icmp ugt i8 %75, 1
  br i1 %cmp141, label %if.then143, label %land.lhs.true137.do.body154_crit_edge

land.lhs.true137.do.body154_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body154

if.then143:                                       ; preds = %land.lhs.true137
  %call144 = tail call fastcc i32 @_qed_vf_pf_release(ptr noundef %p_hwfn, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.then143.cleanup_crit_edge

if.then143.cleanup_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end147:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %b_doorbell_bar131 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %b_doorbell_bar131, align 4
  %77 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regview, align 4
  %add.ptr150 = getelementptr i8, ptr %78, i32 12288
  %79 = ptrtoint ptr %doorbells to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr150, ptr %doorbells, align 8
  %call152 = tail call fastcc i32 @qed_vf_pf_acquire(ptr noundef %p_hwfn)
  br label %do.body154

do.body154:                                       ; preds = %if.end147, %land.lhs.true137.do.body154_crit_edge, %land.lhs.true134.do.body154_crit_edge, %land.lhs.true.do.body154_crit_edge, %do.body124.do.body154_crit_edge
  %rc.0 = phi i32 [ %call129, %do.body124.do.body154_crit_edge ], [ %call152, %if.end147 ], [ 0, %land.lhs.true137.do.body154_crit_edge ], [ 0, %land.lhs.true.do.body154_crit_edge ], [ 0, %land.lhs.true134.do.body154_crit_edge ]
  %80 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp157 = icmp eq i8 %81, 0
  br i1 %cmp157, label %land.rhs159, label %do.body154.cleanup_crit_edge

do.body154.cleanup_crit_edge:                     ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs159:                                      ; preds = %do.body154
  %dp_module160 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %82 = ptrtoint ptr %dp_module160 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dp_module160, align 4
  %and161 = and i32 %83, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %land.rhs159.cleanup_crit_edge, label %do.end173, !prof !159

land.rhs159.cleanup_crit_edge:                    ; preds = %land.rhs159
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end173:                                        ; preds = %land.rhs159
  call void @__sanitizer_cov_trace_pc() #14
  %name175 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool177.not = icmp eq ptr %name175, null
  %spec.select281 = select i1 %tobool177.not, ptr @.str.3, ptr %name175
  %84 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regview, align 4
  %86 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %doorbells, align 8
  %88 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %p_hwfn, align 8
  %doorbells187 = getelementptr inbounds %struct.qed_dev, ptr %89, i32 0, i32 27
  %90 = ptrtoint ptr %doorbells187 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %doorbells187, align 8
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 554, ptr noundef nonnull %spec.select281, ptr noundef %85, ptr noundef %87, ptr noundef %91) #15
  br label %cleanup

free_pf2vf_reply:                                 ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %p_hwfn, align 8
  %pdev193 = getelementptr inbounds %struct.qed_dev, ptr %93, i32 0, i32 50
  %94 = ptrtoint ptr %pdev193 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev193, align 8
  %dev194 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %96 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pf2vf_reply, align 8
  %98 = ptrtoint ptr %pf2vf_reply_phys to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pf2vf_reply_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev194, i32 noundef 1024, ptr noundef %97, i32 noundef %99, i32 noundef 0) #12
  br label %free_vf2pf_request

free_vf2pf_request:                               ; preds = %free_pf2vf_reply, %if.end39.free_vf2pf_request_crit_edge
  %100 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p_hwfn, align 8
  %pdev198 = getelementptr inbounds %struct.qed_dev, ptr %101, i32 0, i32 50
  %102 = ptrtoint ptr %pdev198 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev198, align 8
  %dev199 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %104 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call7.i.i, align 8
  %106 = ptrtoint ptr %vf2pf_request_phys to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vf2pf_request_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev199, i32 noundef 1024, ptr noundef %105, i32 noundef %107, i32 noundef 0) #12
  br label %free_p_iov

free_p_iov:                                       ; preds = %free_vf2pf_request, %if.end33.free_p_iov_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_p_iov, %do.end173, %land.rhs159.cleanup_crit_edge, %do.body154.cleanup_crit_edge, %if.then143.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_p_iov ], [ -12, %if.end.cleanup_crit_edge ], [ %call144, %if.then143.cleanup_crit_edge ], [ %rc.0, %do.body154.cleanup_crit_edge ], [ %rc.0, %do.end173 ], [ %rc.0, %land.rhs159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_vf_pf_acquire(ptr noundef %p_hwfn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf2vf_reply, align 8
  %pfdev_info1 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 1
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 1) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %offset.i, align 4
  %11 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %12 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf2vf_reply, align 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 1, i16 noundef zeroext 64) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %16 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %resc_request = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 2
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %18 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %opaque_fid, align 4
  %vfdev_info = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1
  %opaque_fid2 = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %opaque_fid2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %opaque_fid2, align 8
  %21 = ptrtoint ptr %resc_request to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %resc_request, align 1
  %num_txqs = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %num_txqs to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %num_txqs, align 1
  %num_sbs = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %num_sbs to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %num_sbs, align 1
  %num_mac_filters = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %num_mac_filters, align 1
  %num_vlan_filters = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %num_vlan_filters, align 1
  %num_cids = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %num_cids to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %num_cids, align 1
  %os_type = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 7
  %27 = ptrtoint ptr %os_type to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %os_type, align 2
  %fw_major = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %fw_major to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %fw_major, align 8
  %fw_minor = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %fw_minor to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 59, ptr %fw_minor, align 1
  %fw_revision = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %fw_revision to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fw_revision, align 2
  %fw_engineering = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %fw_engineering to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %fw_engineering, align 1
  %eth_fp_hsi_major = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 8
  %32 = ptrtoint ptr %eth_fp_hsi_major to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %eth_fp_hsi_major, align 1
  %eth_fp_hsi_minor = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 1, i32 9
  %33 = ptrtoint ptr %eth_fp_hsi_minor to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 11, ptr %eth_fp_hsi_minor, align 4
  %34 = ptrtoint ptr %vfdev_info to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %vfdev_info, align 8
  %or = or i64 %35, 2
  store i64 %or, ptr %vfdev_info, align 8
  %b_doorbell_bar = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %b_doorbell_bar to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b_doorbell_bar, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %qed_vf_pf_prep.exit.if.end_crit_edge, label %if.then

qed_vf_pf_prep.exit.if.end_crit_edge:             ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or13 = or i64 %35, 14
  %38 = ptrtoint ptr %vfdev_info to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %or13, ptr %vfdev_info, align 8
  %39 = ptrtoint ptr %num_cids to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -6, ptr %num_cids, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %qed_vf_pf_prep.exit.if.end_crit_edge
  %bulletin = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bulletin, align 8
  %conv = zext i32 %41 to i64
  %bulletin_addr = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 3
  %42 = ptrtoint ptr %bulletin_addr to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv, ptr %bulletin_addr, align 8
  %size = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size, align 8
  %bulletin_size = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 4
  %45 = ptrtoint ptr %bulletin_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %bulletin_size, align 8
  %call16 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool26.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool26.not, ptr @.str.3, ptr %name
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %3, i32 0, i32 1
  %acquire_resp = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8
  %major_fp_hsi = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 1, i32 15
  %num_rxqs9.i = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 2, i32 3
  %num_txqs.i = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 2, i32 4
  %num_sbs15.i = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 2, i32 5
  %num_mac_filters18.i = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 2, i32 6
  %num_vlan_filters21.i = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 2, i32 7
  %num_mc_filters.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %call13.i, i32 0, i32 2, i32 5
  %num_mc_filters24.i = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 2, i32 8
  %num_cids27.i = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 2, i32 9
  %capabilities85 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 1, i32 6
  br label %do.body.lr.ph

do.body.lr.ph:                                    ; preds = %do.body.lr.ph.backedge, %if.end
  %retry_cnt.0.ph581 = phi i8 [ 3, %if.end ], [ %retry_cnt.0578, %do.body.lr.ph.backedge ]
  %attempts.0.ph580 = phi i32 [ 0, %if.end ], [ %inc, %do.body.lr.ph.backedge ]
  br label %do.body

do.body:                                          ; preds = %do.end73, %do.body.lr.ph
  %retry_cnt.0578 = phi i8 [ %retry_cnt.0.ph581, %do.body.lr.ph ], [ %dec, %do.end73 ]
  %46 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp = icmp eq i8 %47, 0
  br i1 %cmp, label %land.rhs, label %do.body.do.end32_crit_edge

do.body.do.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

land.rhs:                                         ; preds = %do.body
  %48 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dp_module, align 4
  %and = and i32 %49, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %land.rhs.do.end32_crit_edge, label %do.end, !prof !159

land.rhs.do.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 298, ptr noundef nonnull %spec.select) #15
  br label %do.end32

do.end32:                                         ; preds = %do.end, %land.rhs.do.end32_crit_edge, %do.body.do.end32_crit_edge
  %50 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pf2vf_reply, align 8
  %52 = call ptr @memset(ptr %51, i32 0, i32 1024)
  %call34 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retry_cnt.0578)
  %tobool36.not = icmp ne i8 %retry_cnt.0578, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call34)
  %cmp37 = icmp eq i32 %call34, -16
  %or.cond = select i1 %tobool36.not, i1 %cmp37, i1 false
  br i1 %or.cond, label %do.body40, label %if.end74

do.body40:                                        ; preds = %do.end32
  %53 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp43 = icmp eq i8 %54, 0
  br i1 %cmp43, label %land.rhs45, label %do.body40.do.end73_crit_edge

do.body40.do.end73_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

land.rhs45:                                       ; preds = %do.body40
  %55 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dp_module, align 4
  %and47 = and i32 %56, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %land.rhs45.do.end73_crit_edge, label %do.end59, !prof !159

land.rhs45.do.end73_crit_edge:                    ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

do.end59:                                         ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #14
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 309, ptr noundef nonnull %spec.select) #15
  br label %do.end73

do.end73:                                         ; preds = %do.end59, %land.rhs45.do.end73_crit_edge, %do.body40.do.end73_crit_edge
  %dec = add i8 %retry_cnt.0578, -1
  br label %do.body

if.end74:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool75.not = icmp eq i32 %call34, 0
  br i1 %tobool75.not, label %if.end77, label %if.end74.exit_crit_edge

if.end74.exit_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end77:                                         ; preds = %if.end74
  %57 = call ptr @memcpy(ptr %acquire_resp, ptr %3, i32 256)
  %inc = add i32 %attempts.0.ph580, 1
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %status, align 4
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i8 %59, label %if.end77.do.end290_crit_edge [
    i8 1, label %if.then83
    i8 4, label %land.lhs.true132
    i8 3, label %if.then142
  ]

if.end77.do.end290_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end290

if.then83:                                        ; preds = %if.end77
  %61 = ptrtoint ptr %capabilities85 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %capabilities85, align 8
  %and86 = and i64 %62, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86)
  %tobool87.not = icmp eq i64 %and86, 0
  br i1 %tobool87.not, label %if.then88, label %if.then83.do.body93_crit_edge

if.then83.do.body93_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

if.then88:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %vfdev_info to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %vfdev_info, align 8
  %or91 = or i64 %64, 1
  store i64 %or91, ptr %vfdev_info, align 8
  br label %do.body93

do.body93:                                        ; preds = %if.then88, %if.then83.do.body93_crit_edge
  %65 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp96 = icmp eq i8 %66, 0
  br i1 %cmp96, label %land.rhs98, label %do.body93.while.end_crit_edge

do.body93.while.end_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs98:                                       ; preds = %do.body93
  %67 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dp_module, align 4
  %and100 = and i32 %68, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %land.rhs98.while.end_crit_edge, label %do.end112, !prof !159

land.rhs98.while.end_crit_edge:                   ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end112:                                        ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #14
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, i32 noundef 333, ptr noundef nonnull %spec.select) #15
  br label %while.end

land.lhs.true132:                                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp133 = icmp slt i32 %inc, 3
  br i1 %cmp133, label %if.then135, label %land.lhs.true132.do.end290_crit_edge

land.lhs.true132.do.end290_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end290

if.then135:                                       ; preds = %land.lhs.true132
  %69 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp.i538 = icmp eq i8 %70, 0
  br i1 %cmp.i538, label %land.rhs.i542, label %if.then135.qed_vf_pf_acquire_reduce_resc.exit_crit_edge

if.then135.qed_vf_pf_acquire_reduce_resc.exit_crit_edge: ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_acquire_reduce_resc.exit

land.rhs.i542:                                    ; preds = %if.then135
  %71 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dp_module, align 4
  %and.i540 = and i32 %72, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i540)
  %tobool.not.i541 = icmp eq i32 %and.i540, 0
  br i1 %tobool.not.i541, label %land.rhs.i542.qed_vf_pf_acquire_reduce_resc.exit_crit_edge, label %do.end.i546, !prof !159

land.rhs.i542.qed_vf_pf_acquire_reduce_resc.exit_crit_edge: ; preds = %land.rhs.i542
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_acquire_reduce_resc.exit

do.end.i546:                                      ; preds = %land.rhs.i542
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %resc_request to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %resc_request, align 1
  %conv8.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %num_rxqs9.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_rxqs9.i, align 2
  %conv10.i = zext i8 %76 to i32
  %77 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_txqs.i, align 1
  %conv13.i = zext i8 %78 to i32
  %79 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_sbs, align 1
  %conv14.i544 = zext i8 %80 to i32
  %81 = ptrtoint ptr %num_sbs15.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_sbs15.i, align 2
  %conv16.i = zext i8 %82 to i32
  %83 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num_mac_filters, align 1
  %conv17.i = zext i8 %84 to i32
  %85 = ptrtoint ptr %num_mac_filters18.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_mac_filters18.i, align 1
  %conv19.i = zext i8 %86 to i32
  %87 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_vlan_filters, align 1
  %conv20.i = zext i8 %88 to i32
  %89 = ptrtoint ptr %num_vlan_filters21.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %num_vlan_filters21.i, align 2
  %conv22.i = zext i8 %90 to i32
  %91 = ptrtoint ptr %num_mc_filters.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %num_mc_filters.i, align 1
  %conv23.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %num_mc_filters24.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_mc_filters24.i, align 1
  %conv25.i = zext i8 %94 to i32
  %95 = ptrtoint ptr %num_cids to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_cids, align 1
  %conv26.i = zext i8 %96 to i32
  %97 = ptrtoint ptr %num_cids27.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %num_cids27.i, align 2
  %conv28.i = zext i8 %98 to i32
  %call.i545 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 233, ptr noundef nonnull %name, i32 noundef %conv8.i, i32 noundef %conv10.i, i32 noundef %conv8.i, i32 noundef %conv13.i, i32 noundef %conv14.i544, i32 noundef %conv16.i, i32 noundef %conv17.i, i32 noundef %conv19.i, i32 noundef %conv20.i, i32 noundef %conv22.i, i32 noundef %conv23.i, i32 noundef %conv25.i, i32 noundef %conv26.i, i32 noundef %conv28.i) #15
  br label %qed_vf_pf_acquire_reduce_resc.exit

qed_vf_pf_acquire_reduce_resc.exit:               ; preds = %do.end.i546, %land.rhs.i542.qed_vf_pf_acquire_reduce_resc.exit_crit_edge, %if.then135.qed_vf_pf_acquire_reduce_resc.exit_crit_edge
  %99 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %num_txqs.i, align 1
  %101 = ptrtoint ptr %num_txqs to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %num_txqs, align 1
  %102 = ptrtoint ptr %num_rxqs9.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %num_rxqs9.i, align 2
  %104 = ptrtoint ptr %resc_request to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %resc_request, align 1
  %105 = ptrtoint ptr %num_sbs15.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_sbs15.i, align 2
  %107 = ptrtoint ptr %num_sbs to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %num_sbs, align 1
  %108 = ptrtoint ptr %num_mac_filters18.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %num_mac_filters18.i, align 1
  %110 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %num_mac_filters, align 1
  %111 = ptrtoint ptr %num_vlan_filters21.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_vlan_filters21.i, align 2
  %113 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %num_vlan_filters, align 1
  %114 = ptrtoint ptr %num_mc_filters24.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num_mc_filters24.i, align 1
  %116 = ptrtoint ptr %num_mc_filters.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %num_mc_filters.i, align 1
  %117 = ptrtoint ptr %num_cids27.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %num_cids27.i, align 2
  %119 = ptrtoint ptr %num_cids to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %num_cids, align 1
  br label %do.body.lr.ph.backedge

if.then142:                                       ; preds = %if.end77
  %120 = ptrtoint ptr %major_fp_hsi to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %major_fp_hsi, align 2
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %121, label %do.body151 [
    i8 0, label %if.then188
    i8 3, label %do.body257
  ]

do.body151:                                       ; preds = %if.then142
  %123 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %124)
  %cmp154 = icmp ult i8 %124, 3
  br i1 %cmp154, label %do.end165, label %do.body151.qed_vf_pf_req_end.exit_crit_edge, !prof !164

do.body151.qed_vf_pf_req_end.exit_crit_edge:      ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end165:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  %conv177 = zext i8 %121 to i32
  %minor_fp_hsi = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 1, i32 16
  %125 = ptrtoint ptr %minor_fp_hsi to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %minor_fp_hsi, align 1
  %conv178 = zext i8 %126 to i32
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30, i32 noundef 348, ptr noundef nonnull %spec.select, i32 noundef %conv177, i32 noundef %conv178, i32 noundef 3, i32 noundef 11, i32 noundef %conv177) #15
  br label %exit

if.then188:                                       ; preds = %if.then142
  %127 = ptrtoint ptr %vfdev_info to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %vfdev_info, align 8
  %and191 = and i64 %128, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and191)
  %tobool192.not = icmp eq i64 %and191, 0
  %129 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %dp_level.i, align 8
  br i1 %tobool192.not, label %do.body224, label %do.body194

do.body194:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %130)
  %cmp197 = icmp ult i8 %130, 3
  br i1 %cmp197, label %do.end208, label %do.body194.qed_vf_pf_req_end.exit_crit_edge, !prof !164

do.body194.qed_vf_pf_req_end.exit_crit_edge:      ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end208:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #14
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30, i32 noundef 357, ptr noundef nonnull %spec.select) #15
  br label %exit

do.body224:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %130)
  %cmp227 = icmp ult i8 %130, 2
  br i1 %cmp227, label %do.end238, label %do.body224.do.end252_crit_edge, !prof !164

do.body224.do.end252_crit_edge:                   ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end252

do.end238:                                        ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #14
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.30, i32 noundef 362, ptr noundef nonnull %spec.select) #15
  br label %do.end252

do.end252:                                        ; preds = %do.end238, %do.body224.do.end252_crit_edge
  %131 = ptrtoint ptr %vfdev_info to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %vfdev_info, align 8
  %or255 = or i64 %132, 1
  store i64 %or255, ptr %vfdev_info, align 8
  br label %do.body.lr.ph.backedge

do.body.lr.ph.backedge:                           ; preds = %do.end252, %qed_vf_pf_acquire_reduce_resc.exit
  br label %do.body.lr.ph

do.body257:                                       ; preds = %if.then142
  %133 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %134)
  %cmp260 = icmp ult i8 %134, 3
  br i1 %cmp260, label %do.end271, label %do.body257.qed_vf_pf_req_end.exit_crit_edge, !prof !164

do.body257.qed_vf_pf_req_end.exit_crit_edge:      ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end271:                                        ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #14
  %call282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.30, i32 noundef 372, ptr noundef nonnull %spec.select) #15
  br label %exit

do.end290:                                        ; preds = %land.lhs.true132.do.end290_crit_edge, %if.end77.do.end290_crit_edge
  %conv303 = zext i8 %59 to i32
  %call304 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.30, i32 noundef 378, ptr noundef nonnull %spec.select, i32 noundef %conv303) #15
  br label %exit

while.end:                                        ; preds = %do.end112, %land.rhs98.while.end_crit_edge, %do.body93.while.end_crit_edge
  %135 = ptrtoint ptr %vfdev_info to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %vfdev_info, align 8
  %and311 = and i64 %136, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and311)
  %tobool312.not = icmp eq i64 %and311, 0
  br i1 %tobool312.not, label %while.end.if.end314_crit_edge, label %if.then313

while.end.if.end314_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end314

if.then313:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %b_pre_fp_hsi = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 9
  %137 = ptrtoint ptr %b_pre_fp_hsi to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %b_pre_fp_hsi, align 8
  br label %if.end314

if.end314:                                        ; preds = %if.then313, %while.end.if.end314_crit_edge
  %138 = ptrtoint ptr %capabilities85 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %capabilities85, align 8
  %and317 = and i64 %139, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and317)
  %tobool318.not = icmp eq i64 %and317, 0
  br i1 %tobool318.not, label %if.then319, label %if.end314.if.end329_crit_edge

if.end314.if.end329_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end329

if.then319:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %num_rxqs9.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %num_rxqs9.i, align 8
  %142 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %num_txqs.i, align 1
  %add = add i8 %143, %141
  %144 = ptrtoint ptr %num_cids27.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %add, ptr %num_cids27.i, align 2
  br label %if.end329

if.end329:                                        ; preds = %if.then319, %if.end314.if.end329_crit_edge
  %bulletin_size330 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 3
  %145 = ptrtoint ptr %bulletin_size330 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %bulletin_size330, align 8
  %147 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %size, align 8
  %dev_type = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 1, i32 11
  %148 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %dev_type, align 2
  %conv334 = zext i8 %149 to i32
  %150 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv334, ptr %type, align 8
  %chip_rev = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 1, i32 10
  %153 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %chip_rev, align 4
  %155 = load ptr, ptr %p_hwfn, align 8
  %chip_rev337 = getelementptr inbounds %struct.qed_dev, ptr %155, i32 0, i32 7
  %156 = ptrtoint ptr %chip_rev337 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %154, ptr %chip_rev337, align 2
  %157 = ptrtoint ptr %pfdev_info1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pfdev_info1, align 8
  %conv339 = trunc i32 %158 to i16
  %159 = load ptr, ptr %p_hwfn, align 8
  %chip_num341 = getelementptr inbounds %struct.qed_dev, ptr %159, i32 0, i32 6
  %160 = ptrtoint ptr %chip_num341 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv339, ptr %chip_num341, align 8
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %161 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool342.not = icmp eq i8 %162, 0
  br i1 %tobool342.not, label %if.then343, label %if.end329.if.end380_crit_edge

if.end329.if.end380_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380

if.then343:                                       ; preds = %if.end329
  %163 = ptrtoint ptr %capabilities85 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %capabilities85, align 8
  %and346 = and i64 %164, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and346)
  %tobool347.not = icmp eq i64 %and346, 0
  br i1 %tobool347.not, label %if.then343.if.end380_crit_edge, label %do.body349

if.then343.if.end380_crit_edge:                   ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380

do.body349:                                       ; preds = %if.then343
  %165 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %166)
  %cmp352 = icmp ult i8 %166, 3
  br i1 %cmp352, label %do.end363, label %do.body349.do.end377_crit_edge, !prof !164

do.body349.do.end377_crit_edge:                   ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end377

do.end363:                                        ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #14
  %call374 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.30, i32 noundef 407, ptr noundef nonnull %spec.select) #15
  br label %do.end377

do.end377:                                        ; preds = %do.end363, %do.body349.do.end377_crit_edge
  %167 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %p_hwfn, align 8
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %168, i32 0, i32 32
  %169 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 2, ptr %num_hwfns, align 4
  br label %if.end380

if.end380:                                        ; preds = %do.end377, %if.then343.if.end380_crit_edge, %if.end329.if.end380_crit_edge
  %b_pre_fp_hsi381 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 9
  %170 = ptrtoint ptr %b_pre_fp_hsi381 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %b_pre_fp_hsi381, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool382.not = icmp eq i8 %171, 0
  br i1 %tobool382.not, label %land.lhs.true383, label %if.end380.exit_crit_edge

if.end380.exit_crit_edge:                         ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true383:                                 ; preds = %if.end380
  %minor_fp_hsi385 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, ptr %3, i32 0, i32 1, i32 16
  %172 = ptrtoint ptr %minor_fp_hsi385 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %minor_fp_hsi385, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %173)
  %cmp387 = icmp ult i8 %173, 11
  br i1 %cmp387, label %do.body390, label %land.lhs.true383.exit_crit_edge

land.lhs.true383.exit_crit_edge:                  ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.body390:                                       ; preds = %land.lhs.true383
  %174 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %175)
  %cmp393 = icmp ult i8 %175, 2
  br i1 %cmp393, label %do.end404, label %do.body390.qed_vf_pf_req_end.exit_crit_edge, !prof !164

do.body390.qed_vf_pf_req_end.exit_crit_edge:      ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end404:                                        ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #14
  %conv417 = zext i8 %173 to i32
  %call418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.30, i32 noundef 416, ptr noundef nonnull %spec.select, i32 noundef 3, i32 noundef %conv417) #15
  br label %exit

exit:                                             ; preds = %do.end404, %land.lhs.true383.exit_crit_edge, %if.end380.exit_crit_edge, %do.end290, %do.end271, %do.end208, %do.end165, %if.end74.exit_crit_edge
  %rc.1.ph = phi i32 [ -22, %do.end271 ], [ -22, %do.end208 ], [ -22, %do.end165 ], [ 0, %land.lhs.true383.exit_crit_edge ], [ 0, %do.end404 ], [ 0, %if.end380.exit_crit_edge ], [ -11, %do.end290 ], [ %call34, %if.end74.exit_crit_edge ]
  %176 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %.pr = load i8, ptr %dp_level.i, align 8
  %177 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i548 = getelementptr inbounds %struct.qed_vf_iov, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %pf2vf_reply.i548 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pf2vf_reply.i548, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp.i550 = icmp eq i8 %.pr, 0
  br i1 %cmp.i550, label %land.rhs.i554, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i554:                                    ; preds = %exit
  %181 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %dp_module, align 4
  %and.i552 = and i32 %182, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i552)
  %tobool.not.i553 = icmp eq i32 %and.i552, 0
  br i1 %tobool.not.i553, label %land.rhs.i554.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i558, !prof !159

land.rhs.i554.qed_vf_pf_req_end.exit_crit_edge:   ; preds = %land.rhs.i554
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i558:                                      ; preds = %land.rhs.i554
  call void @__sanitizer_cov_trace_pc() #14
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %180, i32 0, i32 1
  %183 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %status.i, align 4
  %conv8.i556 = zext i8 %184 to i32
  %call.i557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name, i32 noundef %rc.1.ph, i32 noundef %conv8.i556) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i558, %land.rhs.i554.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge, %do.body390.qed_vf_pf_req_end.exit_crit_edge, %do.body257.qed_vf_pf_req_end.exit_crit_edge, %do.body194.qed_vf_pf_req_end.exit_crit_edge, %do.body151.qed_vf_pf_req_end.exit_crit_edge
  %rc.1565 = phi i32 [ %rc.1.ph, %exit.qed_vf_pf_req_end.exit_crit_edge ], [ %rc.1.ph, %land.rhs.i554.qed_vf_pf_req_end.exit_crit_edge ], [ %rc.1.ph, %do.end.i558 ], [ -22, %do.body257.qed_vf_pf_req_end.exit_crit_edge ], [ -22, %do.body194.qed_vf_pf_req_end.exit_crit_edge ], [ -22, %do.body151.qed_vf_pf_req_end.exit_crit_edge ], [ 0, %do.body390.qed_vf_pf_req_end.exit_crit_edge ]
  %185 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i559 = getelementptr inbounds %struct.qed_vf_iov, ptr %186, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i559) #12
  ret i32 %rc.1565
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_set_vf_start_tunn_update_param(ptr nocapture noundef %p_tun) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mode_enabled = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_tun, i32 0, i32 1
  %0 = ptrtoint ptr %b_mode_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_mode_enabled, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %p_tun to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %p_tun, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %b_mode_enabled2 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %b_mode_enabled2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_mode_enabled2, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %l2_geneve = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 1
  %5 = ptrtoint ptr %l2_geneve to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %l2_geneve, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %b_mode_enabled8 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %b_mode_enabled8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_mode_enabled8, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %ip_geneve = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 2
  %8 = ptrtoint ptr %ip_geneve to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ip_geneve, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %b_mode_enabled14 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %b_mode_enabled14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %b_mode_enabled14, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not = icmp eq i8 %10, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %l2_gre = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 3
  %11 = ptrtoint ptr %l2_gre to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %l2_gre, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %b_mode_enabled20 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %b_mode_enabled20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b_mode_enabled20, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %ip_gre = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 4
  %14 = ptrtoint ptr %ip_gre to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ip_gre, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %b_update_rx_cls = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 7
  %15 = ptrtoint ptr %b_update_rx_cls to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %b_update_rx_cls, align 4
  %b_update_tx_cls = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 8
  %16 = ptrtoint ptr %b_update_tx_cls to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %b_update_tx_cls, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_tunnel_param_update(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %2 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 23) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %offset.i, align 4
  %11 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf2vf_reply.i, align 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 23, i16 noundef zeroext 32) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %16 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %b_update_rx_cls = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 7
  %18 = ptrtoint ptr %b_update_rx_cls to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b_update_rx_cls, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %qed_vf_pf_prep.exit.if.end_crit_edge, label %land.lhs.true

qed_vf_pf_prep.exit.if.end_crit_edge:             ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %qed_vf_pf_prep.exit
  %b_update_tx_cls = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 8
  %20 = ptrtoint ptr %b_update_tx_cls to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b_update_tx_cls, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not = icmp eq i8 %21, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %update_tun_cls = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 3
  %22 = ptrtoint ptr %update_tun_cls to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %update_tun_cls, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %qed_vf_pf_prep.exit.if.end_crit_edge
  %vxlan_clss = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 4
  %vxlan_port = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 5
  %23 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vxlan_port, align 2, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i66 = icmp eq i8 %24, 0
  br i1 %tobool.not.i66, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vxlan_port2 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 12
  %update_vxlan_port = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 10
  %25 = ptrtoint ptr %update_vxlan_port to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %update_vxlan_port, align 1
  %port.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port.i, align 2
  %28 = ptrtoint ptr %vxlan_port2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vxlan_port2, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %29 = ptrtoint ptr %p_src to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %p_src, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %if.end.i.qed_vf_prep_tunn_req_tlv.exit_crit_edge, label %if.then.i.i

if.end.i.qed_vf_prep_tunn_req_tlv.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_prep_tunn_req_tlv.exit

if.then.i.i:                                      ; preds = %if.end.i
  %tun_mode_update_mask.i.i = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 1
  %31 = ptrtoint ptr %tun_mode_update_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tun_mode_update_mask.i.i, align 8
  %conv1.i.i = or i8 %32, 16
  store i8 %conv1.i.i, ptr %tun_mode_update_mask.i.i, align 8
  %b_mode_enabled.i.i = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_src, i32 0, i32 1
  %33 = ptrtoint ptr %b_mode_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %b_mode_enabled.i.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool2.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.qed_vf_prep_tunn_req_tlv.exit_crit_edge, label %if.then3.i.i

if.then.i.i.qed_vf_prep_tunn_req_tlv.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_prep_tunn_req_tlv.exit

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tunn_mode.i.i = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 2
  %35 = ptrtoint ptr %tunn_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tunn_mode.i.i, align 1
  %conv7.i.i = or i8 %36, 16
  store i8 %conv7.i.i, ptr %tunn_mode.i.i, align 1
  br label %qed_vf_prep_tunn_req_tlv.exit

qed_vf_prep_tunn_req_tlv.exit:                    ; preds = %if.then3.i.i, %if.then.i.i.qed_vf_prep_tunn_req_tlv.exit_crit_edge, %if.end.i.qed_vf_prep_tunn_req_tlv.exit_crit_edge
  %tun_cls.i.i = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_src, i32 0, i32 2
  %37 = ptrtoint ptr %tun_cls.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tun_cls.i.i, align 4
  %conv9.i.i = trunc i32 %38 to i8
  %39 = ptrtoint ptr %vxlan_clss to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv9.i.i, ptr %vxlan_clss, align 1
  %l2_geneve = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 1
  %l2geneve_clss = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 7
  %geneve_port = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 6
  %40 = ptrtoint ptr %geneve_port to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %geneve_port, align 2, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i67 = icmp eq i8 %41, 0
  br i1 %tobool.not.i67, label %qed_vf_prep_tunn_req_tlv.exit.if.end.i71_crit_edge, label %if.then.i69

qed_vf_prep_tunn_req_tlv.exit.if.end.i71_crit_edge: ; preds = %qed_vf_prep_tunn_req_tlv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i71

if.then.i69:                                      ; preds = %qed_vf_prep_tunn_req_tlv.exit
  call void @__sanitizer_cov_trace_pc() #14
  %geneve_port3 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 11
  %update_geneve_port = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 9
  %42 = ptrtoint ptr %update_geneve_port to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %update_geneve_port, align 1
  %port.i68 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %port.i68 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %port.i68, align 2
  %45 = ptrtoint ptr %geneve_port3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %geneve_port3, align 2
  br label %if.end.i71

if.end.i71:                                       ; preds = %if.then.i69, %qed_vf_prep_tunn_req_tlv.exit.if.end.i71_crit_edge
  %46 = ptrtoint ptr %l2_geneve to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %l2_geneve, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i70 = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i70, label %if.end.i71.qed_vf_prep_tunn_req_tlv.exit82_crit_edge, label %if.then.i.i76

if.end.i71.qed_vf_prep_tunn_req_tlv.exit82_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_prep_tunn_req_tlv.exit82

if.then.i.i76:                                    ; preds = %if.end.i71
  %tun_mode_update_mask.i.i72 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 1
  %48 = ptrtoint ptr %tun_mode_update_mask.i.i72 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tun_mode_update_mask.i.i72, align 8
  %conv1.i.i73 = or i8 %49, 1
  store i8 %conv1.i.i73, ptr %tun_mode_update_mask.i.i72, align 8
  %b_mode_enabled.i.i74 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %b_mode_enabled.i.i74 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b_mode_enabled.i.i74, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool2.not.i.i75 = icmp eq i8 %51, 0
  br i1 %tobool2.not.i.i75, label %if.then.i.i76.qed_vf_prep_tunn_req_tlv.exit82_crit_edge, label %if.then3.i.i79

if.then.i.i76.qed_vf_prep_tunn_req_tlv.exit82_crit_edge: ; preds = %if.then.i.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_prep_tunn_req_tlv.exit82

if.then3.i.i79:                                   ; preds = %if.then.i.i76
  call void @__sanitizer_cov_trace_pc() #14
  %tunn_mode.i.i77 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 2
  %52 = ptrtoint ptr %tunn_mode.i.i77 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tunn_mode.i.i77, align 1
  %conv7.i.i78 = or i8 %53, 1
  store i8 %conv7.i.i78, ptr %tunn_mode.i.i77, align 1
  br label %qed_vf_prep_tunn_req_tlv.exit82

qed_vf_prep_tunn_req_tlv.exit82:                  ; preds = %if.then3.i.i79, %if.then.i.i76.qed_vf_prep_tunn_req_tlv.exit82_crit_edge, %if.end.i71.qed_vf_prep_tunn_req_tlv.exit82_crit_edge
  %tun_cls.i.i80 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %tun_cls.i.i80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tun_cls.i.i80, align 4
  %conv9.i.i81 = trunc i32 %55 to i8
  %56 = ptrtoint ptr %l2geneve_clss to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv9.i.i81, ptr %l2geneve_clss, align 1
  %ip_geneve = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 2
  %ipgeneve_clss = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 8
  %57 = ptrtoint ptr %ip_geneve to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ip_geneve, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i83 = icmp eq i8 %58, 0
  br i1 %tobool.not.i83, label %qed_vf_prep_tunn_req_tlv.exit82.__qed_vf_prep_tunn_req_tlv.exit_crit_edge, label %if.then.i84

qed_vf_prep_tunn_req_tlv.exit82.__qed_vf_prep_tunn_req_tlv.exit_crit_edge: ; preds = %qed_vf_prep_tunn_req_tlv.exit82
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_prep_tunn_req_tlv.exit

if.then.i84:                                      ; preds = %qed_vf_prep_tunn_req_tlv.exit82
  %tun_mode_update_mask.i = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 1
  %59 = ptrtoint ptr %tun_mode_update_mask.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tun_mode_update_mask.i, align 8
  %conv1.i = or i8 %60, 2
  store i8 %conv1.i, ptr %tun_mode_update_mask.i, align 8
  %b_mode_enabled.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %b_mode_enabled.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %b_mode_enabled.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool2.not.i = icmp eq i8 %62, 0
  br i1 %tobool2.not.i, label %if.then.i84.__qed_vf_prep_tunn_req_tlv.exit_crit_edge, label %if.then3.i

if.then.i84.__qed_vf_prep_tunn_req_tlv.exit_crit_edge: ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_prep_tunn_req_tlv.exit

if.then3.i:                                       ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #14
  %tunn_mode.i = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 2
  %63 = ptrtoint ptr %tunn_mode.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tunn_mode.i, align 1
  %conv7.i = or i8 %64, 2
  store i8 %conv7.i, ptr %tunn_mode.i, align 1
  br label %__qed_vf_prep_tunn_req_tlv.exit

__qed_vf_prep_tunn_req_tlv.exit:                  ; preds = %if.then3.i, %if.then.i84.__qed_vf_prep_tunn_req_tlv.exit_crit_edge, %qed_vf_prep_tunn_req_tlv.exit82.__qed_vf_prep_tunn_req_tlv.exit_crit_edge
  %tun_cls.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %tun_cls.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tun_cls.i, align 4
  %conv9.i = trunc i32 %66 to i8
  %67 = ptrtoint ptr %ipgeneve_clss to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv9.i, ptr %ipgeneve_clss, align 1
  %l2_gre = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 3
  %l2gre_clss = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 5
  %68 = ptrtoint ptr %l2_gre to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %l2_gre, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i85 = icmp eq i8 %69, 0
  br i1 %tobool.not.i85, label %__qed_vf_prep_tunn_req_tlv.exit.__qed_vf_prep_tunn_req_tlv.exit96_crit_edge, label %if.then.i90

__qed_vf_prep_tunn_req_tlv.exit.__qed_vf_prep_tunn_req_tlv.exit96_crit_edge: ; preds = %__qed_vf_prep_tunn_req_tlv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_prep_tunn_req_tlv.exit96

if.then.i90:                                      ; preds = %__qed_vf_prep_tunn_req_tlv.exit
  %tun_mode_update_mask.i86 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 1
  %70 = ptrtoint ptr %tun_mode_update_mask.i86 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tun_mode_update_mask.i86, align 8
  %conv1.i87 = or i8 %71, 4
  store i8 %conv1.i87, ptr %tun_mode_update_mask.i86, align 8
  %b_mode_enabled.i88 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %b_mode_enabled.i88 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b_mode_enabled.i88, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool2.not.i89 = icmp eq i8 %73, 0
  br i1 %tobool2.not.i89, label %if.then.i90.__qed_vf_prep_tunn_req_tlv.exit96_crit_edge, label %if.then3.i93

if.then.i90.__qed_vf_prep_tunn_req_tlv.exit96_crit_edge: ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_prep_tunn_req_tlv.exit96

if.then3.i93:                                     ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #14
  %tunn_mode.i91 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 2
  %74 = ptrtoint ptr %tunn_mode.i91 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tunn_mode.i91, align 1
  %conv7.i92 = or i8 %75, 4
  store i8 %conv7.i92, ptr %tunn_mode.i91, align 1
  br label %__qed_vf_prep_tunn_req_tlv.exit96

__qed_vf_prep_tunn_req_tlv.exit96:                ; preds = %if.then3.i93, %if.then.i90.__qed_vf_prep_tunn_req_tlv.exit96_crit_edge, %__qed_vf_prep_tunn_req_tlv.exit.__qed_vf_prep_tunn_req_tlv.exit96_crit_edge
  %tun_cls.i94 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 3, i32 2
  %76 = ptrtoint ptr %tun_cls.i94 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tun_cls.i94, align 4
  %conv9.i95 = trunc i32 %77 to i8
  %78 = ptrtoint ptr %l2gre_clss to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv9.i95, ptr %l2gre_clss, align 1
  %ip_gre = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 4
  %ipgre_clss = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 6
  %79 = ptrtoint ptr %ip_gre to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ip_gre, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i97 = icmp eq i8 %80, 0
  br i1 %tobool.not.i97, label %__qed_vf_prep_tunn_req_tlv.exit96.__qed_vf_prep_tunn_req_tlv.exit108_crit_edge, label %if.then.i102

__qed_vf_prep_tunn_req_tlv.exit96.__qed_vf_prep_tunn_req_tlv.exit108_crit_edge: ; preds = %__qed_vf_prep_tunn_req_tlv.exit96
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_prep_tunn_req_tlv.exit108

if.then.i102:                                     ; preds = %__qed_vf_prep_tunn_req_tlv.exit96
  %tun_mode_update_mask.i98 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 1
  %81 = ptrtoint ptr %tun_mode_update_mask.i98 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tun_mode_update_mask.i98, align 8
  %conv1.i99 = or i8 %82, 8
  store i8 %conv1.i99, ptr %tun_mode_update_mask.i98, align 8
  %b_mode_enabled.i100 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %b_mode_enabled.i100 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %b_mode_enabled.i100, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool2.not.i101 = icmp eq i8 %84, 0
  br i1 %tobool2.not.i101, label %if.then.i102.__qed_vf_prep_tunn_req_tlv.exit108_crit_edge, label %if.then3.i105

if.then.i102.__qed_vf_prep_tunn_req_tlv.exit108_crit_edge: ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_prep_tunn_req_tlv.exit108

if.then3.i105:                                    ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #14
  %tunn_mode.i103 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, ptr %call13.i, i32 0, i32 2
  %85 = ptrtoint ptr %tunn_mode.i103 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tunn_mode.i103, align 1
  %conv7.i104 = or i8 %86, 8
  store i8 %conv7.i104, ptr %tunn_mode.i103, align 1
  br label %__qed_vf_prep_tunn_req_tlv.exit108

__qed_vf_prep_tunn_req_tlv.exit108:               ; preds = %if.then3.i105, %if.then.i102.__qed_vf_prep_tunn_req_tlv.exit108_crit_edge, %__qed_vf_prep_tunn_req_tlv.exit96.__qed_vf_prep_tunn_req_tlv.exit108_crit_edge
  %tun_cls.i106 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 4, i32 2
  %87 = ptrtoint ptr %tun_cls.i106 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tun_cls.i106, align 4
  %conv9.i107 = trunc i32 %88 to i8
  %89 = ptrtoint ptr %ipgre_clss to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv9.i107, ptr %ipgre_clss, align 1
  %call4 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %90 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %91, i32 0, i32 1
  %call5 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %__qed_vf_prep_tunn_req_tlv.exit108.exit_crit_edge

__qed_vf_prep_tunn_req_tlv.exit108.exit_crit_edge: ; preds = %__qed_vf_prep_tunn_req_tlv.exit108
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end8:                                          ; preds = %__qed_vf_prep_tunn_req_tlv.exit108
  %92 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp.not = icmp eq i8 %93, 1
  br i1 %cmp.not, label %if.end8.if.end28_crit_edge, label %do.body

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body:                                          ; preds = %if.end8
  %94 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp14 = icmp eq i8 %95, 0
  br i1 %cmp14, label %land.rhs, label %do.body.if.end28_crit_edge

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %96 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dp_module, align 4
  %and = and i32 %97, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.rhs.if.end28_crit_edge, label %do.end, !prof !159

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool21.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool21.not, ptr @.str.3, ptr %name
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 715, ptr noundef nonnull %spec.select) #15
  br label %if.end28

if.end28:                                         ; preds = %do.end, %land.rhs.if.end28_crit_edge, %do.body.if.end28_crit_edge, %if.end8.if.end28_crit_edge
  %rc.0 = phi i32 [ 0, %if.end8.if.end28_crit_edge ], [ -22, %do.body.if.end28_crit_edge ], [ -22, %do.end ], [ -22, %land.rhs.if.end28_crit_edge ]
  %tunn_feature_mask.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 1
  %98 = ptrtoint ptr %tunn_feature_mask.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %tunn_feature_mask.i, align 2
  %conv.i.i = zext i16 %99 to i32
  %and.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i109 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i109, label %if.end28.__qed_vf_update_tunn_param.exit.i_crit_edge, label %if.then.i.i111

if.end28.__qed_vf_update_tunn_param.exit.i_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_update_tunn_param.exit.i

if.then.i.i111:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %vxlan_clss.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 7
  %100 = ptrtoint ptr %vxlan_clss.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %vxlan_clss.i, align 1
  %vxlan_mode.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 2
  %102 = ptrtoint ptr %vxlan_mode.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %vxlan_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool1.i.i = icmp ne i8 %103, 0
  %frombool.i.i = zext i1 %tobool1.i.i to i8
  %conv2.i.i = zext i8 %101 to i32
  %tun_cls.i.i110 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 0, i32 2
  %104 = ptrtoint ptr %tun_cls.i.i110 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv2.i.i, ptr %tun_cls.i.i110, align 4
  br label %__qed_vf_update_tunn_param.exit.i

__qed_vf_update_tunn_param.exit.i:                ; preds = %if.then.i.i111, %if.end28.__qed_vf_update_tunn_param.exit.i_crit_edge
  %frombool.sink.i.i = phi i8 [ %frombool.i.i, %if.then.i.i111 ], [ 0, %if.end28.__qed_vf_update_tunn_param.exit.i_crit_edge ]
  %105 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %frombool.sink.i.i, ptr %105, align 1
  %and.i61.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool.not.i62.i = icmp eq i32 %and.i61.i, 0
  br i1 %tobool.not.i62.i, label %__qed_vf_update_tunn_param.exit.i.__qed_vf_update_tunn_param.exit69.i_crit_edge, label %if.then.i67.i

__qed_vf_update_tunn_param.exit.i.__qed_vf_update_tunn_param.exit69.i_crit_edge: ; preds = %__qed_vf_update_tunn_param.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_update_tunn_param.exit69.i

if.then.i67.i:                                    ; preds = %__qed_vf_update_tunn_param.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %l2geneve_clss.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 10
  %107 = ptrtoint ptr %l2geneve_clss.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %l2geneve_clss.i, align 2
  %l2geneve_mode.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 3
  %109 = ptrtoint ptr %l2geneve_mode.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %l2geneve_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool1.i63.i = icmp ne i8 %110, 0
  %frombool.i64.i = zext i1 %tobool1.i63.i to i8
  %conv2.i65.i = zext i8 %108 to i32
  %tun_cls.i66.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 1, i32 2
  %111 = ptrtoint ptr %tun_cls.i66.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv2.i65.i, ptr %tun_cls.i66.i, align 4
  br label %__qed_vf_update_tunn_param.exit69.i

__qed_vf_update_tunn_param.exit69.i:              ; preds = %if.then.i67.i, %__qed_vf_update_tunn_param.exit.i.__qed_vf_update_tunn_param.exit69.i_crit_edge
  %frombool.sink.i68.i = phi i8 [ %frombool.i64.i, %if.then.i67.i ], [ 0, %__qed_vf_update_tunn_param.exit.i.__qed_vf_update_tunn_param.exit69.i_crit_edge ]
  %112 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 1, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %frombool.sink.i68.i, ptr %112, align 1
  %and.i71.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71.i)
  %tobool.not.i72.i = icmp eq i32 %and.i71.i, 0
  br i1 %tobool.not.i72.i, label %__qed_vf_update_tunn_param.exit69.i.__qed_vf_update_tunn_param.exit79.i_crit_edge, label %if.then.i77.i

__qed_vf_update_tunn_param.exit69.i.__qed_vf_update_tunn_param.exit79.i_crit_edge: ; preds = %__qed_vf_update_tunn_param.exit69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_update_tunn_param.exit79.i

if.then.i77.i:                                    ; preds = %__qed_vf_update_tunn_param.exit69.i
  call void @__sanitizer_cov_trace_pc() #14
  %ipgeneve_clss.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 11
  %114 = ptrtoint ptr %ipgeneve_clss.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ipgeneve_clss.i, align 1
  %ipgeneve_mode.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 4
  %116 = ptrtoint ptr %ipgeneve_mode.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ipgeneve_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool1.i73.i = icmp ne i8 %117, 0
  %frombool.i74.i = zext i1 %tobool1.i73.i to i8
  %conv2.i75.i = zext i8 %115 to i32
  %tun_cls.i76.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 2, i32 2
  %118 = ptrtoint ptr %tun_cls.i76.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv2.i75.i, ptr %tun_cls.i76.i, align 4
  br label %__qed_vf_update_tunn_param.exit79.i

__qed_vf_update_tunn_param.exit79.i:              ; preds = %if.then.i77.i, %__qed_vf_update_tunn_param.exit69.i.__qed_vf_update_tunn_param.exit79.i_crit_edge
  %frombool.sink.i78.i = phi i8 [ %frombool.i74.i, %if.then.i77.i ], [ 0, %__qed_vf_update_tunn_param.exit69.i.__qed_vf_update_tunn_param.exit79.i_crit_edge ]
  %119 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 2, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %frombool.sink.i78.i, ptr %119, align 1
  %and.i81.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81.i)
  %tobool.not.i82.i = icmp eq i32 %and.i81.i, 0
  br i1 %tobool.not.i82.i, label %__qed_vf_update_tunn_param.exit79.i.__qed_vf_update_tunn_param.exit89.i_crit_edge, label %if.then.i87.i

__qed_vf_update_tunn_param.exit79.i.__qed_vf_update_tunn_param.exit89.i_crit_edge: ; preds = %__qed_vf_update_tunn_param.exit79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_update_tunn_param.exit89.i

if.then.i87.i:                                    ; preds = %__qed_vf_update_tunn_param.exit79.i
  call void @__sanitizer_cov_trace_pc() #14
  %l2gre_clss.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 8
  %121 = ptrtoint ptr %l2gre_clss.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %l2gre_clss.i, align 2
  %l2gre_mode.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 5
  %123 = ptrtoint ptr %l2gre_mode.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %l2gre_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool1.i83.i = icmp ne i8 %124, 0
  %frombool.i84.i = zext i1 %tobool1.i83.i to i8
  %conv2.i85.i = zext i8 %122 to i32
  %tun_cls.i86.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 3, i32 2
  %125 = ptrtoint ptr %tun_cls.i86.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv2.i85.i, ptr %tun_cls.i86.i, align 4
  br label %__qed_vf_update_tunn_param.exit89.i

__qed_vf_update_tunn_param.exit89.i:              ; preds = %if.then.i87.i, %__qed_vf_update_tunn_param.exit79.i.__qed_vf_update_tunn_param.exit89.i_crit_edge
  %frombool.sink.i88.i = phi i8 [ %frombool.i84.i, %if.then.i87.i ], [ 0, %__qed_vf_update_tunn_param.exit79.i.__qed_vf_update_tunn_param.exit89.i_crit_edge ]
  %126 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 3, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %frombool.sink.i88.i, ptr %126, align 1
  %and.i91.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i)
  %tobool.not.i92.i = icmp eq i32 %and.i91.i, 0
  br i1 %tobool.not.i92.i, label %__qed_vf_update_tunn_param.exit89.i.__qed_vf_update_tunn_param.exit99.i_crit_edge, label %if.then.i97.i

__qed_vf_update_tunn_param.exit89.i.__qed_vf_update_tunn_param.exit99.i_crit_edge: ; preds = %__qed_vf_update_tunn_param.exit89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qed_vf_update_tunn_param.exit99.i

if.then.i97.i:                                    ; preds = %__qed_vf_update_tunn_param.exit89.i
  call void @__sanitizer_cov_trace_pc() #14
  %ipgre_clss.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 9
  %128 = ptrtoint ptr %ipgre_clss.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ipgre_clss.i, align 1
  %ipgre_mode.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 6
  %130 = ptrtoint ptr %ipgre_mode.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ipgre_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool1.i93.i = icmp ne i8 %131, 0
  %frombool.i94.i = zext i1 %tobool1.i93.i to i8
  %conv2.i95.i = zext i8 %129 to i32
  %tun_cls.i96.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 4, i32 2
  %132 = ptrtoint ptr %tun_cls.i96.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv2.i95.i, ptr %tun_cls.i96.i, align 4
  br label %__qed_vf_update_tunn_param.exit99.i

__qed_vf_update_tunn_param.exit99.i:              ; preds = %if.then.i97.i, %__qed_vf_update_tunn_param.exit89.i.__qed_vf_update_tunn_param.exit99.i_crit_edge
  %frombool.sink.i98.i = phi i8 [ %frombool.i94.i, %if.then.i97.i ], [ 0, %__qed_vf_update_tunn_param.exit89.i.__qed_vf_update_tunn_param.exit99.i_crit_edge ]
  %133 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 4, i32 1
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %frombool.sink.i98.i, ptr %133, align 1
  %geneve_udp_port.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 13
  %135 = ptrtoint ptr %geneve_udp_port.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %geneve_udp_port.i, align 2
  %port.i112 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 6, i32 1
  %137 = ptrtoint ptr %port.i112 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %port.i112, align 2
  %vxlan_udp_port.i = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, ptr %91, i32 0, i32 12
  %138 = ptrtoint ptr %vxlan_udp_port.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %vxlan_udp_port.i, align 2
  %port1.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 38, i32 5, i32 1
  %140 = ptrtoint ptr %port1.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %port1.i, align 2
  %141 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp.i114 = icmp eq i8 %142, 0
  br i1 %cmp.i114, label %land.rhs.i118, label %__qed_vf_update_tunn_param.exit99.i.qed_vf_pf_req_end.exit_crit_edge

__qed_vf_update_tunn_param.exit99.i.qed_vf_pf_req_end.exit_crit_edge: ; preds = %__qed_vf_update_tunn_param.exit99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i118:                                    ; preds = %__qed_vf_update_tunn_param.exit99.i
  %dp_module.i115 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %143 = ptrtoint ptr %dp_module.i115 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dp_module.i115, align 4
  %and.i116 = and i32 %144, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i117 = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i117, label %land.rhs.i118.exit_crit_edge, label %do.end.i121, !prof !159

land.rhs.i118.exit_crit_edge:                     ; preds = %land.rhs.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end.i121:                                      ; preds = %land.rhs.i118
  call void @__sanitizer_cov_trace_pc() #14
  %name.i119 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %145 = zext i8 %frombool.sink.i.i to i32
  %146 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %112, align 1, !range !163
  %148 = zext i8 %147 to i32
  %149 = ptrtoint ptr %119 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %119, align 1, !range !163
  %151 = zext i8 %150 to i32
  %152 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %126, align 1, !range !163
  %154 = zext i8 %153 to i32
  %155 = zext i8 %frombool.sink.i98.i to i32
  %call.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef 667, ptr noundef nonnull %name.i119, i32 noundef %145, i32 noundef %148, i32 noundef %151, i32 noundef %154, i32 noundef %155) #15
  br label %exit

exit:                                             ; preds = %do.end.i121, %land.rhs.i118.exit_crit_edge, %__qed_vf_prep_tunn_req_tlv.exit108.exit_crit_edge
  %rc.1.ph = phi i32 [ %rc.0, %do.end.i121 ], [ %rc.0, %land.rhs.i118.exit_crit_edge ], [ %call5, %__qed_vf_prep_tunn_req_tlv.exit108.exit_crit_edge ]
  %156 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %.pr = load i8, ptr %dp_level.i, align 8
  %157 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i123 = getelementptr inbounds %struct.qed_vf_iov, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %pf2vf_reply.i123 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pf2vf_reply.i123, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp.i125 = icmp eq i8 %.pr, 0
  br i1 %cmp.i125, label %land.rhs.i129, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i129:                                    ; preds = %exit
  %dp_module.i126 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %161 = ptrtoint ptr %dp_module.i126 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dp_module.i126, align 4
  %and.i127 = and i32 %162, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %land.rhs.i129.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i132, !prof !159

land.rhs.i129.qed_vf_pf_req_end.exit_crit_edge:   ; preds = %land.rhs.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i132:                                      ; preds = %land.rhs.i129
  call void @__sanitizer_cov_trace_pc() #14
  %name.i130 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %160, i32 0, i32 1
  %163 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %164 to i32
  %call.i131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i130, i32 noundef %rc.1.ph, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i132, %land.rhs.i129.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge, %__qed_vf_update_tunn_param.exit99.i.qed_vf_pf_req_end.exit_crit_edge
  %rc.1137 = phi i32 [ %rc.1.ph, %exit.qed_vf_pf_req_end.exit_crit_edge ], [ %rc.1.ph, %land.rhs.i129.qed_vf_pf_req_end.exit_crit_edge ], [ %rc.1.ph, %do.end.i132 ], [ %rc.0, %__qed_vf_update_tunn_param.exit99.i.qed_vf_pf_req_end.exit_crit_edge ]
  %165 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i133 = getelementptr inbounds %struct.qed_vf_iov, ptr %166, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i133) #12
  ret i32 %rc.1137
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_add_tlv(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr nocapture noundef readonly %done) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @qed_dp_tlv_list(ptr noundef %p_hwfn, ptr noundef %3) #12
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.rhs, label %entry.do.body18_crit_edge

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module, align 4
  %and = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.body18_crit_edge, label %do.end, !prof !159

land.rhs.do.body18_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %concrete_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 9
  %8 = ptrtoint ptr %concrete_fid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %concrete_fid, align 8
  %and8 = and i32 %9, 15
  %10 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf_iov_info, align 8
  %vf2pf_request_phys = getelementptr inbounds %struct.qed_vf_iov, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %vf2pf_request_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vf2pf_request_phys, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 90, ptr noundef nonnull %spec.select, i32 noundef %and8, i32 noundef 0, i32 noundef %13, ptr noundef nonnull inttoptr (i32 13872 to ptr), i32 noundef 16777216, ptr noundef nonnull inttoptr (i32 13880 to ptr)) #15
  br label %do.body18

do.body18:                                        ; preds = %do.end, %land.rhs.do.body18_crit_edge, %entry.do.body18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vf_iov_info, align 8
  %vf2pf_request_phys22 = getelementptr inbounds %struct.qed_vf_iov, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %vf2pf_request_phys22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vf2pf_request_phys22, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %19 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regview, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 13872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regview, align 4
  %add.ptr36 = getelementptr i8, ptr %22, i32 13876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !169
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regview, align 4
  %add.ptr45 = getelementptr i8, ptr %24, i32 13880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 1) #12, !srcloc !166
  %25 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not6.not = icmp eq i8 %26, 0
  br i1 %tobool46.not6.not, label %do.body18.while.body_crit_edge, label %do.body18.while.end57_crit_edge

do.body18.while.end57_crit_edge:                  ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end57

do.body18.while.body_crit_edge:                   ; preds = %do.body18
  br label %while.body

while.cond50.preheader:                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool51.not8.not = icmp eq i8 %29, 0
  br i1 %tobool51.not8.not, label %while.cond50.preheader.while.body56_crit_edge, label %while.cond50.preheader.while.end57_crit_edge

while.cond50.preheader.while.end57_crit_edge:     ; preds = %while.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end57

while.cond50.preheader.while.body56_crit_edge:    ; preds = %while.cond50.preheader
  br label %while.body56

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body18.while.body_crit_edge
  %iter.07 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 90, %do.body18.while.body_crit_edge ]
  %dec = add nsw i32 %iter.07, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  %28 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool46.not = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool48.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool46.not, i1 true, i1 %tobool48.not
  br i1 %or.cond, label %while.cond50.preheader, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body56:                                     ; preds = %while.body56.while.body56_crit_edge, %while.cond50.preheader.while.body56_crit_edge
  %iter.19 = phi i32 [ %dec53, %while.body56.while.body56_crit_edge ], [ 10, %while.cond50.preheader.while.body56_crit_edge ]
  %dec53 = add nsw i32 %iter.19, -1
  tail call void @msleep(i32 noundef 25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !171
  %30 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool51.not = icmp ne i8 %.pr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec53)
  %tobool54.not = icmp eq i32 %dec53, 0
  %or.cond1 = select i1 %tobool51.not, i1 true, i1 %tobool54.not
  br i1 %or.cond1, label %while.body56.while.end57_crit_edge, label %while.body56.while.body56_crit_edge

while.body56.while.body56_crit_edge:              ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body56

while.body56.while.end57_crit_edge:               ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end57

while.end57:                                      ; preds = %while.body56.while.end57_crit_edge, %while.cond50.preheader.while.end57_crit_edge, %do.body18.while.end57_crit_edge
  %.lcssa = phi i8 [ %29, %while.cond50.preheader.while.end57_crit_edge ], [ %26, %do.body18.while.end57_crit_edge ], [ %.pr, %while.body56.while.end57_crit_edge ]
  %31 = zext i8 %.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %.lcssa, label %do.body97 [
    i8 0, label %do.body60
    i8 1, label %while.end57.do.body131_crit_edge
    i8 4, label %while.end57.do.body131_crit_edge18
  ]

while.end57.do.body131_crit_edge18:               ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body131

while.end57.do.body131_crit_edge:                 ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body131

do.body60:                                        ; preds = %while.end57
  %32 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp63 = icmp ult i8 %33, 3
  br i1 %cmp63, label %do.end74, label %do.body60.if.end170_crit_edge, !prof !164

do.body60.if.end170_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

do.end74:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  %name76 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool78.not = icmp eq ptr %name76, null
  %spec.select2 = select i1 %tobool78.not, ptr @.str.3, ptr %name76
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 8
  %conv85 = zext i16 %35 to i32
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 126, ptr noundef nonnull %spec.select2, i32 noundef %conv85) #15
  br label %if.end170

do.body97:                                        ; preds = %while.end57
  %36 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp100 = icmp ult i8 %37, 3
  br i1 %cmp100, label %do.end111, label %do.body97.if.end170_crit_edge, !prof !164

do.body97.if.end170_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

do.end111:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14
  %name113 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool115.not = icmp eq ptr %name113, null
  %spec.select3 = select i1 %tobool115.not, ptr @.str.3, ptr %name113
  %conv122 = zext i8 %.lcssa to i32
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %3, align 8
  %conv125 = zext i16 %39 to i32
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef 133, ptr noundef nonnull %spec.select3, i32 noundef %conv122, i32 noundef %conv125) #15
  br label %if.end170

do.body131:                                       ; preds = %while.end57.do.body131_crit_edge, %while.end57.do.body131_crit_edge18
  %40 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp134 = icmp eq i8 %41, 0
  br i1 %cmp134, label %land.rhs136, label %do.body131.if.end170_crit_edge

do.body131.if.end170_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

land.rhs136:                                      ; preds = %do.body131
  %dp_module137 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %42 = ptrtoint ptr %dp_module137 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dp_module137, align 4
  %and138 = and i32 %43, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %land.rhs136.if.end170_crit_edge, label %do.end150, !prof !159

land.rhs136.if.end170_crit_edge:                  ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

do.end150:                                        ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #14
  %name152 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool154.not = icmp eq ptr %name152, null
  %spec.select4 = select i1 %tobool154.not, ptr @.str.3, ptr %name152
  %conv161 = zext i8 %.lcssa to i32
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %3, align 8
  %conv164 = zext i16 %45 to i32
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef 137, ptr noundef nonnull %spec.select4, i32 noundef %conv161, i32 noundef %conv164) #15
  br label %if.end170

if.end170:                                        ; preds = %do.end150, %land.rhs136.if.end170_crit_edge, %do.body131.if.end170_crit_edge, %do.end111, %do.body97.if.end170_crit_edge, %do.end74, %do.body60.if.end170_crit_edge
  %rc.0 = phi i32 [ 0, %do.end111 ], [ 0, %do.body97.if.end170_crit_edge ], [ 0, %do.end150 ], [ 0, %land.rhs136.if.end170_crit_edge ], [ -16, %do.end74 ], [ -16, %do.body60.if.end170_crit_edge ], [ 0, %do.body131.if.end170_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_rxq_start(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_cid, i16 noundef zeroext %bd_max_bytes, i32 noundef %bd_chain_phys_addr, i32 noundef %cqe_pbl_addr, i16 noundef zeroext %cqe_pbl_size, ptr nocapture noundef %pp_prod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %queue_id = getelementptr inbounds %struct.qed_queue_cid_params, ptr %p_cid, i32 0, i32 1
  %2 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_id, align 2
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 5) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %offset.i, align 4
  %11 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf2vf_reply.i, align 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 5, i16 noundef zeroext 56) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %16 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %conv1 = and i16 %3, 255
  %rx_qid2 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 6
  %18 = ptrtoint ptr %rx_qid2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1, ptr %rx_qid2, align 4
  %conv3 = zext i32 %cqe_pbl_addr to i64
  %cqe_pbl_addr4 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 3
  %19 = ptrtoint ptr %cqe_pbl_addr4 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv3, ptr %cqe_pbl_addr4, align 8
  %cqe_pbl_size5 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 4
  %20 = ptrtoint ptr %cqe_pbl_size5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %cqe_pbl_size, ptr %cqe_pbl_size5, align 8
  %conv6 = zext i32 %bd_chain_phys_addr to i64
  %rxq_addr = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 1
  %21 = ptrtoint ptr %rxq_addr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv6, ptr %rxq_addr, align 8
  %sb_igu_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 2
  %22 = ptrtoint ptr %sb_igu_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sb_igu_id, align 4
  %hw_sb = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 5
  %24 = ptrtoint ptr %hw_sb to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %hw_sb, align 2
  %sb_idx = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 3
  %25 = ptrtoint ptr %sb_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sb_idx, align 2
  %sb_index = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 10
  %27 = ptrtoint ptr %sb_index to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %sb_index, align 4
  %bd_max_bytes7 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 8
  %28 = ptrtoint ptr %bd_max_bytes7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %bd_max_bytes, ptr %bd_max_bytes7, align 8
  %stat_id = getelementptr inbounds %struct.vfpf_start_rxq_tlv, ptr %call13.i, i32 0, i32 9
  %29 = ptrtoint ptr %stat_id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %stat_id, align 2
  %b_pre_fp_hsi = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %b_pre_fp_hsi to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %b_pre_fp_hsi, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %qed_vf_pf_prep.exit.if.end_crit_edge, label %if.then

qed_vf_pf_prep.exit.if.end_crit_edge:             ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom = zext i16 %conv1 to i32
  %arrayidx = getelementptr %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2, i32 1, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %34 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regview, align 4
  %36 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_hwfn, align 8
  %call9 = tail call i32 @qed_get_hsi_def_val(ptr noundef %37, i32 noundef 1) #12
  %mul = shl i32 %call9, 3
  %add = add i32 %mul, 16384
  %add.ptr = getelementptr i8, ptr %35, i32 %add
  %conv10 = zext i8 %33 to i32
  %mul11 = shl nuw nsw i32 %conv10, 4
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %mul11
  %38 = ptrtoint ptr %pp_prod to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr12, ptr %pp_prod, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !172
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #12, !srcloc !166
  br label %if.end

if.end:                                           ; preds = %if.then, %qed_vf_pf_prep.exit.if.end_crit_edge
  %39 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vf_iov_info, align 8
  %capabilities.i = getelementptr inbounds %struct.qed_vf_iov, ptr %40, i32 0, i32 8, i32 1, i32 6
  %41 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %capabilities.i, align 8
  %and.i89 = and i64 %42, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i89)
  %tobool.not.i90 = icmp eq i64 %and.i89, 0
  br i1 %tobool.not.i90, label %if.end.qed_vf_pf_add_qid.exit_crit_edge, label %if.end.i

if.end.qed_vf_pf_add_qid.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_add_qid.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %offset.i91 = getelementptr inbounds %struct.qed_vf_iov, ptr %40, i32 0, i32 5
  %call.i92 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i91, i16 noundef zeroext 25, i16 noundef zeroext 8) #12
  %qid_usage_idx.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 9
  %43 = ptrtoint ptr %qid_usage_idx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %qid_usage_idx.i, align 1
  %qid.i = getelementptr inbounds %struct.vfpf_qid_tlv, ptr %call.i92, i32 0, i32 1
  %45 = ptrtoint ptr %qid.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %qid.i, align 2
  br label %qed_vf_pf_add_qid.exit

qed_vf_pf_add_qid.exit:                           ; preds = %if.end.i, %if.end.qed_vf_pf_add_qid.exit_crit_edge
  %call13 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %46 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %47, i32 0, i32 1
  %call14 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %qed_vf_pf_add_qid.exit.exit_crit_edge

qed_vf_pf_add_qid.exit.exit_crit_edge:            ; preds = %qed_vf_pf_add_qid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end17:                                         ; preds = %qed_vf_pf_add_qid.exit
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp.not = icmp eq i8 %49, 1
  br i1 %cmp.not, label %if.end23, label %if.end17.exit_crit_edge

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end23:                                         ; preds = %if.end17
  %50 = ptrtoint ptr %b_pre_fp_hsi to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b_pre_fp_hsi, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool25.not = icmp eq i8 %51, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.exit_crit_edge

if.end23.exit_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then26:                                        ; preds = %if.end23
  %regview28 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %52 = ptrtoint ptr %regview28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regview28, align 4
  %offset29 = getelementptr inbounds %struct.pfvf_start_queue_resp_tlv, ptr %47, i32 0, i32 1
  %54 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset29, align 4
  %add.ptr30 = getelementptr i8, ptr %53, i32 %55
  %56 = ptrtoint ptr %pp_prod to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr30, ptr %pp_prod, align 4
  %57 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp32 = icmp eq i8 %58, 0
  br i1 %cmp32, label %land.rhs, label %if.then26.do.end47_crit_edge

if.then26.do.end47_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

land.rhs:                                         ; preds = %if.then26
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %59 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dp_module, align 4
  %and = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %land.rhs.do.end47_crit_edge, label %do.end, !prof !159

land.rhs.do.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool39.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool39.not, ptr @.str.3, ptr %name
  %conv42 = zext i16 %conv1 to i32
  %61 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset29, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 791, ptr noundef nonnull %spec.select, i32 noundef %conv42, ptr noundef %add.ptr30, i32 noundef %62) #15
  br label %do.end47

do.end47:                                         ; preds = %do.end, %land.rhs.do.end47_crit_edge, %if.then26.do.end47_crit_edge
  %63 = ptrtoint ptr %pp_prod to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pp_prod, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !172
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #12, !srcloc !166
  br label %exit

exit:                                             ; preds = %do.end47, %if.end23.exit_crit_edge, %if.end17.exit_crit_edge, %qed_vf_pf_add_qid.exit.exit_crit_edge
  %rc.0 = phi i32 [ %call14, %qed_vf_pf_add_qid.exit.exit_crit_edge ], [ 0, %if.end23.exit_crit_edge ], [ 0, %do.end47 ], [ -22, %if.end17.exit_crit_edge ]
  %65 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i94 = getelementptr inbounds %struct.qed_vf_iov, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %pf2vf_reply.i94 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pf2vf_reply.i94, align 8
  %69 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp.i96 = icmp eq i8 %70, 0
  br i1 %cmp.i96, label %land.rhs.i100, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i100:                                    ; preds = %exit
  %dp_module.i97 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %71 = ptrtoint ptr %dp_module.i97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dp_module.i97, align 4
  %and.i98 = and i32 %72, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99, label %land.rhs.i100.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i103, !prof !159

land.rhs.i100.qed_vf_pf_req_end.exit_crit_edge:   ; preds = %land.rhs.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i103:                                      ; preds = %land.rhs.i100
  call void @__sanitizer_cov_trace_pc() #14
  %name.i101 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %74 to i32
  %call.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i101, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i103, %land.rhs.i100.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %75 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i104 = getelementptr inbounds %struct.qed_vf_iov, ptr %76, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i104) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_get_hsi_def_val(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_rxq_stop(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_cid, i1 noundef zeroext %cqe_completion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %cqe_completion to i8
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 7) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 7, i16 noundef zeroext 24) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %queue_id = getelementptr inbounds %struct.qed_queue_cid_params, ptr %p_cid, i32 0, i32 1
  %16 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %queue_id, align 2
  %rx_qid = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, ptr %call13.i, i32 0, i32 1
  %18 = ptrtoint ptr %rx_qid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %rx_qid, align 8
  %num_rxqs = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, ptr %call13.i, i32 0, i32 2
  %19 = ptrtoint ptr %num_rxqs to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %num_rxqs, align 2
  %cqe_completion1 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, ptr %call13.i, i32 0, i32 3
  %20 = ptrtoint ptr %cqe_completion1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %cqe_completion1, align 1
  %21 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vf_iov_info, align 8
  %capabilities.i = getelementptr inbounds %struct.qed_vf_iov, ptr %22, i32 0, i32 8, i32 1, i32 6
  %23 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %capabilities.i, align 8
  %and.i24 = and i64 %24, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i24)
  %tobool.not.i25 = icmp eq i64 %and.i24, 0
  br i1 %tobool.not.i25, label %qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge, label %if.end.i

qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge: ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_add_qid.exit

if.end.i:                                         ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %offset.i26 = getelementptr inbounds %struct.qed_vf_iov, ptr %22, i32 0, i32 5
  %call.i27 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i26, i16 noundef zeroext 25, i16 noundef zeroext 8) #12
  %qid_usage_idx.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 9
  %25 = ptrtoint ptr %qid_usage_idx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %qid_usage_idx.i, align 1
  %qid.i = getelementptr inbounds %struct.vfpf_qid_tlv, ptr %call.i27, i32 0, i32 1
  %27 = ptrtoint ptr %qid.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %qid.i, align 2
  br label %qed_vf_pf_add_qid.exit

qed_vf_pf_add_qid.exit:                           ; preds = %if.end.i, %qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge
  %call2 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %28 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %29, i32 0, i32 1
  %call3 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %qed_vf_pf_add_qid.exit.exit_crit_edge

qed_vf_pf_add_qid.exit.exit_crit_edge:            ; preds = %qed_vf_pf_add_qid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_add_qid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp.not = icmp eq i8 %31, 1
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  br label %exit

exit:                                             ; preds = %if.end, %qed_vf_pf_add_qid.exit.exit_crit_edge
  %rc.0 = phi i32 [ %call3, %qed_vf_pf_add_qid.exit.exit_crit_edge ], [ %spec.select, %if.end ]
  %32 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i29 = getelementptr inbounds %struct.qed_vf_iov, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %pf2vf_reply.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pf2vf_reply.i29, align 8
  %36 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.i31 = icmp eq i8 %37, 0
  br i1 %cmp.i31, label %land.rhs.i35, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i35:                                     ; preds = %exit
  %dp_module.i32 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %38 = ptrtoint ptr %dp_module.i32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dp_module.i32, align 4
  %and.i33 = and i32 %39, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %land.rhs.i35.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i38, !prof !159

land.rhs.i35.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i38:                                       ; preds = %land.rhs.i35
  call void @__sanitizer_cov_trace_pc() #14
  %name.i36 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %41 to i32
  %call.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i36, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i38, %land.rhs.i35.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %42 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i39 = getelementptr inbounds %struct.qed_vf_iov, ptr %43, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i39) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_txq_start(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_cid, i32 noundef %pbl_addr, i16 noundef zeroext %pbl_size, ptr nocapture noundef %pp_doorbell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %queue_id = getelementptr inbounds %struct.qed_queue_cid_params, ptr %p_cid, i32 0, i32 1
  %2 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_id, align 2
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 6) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %offset.i, align 4
  %11 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf2vf_reply.i, align 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 6, i16 noundef zeroext 48) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %16 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %tx_qid = getelementptr inbounds %struct.vfpf_start_txq_tlv, ptr %call13.i, i32 0, i32 4
  %18 = ptrtoint ptr %tx_qid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %3, ptr %tx_qid, align 4
  %conv = zext i32 %pbl_addr to i64
  %pbl_addr1 = getelementptr inbounds %struct.vfpf_start_txq_tlv, ptr %call13.i, i32 0, i32 1
  %19 = ptrtoint ptr %pbl_addr1 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %pbl_addr1, align 8
  %pbl_size2 = getelementptr inbounds %struct.vfpf_start_txq_tlv, ptr %call13.i, i32 0, i32 2
  %20 = ptrtoint ptr %pbl_size2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %pbl_size, ptr %pbl_size2, align 8
  %sb_igu_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 2
  %21 = ptrtoint ptr %sb_igu_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sb_igu_id, align 4
  %hw_sb = getelementptr inbounds %struct.vfpf_start_txq_tlv, ptr %call13.i, i32 0, i32 5
  %23 = ptrtoint ptr %hw_sb to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %hw_sb, align 2
  %sb_idx = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 3
  %24 = ptrtoint ptr %sb_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sb_idx, align 2
  %sb_index = getelementptr inbounds %struct.vfpf_start_txq_tlv, ptr %call13.i, i32 0, i32 8
  %26 = ptrtoint ptr %sb_index to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %sb_index, align 2
  %27 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vf_iov_info, align 8
  %capabilities.i = getelementptr inbounds %struct.qed_vf_iov, ptr %28, i32 0, i32 8, i32 1, i32 6
  %29 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %capabilities.i, align 8
  %and.i70 = and i64 %30, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i70)
  %tobool.not.i71 = icmp eq i64 %and.i70, 0
  br i1 %tobool.not.i71, label %qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge, label %if.end.i

qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge: ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_add_qid.exit

if.end.i:                                         ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %offset.i72 = getelementptr inbounds %struct.qed_vf_iov, ptr %28, i32 0, i32 5
  %call.i73 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i72, i16 noundef zeroext 25, i16 noundef zeroext 8) #12
  %qid_usage_idx.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 9
  %31 = ptrtoint ptr %qid_usage_idx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %qid_usage_idx.i, align 1
  %qid.i = getelementptr inbounds %struct.vfpf_qid_tlv, ptr %call.i73, i32 0, i32 1
  %33 = ptrtoint ptr %qid.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %qid.i, align 2
  br label %qed_vf_pf_add_qid.exit

qed_vf_pf_add_qid.exit:                           ; preds = %if.end.i, %qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge
  %call3 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %34 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %35, i32 0, i32 1
  %call4 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %qed_vf_pf_add_qid.exit.exit_crit_edge

qed_vf_pf_add_qid.exit.exit_crit_edge:            ; preds = %qed_vf_pf_add_qid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_add_qid.exit
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp.not = icmp eq i8 %37, 1
  br i1 %cmp.not, label %if.end10, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end10:                                         ; preds = %if.end
  %b_pre_fp_hsi = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %b_pre_fp_hsi to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %b_pre_fp_hsi, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool11.not = icmp eq i8 %39, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %doorbells = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 13
  %40 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %doorbells, align 8
  %offset13 = getelementptr inbounds %struct.pfvf_start_queue_resp_tlv, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %offset13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset13, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 %43
  br label %do.body

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2, i32 2, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %doorbells15 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 13
  %46 = ptrtoint ptr %doorbells15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %doorbells15, align 8
  %conv16 = zext i8 %45 to i32
  %shl2.i = shl nuw nsw i32 %conv16, 5
  %add.ptr18 = getelementptr i8, ptr %47, i32 %shl2.i
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then12
  %storemerge = phi ptr [ %add.ptr, %if.then12 ], [ %add.ptr18, %if.else ]
  %48 = ptrtoint ptr %pp_doorbell to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %storemerge, ptr %pp_doorbell, align 4
  %49 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp21 = icmp eq i8 %50, 0
  br i1 %cmp21, label %land.rhs, label %do.body.qed_vf_pf_req_end.exit_crit_edge

do.body.qed_vf_pf_req_end.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %51 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dp_module, align 4
  %and = and i32 %52, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.rhs.exit_crit_edge, label %do.end, !prof !159

land.rhs.exit_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool28.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool28.not, ptr @.str.3, ptr %name
  %conv31 = zext i16 %3 to i32
  %qid_usage_idx = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 9
  %53 = ptrtoint ptr %qid_usage_idx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %qid_usage_idx, align 1
  %conv32 = zext i8 %54 to i32
  %offset33 = getelementptr inbounds %struct.pfvf_start_queue_resp_tlv, ptr %35, i32 0, i32 1
  %55 = ptrtoint ptr %offset33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset33, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 894, ptr noundef nonnull %spec.select, i32 noundef %conv31, i32 noundef %conv32, ptr noundef %storemerge, i32 noundef %56) #15
  br label %exit

exit:                                             ; preds = %do.end, %land.rhs.exit_crit_edge, %if.end.exit_crit_edge, %qed_vf_pf_add_qid.exit.exit_crit_edge
  %rc.0.ph = phi i32 [ -22, %if.end.exit_crit_edge ], [ 0, %land.rhs.exit_crit_edge ], [ 0, %do.end ], [ %call4, %qed_vf_pf_add_qid.exit.exit_crit_edge ]
  %57 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr = load i8, ptr %dp_level.i, align 8
  %58 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i75 = getelementptr inbounds %struct.qed_vf_iov, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %pf2vf_reply.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pf2vf_reply.i75, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp.i77 = icmp eq i8 %.pr, 0
  br i1 %cmp.i77, label %land.rhs.i81, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i81:                                     ; preds = %exit
  %dp_module.i78 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %62 = ptrtoint ptr %dp_module.i78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dp_module.i78, align 4
  %and.i79 = and i32 %63, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80, label %land.rhs.i81.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i84, !prof !159

land.rhs.i81.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i84:                                       ; preds = %land.rhs.i81
  call void @__sanitizer_cov_trace_pc() #14
  %name.i82 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %61, i32 0, i32 1
  %64 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %65 to i32
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i82, i32 noundef %rc.0.ph, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i84, %land.rhs.i81.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge, %do.body.qed_vf_pf_req_end.exit_crit_edge
  %rc.089 = phi i32 [ %rc.0.ph, %exit.qed_vf_pf_req_end.exit_crit_edge ], [ %rc.0.ph, %land.rhs.i81.qed_vf_pf_req_end.exit_crit_edge ], [ %rc.0.ph, %do.end.i84 ], [ 0, %do.body.qed_vf_pf_req_end.exit_crit_edge ]
  %66 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i85 = getelementptr inbounds %struct.qed_vf_iov, ptr %67, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i85) #12
  ret i32 %rc.089
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_txq_stop(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 8) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 8, i16 noundef zeroext 24) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %queue_id = getelementptr inbounds %struct.qed_queue_cid_params, ptr %p_cid, i32 0, i32 1
  %16 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %queue_id, align 2
  %tx_qid = getelementptr inbounds %struct.vfpf_stop_txqs_tlv, ptr %call13.i, i32 0, i32 1
  %18 = ptrtoint ptr %tx_qid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %tx_qid, align 8
  %num_txqs = getelementptr inbounds %struct.vfpf_stop_txqs_tlv, ptr %call13.i, i32 0, i32 2
  %19 = ptrtoint ptr %num_txqs to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %num_txqs, align 2
  %20 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vf_iov_info, align 8
  %capabilities.i = getelementptr inbounds %struct.qed_vf_iov, ptr %21, i32 0, i32 8, i32 1, i32 6
  %22 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %capabilities.i, align 8
  %and.i20 = and i64 %23, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i20)
  %tobool.not.i21 = icmp eq i64 %and.i20, 0
  br i1 %tobool.not.i21, label %qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge, label %if.end.i

qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge: ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_add_qid.exit

if.end.i:                                         ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %offset.i22 = getelementptr inbounds %struct.qed_vf_iov, ptr %21, i32 0, i32 5
  %call.i23 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i22, i16 noundef zeroext 25, i16 noundef zeroext 8) #12
  %qid_usage_idx.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 9
  %24 = ptrtoint ptr %qid_usage_idx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %qid_usage_idx.i, align 1
  %qid.i = getelementptr inbounds %struct.vfpf_qid_tlv, ptr %call.i23, i32 0, i32 1
  %26 = ptrtoint ptr %qid.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %qid.i, align 2
  br label %qed_vf_pf_add_qid.exit

qed_vf_pf_add_qid.exit:                           ; preds = %if.end.i, %qed_vf_pf_prep.exit.qed_vf_pf_add_qid.exit_crit_edge
  %call1 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %27 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %28, i32 0, i32 1
  %call2 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %qed_vf_pf_add_qid.exit.exit_crit_edge

qed_vf_pf_add_qid.exit.exit_crit_edge:            ; preds = %qed_vf_pf_add_qid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_add_qid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp.not = icmp eq i8 %30, 1
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  br label %exit

exit:                                             ; preds = %if.end, %qed_vf_pf_add_qid.exit.exit_crit_edge
  %rc.0 = phi i32 [ %call2, %qed_vf_pf_add_qid.exit.exit_crit_edge ], [ %spec.select, %if.end ]
  %31 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i25 = getelementptr inbounds %struct.qed_vf_iov, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %pf2vf_reply.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pf2vf_reply.i25, align 8
  %35 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i27 = icmp eq i8 %36, 0
  br i1 %cmp.i27, label %land.rhs.i31, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i31:                                     ; preds = %exit
  %dp_module.i28 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %37 = ptrtoint ptr %dp_module.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dp_module.i28, align 4
  %and.i29 = and i32 %38, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %land.rhs.i31.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i34, !prof !159

land.rhs.i31.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i34:                                       ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #14
  %name.i32 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %40 to i32
  %call.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i32, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i34, %land.rhs.i31.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %41 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i35 = getelementptr inbounds %struct.qed_vf_iov, ptr %42, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i35) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_vport_start(ptr noundef %p_hwfn, i8 noundef zeroext %vport_id, i16 noundef zeroext %mtu, i8 noundef zeroext %inner_vlan_removal, i32 noundef %tpa_mode, i8 noundef zeroext %max_buffers_per_cqe, i8 noundef zeroext %only_untagged) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 2) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 2, i16 noundef zeroext 160) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %mtu1 = getelementptr inbounds %struct.vfpf_vport_start_tlv, ptr %call13.i, i32 0, i32 4
  %16 = ptrtoint ptr %mtu1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %mtu, ptr %mtu1, align 2
  %vport_id2 = getelementptr inbounds %struct.vfpf_vport_start_tlv, ptr %call13.i, i32 0, i32 5
  %17 = ptrtoint ptr %vport_id2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %vport_id, ptr %vport_id2, align 8
  %inner_vlan_removal3 = getelementptr inbounds %struct.vfpf_vport_start_tlv, ptr %call13.i, i32 0, i32 6
  %18 = ptrtoint ptr %inner_vlan_removal3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %inner_vlan_removal, ptr %inner_vlan_removal3, align 1
  %tpa_mode4 = getelementptr inbounds %struct.vfpf_vport_start_tlv, ptr %call13.i, i32 0, i32 2
  %19 = ptrtoint ptr %tpa_mode4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tpa_mode, ptr %tpa_mode4, align 8
  %max_buffers_per_cqe5 = getelementptr inbounds %struct.vfpf_vport_start_tlv, ptr %call13.i, i32 0, i32 8
  %20 = ptrtoint ptr %max_buffers_per_cqe5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %max_buffers_per_cqe, ptr %max_buffers_per_cqe5, align 1
  %only_untagged6 = getelementptr inbounds %struct.vfpf_vport_start_tlv, ptr %call13.i, i32 0, i32 7
  %21 = ptrtoint ptr %only_untagged6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %only_untagged, ptr %only_untagged6, align 2
  %22 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vf_iov_info, align 8
  %num_sbs56 = getelementptr inbounds %struct.qed_vf_iov, ptr %23, i32 0, i32 8, i32 2, i32 5
  %24 = ptrtoint ptr %num_sbs56 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_sbs56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp58.not = icmp eq i8 %25, 0
  br i1 %cmp58.not, label %qed_vf_pf_prep.exit.for.end_crit_edge, label %qed_vf_pf_prep.exit.for.body_crit_edge

qed_vf_pf_prep.exit.for.body_crit_edge:           ; preds = %qed_vf_pf_prep.exit
  br label %for.body

qed_vf_pf_prep.exit.for.end_crit_edge:            ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %qed_vf_pf_prep.exit.for.body_crit_edge
  %26 = phi ptr [ %33, %if.end.for.body_crit_edge ], [ %23, %qed_vf_pf_prep.exit.for.body_crit_edge ]
  %i.059 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %qed_vf_pf_prep.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_vf_iov, ptr %26, i32 0, i32 10, i32 %i.059
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sb_phys = getelementptr inbounds %struct.qed_sb_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %sb_phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sb_phys, align 4
  %conv10 = zext i32 %30 to i64
  %arrayidx11 = getelementptr %struct.vfpf_vport_start_tlv, ptr %call13.i, i32 0, i32 1, i32 %i.059
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv10, ptr %arrayidx11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.059, 1
  %32 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vf_iov_info, align 8
  %num_sbs = getelementptr inbounds %struct.qed_vf_iov, ptr %33, i32 0, i32 8, i32 2, i32 5
  %34 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_sbs, align 2
  %conv = zext i8 %35 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %qed_vf_pf_prep.exit.for.end_crit_edge
  %call12 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %36 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %37, i32 0, i32 1
  %call13 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.end.exit_crit_edge

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp20.not = icmp eq i8 %39, 1
  %spec.select = select i1 %cmp20.not, i32 0, i32 -22
  br label %exit

exit:                                             ; preds = %if.end16, %for.end.exit_crit_edge
  %rc.0 = phi i32 [ %call13, %for.end.exit_crit_edge ], [ %spec.select, %if.end16 ]
  %40 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i45 = getelementptr inbounds %struct.qed_vf_iov, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %pf2vf_reply.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pf2vf_reply.i45, align 8
  %44 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i47 = icmp eq i8 %45, 0
  br i1 %cmp.i47, label %land.rhs.i51, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i51:                                     ; preds = %exit
  %dp_module.i48 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %46 = ptrtoint ptr %dp_module.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dp_module.i48, align 4
  %and.i49 = and i32 %47, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %land.rhs.i51.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i54, !prof !159

land.rhs.i51.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i54:                                       ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #14
  %name.i52 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %49 to i32
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i52, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i54, %land.rhs.i51.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %50 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i55 = getelementptr inbounds %struct.qed_vf_iov, ptr %51, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i55) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_vport_stop(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf2vf_reply, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 4) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %offset.i, align 4
  %11 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %12 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf2vf_reply, align 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 4, i16 noundef zeroext 16) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %16 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %call1 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %3, i32 0, i32 1
  %call2 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %qed_vf_pf_prep.exit.exit_crit_edge

qed_vf_pf_prep.exit.exit_crit_edge:               ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.not = icmp eq i8 %19, 1
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  br label %exit

exit:                                             ; preds = %if.end, %qed_vf_pf_prep.exit.exit_crit_edge
  %rc.0 = phi i32 [ %call2, %qed_vf_pf_prep.exit.exit_crit_edge ], [ %spec.select, %if.end ]
  %20 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i17 = getelementptr inbounds %struct.qed_vf_iov, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pf2vf_reply.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf2vf_reply.i17, align 8
  %24 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i19 = icmp eq i8 %25, 0
  br i1 %cmp.i19, label %land.rhs.i23, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i23:                                     ; preds = %exit
  %dp_module.i20 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %26 = ptrtoint ptr %dp_module.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module.i20, align 4
  %and.i21 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i22 = icmp eq i32 %and.i21, 0
  br i1 %tobool.not.i22, label %land.rhs.i23.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i26, !prof !159

land.rhs.i23.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i26:                                       ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #14
  %name.i24 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %29 to i32
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i24, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i26, %land.rhs.i23.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %30 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i27 = getelementptr inbounds %struct.qed_vf_iov, ptr %31, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i27) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_vport_update(ptr noundef %p_hwfn, ptr noundef readonly %p_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf2vf_reply, align 8
  %update_vport_active_rx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 2
  %4 = ptrtoint ptr %update_vport_active_rx_flg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %update_vport_active_rx_flg, align 1
  %update_vport_active_tx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 4
  %6 = ptrtoint ptr %update_vport_active_tx_flg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %update_vport_active_tx_flg, align 1
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %10 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 3) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %offset.i, align 4
  %15 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %16 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf2vf_reply, align 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 3, i16 noundef zeroext 16) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %20 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %21 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %qed_vf_pf_prep.exit.if.end11_crit_edge, label %if.then

qed_vf_pf_prep.exit.if.end11_crit_edge:           ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %qed_vf_pf_prep.exit
  %call3 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 15, i16 noundef zeroext 8) #12
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %update_rx6 = getelementptr inbounds %struct.vfpf_vport_update_activate_tlv, ptr %call3, i32 0, i32 1
  %22 = ptrtoint ptr %update_rx6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %5, ptr %update_rx6, align 2
  %vport_active_rx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 3
  %23 = ptrtoint ptr %vport_active_rx_flg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vport_active_rx_flg, align 4
  %active_rx = getelementptr inbounds %struct.vfpf_vport_update_activate_tlv, ptr %call3, i32 0, i32 3
  %25 = ptrtoint ptr %active_rx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %active_rx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %update_tx9 = getelementptr inbounds %struct.vfpf_vport_update_activate_tlv, ptr %call3, i32 0, i32 2
  %26 = ptrtoint ptr %update_tx9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %7, ptr %update_tx9, align 1
  %vport_active_tx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 5
  %27 = ptrtoint ptr %vport_active_tx_flg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vport_active_tx_flg, align 2
  %active_tx = getelementptr inbounds %struct.vfpf_vport_update_activate_tlv, ptr %call3, i32 0, i32 4
  %29 = ptrtoint ptr %active_tx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %active_tx, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge, %qed_vf_pf_prep.exit.if.end11_crit_edge
  %update_tx_switching_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 13
  %30 = ptrtoint ptr %update_tx_switching_flg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %update_tx_switching_flg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool12.not = icmp eq i8 %31, 0
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %if.then13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 16, i16 noundef zeroext 8) #12
  %tx_switching_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 14
  %32 = ptrtoint ptr %tx_switching_flg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_switching_flg, align 1
  %tx_switching = getelementptr inbounds %struct.vfpf_vport_update_tx_switch_tlv, ptr %call15, i32 0, i32 1
  %34 = ptrtoint ptr %tx_switching to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %tx_switching, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge
  %update_approx_mcast_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 15
  %35 = ptrtoint ptr %update_approx_mcast_flg to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %update_approx_mcast_flg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.not = icmp eq i8 %36, 0
  br i1 %tobool18.not, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 18, i16 noundef zeroext 72) #12
  %bins = getelementptr inbounds %struct.vfpf_vport_update_mcast_bin_tlv, ptr %call21, i32 0, i32 2
  %bins23 = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20
  %37 = call ptr @memcpy(ptr %bins, ptr %bins23, i32 32)
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end17.if.end25_crit_edge
  %accept_flags = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 22
  %38 = ptrtoint ptr %accept_flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %accept_flags, align 4
  %update_tx_mode_config = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 22, i32 1
  %40 = ptrtoint ptr %update_tx_mode_config to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %update_tx_mode_config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool28.not = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool31.not = icmp eq i8 %41, 0
  %or.cond210 = select i1 %tobool28.not, i1 %tobool31.not, i1 false
  br i1 %or.cond210, label %if.end25.if.end46_crit_edge, label %if.then32

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then32:                                        ; preds = %if.end25
  %call34 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 19, i16 noundef zeroext 8) #12
  br i1 %tobool28.not, label %if.then32.if.end40_crit_edge, label %if.then37

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %update_rx_mode = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, ptr %call34, i32 0, i32 1
  %42 = ptrtoint ptr %update_rx_mode to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %update_rx_mode, align 2
  %rx_accept_filter = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 22, i32 2
  %43 = ptrtoint ptr %rx_accept_filter to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx_accept_filter, align 2
  %rx_accept_filter39 = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, ptr %call34, i32 0, i32 3
  %45 = ptrtoint ptr %rx_accept_filter39 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %rx_accept_filter39, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then32.if.end40_crit_edge
  br i1 %tobool31.not, label %if.end40.if.end46_crit_edge, label %if.then42

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %update_tx_mode = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, ptr %call34, i32 0, i32 2
  %46 = ptrtoint ptr %update_tx_mode to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %41, ptr %update_tx_mode, align 1
  %tx_accept_filter = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 22, i32 3
  %47 = ptrtoint ptr %tx_accept_filter to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_accept_filter, align 1
  %tx_accept_filter44 = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, ptr %call34, i32 0, i32 4
  %49 = ptrtoint ptr %tx_accept_filter44 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %tx_accept_filter44, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end40.if.end46_crit_edge, %if.end25.if.end46_crit_edge
  %rss_params = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 21
  %50 = ptrtoint ptr %rss_params to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rss_params, align 4
  %tobool47.not = icmp eq ptr %51, null
  br i1 %tobool47.not, label %if.end46.if.end93_crit_edge, label %if.then48

if.end46.if.end93_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then48:                                        ; preds = %if.end46
  %call52 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 20, i16 noundef zeroext 304) #12
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool54.not = icmp eq i8 %53, 0
  br i1 %tobool54.not, label %if.then48.if.end58_crit_edge, label %if.then55

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %update_rss_flags = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 1
  %54 = ptrtoint ptr %update_rss_flags to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %update_rss_flags, align 4
  %56 = or i8 %55, 1
  store i8 %56, ptr %update_rss_flags, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.then48.if.end58_crit_edge
  %update_rss_capabilities = getelementptr inbounds %struct.qed_rss_params, ptr %51, i32 0, i32 3
  %57 = ptrtoint ptr %update_rss_capabilities to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %update_rss_capabilities, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool59.not = icmp eq i8 %58, 0
  br i1 %tobool59.not, label %if.end58.if.end65_crit_edge, label %if.then60

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %update_rss_flags61 = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 1
  %59 = ptrtoint ptr %update_rss_flags61 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %update_rss_flags61, align 4
  %61 = or i8 %60, 2
  store i8 %61, ptr %update_rss_flags61, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end58.if.end65_crit_edge
  %update_rss_ind_table = getelementptr inbounds %struct.qed_rss_params, ptr %51, i32 0, i32 4
  %62 = ptrtoint ptr %update_rss_ind_table to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %update_rss_ind_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool66.not = icmp eq i8 %63, 0
  br i1 %tobool66.not, label %if.end65.if.end72_crit_edge, label %if.then67

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %update_rss_flags68 = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 1
  %64 = ptrtoint ptr %update_rss_flags68 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %update_rss_flags68, align 4
  %66 = or i8 %65, 4
  store i8 %66, ptr %update_rss_flags68, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end65.if.end72_crit_edge
  %update_rss_key = getelementptr inbounds %struct.qed_rss_params, ptr %51, i32 0, i32 5
  %67 = ptrtoint ptr %update_rss_key to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %update_rss_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool73.not = icmp eq i8 %68, 0
  br i1 %tobool73.not, label %if.end72.if.end79_crit_edge, label %if.then74

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %update_rss_flags75 = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 1
  %69 = ptrtoint ptr %update_rss_flags75 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %update_rss_flags75, align 4
  %71 = or i8 %70, 8
  store i8 %71, ptr %update_rss_flags75, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end72.if.end79_crit_edge
  %rss_enable = getelementptr inbounds %struct.qed_rss_params, ptr %51, i32 0, i32 1
  %72 = ptrtoint ptr %rss_enable to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rss_enable, align 1
  %rss_enable80 = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 2
  %74 = ptrtoint ptr %rss_enable80 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %rss_enable80, align 1
  %rss_caps = getelementptr inbounds %struct.qed_rss_params, ptr %51, i32 0, i32 6
  %75 = ptrtoint ptr %rss_caps to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rss_caps, align 2
  %rss_caps81 = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 3
  %77 = ptrtoint ptr %rss_caps81 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %rss_caps81, align 2
  %rss_table_size_log = getelementptr inbounds %struct.qed_rss_params, ptr %51, i32 0, i32 7
  %78 = ptrtoint ptr %rss_table_size_log to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rss_table_size_log, align 1
  %rss_table_size_log82 = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 4
  %80 = ptrtoint ptr %rss_table_size_log82 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %rss_table_size_log82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %79)
  %cmp86233.not = icmp eq i8 %79, 31
  br i1 %cmp86233.not, label %if.end79.for.end_crit_edge, label %for.body.preheader

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end79
  %conv84 = zext i8 %79 to i32
  %shl = shl nuw i32 1, %conv84
  %81 = tail call i32 @llvm.smin.i32(i32 %shl, i32 128)
  %smax = call i32 @llvm.smax.i32(i32 %81, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0234 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.qed_rss_params, ptr %51, i32 0, i32 8, i32 %i.0234
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  %queue_id = getelementptr inbounds %struct.qed_queue_cid_params, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %queue_id, align 2
  %arrayidx89 = getelementptr %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 5, i32 %i.0234
  %86 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %arrayidx89, align 2
  %inc = add nuw nsw i32 %i.0234, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end79.for.end_crit_edge
  %rss_key = getelementptr inbounds %struct.vfpf_vport_update_rss_tlv, ptr %call52, i32 0, i32 6
  %rss_key91 = getelementptr inbounds %struct.qed_rss_params, ptr %51, i32 0, i32 9
  %87 = call ptr @memcpy(ptr %rss_key, ptr %rss_key91, i32 40)
  br label %if.end93

if.end93:                                         ; preds = %for.end, %if.end46.if.end93_crit_edge
  %update_accept_any_vlan_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 18
  %88 = ptrtoint ptr %update_accept_any_vlan_flg to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %update_accept_any_vlan_flg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool94.not = icmp eq i8 %89, 0
  br i1 %tobool94.not, label %if.end93.if.end102_crit_edge, label %if.then95

if.end93.if.end102_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %call97 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 21, i16 noundef zeroext 8) #12
  %accept_any_vlan = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 19
  %90 = ptrtoint ptr %accept_any_vlan to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %accept_any_vlan, align 2
  %accept_any_vlan99 = getelementptr inbounds %struct.vfpf_vport_update_accept_any_vlan_tlv, ptr %call97, i32 0, i32 2
  %92 = ptrtoint ptr %accept_any_vlan99 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %accept_any_vlan99, align 1
  %93 = ptrtoint ptr %update_accept_any_vlan_flg to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %update_accept_any_vlan_flg, align 1
  %update_accept_any_vlan_flg101 = getelementptr inbounds %struct.vfpf_vport_update_accept_any_vlan_tlv, ptr %call97, i32 0, i32 1
  %95 = ptrtoint ptr %update_accept_any_vlan_flg101 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %update_accept_any_vlan_flg101, align 2
  br label %if.end102

if.end102:                                        ; preds = %if.then95, %if.end93.if.end102_crit_edge
  %call104 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %3, i32 0, i32 1
  %call105 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end102.exit_crit_edge

if.end102.exit_crit_edge:                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end108:                                        ; preds = %if.end102
  %96 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %97)
  %cmp112.not = icmp eq i8 %97, 1
  br i1 %cmp112.not, label %if.end115, label %if.end108.exit_crit_edge

if.end108.exit_crit_edge:                         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end115:                                        ; preds = %if.end108
  %98 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vf_iov_info, align 8
  %sge_tpa_params.i.i = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 23
  %update_inner_vlan_removal_flg.i.i = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 6
  %pf2vf_reply.i212 = getelementptr inbounds %struct.qed_vf_iov, ptr %99, i32 0, i32 2
  %dp_module.i214 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i215 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end115
  %indvars.iv.i = phi i32 [ 15, %if.end115 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %tlv.048.i = phi i16 [ 15, %if.end115 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %trunc.i = trunc i16 %tlv.048.i to i15
  %100 = zext i15 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.84)
  switch i15 %trunc.i, label %do.body.i.i [
    i15 15, label %sw.bb.i.i
    i15 16, label %sw.bb5.i.i
    i15 17, label %sw.bb9.i.i
    i15 21, label %sw.bb13.i.i
    i15 18, label %sw.bb17.i.i
    i15 19, label %sw.bb21.i.i
    i15 20, label %sw.bb31.i.i
    i15 22, label %sw.bb35.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.body.i
  %101 = ptrtoint ptr %update_vport_active_rx_flg to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %update_vport_active_rx_flg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %sw.bb.i.i.if.end.i_crit_edge

sw.bb.i.i.if.end.i_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.rhs.i.i:                                      ; preds = %sw.bb.i.i
  %103 = ptrtoint ptr %update_vport_active_tx_flg to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %update_vport_active_tx_flg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool3.i.not.i = icmp eq i8 %104, 0
  br i1 %tobool3.i.not.i, label %lor.rhs.i.i.for.inc.i_crit_edge, label %lor.rhs.i.i.if.end.i_crit_edge

lor.rhs.i.i.if.end.i_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.rhs.i.i.for.inc.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb5.i.i:                                       ; preds = %for.body.i
  %105 = ptrtoint ptr %update_tx_switching_flg to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %update_tx_switching_flg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool6.i.not.i = icmp eq i8 %106, 0
  br i1 %tobool6.i.not.i, label %sw.bb5.i.i.for.inc.i_crit_edge, label %sw.bb5.i.i.if.end.i_crit_edge

sw.bb5.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb5.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb9.i.i:                                       ; preds = %for.body.i
  %107 = ptrtoint ptr %update_inner_vlan_removal_flg.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %update_inner_vlan_removal_flg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool10.i.not.i = icmp eq i8 %108, 0
  br i1 %tobool10.i.not.i, label %sw.bb9.i.i.for.inc.i_crit_edge, label %sw.bb9.i.i.if.end.i_crit_edge

sw.bb9.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb9.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb13.i.i:                                      ; preds = %for.body.i
  %109 = ptrtoint ptr %update_accept_any_vlan_flg to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %update_accept_any_vlan_flg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool14.i.not.i = icmp eq i8 %110, 0
  br i1 %tobool14.i.not.i, label %sw.bb13.i.i.for.inc.i_crit_edge, label %sw.bb13.i.i.if.end.i_crit_edge

sw.bb13.i.i.if.end.i_crit_edge:                   ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb13.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb17.i.i:                                      ; preds = %for.body.i
  %111 = ptrtoint ptr %update_approx_mcast_flg to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %update_approx_mcast_flg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool18.i.not.i = icmp eq i8 %112, 0
  br i1 %tobool18.i.not.i, label %sw.bb17.i.i.for.inc.i_crit_edge, label %sw.bb17.i.i.if.end.i_crit_edge

sw.bb17.i.i.if.end.i_crit_edge:                   ; preds = %sw.bb17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb17.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb21.i.i:                                      ; preds = %for.body.i
  %113 = ptrtoint ptr %accept_flags to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %accept_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool23.not.i.i = icmp eq i8 %114, 0
  br i1 %tobool23.not.i.i, label %qed_vf_handle_vp_update_is_needed.exit.i, label %sw.bb21.i.i.if.end.i_crit_edge

sw.bb21.i.i.if.end.i_crit_edge:                   ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb31.i.i:                                      ; preds = %for.body.i
  %115 = ptrtoint ptr %rss_params to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rss_params, align 4
  %tobool32.i.not.i = icmp eq ptr %116, null
  br i1 %tobool32.i.not.i, label %sw.bb31.i.i.for.inc.i_crit_edge, label %sw.bb31.i.i.if.end.i_crit_edge

sw.bb31.i.i.if.end.i_crit_edge:                   ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb31.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb35.i.i:                                      ; preds = %for.body.i
  %117 = ptrtoint ptr %sge_tpa_params.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sge_tpa_params.i.i, align 4
  %tobool36.i.not.i = icmp eq ptr %118, null
  br i1 %tobool36.i.not.i, label %sw.bb35.i.i.for.inc.i_crit_edge, label %sw.bb35.i.i.if.end.i_crit_edge

sw.bb35.i.i.if.end.i_crit_edge:                   ; preds = %sw.bb35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb35.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.body.i.i:                                      ; preds = %for.body.i
  %119 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %120)
  %cmp.i.i = icmp ult i8 %120, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.for.inc.i_crit_edge, !prof !164

do.body.i.i.for.inc.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef 1041, ptr noundef nonnull %name.i215, i32 noundef %indvars.iv.i) #15
  br label %for.inc.i

qed_vf_handle_vp_update_is_needed.exit.i:         ; preds = %sw.bb21.i.i
  %121 = ptrtoint ptr %update_tx_mode_config to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %update_tx_mode_config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool27.i.not.i = icmp eq i8 %122, 0
  br i1 %tobool27.i.not.i, label %qed_vf_handle_vp_update_is_needed.exit.i.for.inc.i_crit_edge, label %qed_vf_handle_vp_update_is_needed.exit.i.if.end.i_crit_edge

qed_vf_handle_vp_update_is_needed.exit.i.if.end.i_crit_edge: ; preds = %qed_vf_handle_vp_update_is_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

qed_vf_handle_vp_update_is_needed.exit.i.for.inc.i_crit_edge: ; preds = %qed_vf_handle_vp_update_is_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %qed_vf_handle_vp_update_is_needed.exit.i.if.end.i_crit_edge, %sw.bb35.i.i.if.end.i_crit_edge, %sw.bb31.i.i.if.end.i_crit_edge, %sw.bb21.i.i.if.end.i_crit_edge, %sw.bb17.i.i.if.end.i_crit_edge, %sw.bb13.i.i.if.end.i_crit_edge, %sw.bb9.i.i.if.end.i_crit_edge, %sw.bb5.i.i.if.end.i_crit_edge, %lor.rhs.i.i.if.end.i_crit_edge, %sw.bb.i.i.if.end.i_crit_edge
  %123 = ptrtoint ptr %pf2vf_reply.i212 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pf2vf_reply.i212, align 8
  %125 = trunc i32 %indvars.iv.i to i16
  %call2.i = tail call ptr @qed_iov_search_list_tlvs(ptr noundef %p_hwfn, ptr noundef %124, i16 noundef zeroext %125) #12
  %tobool.not.i216 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i216, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %call2.i, i32 0, i32 1
  %126 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool4.not.i = icmp eq i8 %127, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %do.body.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %128 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp7.i = icmp eq i8 %129, 0
  br i1 %cmp7.i, label %land.rhs.i218, label %do.body.i.for.inc.i_crit_edge

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.rhs.i218:                                    ; preds = %do.body.i
  %130 = ptrtoint ptr %dp_module.i214 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dp_module.i214, align 4
  %and.i217 = and i32 %131, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool9.not.i = icmp eq i32 %and.i217, 0
  br i1 %tobool9.not.i, label %land.rhs.i218.for.inc.i_crit_edge, label %do.end.i219, !prof !159

land.rhs.i218.for.inc.i_crit_edge:                ; preds = %land.rhs.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i219:                                      ; preds = %land.rhs.i218
  call void @__sanitizer_cov_trace_pc() #14
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 1067, ptr noundef nonnull %name.i215, i32 noundef %indvars.iv.i, ptr noundef nonnull @.str.78) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i219, %land.rhs.i218.for.inc.i_crit_edge, %do.body.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %qed_vf_handle_vp_update_is_needed.exit.i.for.inc.i_crit_edge, %do.end.i.i, %do.body.i.i.for.inc.i_crit_edge, %sw.bb35.i.i.for.inc.i_crit_edge, %sw.bb31.i.i.for.inc.i_crit_edge, %sw.bb17.i.i.for.inc.i_crit_edge, %sw.bb13.i.i.for.inc.i_crit_edge, %sw.bb9.i.i.for.inc.i_crit_edge, %sw.bb5.i.i.for.inc.i_crit_edge, %lor.rhs.i.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc.i = add nuw nsw i16 %tlv.048.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 23
  br i1 %exitcond.not.i, label %for.inc.i.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.exit_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

exit:                                             ; preds = %for.inc.i.exit_crit_edge, %if.end108.exit_crit_edge, %if.end102.exit_crit_edge
  %rc.0 = phi i32 [ %call105, %if.end102.exit_crit_edge ], [ -22, %if.end108.exit_crit_edge ], [ 0, %for.inc.i.exit_crit_edge ]
  %132 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i221 = getelementptr inbounds %struct.qed_vf_iov, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %pf2vf_reply.i221 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pf2vf_reply.i221, align 8
  %136 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp.i223 = icmp eq i8 %137, 0
  br i1 %cmp.i223, label %land.rhs.i227, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i227:                                    ; preds = %exit
  %dp_module.i224 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %138 = ptrtoint ptr %dp_module.i224 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dp_module.i224, align 4
  %and.i225 = and i32 %139, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225)
  %tobool.not.i226 = icmp eq i32 %and.i225, 0
  br i1 %tobool.not.i226, label %land.rhs.i227.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i231, !prof !159

land.rhs.i227.qed_vf_pf_req_end.exit_crit_edge:   ; preds = %land.rhs.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i231:                                      ; preds = %land.rhs.i227
  call void @__sanitizer_cov_trace_pc() #14
  %name.i228 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i229 = getelementptr inbounds %struct.pfvf_tlv, ptr %135, i32 0, i32 1
  %140 = ptrtoint ptr %status.i229 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %status.i229, align 4
  %conv8.i = zext i8 %141 to i32
  %call.i230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i228, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i231, %land.rhs.i227.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %142 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i232 = getelementptr inbounds %struct.qed_vf_iov, ptr %143, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i232) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_reset(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 11) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 11, i16 noundef zeroext 16) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %call1 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %16 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %17, i32 0, i32 1
  %call2 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %qed_vf_pf_prep.exit.exit_crit_edge

qed_vf_pf_prep.exit.exit_crit_edge:               ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_prep.exit
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.not = icmp eq i8 %19, 1
  br i1 %cmp.not, label %if.end7, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %b_int_enabled = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 40
  %20 = ptrtoint ptr %b_int_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %b_int_enabled, align 4
  br label %exit

exit:                                             ; preds = %if.end7, %if.end.exit_crit_edge, %qed_vf_pf_prep.exit.exit_crit_edge
  %rc.0 = phi i32 [ %call2, %qed_vf_pf_prep.exit.exit_crit_edge ], [ 0, %if.end7 ], [ -11, %if.end.exit_crit_edge ]
  %21 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i18 = getelementptr inbounds %struct.qed_vf_iov, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pf2vf_reply.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pf2vf_reply.i18, align 8
  %25 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i20 = icmp eq i8 %26, 0
  br i1 %cmp.i20, label %land.rhs.i24, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i24:                                     ; preds = %exit
  %dp_module.i21 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %27 = ptrtoint ptr %dp_module.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dp_module.i21, align 4
  %and.i22 = and i32 %28, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool.not.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool.not.i23, label %land.rhs.i24.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i27, !prof !159

land.rhs.i24.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i27:                                       ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #14
  %name.i25 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %30 to i32
  %call.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i25, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i27, %land.rhs.i24.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %31 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i28 = getelementptr inbounds %struct.qed_vf_iov, ptr %32, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i28) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_vf_pf_filter_mcast(ptr noundef %p_hwfn, ptr noundef %p_filter_cmd) local_unnamed_addr #0 align 64 {
entry:
  %sp_params = alloca %struct.qed_sp_vport_update_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %sp_params) #12
  %0 = call ptr @memset(ptr %sp_params, i32 0, i32 72)
  %update_approx_mcast_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 15
  %1 = ptrtoint ptr %update_approx_mcast_flg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %update_approx_mcast_flg, align 2
  %2 = ptrtoint ptr %p_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_filter_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_mc_addrs = getelementptr inbounds %struct.qed_filter_mcast, ptr %p_filter_cmd, i32 0, i32 3
  %4 = ptrtoint ptr %num_mc_addrs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_mc_addrs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp113.not = icmp eq i8 %5, 0
  br i1 %cmp113.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_filter_mcast, ptr %p_filter_cmd, i32 0, i32 4, i32 %i.014
  %call = tail call zeroext i8 @qed_mcast_bin_from_mac(ptr noundef %arrayidx) #12
  %conv3 = zext i8 %call to i32
  %rem = and i32 %conv3, 31
  %shl = shl nuw i32 1, %rem
  %div11 = lshr i32 %conv3, 5
  %arrayidx4 = getelementptr %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 20, i32 %div11
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %or = or i32 %shl, %7
  store i32 %or, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %8 = ptrtoint ptr %num_mc_addrs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_mc_addrs, align 2
  %conv = zext i8 %9 to i32
  %cmp1 = icmp ult i32 %inc, %conv
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call i32 @qed_vf_pf_vport_update(ptr noundef %p_hwfn, ptr noundef nonnull %sp_params)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %sp_params) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @qed_mcast_bin_from_mac(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_filter_ucast(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_ucast) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 14) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 14, i16 noundef zeroext 32) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %16 = ptrtoint ptr %p_ucast to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_ucast, align 4
  %conv = trunc i32 %17 to i8
  %opcode1 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, ptr %call13.i, i32 0, i32 1
  %18 = ptrtoint ptr %opcode1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %opcode1, align 8
  %type = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_ucast, i32 0, i32 1
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %conv2 = trunc i32 %20 to i8
  %type3 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, ptr %call13.i, i32 0, i32 2
  %21 = ptrtoint ptr %type3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv2, ptr %type3, align 1
  %mac = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, ptr %call13.i, i32 0, i32 3
  %mac4 = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_ucast, i32 0, i32 6
  %22 = call ptr @memcpy(ptr %mac, ptr %mac4, i32 6)
  %vlan = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_ucast, i32 0, i32 8
  %23 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vlan, align 4
  %vlan6 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, ptr %call13.i, i32 0, i32 4
  %25 = ptrtoint ptr %vlan6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vlan6, align 8
  %call7 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %26 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %27, i32 0, i32 1
  %call8 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %qed_vf_pf_prep.exit.exit_crit_edge

qed_vf_pf_prep.exit.exit_crit_edge:               ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.not = icmp eq i8 %29, 1
  %spec.select = select i1 %cmp.not, i32 0, i32 -11
  br label %exit

exit:                                             ; preds = %if.end, %qed_vf_pf_prep.exit.exit_crit_edge
  %rc.0 = phi i32 [ %call8, %qed_vf_pf_prep.exit.exit_crit_edge ], [ %spec.select, %if.end ]
  %30 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i30 = getelementptr inbounds %struct.qed_vf_iov, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %pf2vf_reply.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pf2vf_reply.i30, align 8
  %34 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i32 = icmp eq i8 %35, 0
  br i1 %cmp.i32, label %land.rhs.i36, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i36:                                     ; preds = %exit
  %dp_module.i33 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %36 = ptrtoint ptr %dp_module.i33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dp_module.i33, align 4
  %and.i34 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %land.rhs.i36.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i39, !prof !159

land.rhs.i36.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i39:                                       ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #14
  %name.i37 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %39 to i32
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i37, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i39, %land.rhs.i36.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %40 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i40 = getelementptr inbounds %struct.qed_vf_iov, ptr %41, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i40) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_int_cleanup(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf2vf_reply, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 10) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %offset.i, align 4
  %11 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %12 = ptrtoint ptr %pf2vf_reply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf2vf_reply, align 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 10, i16 noundef zeroext 16) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %16 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %call1 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %3, i32 0, i32 1
  %call2 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %qed_vf_pf_prep.exit.exit_crit_edge

qed_vf_pf_prep.exit.exit_crit_edge:               ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.not = icmp eq i8 %19, 1
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  br label %exit

exit:                                             ; preds = %if.end, %qed_vf_pf_prep.exit.exit_crit_edge
  %rc.0 = phi i32 [ %call2, %qed_vf_pf_prep.exit.exit_crit_edge ], [ %spec.select, %if.end ]
  %20 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i17 = getelementptr inbounds %struct.qed_vf_iov, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pf2vf_reply.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf2vf_reply.i17, align 8
  %24 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i19 = icmp eq i8 %25, 0
  br i1 %cmp.i19, label %land.rhs.i23, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i23:                                     ; preds = %exit
  %dp_module.i20 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %26 = ptrtoint ptr %dp_module.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module.i20, align 4
  %and.i21 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i22 = icmp eq i32 %and.i21, 0
  br i1 %tobool.not.i22, label %land.rhs.i23.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i26, !prof !159

land.rhs.i23.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i26:                                       ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #14
  %name.i24 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %29 to i32
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i24, i32 noundef %rc.0, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i26, %land.rhs.i23.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %30 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i27 = getelementptr inbounds %struct.qed_vf_iov, ptr %31, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i27) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_get_coalesce(ptr noundef %p_hwfn, ptr nocapture noundef writeonly %p_coal, ptr nocapture noundef readonly %p_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 26) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 26, i16 noundef zeroext 24) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %queue_id = getelementptr inbounds %struct.qed_queue_cid_params, ptr %p_cid, i32 0, i32 1
  %16 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %queue_id, align 2
  %qid = getelementptr inbounds %struct.vfpf_read_coal_req_tlv, ptr %call13.i, i32 0, i32 1
  %18 = ptrtoint ptr %qid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %qid, align 8
  %b_is_rx = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 6
  %19 = ptrtoint ptr %b_is_rx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b_is_rx, align 2, !range !163
  %is_rx = getelementptr inbounds %struct.vfpf_read_coal_req_tlv, ptr %call13.i, i32 0, i32 2
  %21 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %is_rx, align 2
  %call1 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %22 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %23, i32 0, i32 1
  %call2 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %qed_vf_pf_prep.exit.exit_crit_edge

qed_vf_pf_prep.exit.exit_crit_edge:               ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %qed_vf_pf_prep.exit
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp.not = icmp eq i8 %25, 1
  br i1 %cmp.not, label %if.end9, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %coal = getelementptr inbounds %struct.pfvf_read_coal_resp_tlv, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %coal to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %coal, align 2
  %28 = ptrtoint ptr %p_coal to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %p_coal, align 2
  br label %exit

exit:                                             ; preds = %if.end9, %if.end.exit_crit_edge, %qed_vf_pf_prep.exit.exit_crit_edge
  %29 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i22 = getelementptr inbounds %struct.qed_vf_iov, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %pf2vf_reply.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pf2vf_reply.i22, align 8
  %33 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i24 = icmp eq i8 %34, 0
  br i1 %cmp.i24, label %land.rhs.i28, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i28:                                     ; preds = %exit
  %dp_module.i25 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %35 = ptrtoint ptr %dp_module.i25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dp_module.i25, align 4
  %and.i26 = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %land.rhs.i28.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i31, !prof !159

land.rhs.i28.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i31:                                       ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #14
  %name.i29 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %38 to i32
  %call.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i29, i32 noundef %call2, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i31, %land.rhs.i28.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %39 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i32 = getelementptr inbounds %struct.qed_vf_iov, ptr %40, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i32) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_bulletin_update_mac(ptr noundef %p_hwfn, ptr noundef %p_mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %tobool.not = icmp eq ptr %p_mac, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end.qed_vf_pf_prep.exit_crit_edge

if.end.qed_vf_pf_prep.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %if.end
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 27) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %if.end.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 27, i16 noundef zeroext 24) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %mac = getelementptr inbounds %struct.vfpf_bulletin_update_mac_tlv, ptr %call13.i, i32 0, i32 1
  %16 = ptrtoint ptr %p_mac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_mac, align 4
  %18 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %p_mac, i32 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.vfpf_bulletin_update_mac_tlv, ptr %call13.i, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i, align 2
  %22 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  br i1 %cmp, label %land.rhs, label %qed_vf_pf_prep.exit.do.end14_crit_edge

qed_vf_pf_prep.exit.do.end14_crit_edge:           ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

land.rhs:                                         ; preds = %qed_vf_pf_prep.exit
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %24 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dp_module, align 4
  %and = and i32 %25, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.do.end14_crit_edge, label %do.end, !prof !159

land.rhs.do.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 1398, ptr noundef nonnull %spec.select, ptr noundef nonnull %p_mac) #15
  br label %do.end14

do.end14:                                         ; preds = %do.end, %land.rhs.do.end14_crit_edge, %qed_vf_pf_prep.exit.do.end14_crit_edge
  %call15 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %26 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %27, i32 0, i32 1
  %call16 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  %28 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i33 = getelementptr inbounds %struct.qed_vf_iov, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %pf2vf_reply.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pf2vf_reply.i33, align 8
  %32 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i35 = icmp eq i8 %33, 0
  br i1 %cmp.i35, label %land.rhs.i39, label %do.end14.qed_vf_pf_req_end.exit_crit_edge

do.end14.qed_vf_pf_req_end.exit_crit_edge:        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i39:                                     ; preds = %do.end14
  %dp_module.i36 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %34 = ptrtoint ptr %dp_module.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_module.i36, align 4
  %and.i37 = and i32 %35, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %land.rhs.i39.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i42, !prof !159

land.rhs.i39.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i42:                                       ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #14
  %name.i40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %37 to i32
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i40, i32 noundef %call16, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i42, %land.rhs.i39.qed_vf_pf_req_end.exit_crit_edge, %do.end14.qed_vf_pf_req_end.exit_crit_edge
  %38 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i43 = getelementptr inbounds %struct.qed_vf_iov, ptr %39, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i43) #12
  br label %cleanup

cleanup:                                          ; preds = %qed_vf_pf_req_end.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %qed_vf_pf_req_end.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_pf_set_coalesce(ptr noundef %p_hwfn, i16 noundef zeroext %rx_coal, i16 noundef zeroext %tx_coal, ptr nocapture noundef readonly %p_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.qed_vf_pf_prep.exit_crit_edge

entry.qed_vf_pf_prep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_pf_prep.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_prep.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 28, ptr noundef nonnull %name.i, i32 noundef 24) #15
  br label %qed_vf_pf_prep.exit

qed_vf_pf_prep.exit:                              ; preds = %do.end.i, %land.rhs.i.qed_vf_pf_prep.exit_crit_edge, %entry.qed_vf_pf_prep.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %offset.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %offset.i, align 4
  %9 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %pf2vf_reply.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf2vf_reply.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %call13.i = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 24, i16 noundef zeroext 24) #12
  %pf2vf_reply_phys.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pf2vf_reply_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf2vf_reply_phys.i, align 4
  %conv14.i = zext i32 %14 to i64
  %reply_address.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %reply_address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14.i, ptr %reply_address.i, align 8
  %rx_coal1 = getelementptr inbounds %struct.vfpf_update_coalesce, ptr %call13.i, i32 0, i32 1
  %16 = ptrtoint ptr %rx_coal1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %rx_coal, ptr %rx_coal1, align 8
  %tx_coal2 = getelementptr inbounds %struct.vfpf_update_coalesce, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %tx_coal2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %tx_coal, ptr %tx_coal2, align 2
  %queue_id = getelementptr inbounds %struct.qed_queue_cid_params, ptr %p_cid, i32 0, i32 1
  %18 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %queue_id, align 2
  %qid = getelementptr inbounds %struct.vfpf_update_coalesce, ptr %call13.i, i32 0, i32 3
  %20 = ptrtoint ptr %qid to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %qid, align 4
  %21 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  br i1 %cmp, label %land.rhs, label %qed_vf_pf_prep.exit.do.end16_crit_edge

qed_vf_pf_prep.exit.do.end16_crit_edge:           ; preds = %qed_vf_pf_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.rhs:                                         ; preds = %qed_vf_pf_prep.exit
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %23 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dp_module, align 4
  %and = and i32 %24, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end16_crit_edge, label %do.end, !prof !159

land.rhs.do.end16_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %conv10 = zext i16 %rx_coal to i32
  %conv11 = zext i16 %tx_coal to i32
  %conv13 = zext i16 %19 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 1429, ptr noundef nonnull %spec.select, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv13) #15
  br label %do.end16

do.end16:                                         ; preds = %do.end, %land.rhs.do.end16_crit_edge, %qed_vf_pf_prep.exit.do.end16_crit_edge
  %call17 = tail call ptr @qed_add_tlv(ptr noundef %p_hwfn, ptr noundef %offset.i, i16 noundef zeroext 13, i16 noundef zeroext 8) #12
  %25 = ptrtoint ptr %pf2vf_reply.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pf2vf_reply.i, align 8
  %status = getelementptr inbounds %struct.pfvf_tlv, ptr %26, i32 0, i32 1
  %call18 = tail call fastcc i32 @qed_send_msg2pf(ptr noundef %p_hwfn, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end16.exit_crit_edge

do.end16.exit_crit_edge:                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end21:                                         ; preds = %do.end16
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp25.not = icmp eq i8 %28, 1
  br i1 %cmp25.not, label %if.end28, label %if.end21.exit_crit_edge

if.end21.exit_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rx_coal)
  %tobool29.not = icmp eq i16 %rx_coal, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_hwfn, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.qed_dev, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %rx_coal, ptr %rx_coalesce_usecs, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tx_coal)
  %tobool32.not = icmp eq i16 %tx_coal, 0
  br i1 %tobool32.not, label %if.end31.exit_crit_edge, label %if.then33

if.end31.exit_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_hwfn, align 8
  %tx_coalesce_usecs = getelementptr inbounds %struct.qed_dev, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %tx_coal, ptr %tx_coalesce_usecs, align 2
  br label %exit

exit:                                             ; preds = %if.then33, %if.end31.exit_crit_edge, %if.end21.exit_crit_edge, %do.end16.exit_crit_edge
  %35 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vf_iov_info, align 8
  %pf2vf_reply.i60 = getelementptr inbounds %struct.qed_vf_iov, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %pf2vf_reply.i60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pf2vf_reply.i60, align 8
  %39 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i62 = icmp eq i8 %40, 0
  br i1 %cmp.i62, label %land.rhs.i66, label %exit.qed_vf_pf_req_end.exit_crit_edge

exit.qed_vf_pf_req_end.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

land.rhs.i66:                                     ; preds = %exit
  %dp_module.i63 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %41 = ptrtoint ptr %dp_module.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dp_module.i63, align 4
  %and.i64 = and i32 %42, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %land.rhs.i66.qed_vf_pf_req_end.exit_crit_edge, label %do.end.i69, !prof !159

land.rhs.i66.qed_vf_pf_req_end.exit_crit_edge:    ; preds = %land.rhs.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_pf_req_end.exit

do.end.i69:                                       ; preds = %land.rhs.i66
  call void @__sanitizer_cov_trace_pc() #14
  %name.i67 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.pfvf_tlv, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status.i, align 4
  %conv8.i = zext i8 %44 to i32
  %call.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 53, ptr noundef nonnull %name.i67, i32 noundef %call18, i32 noundef %conv8.i) #15
  br label %qed_vf_pf_req_end.exit

qed_vf_pf_req_end.exit:                           ; preds = %do.end.i69, %land.rhs.i66.qed_vf_pf_req_end.exit_crit_edge, %exit.qed_vf_pf_req_end.exit_crit_edge
  %45 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vf_iov_info, align 8
  %mutex.i70 = getelementptr inbounds %struct.qed_vf_iov, ptr %46, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex.i70) #12
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qed_vf_get_igu_sb_id(ptr noundef %p_hwfn, i16 noundef zeroext %sb_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !164

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 1459, ptr noundef nonnull %spec.select) #15
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %resc = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2
  %idxprom = zext i16 %sb_id to i32
  %arrayidx = getelementptr [16 x %struct.hw_sb_info], ptr %resc, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end11 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_vf_set_sb_info(ptr noundef %p_hwfn, i16 noundef zeroext %sb_id, ptr noundef %p_sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !164

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, i32 noundef 1472, ptr noundef nonnull %spec.select) #15
  br label %cleanup

if.end11:                                         ; preds = %entry
  %conv12 = zext i16 %sb_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %sb_id)
  %cmp13 = icmp ugt i16 %sb_id, 15
  br i1 %cmp13, label %do.body16, label %if.end46

do.body16:                                        ; preds = %if.end11
  %dp_level17 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level17 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp19 = icmp ult i8 %5, 3
  br i1 %cmp19, label %do.end30, label %do.body16.cleanup_crit_edge, !prof !164

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end30:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %name32 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool34.not = icmp eq ptr %name32, null
  %spec.select56 = select i1 %tobool34.not, ptr @.str.3, ptr %name32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 1477, ptr noundef nonnull %spec.select56, i32 noundef %conv12) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.qed_vf_iov, ptr %1, i32 0, i32 10, i32 %conv12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %p_sb, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end30, %do.body16.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_vf_read_bulletin(ptr noundef %p_hwfn, ptr nocapture noundef writeonly %p_change) local_unnamed_addr #0 align 64 {
entry:
  %shadow = alloca %struct.qed_bulletin_content, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %shadow) #12
  %2 = call ptr @memset(ptr %shadow, i32 255, i32 80)
  %3 = ptrtoint ptr %p_change to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %p_change, align 1
  %p_virt = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %p_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_virt, align 4
  %size = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %8 = call ptr @memcpy(ptr %shadow, ptr %5, i32 %7)
  %version = getelementptr inbounds %struct.qed_bulletin_content, ptr %shadow, i32 0, i32 1
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  %bulletin_shadow = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7
  %version2 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %version2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp eq i32 %10, %12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %sub = add i32 %14, -4
  %call = call i32 @crc32_le(i32 noundef 0, ptr noundef %version, i32 noundef %sub) #17
  %15 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shadow, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %16)
  %cmp6.not = icmp eq i32 %call, %16
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %17 = call ptr @memcpy(ptr %bulletin_shadow, ptr %shadow, i32 %14)
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp12 = icmp eq i8 %19, 0
  br i1 %cmp12, label %land.rhs, label %if.end8.do.end25_crit_edge

if.end8.do.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.rhs:                                         ; preds = %if.end8
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %20 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_module, align 4
  %and = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end25_crit_edge, label %do.end, !prof !159

land.rhs.do.end25_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool18.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool18.not, ptr @.str.3, ptr %name
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1510, ptr noundef nonnull %spec.select, i32 noundef %10) #15
  br label %do.end25

do.end25:                                         ; preds = %do.end, %land.rhs.do.end25_crit_edge, %if.end8.do.end25_crit_edge
  %22 = ptrtoint ptr %p_change to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %p_change, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end25 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %shadow) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__qed_vf_get_link_params(ptr nocapture readnone %p_hwfn, ptr nocapture noundef writeonly %p_params, ptr nocapture noundef readonly %p_bulletin) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p_params, i32 0, i32 48)
  %req_autoneg = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 6
  %1 = ptrtoint ptr %req_autoneg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %req_autoneg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  %frombool = zext i1 %tobool to i8
  %3 = ptrtoint ptr %p_params to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %p_params, align 4
  %req_adv_speed = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 11
  %4 = ptrtoint ptr %req_adv_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_adv_speed, align 8
  %advertised_speeds = getelementptr inbounds %struct.qed_mcp_link_speed_params, ptr %p_params, i32 0, i32 1
  %6 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %advertised_speeds, align 4
  %req_forced_speed = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 12
  %7 = ptrtoint ptr %req_forced_speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req_forced_speed, align 4
  %forced_speed = getelementptr inbounds %struct.qed_mcp_link_speed_params, ptr %p_params, i32 0, i32 2
  %9 = ptrtoint ptr %forced_speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %forced_speed, align 4
  %req_autoneg_pause = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 7
  %10 = ptrtoint ptr %req_autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_autoneg_pause, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3 = icmp ne i8 %11, 0
  %pause = getelementptr inbounds %struct.qed_mcp_link_params, ptr %p_params, i32 0, i32 1
  %frombool5 = zext i1 %tobool3 to i8
  %12 = ptrtoint ptr %pause to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool5, ptr %pause, align 4
  %req_forced_rx = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 8
  %13 = ptrtoint ptr %req_forced_rx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %req_forced_rx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6 = icmp ne i8 %14, 0
  %forced_rx = getelementptr inbounds %struct.qed_mcp_link_params, ptr %p_params, i32 0, i32 1, i32 1
  %frombool8 = zext i1 %tobool6 to i8
  %15 = ptrtoint ptr %forced_rx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool8, ptr %forced_rx, align 1
  %req_forced_tx = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 9
  %16 = ptrtoint ptr %req_forced_tx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %req_forced_tx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9 = icmp ne i8 %17, 0
  %forced_tx = getelementptr inbounds %struct.qed_mcp_link_params, ptr %p_params, i32 0, i32 1, i32 2
  %frombool11 = zext i1 %tobool9 to i8
  %18 = ptrtoint ptr %forced_tx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool11, ptr %forced_tx, align 2
  %req_loopback = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 13
  %19 = ptrtoint ptr %req_loopback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req_loopback, align 8
  %loopback_mode = getelementptr inbounds %struct.qed_mcp_link_params, ptr %p_params, i32 0, i32 2
  %21 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %loopback_mode, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_link_params(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %params) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %2 = call ptr @memset(ptr %params, i32 0, i32 48)
  %req_autoneg.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 6
  %3 = ptrtoint ptr %req_autoneg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %req_autoneg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i = icmp ne i8 %4, 0
  %frombool.i = zext i1 %tobool.i to i8
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool.i, ptr %params, align 4
  %req_adv_speed.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 11
  %6 = ptrtoint ptr %req_adv_speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req_adv_speed.i, align 8
  %advertised_speeds.i = getelementptr inbounds %struct.qed_mcp_link_speed_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %advertised_speeds.i, align 4
  %req_forced_speed.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 12
  %9 = ptrtoint ptr %req_forced_speed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req_forced_speed.i, align 4
  %forced_speed.i = getelementptr inbounds %struct.qed_mcp_link_speed_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %forced_speed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %forced_speed.i, align 4
  %req_autoneg_pause.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 7
  %12 = ptrtoint ptr %req_autoneg_pause.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %req_autoneg_pause.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.i = icmp ne i8 %13, 0
  %pause.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1
  %frombool5.i = zext i1 %tobool3.i to i8
  %14 = ptrtoint ptr %pause.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool5.i, ptr %pause.i, align 4
  %req_forced_rx.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 8
  %15 = ptrtoint ptr %req_forced_rx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %req_forced_rx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.i = icmp ne i8 %16, 0
  %forced_rx.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1, i32 1
  %frombool8.i = zext i1 %tobool6.i to i8
  %17 = ptrtoint ptr %forced_rx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool8.i, ptr %forced_rx.i, align 1
  %req_forced_tx.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 9
  %18 = ptrtoint ptr %req_forced_tx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %req_forced_tx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.i = icmp ne i8 %19, 0
  %forced_tx.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1, i32 2
  %frombool11.i = zext i1 %tobool9.i to i8
  %20 = ptrtoint ptr %forced_tx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool11.i, ptr %forced_tx.i, align 2
  %req_loopback.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 13
  %21 = ptrtoint ptr %req_loopback.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %req_loopback.i, align 8
  %loopback_mode.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 2
  %23 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %loopback_mode.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__qed_vf_get_link_state(ptr nocapture readnone %p_hwfn, ptr nocapture noundef writeonly %p_link, ptr nocapture noundef readonly %p_bulletin) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p_link, i32 0, i32 40)
  %link_up = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 15
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_up, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  %frombool = zext i1 %tobool to i8
  %3 = ptrtoint ptr %p_link to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %p_link, align 4
  %speed = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 28
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  %speed2 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 3
  %6 = ptrtoint ptr %speed2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %speed2, align 4
  %full_duplex = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 16
  %7 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %full_duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3 = icmp ne i8 %8, 0
  %full_duplex4 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 4
  %frombool5 = zext i1 %tobool3 to i8
  %9 = ptrtoint ptr %full_duplex4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool5, ptr %full_duplex4, align 4
  %autoneg = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 17
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6 = icmp ne i8 %11, 0
  %an = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 5
  %frombool7 = zext i1 %tobool6 to i8
  %12 = ptrtoint ptr %an to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool7, ptr %an, align 1
  %autoneg_complete = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 18
  %13 = ptrtoint ptr %autoneg_complete to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg_complete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8 = icmp ne i8 %14, 0
  %an_complete = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 6
  %frombool9 = zext i1 %tobool8 to i8
  %15 = ptrtoint ptr %an_complete to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool9, ptr %an_complete, align 2
  %parallel_detection = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 19
  %16 = ptrtoint ptr %parallel_detection to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %parallel_detection, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10 = icmp ne i8 %17, 0
  %parallel_detection11 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 7
  %frombool12 = zext i1 %tobool10 to i8
  %18 = ptrtoint ptr %parallel_detection11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool12, ptr %parallel_detection11, align 1
  %pfc_enabled = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 20
  %19 = ptrtoint ptr %pfc_enabled to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pfc_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13 = icmp ne i8 %20, 0
  %pfc_enabled14 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 8
  %frombool15 = zext i1 %tobool13 to i8
  %21 = ptrtoint ptr %pfc_enabled14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool15, ptr %pfc_enabled14, align 4
  %partner_adv_speed = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 29
  %22 = ptrtoint ptr %partner_adv_speed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %partner_adv_speed, align 4
  %partner_adv_speed16 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 9
  %24 = ptrtoint ptr %partner_adv_speed16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %partner_adv_speed16, align 4
  %partner_tx_flow_ctrl_en = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 21
  %25 = ptrtoint ptr %partner_tx_flow_ctrl_en to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %partner_tx_flow_ctrl_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool17 = icmp ne i8 %26, 0
  %partner_tx_flow_ctrl_en18 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 10
  %frombool19 = zext i1 %tobool17 to i8
  %27 = ptrtoint ptr %partner_tx_flow_ctrl_en18 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool19, ptr %partner_tx_flow_ctrl_en18, align 4
  %partner_rx_flow_ctrl_en = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 22
  %28 = ptrtoint ptr %partner_rx_flow_ctrl_en to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %partner_rx_flow_ctrl_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20 = icmp ne i8 %29, 0
  %partner_rx_flow_ctrl_en21 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 11
  %frombool22 = zext i1 %tobool20 to i8
  %30 = ptrtoint ptr %partner_rx_flow_ctrl_en21 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool22, ptr %partner_rx_flow_ctrl_en21, align 1
  %partner_adv_pause = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 23
  %31 = ptrtoint ptr %partner_adv_pause to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %partner_adv_pause, align 8
  %partner_adv_pause23 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 12
  %33 = ptrtoint ptr %partner_adv_pause23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %partner_adv_pause23, align 2
  %sfp_tx_fault = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 24
  %34 = ptrtoint ptr %sfp_tx_fault to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sfp_tx_fault, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24 = icmp ne i8 %35, 0
  %sfp_tx_fault25 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %p_link, i32 0, i32 13
  %frombool26 = zext i1 %tobool24 to i8
  %36 = ptrtoint ptr %sfp_tx_fault25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool26, ptr %sfp_tx_fault25, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_link_state(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %link) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %2 = call ptr @memset(ptr %link, i32 0, i32 40)
  %link_up.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 15
  %3 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_up.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i = icmp ne i8 %4, 0
  %frombool.i = zext i1 %tobool.i to i8
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool.i, ptr %link, align 4
  %speed.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 28
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed.i, align 8
  %speed2.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 3
  %8 = ptrtoint ptr %speed2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %speed2.i, align 4
  %full_duplex.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 16
  %9 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %full_duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.i = icmp ne i8 %10, 0
  %full_duplex4.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 4
  %frombool5.i = zext i1 %tobool3.i to i8
  %11 = ptrtoint ptr %full_duplex4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool5.i, ptr %full_duplex4.i, align 4
  %autoneg.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 17
  %12 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.i = icmp ne i8 %13, 0
  %an.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 5
  %frombool7.i = zext i1 %tobool6.i to i8
  %14 = ptrtoint ptr %an.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool7.i, ptr %an.i, align 1
  %autoneg_complete.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 18
  %15 = ptrtoint ptr %autoneg_complete.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %autoneg_complete.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.i = icmp ne i8 %16, 0
  %an_complete.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 6
  %frombool9.i = zext i1 %tobool8.i to i8
  %17 = ptrtoint ptr %an_complete.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool9.i, ptr %an_complete.i, align 2
  %parallel_detection.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 19
  %18 = ptrtoint ptr %parallel_detection.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %parallel_detection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.i = icmp ne i8 %19, 0
  %parallel_detection11.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 7
  %frombool12.i = zext i1 %tobool10.i to i8
  %20 = ptrtoint ptr %parallel_detection11.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool12.i, ptr %parallel_detection11.i, align 1
  %pfc_enabled.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 20
  %21 = ptrtoint ptr %pfc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pfc_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool13.i = icmp ne i8 %22, 0
  %pfc_enabled14.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 8
  %frombool15.i = zext i1 %tobool13.i to i8
  %23 = ptrtoint ptr %pfc_enabled14.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool15.i, ptr %pfc_enabled14.i, align 4
  %partner_adv_speed.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 29
  %24 = ptrtoint ptr %partner_adv_speed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %partner_adv_speed.i, align 4
  %partner_adv_speed16.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 9
  %26 = ptrtoint ptr %partner_adv_speed16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %partner_adv_speed16.i, align 4
  %partner_tx_flow_ctrl_en.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 21
  %27 = ptrtoint ptr %partner_tx_flow_ctrl_en.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %partner_tx_flow_ctrl_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.i = icmp ne i8 %28, 0
  %partner_tx_flow_ctrl_en18.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 10
  %frombool19.i = zext i1 %tobool17.i to i8
  %29 = ptrtoint ptr %partner_tx_flow_ctrl_en18.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool19.i, ptr %partner_tx_flow_ctrl_en18.i, align 4
  %partner_rx_flow_ctrl_en.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 22
  %30 = ptrtoint ptr %partner_rx_flow_ctrl_en.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %partner_rx_flow_ctrl_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.i = icmp ne i8 %31, 0
  %partner_rx_flow_ctrl_en21.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 11
  %frombool22.i = zext i1 %tobool20.i to i8
  %32 = ptrtoint ptr %partner_rx_flow_ctrl_en21.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool22.i, ptr %partner_rx_flow_ctrl_en21.i, align 1
  %partner_adv_pause.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 23
  %33 = ptrtoint ptr %partner_adv_pause.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %partner_adv_pause.i, align 8
  %partner_adv_pause23.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 12
  %35 = ptrtoint ptr %partner_adv_pause23.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %partner_adv_pause23.i, align 2
  %sfp_tx_fault.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 24
  %36 = ptrtoint ptr %sfp_tx_fault.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sfp_tx_fault.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool24.i = icmp ne i8 %37, 0
  %sfp_tx_fault25.i = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 13
  %frombool26.i = zext i1 %tobool24.i to i8
  %38 = ptrtoint ptr %sfp_tx_fault25.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool26.i, ptr %sfp_tx_fault25.i, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__qed_vf_get_link_caps(ptr nocapture readnone %p_hwfn, ptr nocapture noundef writeonly %p_link_caps, ptr nocapture noundef readonly %p_bulletin) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p_link_caps, i32 0, i32 40)
  %capability_speed = getelementptr inbounds %struct.qed_bulletin_content, ptr %p_bulletin, i32 0, i32 30
  %1 = ptrtoint ptr %capability_speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %capability_speed, align 8
  %3 = ptrtoint ptr %p_link_caps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %p_link_caps, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_link_caps(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %p_link_caps) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %2 = call ptr @memset(ptr %p_link_caps, i32 0, i32 40)
  %capability_speed.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 30
  %3 = ptrtoint ptr %capability_speed.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capability_speed.i, align 8
  %5 = ptrtoint ptr %p_link_caps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_link_caps, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_num_rxqs(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %num_rxqs) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %num_rxqs1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2, i32 3
  %2 = ptrtoint ptr %num_rxqs1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rxqs1, align 8
  %4 = ptrtoint ptr %num_rxqs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %num_rxqs, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_num_txqs(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %num_txqs) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %num_txqs1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2, i32 4
  %2 = ptrtoint ptr %num_txqs1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_txqs1, align 1
  %4 = ptrtoint ptr %num_txqs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %num_txqs, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_num_cids(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %num_cids) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %num_cids1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2, i32 9
  %2 = ptrtoint ptr %num_cids1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_cids1, align 2
  %4 = ptrtoint ptr %num_cids to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %num_cids, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_port_mac(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %port_mac) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %port_mac1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 1, i32 14
  %2 = call ptr @memcpy(ptr %port_mac, ptr %port_mac1, i32 6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_num_vlan_filters(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %num_vlan_filters) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %num_vlan_filters1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2, i32 7
  %2 = ptrtoint ptr %num_vlan_filters1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_vlan_filters1, align 4
  %4 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %num_vlan_filters, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_num_mac_filters(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %num_mac_filters) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %num_mac_filters1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 2, i32 6
  %2 = ptrtoint ptr %num_mac_filters1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_mac_filters1, align 1
  %4 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %num_mac_filters, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qed_vf_check_mac(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef readonly %mac) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %valid_bitmap = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %valid_bitmap, align 8
  %and = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_vf_get_fw_version(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %fw_major, ptr nocapture noundef writeonly %fw_minor, ptr nocapture noundef writeonly %fw_rev, ptr nocapture noundef writeonly %fw_eng) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %0 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info, align 8
  %fw_major1 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 1, i32 2
  %2 = ptrtoint ptr %fw_major1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fw_major1, align 8
  %4 = ptrtoint ptr %fw_major to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %fw_major, align 2
  %fw_minor2 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 1, i32 3
  %5 = ptrtoint ptr %fw_minor2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fw_minor2, align 2
  %7 = ptrtoint ptr %fw_minor to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %fw_minor, align 2
  %fw_rev3 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 1, i32 4
  %8 = ptrtoint ptr %fw_rev3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_rev3, align 4
  %10 = ptrtoint ptr %fw_rev to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %fw_rev, align 2
  %fw_eng4 = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 8, i32 1, i32 5
  %11 = ptrtoint ptr %fw_eng4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fw_eng4, align 2
  %13 = ptrtoint ptr %fw_eng to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %fw_eng, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_iov_vf_task(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %mac.i = alloca [6 x i8], align 4
  %shadow.i = alloca %struct.qed_bulletin_content, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3208
  %iov_task_flags = getelementptr i8, ptr %work, i32 100
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %iov_task_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vf_iov_info.i = getelementptr i8, ptr %work, i32 -2600
  %0 = ptrtoint ptr %vf_iov_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf_iov_info.i, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %shadow.i) #12
  %2 = call ptr @memset(ptr %shadow.i, i32 255, i32 80)
  %p_virt.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %p_virt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_virt.i, align 4
  %size.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 8
  %7 = call ptr @memcpy(ptr %shadow.i, ptr %4, i32 %6)
  %version.i = getelementptr inbounds %struct.qed_bulletin_content, ptr %shadow.i, i32 0, i32 1
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version.i, align 4
  %bulletin_shadow.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7
  %version2.i = getelementptr inbounds %struct.qed_vf_iov, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %version2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br i1 %cmp.i, label %if.end.qed_vf_read_bulletin.exit_crit_edge, label %if.end.i

if.end.qed_vf_read_bulletin.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_read_bulletin.exit

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 8
  %sub.i = add i32 %13, -4
  %call.i = call i32 @crc32_le(i32 noundef 0, ptr noundef %version.i, i32 noundef %sub.i) #17
  %14 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shadow.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %15)
  %cmp6.not.i = icmp eq i32 %call.i, %15
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end.i.qed_vf_read_bulletin.exit_crit_edge

if.end.i.qed_vf_read_bulletin.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_read_bulletin.exit

if.end8.i:                                        ; preds = %if.end.i
  %16 = call ptr @memcpy(ptr %bulletin_shadow.i, ptr %shadow.i, i32 %13)
  %dp_level.i = getelementptr i8, ptr %work, i32 -3192
  %17 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp12.i = icmp eq i8 %18, 0
  br i1 %cmp12.i, label %land.rhs.i, label %if.end8.i.qed_vf_read_bulletin.exit.thread_crit_edge

if.end8.i.qed_vf_read_bulletin.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_read_bulletin.exit.thread

land.rhs.i:                                       ; preds = %if.end8.i
  %dp_module.i = getelementptr i8, ptr %work, i32 -3196
  %19 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_vf_read_bulletin.exit.thread_crit_edge, label %do.end.i, !prof !159

land.rhs.i.qed_vf_read_bulletin.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_vf_read_bulletin.exit.thread

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr i8, ptr %work, i32 -3191
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1510, ptr noundef nonnull %name.i, i32 noundef %9) #15
  br label %qed_vf_read_bulletin.exit.thread

qed_vf_read_bulletin.exit.thread:                 ; preds = %do.end.i, %land.rhs.i.qed_vf_read_bulletin.exit.thread_crit_edge, %if.end8.i.qed_vf_read_bulletin.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %shadow.i) #12
  %call322 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %iov_task_flags) #12
  br label %if.then8

qed_vf_read_bulletin.exit:                        ; preds = %if.end.i.qed_vf_read_bulletin.exit_crit_edge, %if.end.qed_vf_read_bulletin.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %shadow.i) #12
  %call3 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %iov_task_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %qed_vf_read_bulletin.exit.if.end9_crit_edge, label %qed_vf_read_bulletin.exit.if.then8_crit_edge

qed_vf_read_bulletin.exit.if.then8_crit_edge:     ; preds = %qed_vf_read_bulletin.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

qed_vf_read_bulletin.exit.if.end9_crit_edge:      ; preds = %qed_vf_read_bulletin.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %qed_vf_read_bulletin.exit.if.then8_crit_edge, %qed_vf_read_bulletin.exit.thread
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %protocol_ops.i = getelementptr inbounds %struct.qed_dev, ptr %22, i32 0, i32 56
  %23 = ptrtoint ptr %protocol_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %protocol_ops.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #12
  %ops_cookie.i = getelementptr inbounds %struct.qed_dev, ptr %22, i32 0, i32 57
  %25 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  %26 = ptrtoint ptr %ops_cookie.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops_cookie.i, align 4
  %28 = ptrtoint ptr %vf_iov_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vf_iov_info.i, align 8
  %vxlan_udp_port.i.i = getelementptr inbounds %struct.qed_vf_iov, ptr %29, i32 0, i32 7, i32 25
  %30 = ptrtoint ptr %vxlan_udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vxlan_udp_port.i.i, align 2
  %geneve_udp_port.i.i = getelementptr inbounds %struct.qed_vf_iov, ptr %29, i32 0, i32 7, i32 26
  %32 = ptrtoint ptr %geneve_udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %geneve_udp_port.i.i, align 4
  %valid_bitmap.i.i = getelementptr inbounds %struct.qed_vf_iov, ptr %29, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %valid_bitmap.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %valid_bitmap.i.i, align 8
  %and.i.i = and i64 %35, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp ne i64 %and.i.i, 0
  %36 = and i64 %35, 33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %if.then8.qed_handle_bulletin_change.exit_crit_edge, label %qed_vf_bulletin_get_forced_mac.exit.i

if.then8.qed_handle_bulletin_change.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_handle_bulletin_change.exit

qed_vf_bulletin_get_forced_mac.exit.i:            ; preds = %if.then8
  %38 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %mac.i.i = getelementptr inbounds %struct.qed_vf_iov, ptr %29, i32 0, i32 7, i32 3
  %39 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mac.i.i, align 4
  %41 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mac.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.qed_vf_iov, ptr %29, i32 0, i32 7, i32 3, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i.i, align 2
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %38, align 4
  %tobool3.not.i = icmp eq ptr %27, null
  br i1 %tobool3.not.i, label %qed_vf_bulletin_get_forced_mac.exit.i.qed_handle_bulletin_change.exit_crit_edge, label %if.then.i

qed_vf_bulletin_get_forced_mac.exit.i.qed_handle_bulletin_change.exit_crit_edge: ; preds = %qed_vf_bulletin_get_forced_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qed_handle_bulletin_change.exit

if.then.i:                                        ; preds = %qed_vf_bulletin_get_forced_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %force_mac.i = getelementptr inbounds %struct.qed_eth_cb_ops, ptr %24, i32 0, i32 1
  %45 = ptrtoint ptr %force_mac.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %force_mac.i, align 4
  call void %46(ptr noundef nonnull %27, ptr noundef nonnull %mac.i, i1 noundef zeroext %tobool.not.i.i) #12
  br label %qed_handle_bulletin_change.exit

qed_handle_bulletin_change.exit:                  ; preds = %if.then.i, %qed_vf_bulletin_get_forced_mac.exit.i.qed_handle_bulletin_change.exit_crit_edge, %if.then8.qed_handle_bulletin_change.exit_crit_edge
  %ports_update.i = getelementptr inbounds %struct.qed_eth_cb_ops, ptr %24, i32 0, i32 2
  %47 = ptrtoint ptr %ports_update.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ports_update.i, align 4
  call void %48(ptr noundef %27, i16 noundef zeroext %31, i16 noundef zeroext %33) #12
  call void @qed_link_update(ptr noundef %add.ptr, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #12
  br label %if.end9

if.end9:                                          ; preds = %qed_handle_bulletin_change.exit, %qed_vf_read_bulletin.exit.if.end9_crit_edge
  %iov_wq = getelementptr i8, ptr %work, i32 -4
  %49 = ptrtoint ptr %iov_wq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iov_wq, align 4
  %call.i18 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %work, i32 noundef 100) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_dp_tlv_list(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_iov_search_list_tlvs(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_link_update(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !144, !145, !147, !148, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 503, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_vf_hw_prepare._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_vf_hw_prepare._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 519, i32 2}
!9 = !{ptr @qed_vf_hw_prepare._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_vf_hw_prepare._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @qed_vf_hw_prepare.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 524, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 552, i32 2}
!16 = !{ptr @qed_vf_hw_prepare._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @qed_vf_hw_prepare._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 714, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qed_vf_pf_tunnel_param_update._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @qed_vf_pf_tunnel_param_update._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 789, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qed_vf_pf_rxq_start._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @qed_vf_pf_rxq_start._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 892, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qed_vf_pf_txq_start._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @qed_vf_pf_txq_start._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1397, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qed_vf_pf_bulletin_update_mac._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @qed_vf_pf_bulletin_update_mac._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1426, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qed_vf_pf_set_coalesce._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @qed_vf_pf_set_coalesce._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1459, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qed_vf_get_igu_sb_id._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qed_vf_get_igu_sb_id._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1472, i32 3}
!50 = !{ptr @qed_vf_set_sb_info._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qed_vf_set_sb_info._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1477, i32 3}
!54 = !{ptr @qed_vf_set_sb_info._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qed_vf_set_sb_info._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1509, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qed_vf_read_bulletin._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @qed_vf_read_bulletin._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 297, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qed_vf_pf_acquire._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qed_vf_pf_acquire._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 308, i32 4}
!68 = !{ptr @qed_vf_pf_acquire._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qed_vf_pf_acquire._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 333, i32 4}
!72 = !{ptr @qed_vf_pf_acquire._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qed_vf_pf_acquire._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 342, i32 5}
!76 = !{ptr @qed_vf_pf_acquire._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @qed_vf_pf_acquire._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 356, i32 6}
!80 = !{ptr @qed_vf_pf_acquire._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qed_vf_pf_acquire._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 361, i32 6}
!84 = !{ptr @qed_vf_pf_acquire._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @qed_vf_pf_acquire._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 372, i32 4}
!88 = !{ptr @qed_vf_pf_acquire._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @qed_vf_pf_acquire._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 376, i32 4}
!92 = !{ptr @qed_vf_pf_acquire._entry.49, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @qed_vf_pf_acquire._entry_ptr.51, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 407, i32 4}
!96 = !{ptr @qed_vf_pf_acquire._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qed_vf_pf_acquire._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 414, i32 3}
!100 = !{ptr @qed_vf_pf_acquire._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qed_vf_pf_acquire._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 219, i32 2}
!104 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qed_vf_pf_acquire_reduce_resc._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @qed_vf_pf_acquire_reduce_resc._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 25, i32 2}
!109 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @qed_vf_pf_prep._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @qed_vf_pf_prep._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 82, i32 2}
!114 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @qed_send_msg2pf._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @qed_send_msg2pf._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 124, i32 3}
!119 = !{ptr @qed_send_msg2pf._entry.64, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @qed_send_msg2pf._entry_ptr.66, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 131, i32 4}
!123 = !{ptr @qed_send_msg2pf._entry.67, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @qed_send_msg2pf._entry_ptr.69, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @qed_send_msg2pf._entry.70, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 135, i32 4}
!127 = !{ptr @qed_send_msg2pf._entry_ptr.71, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 663, i32 2}
!130 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @qed_vf_update_tunn_param._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @qed_vf_update_tunn_param._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 51, i32 2}
!135 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @qed_vf_pf_req_end._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @qed_vf_pf_req_end._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1063, i32 4}
!140 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @qed_vf_handle_vp_update_tlvs_resp._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @qed_vf_handle_vp_update_tlvs_resp._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qed/qed_vf.c", i32 1040, i32 3}
!147 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @qed_vf_handle_vp_update_is_needed._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @qed_vf_handle_vp_update_is_needed._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 6096520}
!161 = !{i64 2157670119}
!162 = !{i64 2157671117}
!163 = !{i8 0, i8 2}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i64 2157625490}
!166 = !{i64 6096102}
!167 = !{i64 2157626758}
!168 = !{i64 2157627403}
!169 = !{i64 2157627948}
!170 = !{i64 2157628928}
!171 = !{i64 2157629028}
!172 = !{i64 2156779940}
