; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_sp_commands.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_sp_commands.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_spq_entry = type { %struct.list_head, i8, %struct.slow_path_element, %union.ramrod_data, i32, ptr, i32, %struct.qed_spq_comp_cb, %struct.qed_spq_comp_done, ptr }
%struct.list_head = type { ptr, ptr }
%struct.slow_path_element = type { %struct.ramrod_header, %struct.regpair }
%struct.ramrod_header = type { i32, i8, i8, i16 }
%struct.regpair = type { i32, i32 }
%union.ramrod_data = type { %struct.iwarp_init_func_ramrod_data }
%struct.iwarp_init_func_ramrod_data = type { %struct.rdma_init_func_ramrod_data, %struct.tcp_init_params, %struct.iwarp_init_func_params }
%struct.rdma_init_func_ramrod_data = type { %struct.rdma_init_func_hdr, %struct.rdma_cnq_params, [128 x %struct.rdma_cnq_params] }
%struct.rdma_init_func_hdr = type { i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8 }
%struct.rdma_cnq_params = type { i16, i8, i8, i32, %struct.regpair, i16, [6 x i8] }
%struct.tcp_init_params = type { i32, i16, i8, [9 x i8] }
%struct.iwarp_init_func_params = type { i8, [7 x i8] }
%struct.qed_spq_comp_cb = type { ptr, ptr }
%struct.qed_spq_comp_done = type { i32, i8 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.qed_spq = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qed_chain, i32, ptr, [8 x i32], i8, i32, i32, i32, i32, i32, i32, i32, %struct.core_db_data, [12 x ptr] }
%struct.qed_chain = type { ptr, ptr, %struct.anon.2, %union.anon.4, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.5, ptr, i32, i32, i32, i8 }
%struct.anon.2 = type { ptr, %union.anon.3 }
%union.anon.3 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.4 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.5 = type { ptr, i32, i32 }
%struct.core_db_data = type { i8, i8, i16 }
%struct.qed_sp_init_data = type { i32, i16, i32, ptr }
%struct.qed_eq = type { %struct.qed_chain, i8, ptr }
%struct.pf_start_ramrod_data = type { %struct.regpair, %struct.regpair, %struct.pf_start_tunnel_config, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, %struct.hsi_fp_ver_struct, %struct.outer_tag_config_struct, i8, i8, [6 x i8] }
%struct.pf_start_tunnel_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, [3 x i16] }
%struct.hsi_fp_ver_struct = type { [2 x i8], [2 x i8] }
%struct.outer_tag_config_struct = type { i8, i8, [2 x i8], %struct.vlan_header, [8 x i8] }
%struct.vlan_header = type { i16, i16 }
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
%struct.qed_hw_sriov_info = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i32 }
%struct.qed_dcbx_info = type { [3 x %struct.lldp_status_params_s], [3 x %struct.lldp_config_params_s], %struct.dcbx_local_params, %struct.qed_dcbx_results, %struct.dcbx_mib, %struct.dcbx_mib, %struct.qed_dcbx_set, %struct.qed_dcbx_get, i8 }
%struct.lldp_status_params_s = type { i32, i32, [4 x i32], [4 x i32], i32 }
%struct.lldp_config_params_s = type { i32, [4 x i32], [4 x i32] }
%struct.dcbx_local_params = type { i32, i32, %struct.dcbx_features }
%struct.dcbx_features = type { %struct.dcbx_ets_feature, i32, %struct.dcbx_app_priority_feature }
%struct.dcbx_ets_feature = type { i32, [1 x i32], [2 x i32], [2 x i32] }
%struct.dcbx_app_priority_feature = type { i32, [32 x %struct.dcbx_app_priority_entry] }
%struct.dcbx_app_priority_entry = type { i32 }
%struct.qed_dcbx_results = type { i8, i8, [5 x %struct.qed_dcbx_app_data] }
%struct.qed_dcbx_app_data = type { i8, i8, i8, i8, i8 }
%struct.dcbx_mib = type { i32, i32, %struct.dcbx_features, i32 }
%struct.qed_dcbx_set = type { i32, i8, %struct.qed_dcbx_admin_params, i32 }
%struct.qed_dcbx_admin_params = type { %struct.qed_dcbx_params, i8 }
%struct.qed_dcbx_params = type { [32 x %struct.qed_app_entry], i16, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], %struct.qed_dbcx_pfc_params, i8 }
%struct.qed_app_entry = type { i8, i32, i8, i8, i16, i32 }
%struct.qed_dbcx_pfc_params = type { i8, i8, [8 x i8], i8 }
%struct.qed_dcbx_get = type { %struct.qed_dcbx_operational_params, %struct.qed_dcbx_lldp_remote, %struct.qed_dcbx_lldp_local, %struct.qed_dcbx_remote_params, %struct.qed_dcbx_admin_params }
%struct.qed_dcbx_operational_params = type { %struct.qed_dcbx_app_prio, %struct.qed_dcbx_params, i8, i8, i8, i8, i8, i32 }
%struct.qed_dcbx_app_prio = type { i8, i8, i8, i8, i8 }
%struct.qed_dcbx_lldp_remote = type { [4 x i32], [4 x i32], i8, i8, i32, i32 }
%struct.qed_dcbx_lldp_local = type { [4 x i32], [4 x i32] }
%struct.qed_dcbx_remote_params = type { %struct.qed_dcbx_params, i8 }
%struct.pf_update_ramrod_data = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, i16, i8, i8, %struct.pf_update_tunnel_config }
%struct.protocol_dcb_data = type { i8, i8, i8, i8, i8, i8 }
%struct.pf_update_tunnel_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, [3 x i16] }

@qed_sp_init_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Unknown SPQE completion mode %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_sp_init_request\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/qlogic/qed/qed_sp_commands.c\00", [46 x i8] zeroinitializer }, align 32
@qed_sp_init_request._entry_ptr = internal global ptr @qed_sp_init_request._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_sp_init_request._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\015[%s:%d(%s)]Initialized: CID %08x %s:[%02x] %s:%02x data_addr %llx comp_mode [%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@qed_sp_init_request._entry_ptr.6 = internal global ptr @qed_sp_init_request._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODE_EBLOCK\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODE_BLOCK\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MODE_CB\00", [24 x i8] zeroinitializer }, align 32
@qed_sp_pf_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Unknown personality %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_sp_pf_start\00", [16 x i8] zeroinitializer }, align 32
@qed_sp_pf_start._entry_ptr = internal global ptr @qed_sp_pf_start._entry, section ".printk_index", align 4
@qed_sp_pf_start._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015[%s:%d(%s)]Setting event_ring_sb [id %04x index %02x], outer_tag.tci [%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_sp_pf_start._entry_ptr.14 = internal global ptr @qed_sp_pf_start._entry.12, section ".printk_index", align 4
@qed_sp_pf_update_ufp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Invalid priority type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_sp_pf_update_ufp\00", [43 x i8] zeroinitializer }, align 32
@qed_sp_pf_update_ufp._entry_ptr = internal global ptr @qed_sp_pf_update_ufp._entry, section ".printk_index", align 4
@switch.table.qed_sp_pf_start = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\06\02\01\01\03\03", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 83, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 88, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 402, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 416, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [53 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_sp_commands.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 460, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [29 x i8] c"switch.table.qed_sp_pf_start\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @qed_sp_init_request._entry, ptr @qed_sp_init_request._entry.4, ptr @qed_sp_init_request._entry_ptr, ptr @qed_sp_init_request._entry_ptr.6, ptr @qed_sp_pf_start._entry, ptr @qed_sp_pf_start._entry.12, ptr @qed_sp_pf_start._entry_ptr, ptr @qed_sp_pf_start._entry_ptr.14, ptr @qed_sp_pf_update_ufp._entry, ptr @qed_sp_pf_update_ufp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @switch.table.qed_sp_pf_start], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_init_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_init_request._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_pf_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_pf_start._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_pf_update_ufp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_sp_pf_start to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_sp_destroy_request(ptr noundef %p_hwfn, ptr noundef %p_ent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 5
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %p_spq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %2 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_spq, align 8
  %unlimited_pending = getelementptr inbounds %struct.qed_spq, ptr %3, i32 0, i32 1
  %cmp = icmp eq ptr %1, %unlimited_pending
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %p_ent) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qed_spq_return_entry(ptr noundef %p_hwfn, ptr noundef %p_ent) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_spq_return_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef %pp_ent, i8 noundef zeroext %cmd, i8 noundef zeroext %protocol, ptr nocapture noundef readonly %p_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %opaque_fid = getelementptr inbounds %struct.qed_sp_init_data, ptr %p_data, i32 0, i32 1
  %0 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opaque_fid, align 4
  %conv = zext i16 %1 to i32
  %shl = shl nuw i32 %conv, 16
  %2 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_data, align 4
  %or = or i32 %shl, %3
  %tobool.not = icmp eq ptr %pp_ent, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @qed_spq_get_entry(ptr noundef %p_hwfn, ptr noundef nonnull %pp_ent) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pp_ent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp_ent, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %elem = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %elem, align 4
  %cmd_id = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cmd, ptr %cmd_id, align 4
  %protocol_id = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %protocol_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %protocol, ptr %protocol_id, align 1
  %priority = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %priority, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %p_data, i32 0, i32 2
  %11 = ptrtoint ptr %comp_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %comp_mode, align 4
  %comp_mode9 = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %comp_mode9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %comp_mode9, align 4
  %comp_done = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %comp_done to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %comp_done, align 4
  %15 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.body [
    i32 2, label %sw.bb
    i32 0, label %sw.bb12
    i32 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %cookie = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %comp_done, ptr %cookie, align 4
  br label %do.body42

sw.bb12:                                          ; preds = %if.end3
  %p_comp_data = getelementptr inbounds %struct.qed_sp_init_data, ptr %p_data, i32 0, i32 3
  %17 = ptrtoint ptr %p_comp_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_comp_data, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %sw.bb12.err_crit_edge, label %if.end15

sw.bb12.err_crit_edge:                            ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end15:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %cookie17 = getelementptr inbounds %struct.qed_spq_comp_cb, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cookie17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cookie17, align 4
  %cookie19 = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %cookie19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cookie19, align 4
  br label %do.body42

sw.bb20:                                          ; preds = %if.end3
  %p_comp_data21 = getelementptr inbounds %struct.qed_sp_init_data, ptr %p_data, i32 0, i32 3
  %22 = ptrtoint ptr %p_comp_data21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_comp_data21, align 4
  %tobool22.not = icmp eq ptr %23, null
  %comp_cb24 = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 7
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %comp_cb24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %comp_cb24, align 4
  br label %do.body42

if.else:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %23, align 4
  %27 = ptrtoint ptr %comp_cb24 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %comp_cb24, align 4
  br label %do.body42

do.body:                                          ; preds = %if.end3
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %28 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp = icmp ult i8 %29, 3
  br i1 %cmp, label %do.end, label %do.body.err_crit_edge, !prof !37

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool34.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool34.not, ptr @.str.3, ptr %name
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 84, ptr noundef nonnull %spec.select, i32 noundef %12) #9
  br label %err

do.body42:                                        ; preds = %if.else, %if.then23, %if.end15, %sw.bb
  %dp_level43 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %30 = ptrtoint ptr %dp_level43 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dp_level43, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp45 = icmp eq i8 %31, 0
  br i1 %cmp45, label %land.rhs, label %do.body42.do.end90_crit_edge

do.body42.do.end90_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

land.rhs:                                         ; preds = %do.body42
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %32 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dp_module, align 4
  %and = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %land.rhs.do.end90_crit_edge, label %do.end57, !prof !38

land.rhs.do.end90_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

do.end57:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %name59 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool61.not = icmp eq ptr %name59, null
  %spec.select136 = select i1 %tobool61.not, ptr @.str.3, ptr %name59
  %conv68 = zext i8 %protocol to i32
  %conv69 = zext i8 %cmd to i32
  %call70 = tail call ptr @qed_get_ramrod_cmd_id_str(i32 noundef %conv68, i32 noundef %conv69) #6
  %call73 = tail call ptr @qed_get_protocol_type_str(i32 noundef %conv68) #6
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %ramrod to i32
  %conv75 = zext i32 %34 to i64
  %35 = ptrtoint ptr %comp_mode9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %comp_mode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp77 = icmp eq i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp82 = icmp eq i32 %36, 0
  %cond84 = select i1 %cmp82, ptr @.str.8, ptr @.str.9
  %cond86 = select i1 %cmp77, ptr @.str.7, ptr %cond84
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 96, ptr noundef nonnull %spec.select136, i32 noundef %or, ptr noundef %call70, i32 noundef %conv69, ptr noundef %call73, i32 noundef %conv68, i64 noundef %conv75, ptr noundef nonnull %cond86) #9
  br label %do.end90

do.end90:                                         ; preds = %do.end57, %land.rhs.do.end90_crit_edge, %do.body42.do.end90_crit_edge
  %ramrod91 = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 3
  %37 = call ptr @memset(ptr %ramrod91, i32 0, i32 3136)
  br label %cleanup

err:                                              ; preds = %do.end, %do.body.err_crit_edge, %sw.bb12.err_crit_edge
  %queue.i = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 5
  %38 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue.i, align 4
  %p_spq.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %40 = ptrtoint ptr %p_spq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p_spq.i, align 8
  %unlimited_pending.i = getelementptr inbounds %struct.qed_spq, ptr %41, i32 0, i32 1
  %cmp.i = icmp eq ptr %39, %unlimited_pending.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %5) #6
  br label %cleanup

if.else.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qed_spq_return_entry(ptr noundef %p_hwfn, ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %do.end90, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end90 ], [ -12, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_get_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_get_ramrod_cmd_id_str(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_get_protocol_type_str(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_pf_start(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef readonly %p_tunn, i1 noundef zeroext %allow_npar_tx_switch) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %allow_npar_tx_switch to i8
  %call = tail call zeroext i16 @qed_int_get_sp_sb_id(ptr noundef %p_hwfn) #6
  %p_eq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 20
  %0 = ptrtoint ptr %p_eq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_eq, align 4
  %eq_sb_index = getelementptr inbounds %struct.qed_eq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %eq_sb_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eq_sb_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #6
  %4 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %u.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %u.i, align 4
  tail call void @qed_eq_prod_update(ptr noundef %p_hwfn, i16 noundef zeroext %6) #6
  %7 = getelementptr inbounds i8, ptr %init_data, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 12)
  %call3 = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #6
  %9 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %init_data, align 4
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %10 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opaque_fid, align 4
  %opaque_fid4 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %12 = ptrtoint ptr %opaque_fid4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %opaque_fid4, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %13 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %comp_mode, align 4
  %call5 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 1, i8 noundef zeroext 8, ptr noundef nonnull %init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3
  %16 = call i16 @llvm.bswap.i16(i16 %call)
  %event_ring_sb_id = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %17 = ptrtoint ptr %event_ring_sb_id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %event_ring_sb_id, align 4
  %event_ring_sb_index = getelementptr inbounds %struct.pf_start_ramrod_data, ptr %ramrod, i32 0, i32 7
  %18 = ptrtoint ptr %event_ring_sb_index to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %3, ptr %event_ring_sb_index, align 1
  %19 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %23 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %abs_pf_id, align 2
  %25 = and i8 %24, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i8 [ %25, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %path_id = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %path_id to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cond, ptr %path_id, align 2
  %dont_log_ramrods = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 3
  %27 = ptrtoint ptr %dont_log_ramrods to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dont_log_ramrods, align 4
  %log_type_mask = getelementptr inbounds %struct.pf_start_ramrod_data, ptr %ramrod, i32 0, i32 12
  %28 = ptrtoint ptr %log_type_mask to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 3840, ptr %log_type_mask, align 2
  %29 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_hwfn, align 8
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %mf_bits, align 4
  %and1.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  %spec.select280 = select i1 %tobool9.not, i8 2, i8 1
  %33 = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select280, ptr %33, align 4
  %outer_tag_config13 = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 5
  %ovlan = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 11
  %35 = ptrtoint ptr %ovlan to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ovlan, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %outer_tag = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6, i32 2
  %tci = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6, i32 4
  %38 = ptrtoint ptr %tci to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %tci, align 2
  %39 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p_hwfn, align 8
  %mf_bits16 = getelementptr inbounds %struct.qed_dev, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %mf_bits16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %mf_bits16, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not = icmp eq i32 %43, 0
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %outer_tag to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 129, ptr %outer_tag, align 2
  br label %if.end30

if.else21:                                        ; preds = %cond.end
  %45 = ptrtoint ptr %mf_bits16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %mf_bits16, align 4
  %47 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool25.not = icmp eq i32 %47, 0
  br i1 %tobool25.not, label %if.else21.if.end30_crit_edge, label %if.then26

if.else21.if.end30_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %outer_tag to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -22392, ptr %outer_tag, align 2
  %49 = ptrtoint ptr %outer_tag_config13 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %outer_tag_config13, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else21.if.end30_crit_edge, %if.then19
  %pri_map_valid = getelementptr inbounds %struct.outer_tag_config_struct, ptr %outer_tag_config13, i32 0, i32 1
  %50 = ptrtoint ptr %pri_map_valid to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %pri_map_valid, align 1
  %inner_to_outer_pri_map = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %inner_to_outer_pri_map to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %inner_to_outer_pri_map, align 1
  %arrayidx.1 = getelementptr [8 x i8], ptr %inner_to_outer_pri_map, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 2
  %54 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 3
  %55 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 4, ptr %arrayidx.4, align 1
  %arrayidx.5 = getelementptr [8 x i8], ptr %inner_to_outer_pri_map, i32 0, i32 5
  %56 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %arrayidx.5, align 1
  %arrayidx.6 = getelementptr [8 x i8], ptr %inner_to_outer_pri_map, i32 0, i32 6
  %57 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %arrayidx.6, align 1
  %arrayidx.7 = getelementptr [8 x i8], ptr %inner_to_outer_pri_map, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 7, ptr %arrayidx.7, align 1
  %59 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %p_hwfn, align 8
  %mf_bits35 = getelementptr inbounds %struct.qed_dev, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %mf_bits35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %mf_bits35, align 4
  %63 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool37.not = icmp eq i32 %63, 0
  br i1 %tobool37.not, label %if.end30.do.body_crit_edge, label %if.then38

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %ufp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47
  %64 = ptrtoint ptr %ufp_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ufp_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp39 = icmp eq i32 %65, 0
  %. = zext i1 %cmp39 to i8
  %66 = ptrtoint ptr %outer_tag_config13 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %., ptr %outer_tag_config13, align 2
  %tc = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 2
  %67 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tc, align 8
  %conv48 = zext i8 %68 to i16
  %69 = shl nuw nsw i16 %conv48, 5
  %70 = and i16 %69, 224
  %71 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %tci, align 2
  %or = or i16 %70, %72
  store i16 %or, ptr %tci, align 2
  br label %do.body

do.body:                                          ; preds = %if.then38, %if.end30.do.body_crit_edge
  %hi = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %73 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %hi, align 4
  %74 = ptrtoint ptr %p_eq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p_eq, align 4
  %table_phys.i275 = getelementptr inbounds %struct.qed_chain, ptr %75, i32 0, i32 15, i32 1
  %76 = ptrtoint ptr %table_phys.i275 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %table_phys.i275, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %ramrod, align 4
  %80 = ptrtoint ptr %p_eq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %p_eq, align 4
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %page_cnt.i, align 4
  %conv68 = trunc i32 %83 to i8
  %event_ring_num_pages = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2
  %84 = ptrtoint ptr %event_ring_num_pages to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv68, ptr %event_ring_num_pages, align 4
  %p_consq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 21
  %consolid_q_pbl_base_addr = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %hi74 = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %85 = ptrtoint ptr %hi74 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %hi74, align 4
  %86 = ptrtoint ptr %p_consq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p_consq, align 8
  %table_phys.i277 = getelementptr inbounds %struct.qed_chain, ptr %87, i32 0, i32 15, i32 1
  %88 = ptrtoint ptr %table_phys.i277 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %table_phys.i277, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %consolid_q_pbl_base_addr to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %consolid_q_pbl_base_addr, align 4
  %92 = ptrtoint ptr %p_consq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %p_consq, align 8
  %page_cnt.i278 = getelementptr inbounds %struct.qed_chain, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %page_cnt.i278 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %page_cnt.i278, align 4
  %conv86 = trunc i32 %95 to i8
  %consolid_q_num_pages = getelementptr inbounds %struct.pf_start_ramrod_data, ptr %ramrod, i32 0, i32 20
  %96 = ptrtoint ptr %consolid_q_num_pages to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv86, ptr %consolid_q_num_pages, align 1
  %tunnel_config = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %p_tunn, null
  br i1 %tobool.not.i, label %do.body.qed_tunn_set_pf_start_params.exit_crit_edge, label %if.end.i

do.body.qed_tunn_set_pf_start_params.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_tunn_set_pf_start_params.exit

if.end.i:                                         ; preds = %do.body
  %97 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %p_hwfn, align 8
  %tunnel.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38
  %b_mode_enabled.i.i = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_tunn, i32 0, i32 1
  %99 = ptrtoint ptr %b_mode_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %b_mode_enabled.i.i, align 1, !range !39
  %b_mode_enabled5.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 0, i32 1
  %101 = ptrtoint ptr %b_mode_enabled5.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %b_mode_enabled5.i.i, align 1
  %b_mode_enabled13.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 3, i32 1
  %102 = ptrtoint ptr %b_mode_enabled13.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %b_mode_enabled13.i.i, align 1, !range !39
  %b_mode_enabled16.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 3, i32 1
  %104 = ptrtoint ptr %b_mode_enabled16.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %b_mode_enabled16.i.i, align 1
  %b_mode_enabled25.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %b_mode_enabled25.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %b_mode_enabled25.i.i, align 1, !range !39
  %b_mode_enabled28.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 4, i32 1
  %107 = ptrtoint ptr %b_mode_enabled28.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %b_mode_enabled28.i.i, align 1
  %b_mode_enabled37.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %b_mode_enabled37.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %b_mode_enabled37.i.i, align 1, !range !39
  %b_mode_enabled40.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 1, i32 1
  %110 = ptrtoint ptr %b_mode_enabled40.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %b_mode_enabled40.i.i, align 1
  %b_mode_enabled49.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %b_mode_enabled49.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %b_mode_enabled49.i.i, align 1, !range !39
  %b_mode_enabled52.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 2, i32 1
  %113 = ptrtoint ptr %b_mode_enabled52.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %b_mode_enabled52.i.i, align 1
  call fastcc void @qed_set_tunn_cls_info(ptr noundef %tunnel.i, ptr noundef nonnull %p_tunn) #6
  %geneve_port.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 6
  %114 = ptrtoint ptr %geneve_port.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %geneve_port.i.i, align 4, !range !39
  %geneve_port1.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 6
  %116 = ptrtoint ptr %geneve_port1.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %geneve_port1.i.i, align 4
  %vxlan_port.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 5
  %117 = ptrtoint ptr %vxlan_port.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %vxlan_port.i.i, align 4, !range !39
  %vxlan_port5.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 5
  %119 = ptrtoint ptr %vxlan_port5.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %vxlan_port5.i.i, align 4
  %120 = load i8, ptr %geneve_port.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool10.not.i.i = icmp eq i8 %120, 0
  br i1 %tobool10.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %port.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 6, i32 1
  %121 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %port.i.i, align 2
  %port13.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 6, i32 1
  %123 = ptrtoint ptr %port13.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %port13.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %124 = ptrtoint ptr %vxlan_port.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %vxlan_port.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool16.not.i.i = icmp eq i8 %125, 0
  br i1 %tobool16.not.i.i, label %if.end.i.i.qed_set_tunn_ports.exit.i_crit_edge, label %if.then17.i.i

if.end.i.i.qed_set_tunn_ports.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_set_tunn_ports.exit.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %port19.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 5, i32 1
  %126 = ptrtoint ptr %port19.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %port19.i.i, align 2
  %port21.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 5, i32 1
  %128 = ptrtoint ptr %port21.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %port21.i.i, align 2
  br label %qed_set_tunn_ports.exit.i

qed_set_tunn_ports.exit.i:                        ; preds = %if.then17.i.i, %if.end.i.i.qed_set_tunn_ports.exit.i_crit_edge
  %tunnel_clss_vxlan.i = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %tun_cls.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 0, i32 2
  %129 = ptrtoint ptr %tun_cls.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tun_cls.i.i.i, align 4
  %conv.i.i.i = trunc i32 %130 to i8
  %131 = ptrtoint ptr %tunnel_clss_vxlan.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv.i.i.i, ptr %tunnel_clss_vxlan.i, align 1
  %132 = ptrtoint ptr %vxlan_port5.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %vxlan_port5.i.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i21.i = icmp eq i8 %133, 0
  br i1 %tobool.not.i21.i, label %qed_set_tunn_ports.exit.i.qed_set_ramrod_tunnel_param.exit.i_crit_edge, label %if.then.i23.i

qed_set_tunn_ports.exit.i.qed_set_ramrod_tunnel_param.exit.i_crit_edge: ; preds = %qed_set_tunn_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_set_ramrod_tunnel_param.exit.i

if.then.i23.i:                                    ; preds = %qed_set_tunn_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %vxlan_udp_port.i = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %134 = ptrtoint ptr %tunnel_config to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %tunnel_config, align 1
  %port.i22.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 5, i32 1
  %135 = ptrtoint ptr %port.i22.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %port.i22.i, align 2
  %137 = call i16 @llvm.bswap.i16(i16 %136) #6
  %138 = ptrtoint ptr %vxlan_udp_port.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %vxlan_udp_port.i, align 2
  br label %qed_set_ramrod_tunnel_param.exit.i

qed_set_ramrod_tunnel_param.exit.i:               ; preds = %if.then.i23.i, %qed_set_tunn_ports.exit.i.qed_set_ramrod_tunnel_param.exit.i_crit_edge
  %tunnel_clss_l2geneve.i = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %tun_cls.i.i25.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 1, i32 2
  %139 = ptrtoint ptr %tun_cls.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tun_cls.i.i25.i, align 4
  %conv.i.i26.i = trunc i32 %140 to i8
  %141 = ptrtoint ptr %tunnel_clss_l2geneve.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.i.i26.i, ptr %tunnel_clss_l2geneve.i, align 1
  %142 = ptrtoint ptr %geneve_port1.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %geneve_port1.i.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i27.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i27.i, label %qed_set_ramrod_tunnel_param.exit.i.qed_set_ramrod_tunnel_param.exit31.i_crit_edge, label %if.then.i29.i

qed_set_ramrod_tunnel_param.exit.i.qed_set_ramrod_tunnel_param.exit31.i_crit_edge: ; preds = %qed_set_ramrod_tunnel_param.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_set_ramrod_tunnel_param.exit31.i

if.then.i29.i:                                    ; preds = %qed_set_ramrod_tunnel_param.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %geneve_udp_port.i = getelementptr inbounds %struct.pf_start_tunnel_config, ptr %tunnel_config, i32 0, i32 9
  %set_geneve_udp_port_flg.i = getelementptr inbounds %struct.pf_start_tunnel_config, ptr %tunnel_config, i32 0, i32 1
  %144 = ptrtoint ptr %set_geneve_udp_port_flg.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %set_geneve_udp_port_flg.i, align 1
  %port.i28.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 6, i32 1
  %145 = ptrtoint ptr %port.i28.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %port.i28.i, align 2
  %147 = call i16 @llvm.bswap.i16(i16 %146) #6
  %148 = ptrtoint ptr %geneve_udp_port.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %geneve_udp_port.i, align 2
  br label %qed_set_ramrod_tunnel_param.exit31.i

qed_set_ramrod_tunnel_param.exit31.i:             ; preds = %if.then.i29.i, %qed_set_ramrod_tunnel_param.exit.i.qed_set_ramrod_tunnel_param.exit31.i_crit_edge
  %tunnel_clss_ipgeneve.i = getelementptr inbounds %struct.pf_start_tunnel_config, ptr %tunnel_config, i32 0, i32 5
  %tun_cls.i.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 2, i32 2
  %149 = ptrtoint ptr %tun_cls.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tun_cls.i.i, align 4
  %conv.i.i = trunc i32 %150 to i8
  %151 = ptrtoint ptr %tunnel_clss_ipgeneve.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv.i.i, ptr %tunnel_clss_ipgeneve.i, align 1
  %tunnel_clss_l2gre.i = getelementptr inbounds %struct.pf_start_tunnel_config, ptr %tunnel_config, i32 0, i32 6
  %tun_cls.i32.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 3, i32 2
  %152 = ptrtoint ptr %tun_cls.i32.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tun_cls.i32.i, align 4
  %conv.i33.i = trunc i32 %153 to i8
  %154 = ptrtoint ptr %tunnel_clss_l2gre.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv.i33.i, ptr %tunnel_clss_l2gre.i, align 1
  %tunnel_clss_ipgre.i = getelementptr inbounds %struct.pf_start_tunnel_config, ptr %tunnel_config, i32 0, i32 7
  %tun_cls.i34.i = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 38, i32 4, i32 2
  %155 = ptrtoint ptr %tun_cls.i34.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tun_cls.i34.i, align 4
  %conv.i35.i = trunc i32 %156 to i8
  %157 = ptrtoint ptr %tunnel_clss_ipgre.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv.i35.i, ptr %tunnel_clss_ipgre.i, align 1
  br label %qed_tunn_set_pf_start_params.exit

qed_tunn_set_pf_start_params.exit:                ; preds = %qed_set_ramrod_tunnel_param.exit31.i, %do.body.qed_tunn_set_pf_start_params.exit_crit_edge
  %158 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %p_hwfn, align 8
  %mf_bits88 = getelementptr inbounds %struct.qed_dev, ptr %159, i32 0, i32 15
  %160 = ptrtoint ptr %mf_bits88 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %mf_bits88, align 4
  %162 = and i32 %161, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool90.not = icmp eq i32 %162, 0
  br i1 %tobool90.not, label %qed_tunn_set_pf_start_params.exit.if.end94_crit_edge, label %if.then91

qed_tunn_set_pf_start_params.exit.if.end94_crit_edge: ; preds = %qed_tunn_set_pf_start_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then91:                                        ; preds = %qed_tunn_set_pf_start_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  %allow_npar_tx_switching = getelementptr inbounds %struct.pf_start_ramrod_data, ptr %ramrod, i32 0, i32 15
  %163 = ptrtoint ptr %allow_npar_tx_switching to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %frombool, ptr %allow_npar_tx_switching, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %qed_tunn_set_pf_start_params.exit.if.end94_crit_edge
  %164 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %hw_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %165)
  %166 = icmp ult i32 %165, 6
  br i1 %166, label %switch.lookup, label %do.body103

do.body103:                                       ; preds = %if.end94
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %167 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %168)
  %cmp105 = icmp ult i8 %168, 3
  br i1 %cmp105, label %do.end112, label %do.body103.sw.epilog_crit_edge, !prof !37

do.body103.sw.epilog_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end112:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool113.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool113.not, ptr @.str.3, ptr %name
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 403, ptr noundef nonnull %spec.select, i32 noundef %165) #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.qed_sp_pf_start, i32 0, i32 %165
  %169 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %169)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end112, %do.body103.sw.epilog_crit_edge
  %.sink = phi i8 [ 6, %do.end112 ], [ 6, %do.body103.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %personality126 = getelementptr inbounds %struct.pf_start_ramrod_data, ptr %ramrod, i32 0, i32 11
  %170 = ptrtoint ptr %personality126 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %.sink, ptr %personality126, align 1
  %171 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %p_hwfn, align 8
  %p_iov_info = getelementptr inbounds %struct.qed_dev, ptr %172, i32 0, i32 37
  %173 = ptrtoint ptr %p_iov_info to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %p_iov_info, align 4
  %tobool128.not = icmp eq ptr %174, null
  br i1 %tobool128.not, label %sw.epilog.if.end134_crit_edge, label %if.then129

sw.epilog.if.end134_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then129:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %first_vf_in_pf = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %174, i32 0, i32 13
  %175 = ptrtoint ptr %first_vf_in_pf to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %first_vf_in_pf, align 4
  %conv132 = trunc i32 %176 to i8
  %base_vf_id = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 4
  %177 = ptrtoint ptr %base_vf_id to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv132, ptr %base_vf_id, align 2
  %total_vfs = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %174, i32 0, i32 4
  %178 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %total_vfs, align 2
  %conv133 = trunc i16 %179 to i8
  %num_vfs = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 5
  %180 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv133, ptr %num_vfs, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %sw.epilog.if.end134_crit_edge
  %hsi_fp_ver = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4, i32 1
  %major_ver_arr = getelementptr inbounds %struct.hsi_fp_ver_struct, ptr %hsi_fp_ver, i32 0, i32 1
  %181 = ptrtoint ptr %major_ver_arr to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 3, ptr %major_ver_arr, align 2
  %182 = ptrtoint ptr %hsi_fp_ver to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 11, ptr %hsi_fp_ver, align 4
  %dp_level139 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %183 = ptrtoint ptr %dp_level139 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %dp_level139, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp141 = icmp eq i8 %184, 0
  br i1 %cmp141, label %land.rhs, label %if.end134.do.end173_crit_edge

if.end134.do.end173_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end173

land.rhs:                                         ; preds = %if.end134
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %185 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %dp_module, align 4
  %and143 = and i32 %186, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %land.rhs.do.end173_crit_edge, label %do.end154, !prof !38

land.rhs.do.end173_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end173

do.end154:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %name156 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool158.not = icmp eq ptr %name156, null
  %spec.select267 = select i1 %tobool158.not, ptr @.str.3, ptr %name156
  %conv165 = zext i16 %call to i32
  %conv166 = zext i8 %3 to i32
  %187 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %tci, align 2
  %conv169 = zext i16 %188 to i32
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 418, ptr noundef nonnull %spec.select267, i32 noundef %conv165, i32 noundef %conv166, i32 noundef %conv169) #9
  br label %do.end173

do.end173:                                        ; preds = %do.end154, %land.rhs.do.end173_crit_edge, %if.end134.do.end173_crit_edge
  %189 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %p_ent, align 4
  %call174 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %190, ptr noundef null) #6
  br i1 %tobool.not.i, label %do.end173.cleanup_crit_edge, label %if.then176

do.end173.cleanup_crit_edge:                      ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then176:                                       ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %p_hwfn, align 8
  %tunnel = getelementptr inbounds %struct.qed_dev, ptr %192, i32 0, i32 38
  call fastcc void @qed_set_hw_tunn_mode_port(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %tunnel)
  br label %cleanup

cleanup:                                          ; preds = %if.then176, %do.end173.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %entry.cleanup_crit_edge ], [ %call174, %if.then176 ], [ %call174, %do.end173.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_int_get_sp_sb_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_eq_prod_update(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_get_cid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_post(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_set_hw_tunn_mode_port(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_tunn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vxlan_port = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 5
  %0 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vxlan_port, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %port = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port, align 2
  tail call void @qed_set_vxlan_dest_port(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %geneve_port = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 6
  %4 = ptrtoint ptr %geneve_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %geneve_port, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %port6 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %port6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port6, align 2
  tail call void @qed_set_geneve_dest_port(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %7) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %b_mode_enabled.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %b_mode_enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %b_mode_enabled.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i = icmp ne i8 %9, 0
  %b_mode_enabled1.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %b_mode_enabled1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %b_mode_enabled1.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.i = icmp ne i8 %11, 0
  tail call void @qed_set_gre_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool2.i) #6
  %b_mode_enabled3.i = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_tunn, i32 0, i32 1
  %12 = ptrtoint ptr %b_mode_enabled3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b_mode_enabled3.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.i = icmp ne i8 %13, 0
  tail call void @qed_set_vxlan_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %tobool4.i) #6
  %b_mode_enabled5.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %b_mode_enabled5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %b_mode_enabled5.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.i = icmp ne i8 %15, 0
  %b_mode_enabled7.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %b_mode_enabled7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %b_mode_enabled7.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.i = icmp ne i8 %17, 0
  tail call void @qed_set_geneve_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %tobool6.i, i1 noundef zeroext %tobool8.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_pf_update(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #6
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %1 = getelementptr inbounds i8, ptr %init_data, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %call = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #6
  %3 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %4 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opaque_fid, align 4
  %opaque_fid1 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %6 = ptrtoint ptr %opaque_fid1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %opaque_fid1, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %7 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %comp_mode, align 4
  %call2 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 5, i8 noundef zeroext 8, ptr noundef nonnull %init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %p_dcbx_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %8 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_dcbx_info, align 4
  %results = getelementptr inbounds %struct.qed_dcbx_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3
  call void @qed_dcbx_set_pf_update_params(ptr noundef %results, ptr noundef %ramrod) #6
  %12 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_ent, align 4
  %call3 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %13, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_dcbx_set_pf_update_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_pf_update_ufp(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #6
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %ufp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47
  %1 = ptrtoint ptr %ufp_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ufp_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp1 = icmp ult i8 %4, 2
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge, !prof !37

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 461, ptr noundef nonnull %spec.select, i32 noundef 2) #9
  br label %cleanup

if.end13:                                         ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %init_data, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %call14 = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #6
  %7 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call14, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %8 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opaque_fid, align 4
  %opaque_fid15 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %10 = ptrtoint ptr %opaque_fid15 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %opaque_fid15, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %11 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %comp_mode, align 4
  %call16 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 5, i8 noundef zeroext 8, ptr noundef nonnull %init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3
  %update_enable_stag_pri_change = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %ramrod, i32 0, i32 7
  %14 = ptrtoint ptr %update_enable_stag_pri_change to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %update_enable_stag_pri_change, align 1
  %15 = ptrtoint ptr %ufp_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ufp_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22 = icmp eq i32 %16, 0
  %spec.select42 = zext i1 %cmp22 to i8
  %17 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %ramrod, i32 0, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select42, ptr %17, align 2
  %call29 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %13, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end19 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_pf_update_tunn_cfg(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %p_tunn, i32 noundef %comp_mode, ptr noundef %p_comp_data) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #6
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %1 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 39
  %3 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_is_vf, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @qed_vf_pf_tunnel_param_update(ptr noundef %p_hwfn, ptr noundef %p_tunn) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %p_tunn, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = getelementptr inbounds i8, ptr %init_data, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %call4 = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #6
  %7 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %8 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opaque_fid, align 4
  %opaque_fid5 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %10 = ptrtoint ptr %opaque_fid5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %opaque_fid5, align 4
  %comp_mode6 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %11 = ptrtoint ptr %comp_mode6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %comp_mode, ptr %comp_mode6, align 4
  %p_comp_data7 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 3
  %12 = ptrtoint ptr %p_comp_data7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %p_comp_data, ptr %p_comp_data7, align 4
  %call8 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 5, i8 noundef zeroext 8, ptr noundef nonnull %init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %13 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_ent, align 4
  %tunnel_config = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4
  %15 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_hwfn, align 8
  %tunnel.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38
  %17 = ptrtoint ptr %p_tunn to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p_tunn, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.not.i, label %if.end11.if.end.i.i_crit_edge, label %if.then.i.i

if.end11.if.end.i.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %b_mode_enabled.i.i = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_tunn, i32 0, i32 1
  %19 = ptrtoint ptr %b_mode_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b_mode_enabled.i.i, align 1, !range !39
  %b_mode_enabled5.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 0, i32 1
  %21 = ptrtoint ptr %b_mode_enabled5.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %b_mode_enabled5.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end11.if.end.i.i_crit_edge
  %l2_gre.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 3
  %22 = ptrtoint ptr %l2_gre.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %l2_gre.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not.i.not.i = icmp eq i8 %23, 0
  br i1 %tobool8.not.i.not.i, label %if.end.i.i.if.end18.i.i_crit_edge, label %if.then11.i.i

if.end.i.i.if.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %b_mode_enabled13.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %b_mode_enabled13.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b_mode_enabled13.i.i, align 1, !range !39
  %b_mode_enabled16.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 3, i32 1
  %26 = ptrtoint ptr %b_mode_enabled16.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %b_mode_enabled16.i.i, align 1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i.if.end18.i.i_crit_edge
  %ip_gre.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 4
  %27 = ptrtoint ptr %ip_gre.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ip_gre.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool20.not.i.not.i = icmp eq i8 %28, 0
  br i1 %tobool20.not.i.not.i, label %if.end18.i.i.if.end30.i.i_crit_edge, label %if.then23.i.i

if.end18.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i.i

if.then23.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %b_mode_enabled25.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %b_mode_enabled25.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b_mode_enabled25.i.i, align 1, !range !39
  %b_mode_enabled28.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 4, i32 1
  %31 = ptrtoint ptr %b_mode_enabled28.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %b_mode_enabled28.i.i, align 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then23.i.i, %if.end18.i.i.if.end30.i.i_crit_edge
  %l2_geneve.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 1
  %32 = ptrtoint ptr %l2_geneve.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %l2_geneve.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool32.not.i.not.i = icmp eq i8 %33, 0
  br i1 %tobool32.not.i.not.i, label %if.end30.i.i.if.end42.i.i_crit_edge, label %if.then35.i.i

if.end30.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

if.then35.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %b_mode_enabled37.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %b_mode_enabled37.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %b_mode_enabled37.i.i, align 1, !range !39
  %b_mode_enabled40.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 1, i32 1
  %36 = ptrtoint ptr %b_mode_enabled40.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %b_mode_enabled40.i.i, align 1
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then35.i.i, %if.end30.i.i.if.end42.i.i_crit_edge
  %ip_geneve.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 2
  %37 = ptrtoint ptr %ip_geneve.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ip_geneve.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool44.not.i.not.i = icmp eq i8 %38, 0
  br i1 %tobool44.not.i.not.i, label %if.end42.i.i.qed_set_pf_update_tunn_mode.exit.i_crit_edge, label %if.then47.i.i

if.end42.i.i.qed_set_pf_update_tunn_mode.exit.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_set_pf_update_tunn_mode.exit.i

if.then47.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %b_mode_enabled49.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %b_mode_enabled49.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %b_mode_enabled49.i.i, align 1, !range !39
  %b_mode_enabled52.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 2, i32 1
  %41 = ptrtoint ptr %b_mode_enabled52.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %b_mode_enabled52.i.i, align 1
  br label %qed_set_pf_update_tunn_mode.exit.i

qed_set_pf_update_tunn_mode.exit.i:               ; preds = %if.then47.i.i, %if.end42.i.i.qed_set_pf_update_tunn_mode.exit.i_crit_edge
  call fastcc void @qed_set_tunn_cls_info(ptr noundef %tunnel.i, ptr noundef nonnull %p_tunn) #6
  %geneve_port.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 6
  %42 = ptrtoint ptr %geneve_port.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %geneve_port.i.i, align 4, !range !39
  %geneve_port1.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 6
  %44 = ptrtoint ptr %geneve_port1.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %geneve_port1.i.i, align 4
  %vxlan_port.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 5
  %45 = ptrtoint ptr %vxlan_port.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vxlan_port.i.i, align 4, !range !39
  %vxlan_port5.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 5
  %47 = ptrtoint ptr %vxlan_port5.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %vxlan_port5.i.i, align 4
  %48 = load i8, ptr %geneve_port.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool10.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool10.not.i.i, label %qed_set_pf_update_tunn_mode.exit.i.if.end.i23.i_crit_edge, label %if.then.i22.i

qed_set_pf_update_tunn_mode.exit.i.if.end.i23.i_crit_edge: ; preds = %qed_set_pf_update_tunn_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i23.i

if.then.i22.i:                                    ; preds = %qed_set_pf_update_tunn_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %port.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %port.i.i, align 2
  %port13.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 6, i32 1
  %51 = ptrtoint ptr %port13.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %port13.i.i, align 2
  br label %if.end.i23.i

if.end.i23.i:                                     ; preds = %if.then.i22.i, %qed_set_pf_update_tunn_mode.exit.i.if.end.i23.i_crit_edge
  %52 = ptrtoint ptr %vxlan_port.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vxlan_port.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool16.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool16.not.i.i, label %if.end.i23.i.qed_set_tunn_ports.exit.i_crit_edge, label %if.then17.i.i

if.end.i23.i.qed_set_tunn_ports.exit.i_crit_edge: ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_set_tunn_ports.exit.i

if.then17.i.i:                                    ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  %port19.i.i = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tunn, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %port19.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %port19.i.i, align 2
  %port21.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 5, i32 1
  %56 = ptrtoint ptr %port21.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %port21.i.i, align 2
  br label %qed_set_tunn_ports.exit.i

qed_set_tunn_ports.exit.i:                        ; preds = %if.then17.i.i, %if.end.i23.i.qed_set_tunn_ports.exit.i_crit_edge
  %tunnel_clss_vxlan.i = getelementptr inbounds %struct.pf_update_tunnel_config, ptr %tunnel_config, i32 0, i32 6
  %tun_cls.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 0, i32 2
  %57 = ptrtoint ptr %tun_cls.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tun_cls.i.i.i, align 4
  %conv.i.i.i = trunc i32 %58 to i8
  %59 = ptrtoint ptr %tunnel_clss_vxlan.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i.i.i, ptr %tunnel_clss_vxlan.i, align 1
  %60 = ptrtoint ptr %vxlan_port5.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %vxlan_port5.i.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i24.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i24.i, label %qed_set_tunn_ports.exit.i.qed_set_ramrod_tunnel_param.exit.i_crit_edge, label %if.then.i26.i

qed_set_tunn_ports.exit.i.qed_set_ramrod_tunnel_param.exit.i_crit_edge: ; preds = %qed_set_tunn_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_set_ramrod_tunnel_param.exit.i

if.then.i26.i:                                    ; preds = %qed_set_tunn_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %vxlan_udp_port.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6, i32 2
  %set_vxlan_udp_port_flg.i = getelementptr inbounds %struct.pf_update_tunnel_config, ptr %tunnel_config, i32 0, i32 3
  %62 = ptrtoint ptr %set_vxlan_udp_port_flg.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %set_vxlan_udp_port_flg.i, align 1
  %port.i25.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 5, i32 1
  %63 = ptrtoint ptr %port.i25.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %port.i25.i, align 2
  %65 = call i16 @llvm.bswap.i16(i16 %64) #6
  %66 = ptrtoint ptr %vxlan_udp_port.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %vxlan_udp_port.i, align 2
  br label %qed_set_ramrod_tunnel_param.exit.i

qed_set_ramrod_tunnel_param.exit.i:               ; preds = %if.then.i26.i, %qed_set_tunn_ports.exit.i.qed_set_ramrod_tunnel_param.exit.i_crit_edge
  %tunnel_clss_l2geneve.i = getelementptr inbounds %struct.pf_update_tunnel_config, ptr %tunnel_config, i32 0, i32 7
  %tun_cls.i.i28.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 1, i32 2
  %67 = ptrtoint ptr %tun_cls.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tun_cls.i.i28.i, align 4
  %conv.i.i29.i = trunc i32 %68 to i8
  %69 = ptrtoint ptr %tunnel_clss_l2geneve.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i.i29.i, ptr %tunnel_clss_l2geneve.i, align 1
  %70 = ptrtoint ptr %geneve_port1.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %geneve_port1.i.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i30.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i30.i, label %qed_set_ramrod_tunnel_param.exit.i.qed_tunn_set_pf_update_params.exit_crit_edge, label %if.then.i32.i

qed_set_ramrod_tunnel_param.exit.i.qed_tunn_set_pf_update_params.exit_crit_edge: ; preds = %qed_set_ramrod_tunnel_param.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_tunn_set_pf_update_params.exit

if.then.i32.i:                                    ; preds = %qed_set_ramrod_tunnel_param.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %geneve_udp_port.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6, i32 4
  %set_geneve_udp_port_flg.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %set_geneve_udp_port_flg.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %set_geneve_udp_port_flg.i, align 1
  %port.i31.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 6, i32 1
  %73 = ptrtoint ptr %port.i31.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %port.i31.i, align 2
  %75 = call i16 @llvm.bswap.i16(i16 %74) #6
  %76 = ptrtoint ptr %geneve_udp_port.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %geneve_udp_port.i, align 2
  br label %qed_tunn_set_pf_update_params.exit

qed_tunn_set_pf_update_params.exit:               ; preds = %if.then.i32.i, %qed_set_ramrod_tunnel_param.exit.i.qed_tunn_set_pf_update_params.exit_crit_edge
  %tunnel_clss_ipgeneve.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 5
  %tun_cls.i.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 2, i32 2
  %77 = ptrtoint ptr %tun_cls.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tun_cls.i.i, align 4
  %conv.i.i = trunc i32 %78 to i8
  %79 = ptrtoint ptr %tunnel_clss_ipgeneve.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i.i, ptr %tunnel_clss_ipgeneve.i, align 1
  %tunnel_clss_l2gre.i = getelementptr inbounds %struct.pf_update_tunnel_config, ptr %tunnel_config, i32 0, i32 9
  %tun_cls.i35.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 3, i32 2
  %80 = ptrtoint ptr %tun_cls.i35.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tun_cls.i35.i, align 4
  %conv.i36.i = trunc i32 %81 to i8
  %82 = ptrtoint ptr %tunnel_clss_l2gre.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i36.i, ptr %tunnel_clss_l2gre.i, align 1
  %tunnel_clss_ipgre.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6
  %tun_cls.i37.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 4, i32 2
  %83 = ptrtoint ptr %tun_cls.i37.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tun_cls.i37.i, align 4
  %conv.i38.i = trunc i32 %84 to i8
  %85 = ptrtoint ptr %tunnel_clss_ipgre.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.i38.i, ptr %tunnel_clss_ipgre.i, align 1
  %b_update_rx_cls.i = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 7
  %86 = ptrtoint ptr %b_update_rx_cls.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %b_update_rx_cls.i, align 4, !range !39
  %88 = ptrtoint ptr %tunnel_config to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %tunnel_config, align 2
  %89 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %p_ent, align 4
  %call12 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %90, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %qed_tunn_set_pf_update_params.exit.cleanup_crit_edge

qed_tunn_set_pf_update_params.exit.cleanup_crit_edge: ; preds = %qed_tunn_set_pf_update_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %qed_tunn_set_pf_update_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %p_hwfn, align 8
  %tunnel = getelementptr inbounds %struct.qed_dev, ptr %92, i32 0, i32 38
  call fastcc void @qed_set_hw_tunn_mode_port(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %tunnel)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %qed_tunn_set_pf_update_params.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end15 ], [ -22, %if.end.cleanup_crit_edge ], [ %call8, %if.end3.cleanup_crit_edge ], [ %call12, %qed_tunn_set_pf_update_params.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_tunnel_param_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_pf_stop(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #6
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %1 = getelementptr inbounds i8, ptr %init_data, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %call = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #6
  %3 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %4 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opaque_fid, align 4
  %opaque_fid1 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %6 = ptrtoint ptr %opaque_fid1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %opaque_fid1, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %7 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %comp_mode, align 4
  %call2 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 2, i8 noundef zeroext 8, ptr noundef nonnull %init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_ent, align 4
  %call3 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_heartbeat_ramrod(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #6
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %1 = getelementptr inbounds i8, ptr %init_data, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %call = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #6
  %3 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %4 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opaque_fid, align 4
  %opaque_fid1 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %6 = ptrtoint ptr %opaque_fid1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %opaque_fid1, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %7 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %comp_mode, align 4
  %call2 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 7, i8 noundef zeroext 8, ptr noundef nonnull %init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_ent, align 4
  %call3 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_pf_update_stag(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #6
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %1 = getelementptr inbounds i8, ptr %init_data, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %call = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #6
  %3 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %4 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opaque_fid, align 4
  %opaque_fid1 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %6 = ptrtoint ptr %opaque_fid1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %opaque_fid1, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %7 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %comp_mode, align 4
  %call2 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 5, i8 noundef zeroext 8, ptr noundef nonnull %init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_ent, align 4
  %update_mf_vlan_flag = getelementptr inbounds %struct.qed_spq_entry, ptr %9, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6
  %10 = ptrtoint ptr %update_mf_vlan_flag to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_mf_vlan_flag, align 2
  %ovlan = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 11
  %11 = ptrtoint ptr %ovlan to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ovlan, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %mf_vlan = getelementptr inbounds %struct.qed_spq_entry, ptr %9, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 3
  %14 = ptrtoint ptr %mf_vlan to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %mf_vlan, align 4
  %15 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_hwfn, align 8
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %mf_bits, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not = icmp eq i32 %19, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %if.then7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tc = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 2
  %20 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tc, align 8
  %conv8 = zext i8 %21 to i16
  %22 = shl nuw nsw i16 %conv8, 5
  %23 = and i16 %22, 224
  %or = or i16 %23, %13
  %24 = ptrtoint ptr %mf_vlan to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or, ptr %mf_vlan, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end.if.end15_crit_edge
  %call16 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qed_set_tunn_cls_info(ptr nocapture noundef writeonly %p_tun, ptr nocapture noundef readonly %p_src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_update_rx_cls = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 7
  %0 = ptrtoint ptr %b_update_rx_cls to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_update_rx_cls, align 4, !range !39
  %b_update_rx_cls1 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 7
  %2 = ptrtoint ptr %b_update_rx_cls1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %b_update_rx_cls1, align 4
  %b_update_tx_cls = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 8
  %3 = ptrtoint ptr %b_update_tx_cls to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_update_tx_cls, align 1, !range !39
  %b_update_tx_cls3 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 8
  %5 = ptrtoint ptr %b_update_tx_cls3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %b_update_tx_cls3, align 1
  %tun_cls = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_src, i32 0, i32 2
  %6 = ptrtoint ptr %tun_cls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tun_cls, align 4
  %conv = trunc i32 %7 to i8
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 4
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %retval.0.i = select i1 %8, i32 %switch.offset, i32 0
  %tun_cls6 = getelementptr inbounds %struct.qed_tunn_update_type, ptr %p_tun, i32 0, i32 2
  %9 = ptrtoint ptr %tun_cls6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %tun_cls6, align 4
  %tun_cls7 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %tun_cls7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tun_cls7, align 4
  %conv8 = trunc i32 %11 to i8
  %switch.tableidx75 = add i8 %conv8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx75)
  %12 = icmp ult i8 %switch.tableidx75, 4
  %switch.idx.cast76 = zext i8 %switch.tableidx75 to i32
  %switch.offset77 = add nuw nsw i32 %switch.idx.cast76, 1
  %retval.0.i47 = select i1 %12, i32 %switch.offset77, i32 0
  %tun_cls11 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %tun_cls11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i47, ptr %tun_cls11, align 4
  %tun_cls12 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %tun_cls12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tun_cls12, align 4
  %conv13 = trunc i32 %15 to i8
  %switch.tableidx68 = add i8 %conv13, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx68)
  %16 = icmp ult i8 %switch.tableidx68, 4
  %switch.idx.cast69 = zext i8 %switch.tableidx68 to i32
  %switch.offset70 = add nuw nsw i32 %switch.idx.cast69, 1
  %retval.0.i53 = select i1 %16, i32 %switch.offset70, i32 0
  %tun_cls16 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %tun_cls16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i53, ptr %tun_cls16, align 4
  %tun_cls17 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %tun_cls17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tun_cls17, align 4
  %conv18 = trunc i32 %19 to i8
  %switch.tableidx78 = add i8 %conv18, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx78)
  %20 = icmp ult i8 %switch.tableidx78, 4
  %switch.idx.cast79 = zext i8 %switch.tableidx78 to i32
  %switch.offset80 = add nuw nsw i32 %switch.idx.cast79, 1
  %retval.0.i59 = select i1 %20, i32 %switch.offset80, i32 0
  %tun_cls21 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %tun_cls21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i59, ptr %tun_cls21, align 4
  %tun_cls22 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_src, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %tun_cls22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tun_cls22, align 4
  %conv23 = trunc i32 %23 to i8
  %switch.tableidx72 = add i8 %conv23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx72)
  %24 = icmp ult i8 %switch.tableidx72, 4
  %switch.idx.cast73 = zext i8 %switch.tableidx72 to i32
  %switch.offset74 = add nuw nsw i32 %switch.idx.cast73, 1
  %retval.0.i65 = select i1 %24, i32 %switch.offset74, i32 0
  %tun_cls26 = getelementptr inbounds %struct.qed_tunnel_info, ptr %p_tun, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %tun_cls26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i65, ptr %tun_cls26, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_set_vxlan_dest_port(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_set_geneve_dest_port(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_set_gre_enable(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_set_vxlan_enable(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_set_geneve_enable(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_sp_commands.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_sp_init_request._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_sp_init_request._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_sp_commands.c", i32 88, i32 2}
!9 = !{ptr @qed_sp_init_request._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_sp_init_request._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !8, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qed/qed_sp_commands.c", i32 402, i32 3}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qed_sp_pf_start._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @qed_sp_pf_start._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_sp_commands.c", i32 416, i32 2}
!21 = !{ptr @qed_sp_pf_start._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @qed_sp_pf_start._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qed/qed_sp_commands.c", i32 460, i32 3}
!25 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qed_sp_pf_update_ufp._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @qed_sp_pf_update_ufp._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i8 0, i8 2}
