; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_tlv_parsed_buf = type { ptr, [14 x i8] }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_mcp_info = type { %struct.list_head, %struct.spinlock, i8, %struct.spinlock, i32, i32, i32, i32, i16, i16, %struct.qed_mcp_link_params, %struct.qed_mcp_link_state, %struct.qed_mcp_link_capabilities, %struct.qed_mcp_function_info, ptr, ptr, i16, i32, i32, %struct.atomic_t }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_mcp_link_capabilities = type { i32, i8, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.qed_mcp_function_info = type { i8, i32, i8, i8, [6 x i8], i64, i64, i16, i16 }
%struct.qed_mfw_tlv_fcoe = type { i8, i8, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i8, i8, i32, i8, [8 x i8], i8, i16, i8, [3 x i8], i8, [8 x i8], i8, [8 x i8], i8, [8 x i8], i8, i8, i8, [3 x i8], i8, i8, i8, i16, i8, i16, i8, i16, i8, i8, i8, i64, i8, i64, i8, i16, i8, i16, i8, i64, i8, i64, i8, i64, i8, i64, i8, i16, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i16, i8, i16, i8, i16, i8, i16, i8, i16, i8, [4 x i32], [4 x i8], %struct.qed_mfw_tlv_time, [4 x i32], [4 x i8], %struct.qed_mfw_tlv_time, i32, i8, %struct.qed_mfw_tlv_time, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time], i8, i8, [4 x i32], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32], [5 x i8], [5 x %struct.qed_mfw_tlv_time] }
%struct.qed_mfw_tlv_time = type { i8, i8, i8, i8, i8, i16, i16 }
%struct.qed_mfw_tlv_eth = type { i16, i8, i16, i8, i8, i8, i16, i8, i16, i8, i16, i8, i32, i8, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.qed_mfw_tlv_generic = type { %struct.anon.128, [3 x [6 x i8]], [3 x i8], i64, i8, i64, i8, i64, i8, i64, i8 }
%struct.anon.128 = type { i8, i8, i8 }
%struct.qed_mfw_tlv_iscsi = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, i8, i16, i8, i16, i8, i8, i8, i16, i8, i16, i8, i64, i8, i64, i8, i64, i8, i64, i8 }

@qed_mfw_process_tlv_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Invalid TLV req size = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_mfw_process_tlv_req\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c\00", [50 x i8] zeroinitializer }, align 32
@qed_mfw_process_tlv_req._entry_ptr = internal global ptr @qed_mfw_process_tlv_req._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_mfw_process_tlv_req._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Failed allocate memory for p_mfw_buf\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mfw_process_tlv_req._entry_ptr.6 = internal global ptr @qed_mfw_process_tlv_req._entry.4, section ".printk_index", align 4
@qed_mfw_process_tlv_req._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Un recognized TLV %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_mfw_process_tlv_req._entry_ptr.9 = internal global ptr @qed_mfw_process_tlv_req._entry.7, section ".printk_index", align 4
@qed_mfw_process_tlv_req._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Skipping L2 TLVs for non-L2 function\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mfw_process_tlv_req._entry_ptr.12 = internal global ptr @qed_mfw_process_tlv_req._entry.10, section ".printk_index", align 4
@qed_mfw_process_tlv_req._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]Skipping FCoE TLVs for non-FCoE function\0A\00", [41 x i8] zeroinitializer }, align 32
@qed_mfw_process_tlv_req._entry_ptr.15 = internal global ptr @qed_mfw_process_tlv_req._entry.13, section ".printk_index", align 4
@qed_mfw_process_tlv_req._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015[%s:%d(%s)]Skipping iSCSI TLVs for non-iSCSI function\0A\00", [39 x i8] zeroinitializer }, align 32
@qed_mfw_process_tlv_req._entry_ptr.18 = internal global ptr @qed_mfw_process_tlv_req._entry.16, section ".printk_index", align 4
@qed_mfw_update_tlvs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Type %d length = %d flags = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_mfw_update_tlvs\00", [44 x i8] zeroinitializer }, align 32
@qed_mfw_update_tlvs._entry_ptr = internal global ptr @qed_mfw_update_tlvs._entry, section ".printk_index", align 4
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Incorrect MFW TLV length %d, it shouldn't be greater than %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d%d%d%d%d%d\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [198 x i64] [i64 196, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 65, i64 67, i64 68, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [10 x i64] [i64 8, i64 8, i64 9, i64 10, i64 11, i64 12, i64 56, i64 57, i64 65, i64 67]
@__sancov_gen_cov_switch_values.26 = internal global [17 x i64] [i64 15, i64 8, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 60, i64 61, i64 62, i64 63, i64 68, i64 75, i64 76, i64 77, i64 78]
@__sancov_gen_cov_switch_values.27 = internal global [151 x i64] [i64 149, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 58, i64 59, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204]
@__sancov_gen_cov_switch_values.28 = internal global [17 x i64] [i64 15, i64 8, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1261, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1267, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1290, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1296, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1303, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1311, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1206, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1228, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [49 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 432, i32 28 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @qed_mfw_process_tlv_req._entry, ptr @qed_mfw_process_tlv_req._entry.10, ptr @qed_mfw_process_tlv_req._entry.13, ptr @qed_mfw_process_tlv_req._entry.16, ptr @qed_mfw_process_tlv_req._entry.4, ptr @qed_mfw_process_tlv_req._entry.7, ptr @qed_mfw_process_tlv_req._entry_ptr, ptr @qed_mfw_process_tlv_req._entry_ptr.12, ptr @qed_mfw_process_tlv_req._entry_ptr.15, ptr @qed_mfw_process_tlv_req._entry_ptr.18, ptr @qed_mfw_process_tlv_req._entry_ptr.6, ptr @qed_mfw_process_tlv_req._entry_ptr.9, ptr @qed_mfw_update_tlvs._entry, ptr @qed_mfw_update_tlvs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_process_tlv_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_process_tlv_req._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_process_tlv_req._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_process_tlv_req._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_process_tlv_req._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_process_tlv_req._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_update_tlvs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mfw_process_tlv_req(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca %struct.qed_tlv_parsed_buf, align 4
  %resp = alloca i32, align 4
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #7
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resp, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #7
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param, align 4, !annotation !45
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %2 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcp_info, align 8
  %public_base = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %public_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %public_base, align 4
  %add = add i32 %5, 12
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #7
  %and = shl i32 %call, 2
  %shl = and i32 %and, 262140
  %add6 = add nuw nsw i32 %shl, 14811184
  %call7 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add6) #7
  %add8 = add nuw nsw i32 %shl, 14811188
  %call9 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.body, label %if.end21

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ult i8 %7, 3
  br i1 %cmp, label %do.end, label %do.body.drv_done_crit_edge, !prof !46

do.body.drv_done_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %drv_done

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool15.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool15.not, ptr @.str.3, ptr %name
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1261, ptr noundef nonnull %spec.select, i32 noundef 0) #10
  br label %drv_done

if.end21:                                         ; preds = %entry
  %call22 = tail call noalias ptr @vzalloc(i32 noundef %call9) #11
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.body25, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

do.body25:                                        ; preds = %if.end21
  %dp_level26 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level26 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level26, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp28 = icmp ult i8 %9, 3
  br i1 %cmp28, label %do.end39, label %do.body25.drv_done_crit_edge, !prof !46

do.body25.drv_done_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %drv_done

do.end39:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %name41 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool43.not = icmp eq ptr %name41, null
  %spec.select376 = select i1 %tobool43.not, ptr @.str.3, ptr %name41
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1267, ptr noundef nonnull %spec.select376) #10
  br label %drv_done

for.body63.lr.ph:                                 ; preds = %for.body
  %dp_level72 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name89 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool91.not = icmp eq ptr %name89, null
  %spec.select377 = select i1 %tobool91.not, ptr @.str.3, ptr %name89
  br label %for.body63

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %offset.0404 = phi i32 [ %add59, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %add57 = add i32 %offset.0404, %call7
  %call58 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add57) #7
  %arrayidx = getelementptr i8, ptr %call22, i32 %offset.0404
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %call58, ptr %arrayidx, align 1
  %add59 = add i32 %offset.0404, 4
  %cmp55 = icmp ult i32 %add59, %call9
  br i1 %cmp55, label %for.body.for.body_crit_edge, label %for.body63.lr.ph

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body63:                                       ; preds = %for.inc105.for.body63_crit_edge, %for.body63.lr.ph
  %offset.1407 = phi i32 [ 0, %for.body63.lr.ph ], [ %add110, %for.inc105.for.body63_crit_edge ]
  %tlv_group.0406 = phi i8 [ 0, %for.body63.lr.ph ], [ %tlv_group.1397, %for.inc105.for.body63_crit_edge ]
  %arrayidx64 = getelementptr i8, ptr %call22, i32 %offset.1407
  %11 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx64, align 1
  %arrayidx66 = getelementptr i8, ptr %arrayidx64, i32 1
  %13 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx66, align 1
  %15 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %do.body71 [
    i8 9, label %for.body63.return.sink.split.sink.split.i_crit_edge
    i8 10, label %for.body63.return.sink.split.sink.split.i_crit_edge417
    i8 11, label %for.body63.return.sink.split.sink.split.i_crit_edge418
    i8 12, label %for.body63.return.sink.split.sink.split.i_crit_edge419
    i8 20, label %for.body63.return.sink.split.sink.split.i_crit_edge420
    i8 21, label %for.body63.return.sink.split.sink.split.i_crit_edge421
    i8 56, label %for.body63.return.sink.split.sink.split.i_crit_edge422
    i8 65, label %for.body63.return.sink.split.sink.split.i_crit_edge423
    i8 57, label %for.body63.return.sink.split.sink.split.i_crit_edge424
    i8 67, label %for.body63.return.sink.split.sink.split.i_crit_edge425
    i8 8, label %for.body63.return.sink.split.sink.split.i_crit_edge426
    i8 46, label %for.body63.return.sink.split.sink.split.i_crit_edge427
    i8 47, label %for.body63.return.sink.split.sink.split.i_crit_edge428
    i8 48, label %for.body63.return.sink.split.sink.split.i_crit_edge429
    i8 49, label %for.body63.return.sink.split.sink.split.i_crit_edge430
    i8 50, label %for.body63.return.sink.split.sink.split.i_crit_edge431
    i8 51, label %for.body63.return.sink.split.sink.split.i_crit_edge432
    i8 13, label %for.body63.sw.bb3.i_crit_edge
    i8 14, label %for.body63.sw.bb3.i_crit_edge433
    i8 15, label %for.body63.sw.bb3.i_crit_edge434
    i8 16, label %for.body63.sw.bb3.i_crit_edge435
    i8 17, label %for.body63.sw.bb3.i_crit_edge436
    i8 18, label %for.body63.sw.bb3.i_crit_edge437
    i8 60, label %for.body63.sw.bb3.i_crit_edge438
    i8 61, label %for.body63.sw.bb3.i_crit_edge439
    i8 62, label %for.body63.sw.bb3.i_crit_edge440
    i8 63, label %for.body63.sw.bb3.i_crit_edge441
    i8 68, label %for.body63.sw.bb3.i_crit_edge442
    i8 75, label %for.body63.sw.bb3.i_crit_edge443
    i8 76, label %for.body63.sw.bb3.i_crit_edge444
    i8 77, label %for.body63.sw.bb3.i_crit_edge445
    i8 78, label %for.body63.sw.bb3.i_crit_edge446
    i8 2, label %for.body63.for.inc105_crit_edge
    i8 3, label %for.body63.for.inc105_crit_edge447
    i8 4, label %for.body63.for.inc105_crit_edge448
    i8 5, label %for.body63.for.inc105_crit_edge449
    i8 6, label %for.body63.for.inc105_crit_edge450
    i8 7, label %for.body63.for.inc105_crit_edge451
    i8 22, label %for.body63.for.inc105_crit_edge452
    i8 23, label %for.body63.for.inc105_crit_edge453
    i8 24, label %for.body63.for.inc105_crit_edge454
    i8 25, label %for.body63.for.inc105_crit_edge455
    i8 26, label %for.body63.for.inc105_crit_edge456
    i8 27, label %for.body63.for.inc105_crit_edge457
    i8 28, label %for.body63.for.inc105_crit_edge458
    i8 29, label %for.body63.for.inc105_crit_edge459
    i8 30, label %for.body63.for.inc105_crit_edge460
    i8 31, label %for.body63.for.inc105_crit_edge461
    i8 32, label %for.body63.for.inc105_crit_edge462
    i8 33, label %for.body63.for.inc105_crit_edge463
    i8 34, label %for.body63.for.inc105_crit_edge464
    i8 35, label %for.body63.for.inc105_crit_edge465
    i8 36, label %for.body63.for.inc105_crit_edge466
    i8 58, label %for.body63.for.inc105_crit_edge467
    i8 59, label %for.body63.for.inc105_crit_edge468
    i8 79, label %for.body63.for.inc105_crit_edge469
    i8 80, label %for.body63.for.inc105_crit_edge470
    i8 81, label %for.body63.for.inc105_crit_edge471
    i8 82, label %for.body63.for.inc105_crit_edge472
    i8 83, label %for.body63.for.inc105_crit_edge473
    i8 84, label %for.body63.for.inc105_crit_edge474
    i8 85, label %for.body63.for.inc105_crit_edge475
    i8 86, label %for.body63.for.inc105_crit_edge476
    i8 87, label %for.body63.for.inc105_crit_edge477
    i8 88, label %for.body63.for.inc105_crit_edge478
    i8 89, label %for.body63.for.inc105_crit_edge479
    i8 90, label %for.body63.for.inc105_crit_edge480
    i8 91, label %for.body63.for.inc105_crit_edge481
    i8 92, label %for.body63.for.inc105_crit_edge482
    i8 93, label %for.body63.for.inc105_crit_edge483
    i8 94, label %for.body63.for.inc105_crit_edge484
    i8 95, label %for.body63.for.inc105_crit_edge485
    i8 96, label %for.body63.for.inc105_crit_edge486
    i8 97, label %for.body63.for.inc105_crit_edge487
    i8 98, label %for.body63.for.inc105_crit_edge488
    i8 99, label %for.body63.for.inc105_crit_edge489
    i8 100, label %for.body63.for.inc105_crit_edge490
    i8 101, label %for.body63.for.inc105_crit_edge491
    i8 102, label %for.body63.for.inc105_crit_edge492
    i8 103, label %for.body63.for.inc105_crit_edge493
    i8 104, label %for.body63.for.inc105_crit_edge494
    i8 105, label %for.body63.for.inc105_crit_edge495
    i8 106, label %for.body63.for.inc105_crit_edge496
    i8 107, label %for.body63.for.inc105_crit_edge497
    i8 108, label %for.body63.for.inc105_crit_edge498
    i8 109, label %for.body63.for.inc105_crit_edge499
    i8 110, label %for.body63.for.inc105_crit_edge500
    i8 111, label %for.body63.for.inc105_crit_edge501
    i8 112, label %for.body63.for.inc105_crit_edge502
    i8 113, label %for.body63.for.inc105_crit_edge503
    i8 114, label %for.body63.for.inc105_crit_edge504
    i8 115, label %for.body63.for.inc105_crit_edge505
    i8 116, label %for.body63.for.inc105_crit_edge506
    i8 117, label %for.body63.for.inc105_crit_edge507
    i8 118, label %for.body63.for.inc105_crit_edge508
    i8 119, label %for.body63.for.inc105_crit_edge509
    i8 120, label %for.body63.for.inc105_crit_edge510
    i8 121, label %for.body63.for.inc105_crit_edge511
    i8 122, label %for.body63.for.inc105_crit_edge512
    i8 123, label %for.body63.for.inc105_crit_edge513
    i8 124, label %for.body63.for.inc105_crit_edge514
    i8 125, label %for.body63.for.inc105_crit_edge515
    i8 126, label %for.body63.for.inc105_crit_edge516
    i8 127, label %for.body63.for.inc105_crit_edge517
    i8 -128, label %for.body63.for.inc105_crit_edge518
    i8 -127, label %for.body63.for.inc105_crit_edge519
    i8 -126, label %for.body63.for.inc105_crit_edge520
    i8 -125, label %for.body63.for.inc105_crit_edge521
    i8 -124, label %for.body63.for.inc105_crit_edge522
    i8 -123, label %for.body63.for.inc105_crit_edge523
    i8 -122, label %for.body63.for.inc105_crit_edge524
    i8 -121, label %for.body63.for.inc105_crit_edge525
    i8 -120, label %for.body63.for.inc105_crit_edge526
    i8 -119, label %for.body63.for.inc105_crit_edge527
    i8 -118, label %for.body63.for.inc105_crit_edge528
    i8 -117, label %for.body63.for.inc105_crit_edge529
    i8 -116, label %for.body63.for.inc105_crit_edge530
    i8 -115, label %for.body63.for.inc105_crit_edge531
    i8 -114, label %for.body63.for.inc105_crit_edge532
    i8 -113, label %for.body63.for.inc105_crit_edge533
    i8 -112, label %for.body63.for.inc105_crit_edge534
    i8 -111, label %for.body63.for.inc105_crit_edge535
    i8 -110, label %for.body63.for.inc105_crit_edge536
    i8 -109, label %for.body63.for.inc105_crit_edge537
    i8 -108, label %for.body63.for.inc105_crit_edge538
    i8 -107, label %for.body63.for.inc105_crit_edge539
    i8 -106, label %for.body63.for.inc105_crit_edge540
    i8 -105, label %for.body63.for.inc105_crit_edge541
    i8 -104, label %for.body63.for.inc105_crit_edge542
    i8 -103, label %for.body63.for.inc105_crit_edge543
    i8 -102, label %for.body63.for.inc105_crit_edge544
    i8 -101, label %for.body63.for.inc105_crit_edge545
    i8 -100, label %for.body63.for.inc105_crit_edge546
    i8 -99, label %for.body63.for.inc105_crit_edge547
    i8 -98, label %for.body63.for.inc105_crit_edge548
    i8 -97, label %for.body63.for.inc105_crit_edge549
    i8 -96, label %for.body63.for.inc105_crit_edge550
    i8 -95, label %for.body63.for.inc105_crit_edge551
    i8 -94, label %for.body63.for.inc105_crit_edge552
    i8 -93, label %for.body63.for.inc105_crit_edge553
    i8 -92, label %for.body63.for.inc105_crit_edge554
    i8 -91, label %for.body63.for.inc105_crit_edge555
    i8 -90, label %for.body63.for.inc105_crit_edge556
    i8 -89, label %for.body63.for.inc105_crit_edge557
    i8 -88, label %for.body63.for.inc105_crit_edge558
    i8 -87, label %for.body63.for.inc105_crit_edge559
    i8 -86, label %for.body63.for.inc105_crit_edge560
    i8 -85, label %for.body63.for.inc105_crit_edge561
    i8 -84, label %for.body63.for.inc105_crit_edge562
    i8 -83, label %for.body63.for.inc105_crit_edge563
    i8 -82, label %for.body63.for.inc105_crit_edge564
    i8 -81, label %for.body63.for.inc105_crit_edge565
    i8 -80, label %for.body63.for.inc105_crit_edge566
    i8 -79, label %for.body63.for.inc105_crit_edge567
    i8 -78, label %for.body63.for.inc105_crit_edge568
    i8 -77, label %for.body63.for.inc105_crit_edge569
    i8 -76, label %for.body63.for.inc105_crit_edge570
    i8 -75, label %for.body63.for.inc105_crit_edge571
    i8 -74, label %for.body63.for.inc105_crit_edge572
    i8 -73, label %for.body63.for.inc105_crit_edge573
    i8 -72, label %for.body63.for.inc105_crit_edge574
    i8 -71, label %for.body63.for.inc105_crit_edge575
    i8 -70, label %for.body63.for.inc105_crit_edge576
    i8 -69, label %for.body63.for.inc105_crit_edge577
    i8 -68, label %for.body63.for.inc105_crit_edge578
    i8 -67, label %for.body63.for.inc105_crit_edge579
    i8 -66, label %for.body63.for.inc105_crit_edge580
    i8 -65, label %for.body63.for.inc105_crit_edge581
    i8 -64, label %for.body63.for.inc105_crit_edge582
    i8 -63, label %for.body63.for.inc105_crit_edge583
    i8 -62, label %for.body63.for.inc105_crit_edge584
    i8 -61, label %for.body63.for.inc105_crit_edge585
    i8 -60, label %for.body63.for.inc105_crit_edge586
    i8 -59, label %for.body63.for.inc105_crit_edge587
    i8 -58, label %for.body63.for.inc105_crit_edge588
    i8 -57, label %for.body63.for.inc105_crit_edge589
    i8 -56, label %for.body63.for.inc105_crit_edge590
    i8 -55, label %for.body63.for.inc105_crit_edge591
    i8 -54, label %for.body63.for.inc105_crit_edge592
    i8 -53, label %for.body63.for.inc105_crit_edge593
    i8 -52, label %for.body63.for.inc105_crit_edge594
    i8 37, label %for.body63.sw.bb8.i_crit_edge
    i8 38, label %for.body63.sw.bb8.i_crit_edge595
    i8 39, label %for.body63.sw.bb8.i_crit_edge596
    i8 40, label %for.body63.sw.bb8.i_crit_edge597
    i8 41, label %for.body63.sw.bb8.i_crit_edge598
    i8 42, label %for.body63.sw.bb8.i_crit_edge599
    i8 43, label %for.body63.sw.bb8.i_crit_edge600
    i8 44, label %for.body63.sw.bb8.i_crit_edge601
    i8 45, label %for.body63.sw.bb8.i_crit_edge602
    i8 -51, label %for.body63.sw.bb8.i_crit_edge603
    i8 -50, label %for.body63.sw.bb8.i_crit_edge604
    i8 -49, label %for.body63.sw.bb8.i_crit_edge605
    i8 -48, label %for.body63.sw.bb8.i_crit_edge606
    i8 -47, label %for.body63.sw.bb8.i_crit_edge607
    i8 -46, label %for.body63.sw.bb8.i_crit_edge608
  ]

for.body63.sw.bb8.i_crit_edge608:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge607:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge606:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge605:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge604:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge603:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge602:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge601:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge600:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge599:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge598:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge597:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge596:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge595:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.sw.bb8.i_crit_edge:                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

for.body63.for.inc105_crit_edge594:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge593:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge592:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge591:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge590:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge589:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge588:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge587:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge586:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge585:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge584:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge583:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge582:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge581:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge580:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge579:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge578:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge577:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge576:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge575:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge574:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge573:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge572:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge571:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge570:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge569:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge568:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge567:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge566:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge565:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge564:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge563:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge562:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge561:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge560:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge559:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge558:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge557:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge556:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge555:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge554:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge553:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge552:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge551:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge550:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge549:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge548:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge547:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge546:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge545:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge544:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge543:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge542:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge541:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge540:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge539:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge538:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge537:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge536:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge535:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge534:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge533:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge532:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge531:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge530:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge529:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge528:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge527:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge526:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge525:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge524:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge523:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge522:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge521:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge520:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge519:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge518:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge517:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge516:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge515:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge514:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge513:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge512:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge511:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge510:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge509:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge508:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge507:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge506:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge505:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge504:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge503:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge502:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge501:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge500:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge499:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge498:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge497:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge496:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge495:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge494:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge493:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge492:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge491:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge490:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge489:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge488:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge487:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge486:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge485:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge484:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge483:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge482:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge481:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge480:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge479:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge478:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge477:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge476:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge475:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge474:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge473:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge472:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge471:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge470:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge469:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge468:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge467:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge466:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge465:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge464:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge463:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge462:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge461:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge460:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge459:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge458:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge457:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge456:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge455:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge454:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge453:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge452:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge451:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge450:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge449:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge448:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge447:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.for.inc105_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

for.body63.sw.bb3.i_crit_edge446:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge445:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge444:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge443:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge442:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge441:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge440:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge439:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge438:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge437:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge436:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge435:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge434:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge433:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.sw.bb3.i_crit_edge:                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

for.body63.return.sink.split.sink.split.i_crit_edge432: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge431: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge430: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge429: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge428: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge427: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge426: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge425: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge424: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge423: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge422: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge421: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge420: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge419: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge418: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge417: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

for.body63.return.sink.split.sink.split.i_crit_edge: ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

sw.bb3.i:                                         ; preds = %for.body63.sw.bb3.i_crit_edge, %for.body63.sw.bb3.i_crit_edge433, %for.body63.sw.bb3.i_crit_edge434, %for.body63.sw.bb3.i_crit_edge435, %for.body63.sw.bb3.i_crit_edge436, %for.body63.sw.bb3.i_crit_edge437, %for.body63.sw.bb3.i_crit_edge438, %for.body63.sw.bb3.i_crit_edge439, %for.body63.sw.bb3.i_crit_edge440, %for.body63.sw.bb3.i_crit_edge441, %for.body63.sw.bb3.i_crit_edge442, %for.body63.sw.bb3.i_crit_edge443, %for.body63.sw.bb3.i_crit_edge444, %for.body63.sw.bb3.i_crit_edge445, %for.body63.sw.bb3.i_crit_edge446
  br label %return.sink.split.sink.split.i

sw.bb8.i:                                         ; preds = %for.body63.sw.bb8.i_crit_edge, %for.body63.sw.bb8.i_crit_edge595, %for.body63.sw.bb8.i_crit_edge596, %for.body63.sw.bb8.i_crit_edge597, %for.body63.sw.bb8.i_crit_edge598, %for.body63.sw.bb8.i_crit_edge599, %for.body63.sw.bb8.i_crit_edge600, %for.body63.sw.bb8.i_crit_edge601, %for.body63.sw.bb8.i_crit_edge602, %for.body63.sw.bb8.i_crit_edge603, %for.body63.sw.bb8.i_crit_edge604, %for.body63.sw.bb8.i_crit_edge605, %for.body63.sw.bb8.i_crit_edge606, %for.body63.sw.bb8.i_crit_edge607, %for.body63.sw.bb8.i_crit_edge608
  br label %return.sink.split.sink.split.i

return.sink.split.sink.split.i:                   ; preds = %sw.bb8.i, %sw.bb3.i, %for.body63.return.sink.split.sink.split.i_crit_edge, %for.body63.return.sink.split.sink.split.i_crit_edge417, %for.body63.return.sink.split.sink.split.i_crit_edge418, %for.body63.return.sink.split.sink.split.i_crit_edge419, %for.body63.return.sink.split.sink.split.i_crit_edge420, %for.body63.return.sink.split.sink.split.i_crit_edge421, %for.body63.return.sink.split.sink.split.i_crit_edge422, %for.body63.return.sink.split.sink.split.i_crit_edge423, %for.body63.return.sink.split.sink.split.i_crit_edge424, %for.body63.return.sink.split.sink.split.i_crit_edge425, %for.body63.return.sink.split.sink.split.i_crit_edge426, %for.body63.return.sink.split.sink.split.i_crit_edge427, %for.body63.return.sink.split.sink.split.i_crit_edge428, %for.body63.return.sink.split.sink.split.i_crit_edge429, %for.body63.return.sink.split.sink.split.i_crit_edge430, %for.body63.return.sink.split.sink.split.i_crit_edge431, %for.body63.return.sink.split.sink.split.i_crit_edge432
  %.sink16.i = phi i8 [ 8, %sw.bb8.i ], [ 2, %sw.bb3.i ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge417 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge418 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge419 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge420 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge421 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge422 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge423 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge424 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge425 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge426 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge427 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge428 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge429 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge430 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge431 ], [ 1, %for.body63.return.sink.split.sink.split.i_crit_edge432 ]
  %16 = or i8 %.sink16.i, %tlv_group.0406
  br label %for.inc105

do.body71:                                        ; preds = %for.body63
  %17 = ptrtoint ptr %dp_level72 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level72, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp74 = icmp eq i8 %18, 0
  br i1 %cmp74, label %land.rhs, label %do.body71.for.inc105_crit_edge

do.body71.for.inc105_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

land.rhs:                                         ; preds = %do.body71
  %19 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dp_module, align 4
  %and76 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.rhs.for.inc105_crit_edge, label %do.end87, !prof !47

land.rhs.for.inc105_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

do.end87:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %conv99 = zext i8 %12 to i32
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1291, ptr noundef nonnull %spec.select377, i32 noundef %conv99) #10
  br label %for.inc105

for.inc105:                                       ; preds = %do.end87, %land.rhs.for.inc105_crit_edge, %do.body71.for.inc105_crit_edge, %return.sink.split.sink.split.i, %for.body63.for.inc105_crit_edge, %for.body63.for.inc105_crit_edge447, %for.body63.for.inc105_crit_edge448, %for.body63.for.inc105_crit_edge449, %for.body63.for.inc105_crit_edge450, %for.body63.for.inc105_crit_edge451, %for.body63.for.inc105_crit_edge452, %for.body63.for.inc105_crit_edge453, %for.body63.for.inc105_crit_edge454, %for.body63.for.inc105_crit_edge455, %for.body63.for.inc105_crit_edge456, %for.body63.for.inc105_crit_edge457, %for.body63.for.inc105_crit_edge458, %for.body63.for.inc105_crit_edge459, %for.body63.for.inc105_crit_edge460, %for.body63.for.inc105_crit_edge461, %for.body63.for.inc105_crit_edge462, %for.body63.for.inc105_crit_edge463, %for.body63.for.inc105_crit_edge464, %for.body63.for.inc105_crit_edge465, %for.body63.for.inc105_crit_edge466, %for.body63.for.inc105_crit_edge467, %for.body63.for.inc105_crit_edge468, %for.body63.for.inc105_crit_edge469, %for.body63.for.inc105_crit_edge470, %for.body63.for.inc105_crit_edge471, %for.body63.for.inc105_crit_edge472, %for.body63.for.inc105_crit_edge473, %for.body63.for.inc105_crit_edge474, %for.body63.for.inc105_crit_edge475, %for.body63.for.inc105_crit_edge476, %for.body63.for.inc105_crit_edge477, %for.body63.for.inc105_crit_edge478, %for.body63.for.inc105_crit_edge479, %for.body63.for.inc105_crit_edge480, %for.body63.for.inc105_crit_edge481, %for.body63.for.inc105_crit_edge482, %for.body63.for.inc105_crit_edge483, %for.body63.for.inc105_crit_edge484, %for.body63.for.inc105_crit_edge485, %for.body63.for.inc105_crit_edge486, %for.body63.for.inc105_crit_edge487, %for.body63.for.inc105_crit_edge488, %for.body63.for.inc105_crit_edge489, %for.body63.for.inc105_crit_edge490, %for.body63.for.inc105_crit_edge491, %for.body63.for.inc105_crit_edge492, %for.body63.for.inc105_crit_edge493, %for.body63.for.inc105_crit_edge494, %for.body63.for.inc105_crit_edge495, %for.body63.for.inc105_crit_edge496, %for.body63.for.inc105_crit_edge497, %for.body63.for.inc105_crit_edge498, %for.body63.for.inc105_crit_edge499, %for.body63.for.inc105_crit_edge500, %for.body63.for.inc105_crit_edge501, %for.body63.for.inc105_crit_edge502, %for.body63.for.inc105_crit_edge503, %for.body63.for.inc105_crit_edge504, %for.body63.for.inc105_crit_edge505, %for.body63.for.inc105_crit_edge506, %for.body63.for.inc105_crit_edge507, %for.body63.for.inc105_crit_edge508, %for.body63.for.inc105_crit_edge509, %for.body63.for.inc105_crit_edge510, %for.body63.for.inc105_crit_edge511, %for.body63.for.inc105_crit_edge512, %for.body63.for.inc105_crit_edge513, %for.body63.for.inc105_crit_edge514, %for.body63.for.inc105_crit_edge515, %for.body63.for.inc105_crit_edge516, %for.body63.for.inc105_crit_edge517, %for.body63.for.inc105_crit_edge518, %for.body63.for.inc105_crit_edge519, %for.body63.for.inc105_crit_edge520, %for.body63.for.inc105_crit_edge521, %for.body63.for.inc105_crit_edge522, %for.body63.for.inc105_crit_edge523, %for.body63.for.inc105_crit_edge524, %for.body63.for.inc105_crit_edge525, %for.body63.for.inc105_crit_edge526, %for.body63.for.inc105_crit_edge527, %for.body63.for.inc105_crit_edge528, %for.body63.for.inc105_crit_edge529, %for.body63.for.inc105_crit_edge530, %for.body63.for.inc105_crit_edge531, %for.body63.for.inc105_crit_edge532, %for.body63.for.inc105_crit_edge533, %for.body63.for.inc105_crit_edge534, %for.body63.for.inc105_crit_edge535, %for.body63.for.inc105_crit_edge536, %for.body63.for.inc105_crit_edge537, %for.body63.for.inc105_crit_edge538, %for.body63.for.inc105_crit_edge539, %for.body63.for.inc105_crit_edge540, %for.body63.for.inc105_crit_edge541, %for.body63.for.inc105_crit_edge542, %for.body63.for.inc105_crit_edge543, %for.body63.for.inc105_crit_edge544, %for.body63.for.inc105_crit_edge545, %for.body63.for.inc105_crit_edge546, %for.body63.for.inc105_crit_edge547, %for.body63.for.inc105_crit_edge548, %for.body63.for.inc105_crit_edge549, %for.body63.for.inc105_crit_edge550, %for.body63.for.inc105_crit_edge551, %for.body63.for.inc105_crit_edge552, %for.body63.for.inc105_crit_edge553, %for.body63.for.inc105_crit_edge554, %for.body63.for.inc105_crit_edge555, %for.body63.for.inc105_crit_edge556, %for.body63.for.inc105_crit_edge557, %for.body63.for.inc105_crit_edge558, %for.body63.for.inc105_crit_edge559, %for.body63.for.inc105_crit_edge560, %for.body63.for.inc105_crit_edge561, %for.body63.for.inc105_crit_edge562, %for.body63.for.inc105_crit_edge563, %for.body63.for.inc105_crit_edge564, %for.body63.for.inc105_crit_edge565, %for.body63.for.inc105_crit_edge566, %for.body63.for.inc105_crit_edge567, %for.body63.for.inc105_crit_edge568, %for.body63.for.inc105_crit_edge569, %for.body63.for.inc105_crit_edge570, %for.body63.for.inc105_crit_edge571, %for.body63.for.inc105_crit_edge572, %for.body63.for.inc105_crit_edge573, %for.body63.for.inc105_crit_edge574, %for.body63.for.inc105_crit_edge575, %for.body63.for.inc105_crit_edge576, %for.body63.for.inc105_crit_edge577, %for.body63.for.inc105_crit_edge578, %for.body63.for.inc105_crit_edge579, %for.body63.for.inc105_crit_edge580, %for.body63.for.inc105_crit_edge581, %for.body63.for.inc105_crit_edge582, %for.body63.for.inc105_crit_edge583, %for.body63.for.inc105_crit_edge584, %for.body63.for.inc105_crit_edge585, %for.body63.for.inc105_crit_edge586, %for.body63.for.inc105_crit_edge587, %for.body63.for.inc105_crit_edge588, %for.body63.for.inc105_crit_edge589, %for.body63.for.inc105_crit_edge590, %for.body63.for.inc105_crit_edge591, %for.body63.for.inc105_crit_edge592, %for.body63.for.inc105_crit_edge593, %for.body63.for.inc105_crit_edge594
  %tlv_group.1397 = phi i8 [ %tlv_group.0406, %do.body71.for.inc105_crit_edge ], [ %tlv_group.0406, %do.end87 ], [ %tlv_group.0406, %land.rhs.for.inc105_crit_edge ], [ 4, %for.body63.for.inc105_crit_edge ], [ 4, %for.body63.for.inc105_crit_edge447 ], [ 4, %for.body63.for.inc105_crit_edge448 ], [ 4, %for.body63.for.inc105_crit_edge449 ], [ 4, %for.body63.for.inc105_crit_edge450 ], [ 4, %for.body63.for.inc105_crit_edge451 ], [ 4, %for.body63.for.inc105_crit_edge452 ], [ 4, %for.body63.for.inc105_crit_edge453 ], [ 4, %for.body63.for.inc105_crit_edge454 ], [ 4, %for.body63.for.inc105_crit_edge455 ], [ 4, %for.body63.for.inc105_crit_edge456 ], [ 4, %for.body63.for.inc105_crit_edge457 ], [ 4, %for.body63.for.inc105_crit_edge458 ], [ 4, %for.body63.for.inc105_crit_edge459 ], [ 4, %for.body63.for.inc105_crit_edge460 ], [ 4, %for.body63.for.inc105_crit_edge461 ], [ 4, %for.body63.for.inc105_crit_edge462 ], [ 4, %for.body63.for.inc105_crit_edge463 ], [ 4, %for.body63.for.inc105_crit_edge464 ], [ 4, %for.body63.for.inc105_crit_edge465 ], [ 4, %for.body63.for.inc105_crit_edge466 ], [ 4, %for.body63.for.inc105_crit_edge467 ], [ 4, %for.body63.for.inc105_crit_edge468 ], [ 4, %for.body63.for.inc105_crit_edge469 ], [ 4, %for.body63.for.inc105_crit_edge470 ], [ 4, %for.body63.for.inc105_crit_edge471 ], [ 4, %for.body63.for.inc105_crit_edge472 ], [ 4, %for.body63.for.inc105_crit_edge473 ], [ 4, %for.body63.for.inc105_crit_edge474 ], [ 4, %for.body63.for.inc105_crit_edge475 ], [ 4, %for.body63.for.inc105_crit_edge476 ], [ 4, %for.body63.for.inc105_crit_edge477 ], [ 4, %for.body63.for.inc105_crit_edge478 ], [ 4, %for.body63.for.inc105_crit_edge479 ], [ 4, %for.body63.for.inc105_crit_edge480 ], [ 4, %for.body63.for.inc105_crit_edge481 ], [ 4, %for.body63.for.inc105_crit_edge482 ], [ 4, %for.body63.for.inc105_crit_edge483 ], [ 4, %for.body63.for.inc105_crit_edge484 ], [ 4, %for.body63.for.inc105_crit_edge485 ], [ 4, %for.body63.for.inc105_crit_edge486 ], [ 4, %for.body63.for.inc105_crit_edge487 ], [ 4, %for.body63.for.inc105_crit_edge488 ], [ 4, %for.body63.for.inc105_crit_edge489 ], [ 4, %for.body63.for.inc105_crit_edge490 ], [ 4, %for.body63.for.inc105_crit_edge491 ], [ 4, %for.body63.for.inc105_crit_edge492 ], [ 4, %for.body63.for.inc105_crit_edge493 ], [ 4, %for.body63.for.inc105_crit_edge494 ], [ 4, %for.body63.for.inc105_crit_edge495 ], [ 4, %for.body63.for.inc105_crit_edge496 ], [ 4, %for.body63.for.inc105_crit_edge497 ], [ 4, %for.body63.for.inc105_crit_edge498 ], [ 4, %for.body63.for.inc105_crit_edge499 ], [ 4, %for.body63.for.inc105_crit_edge500 ], [ 4, %for.body63.for.inc105_crit_edge501 ], [ 4, %for.body63.for.inc105_crit_edge502 ], [ 4, %for.body63.for.inc105_crit_edge503 ], [ 4, %for.body63.for.inc105_crit_edge504 ], [ 4, %for.body63.for.inc105_crit_edge505 ], [ 4, %for.body63.for.inc105_crit_edge506 ], [ 4, %for.body63.for.inc105_crit_edge507 ], [ 4, %for.body63.for.inc105_crit_edge508 ], [ 4, %for.body63.for.inc105_crit_edge509 ], [ 4, %for.body63.for.inc105_crit_edge510 ], [ 4, %for.body63.for.inc105_crit_edge511 ], [ 4, %for.body63.for.inc105_crit_edge512 ], [ 4, %for.body63.for.inc105_crit_edge513 ], [ 4, %for.body63.for.inc105_crit_edge514 ], [ 4, %for.body63.for.inc105_crit_edge515 ], [ 4, %for.body63.for.inc105_crit_edge516 ], [ 4, %for.body63.for.inc105_crit_edge517 ], [ 4, %for.body63.for.inc105_crit_edge518 ], [ 4, %for.body63.for.inc105_crit_edge519 ], [ 4, %for.body63.for.inc105_crit_edge520 ], [ 4, %for.body63.for.inc105_crit_edge521 ], [ 4, %for.body63.for.inc105_crit_edge522 ], [ 4, %for.body63.for.inc105_crit_edge523 ], [ 4, %for.body63.for.inc105_crit_edge524 ], [ 4, %for.body63.for.inc105_crit_edge525 ], [ 4, %for.body63.for.inc105_crit_edge526 ], [ 4, %for.body63.for.inc105_crit_edge527 ], [ 4, %for.body63.for.inc105_crit_edge528 ], [ 4, %for.body63.for.inc105_crit_edge529 ], [ 4, %for.body63.for.inc105_crit_edge530 ], [ 4, %for.body63.for.inc105_crit_edge531 ], [ 4, %for.body63.for.inc105_crit_edge532 ], [ 4, %for.body63.for.inc105_crit_edge533 ], [ 4, %for.body63.for.inc105_crit_edge534 ], [ 4, %for.body63.for.inc105_crit_edge535 ], [ 4, %for.body63.for.inc105_crit_edge536 ], [ 4, %for.body63.for.inc105_crit_edge537 ], [ 4, %for.body63.for.inc105_crit_edge538 ], [ 4, %for.body63.for.inc105_crit_edge539 ], [ 4, %for.body63.for.inc105_crit_edge540 ], [ 4, %for.body63.for.inc105_crit_edge541 ], [ 4, %for.body63.for.inc105_crit_edge542 ], [ 4, %for.body63.for.inc105_crit_edge543 ], [ 4, %for.body63.for.inc105_crit_edge544 ], [ 4, %for.body63.for.inc105_crit_edge545 ], [ 4, %for.body63.for.inc105_crit_edge546 ], [ 4, %for.body63.for.inc105_crit_edge547 ], [ 4, %for.body63.for.inc105_crit_edge548 ], [ 4, %for.body63.for.inc105_crit_edge549 ], [ 4, %for.body63.for.inc105_crit_edge550 ], [ 4, %for.body63.for.inc105_crit_edge551 ], [ 4, %for.body63.for.inc105_crit_edge552 ], [ 4, %for.body63.for.inc105_crit_edge553 ], [ 4, %for.body63.for.inc105_crit_edge554 ], [ 4, %for.body63.for.inc105_crit_edge555 ], [ 4, %for.body63.for.inc105_crit_edge556 ], [ 4, %for.body63.for.inc105_crit_edge557 ], [ 4, %for.body63.for.inc105_crit_edge558 ], [ 4, %for.body63.for.inc105_crit_edge559 ], [ 4, %for.body63.for.inc105_crit_edge560 ], [ 4, %for.body63.for.inc105_crit_edge561 ], [ 4, %for.body63.for.inc105_crit_edge562 ], [ 4, %for.body63.for.inc105_crit_edge563 ], [ 4, %for.body63.for.inc105_crit_edge564 ], [ 4, %for.body63.for.inc105_crit_edge565 ], [ 4, %for.body63.for.inc105_crit_edge566 ], [ 4, %for.body63.for.inc105_crit_edge567 ], [ 4, %for.body63.for.inc105_crit_edge568 ], [ 4, %for.body63.for.inc105_crit_edge569 ], [ 4, %for.body63.for.inc105_crit_edge570 ], [ 4, %for.body63.for.inc105_crit_edge571 ], [ 4, %for.body63.for.inc105_crit_edge572 ], [ 4, %for.body63.for.inc105_crit_edge573 ], [ 4, %for.body63.for.inc105_crit_edge574 ], [ 4, %for.body63.for.inc105_crit_edge575 ], [ 4, %for.body63.for.inc105_crit_edge576 ], [ 4, %for.body63.for.inc105_crit_edge577 ], [ 4, %for.body63.for.inc105_crit_edge578 ], [ 4, %for.body63.for.inc105_crit_edge579 ], [ 4, %for.body63.for.inc105_crit_edge580 ], [ 4, %for.body63.for.inc105_crit_edge581 ], [ 4, %for.body63.for.inc105_crit_edge582 ], [ 4, %for.body63.for.inc105_crit_edge583 ], [ 4, %for.body63.for.inc105_crit_edge584 ], [ 4, %for.body63.for.inc105_crit_edge585 ], [ 4, %for.body63.for.inc105_crit_edge586 ], [ 4, %for.body63.for.inc105_crit_edge587 ], [ 4, %for.body63.for.inc105_crit_edge588 ], [ 4, %for.body63.for.inc105_crit_edge589 ], [ 4, %for.body63.for.inc105_crit_edge590 ], [ 4, %for.body63.for.inc105_crit_edge591 ], [ 4, %for.body63.for.inc105_crit_edge592 ], [ 4, %for.body63.for.inc105_crit_edge593 ], [ 4, %for.body63.for.inc105_crit_edge594 ], [ %16, %return.sink.split.sink.split.i ]
  %conv107 = zext i8 %14 to i32
  %mul108 = shl nuw nsw i32 %conv107, 2
  %add109 = add i32 %offset.1407, 4
  %add110 = add i32 %add109, %mul108
  %cmp61 = icmp ult i32 %add110, %call9
  br i1 %cmp61, label %for.inc105.for.body63_crit_edge, label %for.end111

for.inc105.for.body63_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63

for.end111:                                       ; preds = %for.inc105
  %21 = and i8 %tlv_group.1397, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool114.not = icmp eq i8 %21, 0
  br i1 %tobool114.not, label %for.end111.if.end169_crit_edge, label %land.lhs.true

for.end111.if.end169_crit_edge:                   ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

land.lhs.true:                                    ; preds = %for.end111
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %22 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_info, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %23, label %do.body132 [
    i32 0, label %land.lhs.true.if.end169_crit_edge
    i32 4, label %land.lhs.true.if.end169_crit_edge609
    i32 5, label %land.lhs.true.if.end169_crit_edge610
    i32 6, label %land.lhs.true.if.end169_crit_edge611
  ]

land.lhs.true.if.end169_crit_edge611:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

land.lhs.true.if.end169_crit_edge610:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

land.lhs.true.if.end169_crit_edge609:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

land.lhs.true.if.end169_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

do.body132:                                       ; preds = %land.lhs.true
  %dp_level133 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %25 = ptrtoint ptr %dp_level133 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dp_level133, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp135 = icmp eq i8 %26, 0
  br i1 %cmp135, label %land.rhs137, label %do.body132.do.end165_crit_edge

do.body132.do.end165_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end165

land.rhs137:                                      ; preds = %do.body132
  %dp_module138 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %27 = ptrtoint ptr %dp_module138 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dp_module138, align 4
  %and139 = and i32 %28, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %land.rhs137.do.end165_crit_edge, label %do.end151, !prof !47

land.rhs137.do.end165_crit_edge:                  ; preds = %land.rhs137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end165

do.end151:                                        ; preds = %land.rhs137
  call void @__sanitizer_cov_trace_pc() #9
  %name153 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool155.not = icmp eq ptr %name153, null
  %spec.select378 = select i1 %tobool155.not, ptr @.str.3, ptr %name153
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1297, ptr noundef nonnull %spec.select378) #10
  br label %do.end165

do.end165:                                        ; preds = %do.end151, %land.rhs137.do.end165_crit_edge, %do.body132.do.end165_crit_edge
  %29 = and i8 %tlv_group.1397, -3
  br label %if.end169

if.end169:                                        ; preds = %do.end165, %land.lhs.true.if.end169_crit_edge, %land.lhs.true.if.end169_crit_edge609, %land.lhs.true.if.end169_crit_edge610, %land.lhs.true.if.end169_crit_edge611, %for.end111.if.end169_crit_edge
  %tlv_group.2 = phi i8 [ %tlv_group.1397, %for.end111.if.end169_crit_edge ], [ %29, %do.end165 ], [ %tlv_group.1397, %land.lhs.true.if.end169_crit_edge ], [ %tlv_group.1397, %land.lhs.true.if.end169_crit_edge609 ], [ %tlv_group.1397, %land.lhs.true.if.end169_crit_edge610 ], [ %tlv_group.1397, %land.lhs.true.if.end169_crit_edge611 ]
  %30 = and i8 %tlv_group.2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool172.not = icmp eq i8 %30, 0
  br i1 %tobool172.not, label %if.end169.if.end216_crit_edge, label %land.lhs.true173

if.end169.if.end216_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

land.lhs.true173:                                 ; preds = %if.end169
  %hw_info174 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %31 = ptrtoint ptr %hw_info174 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_info174, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp176.not = icmp eq i32 %32, 1
  br i1 %cmp176.not, label %land.lhs.true173.if.end216_crit_edge, label %do.body179

land.lhs.true173.if.end216_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

do.body179:                                       ; preds = %land.lhs.true173
  %dp_level180 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %33 = ptrtoint ptr %dp_level180 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level180, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp182 = icmp eq i8 %34, 0
  br i1 %cmp182, label %land.rhs184, label %do.body179.do.end212_crit_edge

do.body179.do.end212_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end212

land.rhs184:                                      ; preds = %do.body179
  %dp_module185 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %35 = ptrtoint ptr %dp_module185 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dp_module185, align 4
  %and186 = and i32 %36, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %land.rhs184.do.end212_crit_edge, label %do.end198, !prof !47

land.rhs184.do.end212_crit_edge:                  ; preds = %land.rhs184
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end212

do.end198:                                        ; preds = %land.rhs184
  call void @__sanitizer_cov_trace_pc() #9
  %name200 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool202.not = icmp eq ptr %name200, null
  %spec.select379 = select i1 %tobool202.not, ptr @.str.3, ptr %name200
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1304, ptr noundef nonnull %spec.select379) #10
  br label %do.end212

do.end212:                                        ; preds = %do.end198, %land.rhs184.do.end212_crit_edge, %do.body179.do.end212_crit_edge
  %37 = and i8 %tlv_group.2, -5
  br label %if.end216

if.end216:                                        ; preds = %do.end212, %land.lhs.true173.if.end216_crit_edge, %if.end169.if.end216_crit_edge
  %tlv_group.3 = phi i8 [ %tlv_group.2, %if.end169.if.end216_crit_edge ], [ %tlv_group.2, %land.lhs.true173.if.end216_crit_edge ], [ %37, %do.end212 ]
  %38 = and i8 %tlv_group.3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool219.not = icmp eq i8 %38, 0
  br i1 %tobool219.not, label %if.end216.if.end268_crit_edge, label %land.lhs.true220

if.end216.if.end268_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

land.lhs.true220:                                 ; preds = %if.end216
  %hw_info221 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %39 = ptrtoint ptr %hw_info221 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_info221, align 8
  %41 = and i32 %40, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %switch = icmp eq i32 %41, 2
  br i1 %switch, label %land.lhs.true220.if.end268_crit_edge, label %do.body231

land.lhs.true220.if.end268_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

do.body231:                                       ; preds = %land.lhs.true220
  %dp_level232 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %42 = ptrtoint ptr %dp_level232 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dp_level232, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp234 = icmp eq i8 %43, 0
  br i1 %cmp234, label %land.rhs236, label %do.body231.do.end264_crit_edge

do.body231.do.end264_crit_edge:                   ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end264

land.rhs236:                                      ; preds = %do.body231
  %dp_module237 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %44 = ptrtoint ptr %dp_module237 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dp_module237, align 4
  %and238 = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %land.rhs236.do.end264_crit_edge, label %do.end250, !prof !47

land.rhs236.do.end264_crit_edge:                  ; preds = %land.rhs236
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end264

do.end250:                                        ; preds = %land.rhs236
  call void @__sanitizer_cov_trace_pc() #9
  %name252 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool254.not = icmp eq ptr %name252, null
  %spec.select380 = select i1 %tobool254.not, ptr @.str.3, ptr %name252
  %call261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1312, ptr noundef nonnull %spec.select380) #10
  br label %do.end264

do.end264:                                        ; preds = %do.end250, %land.rhs236.do.end264_crit_edge, %do.body231.do.end264_crit_edge
  %46 = and i8 %tlv_group.3, -9
  br label %if.end268

if.end268:                                        ; preds = %do.end264, %land.lhs.true220.if.end268_crit_edge, %if.end216.if.end268_crit_edge
  %tlv_group.4 = phi i8 [ %tlv_group.3, %if.end216.if.end268_crit_edge ], [ %tlv_group.3, %land.lhs.true220.if.end268_crit_edge ], [ %46, %do.end264 ]
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %data.i1018.i.i = getelementptr inbounds %struct.qed_tlv_parsed_buf, ptr %buffer.i, i32 0, i32 1
  br label %for.body273

for.body273:                                      ; preds = %for.inc284.for.body273_crit_edge, %if.end268
  %id.0408 = phi i8 [ 1, %if.end268 ], [ %shl286, %for.inc284.for.body273_crit_edge ]
  %and276375 = and i8 %id.0408, %tlv_group.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and276375)
  %tobool277.not = icmp eq i8 %and276375, 0
  br i1 %tobool277.not, label %for.body273.for.inc284_crit_edge, label %if.then278

for.body273.for.inc284_crit_edge:                 ; preds = %for.body273
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc284

if.then278:                                       ; preds = %for.body273
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buffer.i) #7
  %47 = call ptr @memset(ptr %buffer.i, i32 255, i32 20)
  %call.i = call noalias ptr @vzalloc(i32 noundef 880) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then278.qed_mfw_update_tlvs.exit.thread_crit_edge, label %if.end.i

if.then278.qed_mfw_update_tlvs.exit.thread_crit_edge: ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_mfw_update_tlvs.exit.thread

if.end.i:                                         ; preds = %if.then278
  %conv.i = zext i8 %id.0408 to i32
  %call1.i = call i32 @qed_mfw_fill_tlv_data(ptr noundef %p_hwfn, i32 noundef %conv.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.body.lr.ph.i, label %if.then3.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %scsi_tsk_abort_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 171
  %scsi_tsk_abort.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 170
  %scsi_aca_active_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 169
  %scsi_aca_active.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 168
  %scsi_tsk_full_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 167
  %scsi_tsk_full.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 166
  %scsi_rsv_conflicts_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 165
  %scsi_rsv_conflicts.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 164
  %scsi_inter_cond_met_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 163
  %scsi_inter_cond_met.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 162
  %scsi_inter_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 161
  %scsi_inter.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 160
  %scsi_busy_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 159
  %scsi_busy.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 158
  %scsi_cond_met_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 157
  %scsi_cond_met.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 156
  %scsi_chks_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 155
  %scsi_chks.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 154
  %eofni_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 153
  %eofni.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 152
  %eofa_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 151
  %eofa.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 150
  %rx_lip_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 149
  %rx_lip.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 148
  %tx_lip_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 147
  %tx_lip.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 146
  %lrr_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 145
  %lrr.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 144
  %lr_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 143
  %lr.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 142
  %ols_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 141
  %ols.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 140
  %rx_nos_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 139
  %rx_nos.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 138
  %tx_nos_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 137
  %tx_nos.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 136
  %tx_tprlos_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 135
  %tx_tprlos.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 134
  %abort_task_sets_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 133
  %abort_task_sets.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 132
  %tx_lun_rst_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 131
  %tx_lun_rst.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 130
  %rx_rscn_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 127
  %rx_rscn.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 126
  %rx_abts_rjt_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 122
  %rx_abts_rjt.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 121
  %rx_abts_acc_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 120
  %rx_abts_acc.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 119
  %tx_abts_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 118
  %tx_abts.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 117
  %rx_accs_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 116
  %rx_accs.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 115
  %tx_prlis_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 114
  %tx_prlis.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 113
  %tx_accs_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 112
  %tx_accs.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 111
  %rx_logos_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 110
  %rx_logos.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 109
  %plogo_rjt_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 105
  %plogo_rjt.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 104
  %plogo_acc_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 103
  %plogo_acc.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 102
  %tx_plogos_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 101
  %tx_plogos.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 100
  %plogi_rjt_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 93
  %plogi_rjt.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 92
  %plogi_acc_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 91
  %plogi_acc.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 90
  %plogi_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 89
  %plogi.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 88
  %fdisc_rjt_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 87
  %fdisc_rjt.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 86
  %fdisc_acc_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 85
  %fdisc_acc.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 84
  %fdiscs_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 83
  %fdiscs.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 82
  %flogi_rjt_tstamp.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 81
  %flogi_rjt_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 80
  %flogi_rjt.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 79
  %flogi_acc_tstamp.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 78
  %flogi_tstamp.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 75
  %code_violation_err_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 72
  %code_violation_err.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 71
  %disparity_err_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 70
  %disparity_err.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 69
  %primtive_err_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 68
  %primtive_err.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 67
  %losig_err_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 66
  %losig_err.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 65
  %losync_err_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 64
  %losync_err.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 63
  %crc_count_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 59
  %crc_count.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 58
  %fcoe_tx_bytes_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 57
  %fcoe_tx_bytes.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 56
  %fcoe_tx_frames_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 55
  %fcoe_tx_frames.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 54
  %fcoe_rx_bytes_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 53
  %fcoe_rx_bytes.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 52
  %fcoe_rx_frames_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 51
  %fcoe_rx_frames.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 50
  %fcoe_rxq_depth_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 49
  %fcoe_rxq_depth.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 48
  %fcoe_txq_depth_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 47
  %fcoe_txq_depth.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 46
  %tx_bcast_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 45
  %tx_bcast.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 44
  %rx_bcast_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 43
  %rx_bcast.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 42
  %fcoe_boot_progress_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 41
  %fcoe_boot_progress.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 40
  %link_failures_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 39
  %link_failures.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 38
  %fip_rx_descr_size_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 37
  %fip_rx_descr_size.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 36
  %fip_tx_descr_size_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 35
  %fip_tx_descr_size.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 34
  %port_state_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 33
  %port_state.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 32
  %port_alias_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 31
  %port_alias.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 30
  %qos_pri_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 29
  %qos_pri.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 28
  %switch_fw_version_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 27
  %switch_fw_version.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 26
  %switch_model_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 25
  %switch_model.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 24
  %vendor_name_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 23
  %vendor_name.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 22
  %switch_portid_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 21
  %switch_portid.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 20
  %switch_portnum_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 19
  %switch_portnum.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 18
  %switch_name_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 17
  %switch_name.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 16
  %num_npiv_ids_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 15
  %num_npiv_ids.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 14
  %npiv_state_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 13
  %npiv_state.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 12
  %boot_type_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 11
  %boot_type.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 10
  %cr_tov_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 9
  %cr_tov.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 8
  %ed_tov_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 7
  %ed_tov.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 6
  %ra_tov_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 5
  %ra_tov.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 4
  %rt_tov_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 3
  %rt_tov.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 2
  %scsi_timeout_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 1
  %num_txqs_full_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 27
  %num_txqs_full.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 26
  %rxqs_empty_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 25
  %rxqs_empty.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 24
  %txqs_empty_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 23
  %txqs_empty.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 22
  %iov_offload_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 21
  %rx_descr_qdepth.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 18
  %tx_descr_qdepth.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 16
  %netq_count.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 10
  %rx_descr_size.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 8
  %tx_descr_size.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 6
  %prom_mode.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 4
  %lso_minseg_size_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 3
  %lso_maxoff_size_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %call.i, i32 0, i32 1
  %tx_bytes_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %call.i, i32 0, i32 10
  %tx_bytes.i.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %call.i, i32 0, i32 9
  %tx_frames_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %call.i, i32 0, i32 8
  %rx_desc_qdepth.i.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %call.i, i32 0, i32 20
  %tx_desc_qdepth.i.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %call.i, i32 0, i32 18
  %boot_progress.i.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %call.i, i32 0, i32 16
  %rx_desc_size_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %call.i, i32 0, i32 15
  %data_digest_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %call.i, i32 0, i32 5
  %header_digest_set.i.i = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, ptr %call.i, i32 0, i32 3
  br label %for.body.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @vfree(ptr noundef nonnull %call.i) #7
  br label %qed_mfw_update_tlvs.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %offset.0278.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add110.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call22, i32 %offset.0278.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %50 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %52 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx8.i, align 1
  %54 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp10.i = icmp eq i8 %55, 0
  br i1 %cmp10.i, label %land.rhs.i, label %for.body.i.do.end29.i_crit_edge

for.body.i.do.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

land.rhs.i:                                       ; preds = %for.body.i
  %56 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %57, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %land.rhs.i.do.end29.i_crit_edge, label %do.end.i, !prof !47

land.rhs.i.do.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i = zext i8 %49 to i32
  %conv23.i = zext i8 %51 to i32
  %conv25.i = zext i8 %53 to i32
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 1208, ptr noundef nonnull %name.i, i32 noundef %conv21.i, i32 noundef %conv23.i, i32 noundef %conv25.i) #10
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end.i, %land.rhs.i.do.end29.i_crit_edge, %for.body.i.do.end29.i_crit_edge
  %58 = zext i8 %id.0408 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %id.0408, label %if.else46.i [
    i8 1, label %if.then33.i
    i8 2, label %if.then38.i
    i8 4, label %if.then44.i
  ]

if.then33.i:                                      ; preds = %do.end29.i
  %59 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %49, label %if.then33.i.for.inc.i_crit_edge [
    i8 9, label %sw.bb.i.i
    i8 10, label %if.then33.i.sw.bb16.i.i_crit_edge
    i8 11, label %if.then33.i.sw.bb16.i.i_crit_edge612
    i8 12, label %if.then33.i.sw.bb16.i.i_crit_edge613
    i8 56, label %sw.bb26.i.i
    i8 65, label %sw.bb31.i.i
    i8 57, label %sw.bb36.i.i
    i8 67, label %sw.bb41.i.i
  ]

if.then33.i.sw.bb16.i.i_crit_edge613:             ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16.i.i

if.then33.i.sw.bb16.i.i_crit_edge612:             ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16.i.i

if.then33.i.sw.bb16.i.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16.i.i

if.then33.i.for.inc.i_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i.i:                                        ; preds = %if.then33.i
  %60 = ptrtoint ptr %lso_maxoff_size_set.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %lso_maxoff_size_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.for.inc.i_crit_edge, label %if.then.i.i

sw.bb.i.i.for.inc.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool3.not.i.i = icmp ne i8 %64, 0
  %conv4.i.i = zext i1 %tobool3.not.i.i to i8
  %65 = ptrtoint ptr %scsi_timeout_set.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %scsi_timeout_set.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool8.not.not.i.i = icmp eq i8 %66, 0
  %shl.i.i = select i1 %tobool8.not.not.i.i, i8 0, i8 2
  %or.i.i = or i8 %shl.i.i, %conv4.i.i
  %67 = ptrtoint ptr %data.i1018.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %or.i.i, ptr %data.i1018.i.i, align 4
  br label %return.sink.split.i.i

sw.bb16.i.i:                                      ; preds = %if.then33.i.sw.bb16.i.i_crit_edge, %if.then33.i.sw.bb16.i.i_crit_edge612, %if.then33.i.sw.bb16.i.i_crit_edge613
  %conv18.i.i = zext i8 %49 to i32
  %sub.i.i = add nsw i32 %conv18.i.i, -10
  %arrayidx19.i.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %call.i, i32 0, i32 2, i32 %sub.i.i
  %68 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx19.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool20.not.i.i = icmp eq i8 %69, 0
  br i1 %tobool20.not.i.i, label %sw.bb16.i.i.for.inc.i_crit_edge, label %cleanup.thread.i.i

sw.bb16.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

cleanup.thread.i.i:                               ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22.i.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %call.i, i32 0, i32 1, i32 %sub.i.i
  br label %return.sink.split.i.i

sw.bb26.i.i:                                      ; preds = %if.then33.i
  %70 = ptrtoint ptr %cr_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %cr_tov_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool27.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool27.not.i.i, label %sw.bb26.i.i.for.inc.i_crit_edge, label %sw.bb26.i.i.return.sink.split.i.i_crit_edge

sw.bb26.i.i.return.sink.split.i.i_crit_edge:      ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.bb26.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb31.i.i:                                      ; preds = %if.then33.i
  %72 = ptrtoint ptr %txqs_empty_set.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %txqs_empty_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool32.not.i.i = icmp eq i8 %73, 0
  br i1 %tobool32.not.i.i, label %sw.bb31.i.i.for.inc.i_crit_edge, label %sw.bb31.i.i.return.sink.split.i.i_crit_edge

sw.bb31.i.i.return.sink.split.i.i_crit_edge:      ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.bb31.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb36.i.i:                                      ; preds = %if.then33.i
  %74 = ptrtoint ptr %tx_frames_set.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tx_frames_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool37.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool37.not.i.i, label %sw.bb36.i.i.for.inc.i_crit_edge, label %sw.bb36.i.i.return.sink.split.i.i_crit_edge

sw.bb36.i.i.return.sink.split.i.i_crit_edge:      ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.bb36.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb41.i.i:                                      ; preds = %if.then33.i
  %76 = ptrtoint ptr %tx_bytes_set.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tx_bytes_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool42.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool42.not.i.i, label %sw.bb41.i.i.for.inc.i_crit_edge, label %sw.bb41.i.i.return.sink.split.i.i_crit_edge

sw.bb41.i.i.return.sink.split.i.i_crit_edge:      ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.bb41.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

return.sink.split.i.i:                            ; preds = %sw.bb41.i.i.return.sink.split.i.i_crit_edge, %sw.bb36.i.i.return.sink.split.i.i_crit_edge, %sw.bb31.i.i.return.sink.split.i.i_crit_edge, %sw.bb26.i.i.return.sink.split.i.i_crit_edge, %cleanup.thread.i.i, %if.then.i.i
  %arrayidx22.sink.i.i = phi ptr [ %arrayidx22.i.i, %cleanup.thread.i.i ], [ %data.i1018.i.i, %if.then.i.i ], [ %ed_tov_set.i.i, %sw.bb26.i.i.return.sink.split.i.i_crit_edge ], [ %num_npiv_ids.i.i, %sw.bb31.i.i.return.sink.split.i.i_crit_edge ], [ %switch_portnum_set.i.i, %sw.bb36.i.i.return.sink.split.i.i_crit_edge ], [ %tx_bytes.i.i, %sw.bb41.i.i.return.sink.split.i.i_crit_edge ]
  %retval.1.ph.i.i = phi i32 [ 6, %cleanup.thread.i.i ], [ 2, %if.then.i.i ], [ 8, %sw.bb26.i.i.return.sink.split.i.i_crit_edge ], [ 8, %sw.bb31.i.i.return.sink.split.i.i_crit_edge ], [ 8, %sw.bb36.i.i.return.sink.split.i.i_crit_edge ], [ 8, %sw.bb41.i.i.return.sink.split.i.i_crit_edge ]
  %78 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx22.sink.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

if.then38.i:                                      ; preds = %do.end29.i
  %79 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %49, label %if.then38.i.for.inc.i_crit_edge [
    i8 13, label %sw.bb.i145.i
    i8 14, label %sw.bb1.i.i
    i8 15, label %sw.bb6.i.i
    i8 16, label %sw.bb11.i.i
    i8 17, label %sw.bb16.i146.i
    i8 18, label %sw.bb21.i.i
    i8 60, label %sw.bb26.i148.i
    i8 61, label %sw.bb31.i151.i
    i8 62, label %sw.bb36.i154.i
    i8 63, label %sw.bb41.i157.i
    i8 68, label %sw.bb46.i.i
    i8 75, label %sw.bb51.i.i
    i8 76, label %sw.bb56.i.i
    i8 77, label %sw.bb61.i.i
    i8 78, label %sw.bb66.i.i
  ]

if.then38.i.for.inc.i_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i145.i:                                     ; preds = %if.then38.i
  %80 = ptrtoint ptr %lso_maxoff_size_set.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %lso_maxoff_size_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i144.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i144.i, label %sw.bb.i145.i.for.inc.i_crit_edge, label %sw.bb.i145.i.return.sink.split.i159.i_crit_edge

sw.bb.i145.i.return.sink.split.i159.i_crit_edge:  ; preds = %sw.bb.i145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb.i145.i.for.inc.i_crit_edge:                 ; preds = %sw.bb.i145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb1.i.i:                                       ; preds = %if.then38.i
  %82 = ptrtoint ptr %lso_minseg_size_set.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %lso_minseg_size_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool2.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool2.not.i.i, label %sw.bb1.i.i.for.inc.i_crit_edge, label %sw.bb1.i.i.return.sink.split.i159.i_crit_edge

sw.bb1.i.i.return.sink.split.i159.i_crit_edge:    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb1.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb6.i.i:                                       ; preds = %if.then38.i
  %84 = ptrtoint ptr %rt_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rt_tov_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool7.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool7.not.i.i, label %sw.bb6.i.i.for.inc.i_crit_edge, label %sw.bb6.i.i.return.sink.split.i159.i_crit_edge

sw.bb6.i.i.return.sink.split.i159.i_crit_edge:    ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb6.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb11.i.i:                                      ; preds = %if.then38.i
  %86 = ptrtoint ptr %ra_tov.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ra_tov.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool12.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool12.not.i.i, label %sw.bb11.i.i.for.inc.i_crit_edge, label %sw.bb11.i.i.return.sink.split.i159.i_crit_edge

sw.bb11.i.i.return.sink.split.i159.i_crit_edge:   ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb11.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb16.i146.i:                                   ; preds = %if.then38.i
  %88 = ptrtoint ptr %ra_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ra_tov_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool17.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool17.not.i.i, label %sw.bb16.i146.i.for.inc.i_crit_edge, label %sw.bb16.i146.i.return.sink.split.i159.i_crit_edge

sw.bb16.i146.i.return.sink.split.i159.i_crit_edge: ; preds = %sw.bb16.i146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb16.i146.i.for.inc.i_crit_edge:               ; preds = %sw.bb16.i146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb21.i.i:                                      ; preds = %if.then38.i
  %90 = ptrtoint ptr %ed_tov.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ed_tov.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool22.not.i.i = icmp eq i8 %91, 0
  br i1 %tobool22.not.i.i, label %sw.bb21.i.i.for.inc.i_crit_edge, label %sw.bb21.i.i.return.sink.split.i159.i_crit_edge

sw.bb21.i.i.return.sink.split.i159.i_crit_edge:   ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb21.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb26.i148.i:                                   ; preds = %if.then38.i
  %92 = ptrtoint ptr %cr_tov.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cr_tov.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool27.not.i147.i = icmp eq i8 %93, 0
  br i1 %tobool27.not.i147.i, label %sw.bb26.i148.i.for.inc.i_crit_edge, label %sw.bb26.i148.i.return.sink.split.i159.i_crit_edge

sw.bb26.i148.i.return.sink.split.i159.i_crit_edge: ; preds = %sw.bb26.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb26.i148.i.for.inc.i_crit_edge:               ; preds = %sw.bb26.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb31.i151.i:                                   ; preds = %if.then38.i
  %94 = ptrtoint ptr %npiv_state_set.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %npiv_state_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool32.not.i150.i = icmp eq i8 %95, 0
  br i1 %tobool32.not.i150.i, label %sw.bb31.i151.i.for.inc.i_crit_edge, label %sw.bb31.i151.i.return.sink.split.i159.i_crit_edge

sw.bb31.i151.i.return.sink.split.i159.i_crit_edge: ; preds = %sw.bb31.i151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb31.i151.i.for.inc.i_crit_edge:               ; preds = %sw.bb31.i151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb36.i154.i:                                   ; preds = %if.then38.i
  %96 = ptrtoint ptr %num_npiv_ids.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %num_npiv_ids.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool37.not.i153.i = icmp eq i8 %97, 0
  br i1 %tobool37.not.i153.i, label %sw.bb36.i154.i.for.inc.i_crit_edge, label %sw.bb36.i154.i.return.sink.split.i159.i_crit_edge

sw.bb36.i154.i.return.sink.split.i159.i_crit_edge: ; preds = %sw.bb36.i154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb36.i154.i.for.inc.i_crit_edge:               ; preds = %sw.bb36.i154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb41.i157.i:                                   ; preds = %if.then38.i
  %98 = ptrtoint ptr %num_npiv_ids_set.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %num_npiv_ids_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool42.not.i156.i = icmp eq i8 %99, 0
  br i1 %tobool42.not.i156.i, label %sw.bb41.i157.i.for.inc.i_crit_edge, label %sw.bb41.i157.i.return.sink.split.i159.i_crit_edge

sw.bb41.i157.i.return.sink.split.i159.i_crit_edge: ; preds = %sw.bb41.i157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb41.i157.i.for.inc.i_crit_edge:               ; preds = %sw.bb41.i157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb46.i.i:                                      ; preds = %if.then38.i
  %100 = ptrtoint ptr %iov_offload_set.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %iov_offload_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool47.not.i.i = icmp eq i8 %101, 0
  br i1 %tobool47.not.i.i, label %sw.bb46.i.i.for.inc.i_crit_edge, label %sw.bb46.i.i.return.sink.split.i159.i_crit_edge

sw.bb46.i.i.return.sink.split.i159.i_crit_edge:   ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb46.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb51.i.i:                                      ; preds = %if.then38.i
  %102 = ptrtoint ptr %txqs_empty_set.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %txqs_empty_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool52.not.i.i = icmp eq i8 %103, 0
  br i1 %tobool52.not.i.i, label %sw.bb51.i.i.for.inc.i_crit_edge, label %sw.bb51.i.i.return.sink.split.i159.i_crit_edge

sw.bb51.i.i.return.sink.split.i159.i_crit_edge:   ; preds = %sw.bb51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb51.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb56.i.i:                                      ; preds = %if.then38.i
  %104 = ptrtoint ptr %rxqs_empty_set.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rxqs_empty_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool57.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool57.not.i.i, label %sw.bb56.i.i.for.inc.i_crit_edge, label %sw.bb56.i.i.return.sink.split.i159.i_crit_edge

sw.bb56.i.i.return.sink.split.i159.i_crit_edge:   ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb56.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb61.i.i:                                      ; preds = %if.then38.i
  %106 = ptrtoint ptr %num_txqs_full_set.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %num_txqs_full_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool62.not.i.i = icmp eq i8 %107, 0
  br i1 %tobool62.not.i.i, label %sw.bb61.i.i.for.inc.i_crit_edge, label %sw.bb61.i.i.return.sink.split.i159.i_crit_edge

sw.bb61.i.i.return.sink.split.i159.i_crit_edge:   ; preds = %sw.bb61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb61.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb66.i.i:                                      ; preds = %if.then38.i
  %108 = ptrtoint ptr %switch_portnum.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %switch_portnum.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool67.not.i.i = icmp eq i8 %109, 0
  br i1 %tobool67.not.i.i, label %sw.bb66.i.i.for.inc.i_crit_edge, label %sw.bb66.i.i.return.sink.split.i159.i_crit_edge

sw.bb66.i.i.return.sink.split.i159.i_crit_edge:   ; preds = %sw.bb66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i159.i

sw.bb66.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

return.sink.split.i159.i:                         ; preds = %sw.bb66.i.i.return.sink.split.i159.i_crit_edge, %sw.bb61.i.i.return.sink.split.i159.i_crit_edge, %sw.bb56.i.i.return.sink.split.i159.i_crit_edge, %sw.bb51.i.i.return.sink.split.i159.i_crit_edge, %sw.bb46.i.i.return.sink.split.i159.i_crit_edge, %sw.bb41.i157.i.return.sink.split.i159.i_crit_edge, %sw.bb36.i154.i.return.sink.split.i159.i_crit_edge, %sw.bb31.i151.i.return.sink.split.i159.i_crit_edge, %sw.bb26.i148.i.return.sink.split.i159.i_crit_edge, %sw.bb21.i.i.return.sink.split.i159.i_crit_edge, %sw.bb16.i146.i.return.sink.split.i159.i_crit_edge, %sw.bb11.i.i.return.sink.split.i159.i_crit_edge, %sw.bb6.i.i.return.sink.split.i159.i_crit_edge, %sw.bb1.i.i.return.sink.split.i159.i_crit_edge, %sw.bb.i145.i.return.sink.split.i159.i_crit_edge
  %num_rxqs_full.sink.i.i = phi ptr [ %call.i, %sw.bb.i145.i.return.sink.split.i159.i_crit_edge ], [ %rt_tov.i.i, %sw.bb1.i.i.return.sink.split.i159.i_crit_edge ], [ %prom_mode.i.i, %sw.bb6.i.i.return.sink.split.i159.i_crit_edge ], [ %tx_descr_size.i.i, %sw.bb11.i.i.return.sink.split.i159.i_crit_edge ], [ %rx_descr_size.i.i, %sw.bb16.i146.i.return.sink.split.i159.i_crit_edge ], [ %netq_count.i.i, %sw.bb21.i.i.return.sink.split.i159.i_crit_edge ], [ %ed_tov_set.i.i, %sw.bb26.i148.i.return.sink.split.i159.i_crit_edge ], [ %cr_tov_set.i.i, %sw.bb31.i151.i.return.sink.split.i159.i_crit_edge ], [ %tx_descr_qdepth.i.i, %sw.bb36.i154.i.return.sink.split.i159.i_crit_edge ], [ %rx_descr_qdepth.i.i, %sw.bb41.i157.i.return.sink.split.i159.i_crit_edge ], [ %switch_name.i.i, %sw.bb46.i.i.return.sink.split.i159.i_crit_edge ], [ %txqs_empty.i.i, %sw.bb51.i.i.return.sink.split.i159.i_crit_edge ], [ %rxqs_empty.i.i, %sw.bb56.i.i.return.sink.split.i159.i_crit_edge ], [ %num_txqs_full.i.i, %sw.bb61.i.i.return.sink.split.i159.i_crit_edge ], [ %switch_name_set.i.i, %sw.bb66.i.i.return.sink.split.i159.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ 2, %sw.bb.i145.i.return.sink.split.i159.i_crit_edge ], [ 2, %sw.bb1.i.i.return.sink.split.i159.i_crit_edge ], [ 1, %sw.bb6.i.i.return.sink.split.i159.i_crit_edge ], [ 2, %sw.bb11.i.i.return.sink.split.i159.i_crit_edge ], [ 2, %sw.bb16.i146.i.return.sink.split.i159.i_crit_edge ], [ 2, %sw.bb21.i.i.return.sink.split.i159.i_crit_edge ], [ 4, %sw.bb26.i148.i.return.sink.split.i159.i_crit_edge ], [ 4, %sw.bb31.i151.i.return.sink.split.i159.i_crit_edge ], [ 2, %sw.bb36.i154.i.return.sink.split.i159.i_crit_edge ], [ 2, %sw.bb41.i157.i.return.sink.split.i159.i_crit_edge ], [ 1, %sw.bb46.i.i.return.sink.split.i159.i_crit_edge ], [ 1, %sw.bb51.i.i.return.sink.split.i159.i_crit_edge ], [ 1, %sw.bb56.i.i.return.sink.split.i159.i_crit_edge ], [ 1, %sw.bb61.i.i.return.sink.split.i159.i_crit_edge ], [ 1, %sw.bb66.i.i.return.sink.split.i159.i_crit_edge ]
  %110 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %num_rxqs_full.sink.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

if.then44.i:                                      ; preds = %do.end29.i
  %111 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %49, label %if.then44.i.for.inc.i_crit_edge [
    i8 2, label %sw.bb.i161.i
    i8 3, label %sw.bb1.i164.i
    i8 4, label %sw.bb6.i167.i
    i8 5, label %sw.bb11.i170.i
    i8 6, label %sw.bb16.i173.i
    i8 7, label %sw.bb21.i176.i
    i8 22, label %sw.bb26.i179.i
    i8 23, label %sw.bb31.i182.i
    i8 24, label %sw.bb36.i185.i
    i8 25, label %sw.bb41.i188.i
    i8 26, label %sw.bb46.i191.i
    i8 27, label %sw.bb51.i194.i
    i8 28, label %sw.bb56.i197.i
    i8 29, label %sw.bb61.i200.i
    i8 30, label %sw.bb66.i203.i
    i8 31, label %sw.bb71.i.i
    i8 32, label %sw.bb76.i.i
    i8 33, label %sw.bb81.i.i
    i8 34, label %sw.bb86.i.i
    i8 35, label %sw.bb91.i.i
    i8 36, label %sw.bb96.i.i
    i8 58, label %sw.bb101.i.i
    i8 59, label %sw.bb106.i.i
    i8 79, label %sw.bb111.i.i
    i8 80, label %sw.bb116.i.i
    i8 81, label %sw.bb121.i.i
    i8 82, label %sw.bb126.i.i
    i8 83, label %sw.bb131.i.i
    i8 84, label %sw.bb136.i.i
    i8 85, label %sw.bb141.i.i
    i8 86, label %if.then44.i.sw.bb146.i.i_crit_edge
    i8 88, label %if.then44.i.sw.bb146.i.i_crit_edge614
    i8 90, label %if.then44.i.sw.bb146.i.i_crit_edge615
    i8 92, label %if.then44.i.sw.bb146.i.i_crit_edge616
    i8 94, label %if.then44.i.sw.bb146.i.i_crit_edge617
    i8 87, label %if.then44.i.sw.bb156.i.i_crit_edge
    i8 89, label %if.then44.i.sw.bb156.i.i_crit_edge618
    i8 91, label %if.then44.i.sw.bb156.i.i_crit_edge619
    i8 93, label %if.then44.i.sw.bb156.i.i_crit_edge620
    i8 95, label %if.then44.i.sw.bb156.i.i_crit_edge621
    i8 96, label %sw.bb164.i.i
    i8 97, label %sw.bb169.i.i
    i8 98, label %sw.bb174.i.i
    i8 99, label %sw.bb179.i.i
    i8 100, label %sw.bb184.i.i
    i8 101, label %if.then44.i.sw.bb189.i.i_crit_edge
    i8 102, label %if.then44.i.sw.bb189.i.i_crit_edge622
    i8 103, label %if.then44.i.sw.bb189.i.i_crit_edge623
    i8 104, label %if.then44.i.sw.bb189.i.i_crit_edge624
    i8 105, label %if.then44.i.if.end50.i_crit_edge
    i8 106, label %if.then44.i.sw.bb204.i.i_crit_edge
    i8 107, label %if.then44.i.sw.bb204.i.i_crit_edge625
    i8 108, label %if.then44.i.sw.bb204.i.i_crit_edge626
    i8 109, label %if.then44.i.sw.bb204.i.i_crit_edge627
    i8 110, label %sw.bb217.i.i
    i8 111, label %sw.bb219.i.i
    i8 112, label %sw.bb224.i.i
    i8 113, label %sw.bb226.i.i
    i8 114, label %sw.bb231.i.i
    i8 115, label %sw.bb236.i.i
    i8 116, label %sw.bb241.i.i
    i8 117, label %sw.bb246.i.i
    i8 118, label %sw.bb251.i.i
    i8 119, label %if.then44.i.sw.bb256.i.i_crit_edge
    i8 121, label %if.then44.i.sw.bb256.i.i_crit_edge628
    i8 123, label %if.then44.i.sw.bb256.i.i_crit_edge629
    i8 125, label %if.then44.i.sw.bb256.i.i_crit_edge630
    i8 127, label %if.then44.i.sw.bb256.i.i_crit_edge631
    i8 120, label %if.then44.i.sw.bb270.i.i_crit_edge
    i8 122, label %if.then44.i.sw.bb270.i.i_crit_edge632
    i8 124, label %if.then44.i.sw.bb270.i.i_crit_edge633
    i8 126, label %if.then44.i.sw.bb270.i.i_crit_edge634
    i8 -128, label %if.then44.i.sw.bb270.i.i_crit_edge635
    i8 -127, label %if.then44.i.sw.bb279.i.i_crit_edge
    i8 -125, label %if.then44.i.sw.bb279.i.i_crit_edge636
    i8 -123, label %if.then44.i.sw.bb279.i.i_crit_edge637
    i8 -121, label %if.then44.i.sw.bb279.i.i_crit_edge638
    i8 -119, label %if.then44.i.sw.bb279.i.i_crit_edge639
    i8 -126, label %if.then44.i.sw.bb293.i.i_crit_edge
    i8 -124, label %if.then44.i.sw.bb293.i.i_crit_edge640
    i8 -122, label %if.then44.i.sw.bb293.i.i_crit_edge641
    i8 -120, label %if.then44.i.sw.bb293.i.i_crit_edge642
    i8 -118, label %if.then44.i.sw.bb293.i.i_crit_edge643
    i8 -117, label %sw.bb302.i.i
    i8 -116, label %sw.bb307.i.i
    i8 -115, label %sw.bb312.i.i
    i8 -114, label %if.then44.i.sw.bb317.i.i_crit_edge
    i8 -112, label %if.then44.i.sw.bb317.i.i_crit_edge644
    i8 -110, label %if.then44.i.sw.bb317.i.i_crit_edge645
    i8 -108, label %if.then44.i.sw.bb317.i.i_crit_edge646
    i8 -106, label %if.then44.i.sw.bb317.i.i_crit_edge647
    i8 -113, label %if.then44.i.sw.bb331.i.i_crit_edge
    i8 -111, label %if.then44.i.sw.bb331.i.i_crit_edge648
    i8 -109, label %if.then44.i.sw.bb331.i.i_crit_edge649
    i8 -107, label %if.then44.i.sw.bb331.i.i_crit_edge650
    i8 -105, label %if.then44.i.sw.bb331.i.i_crit_edge651
    i8 -104, label %sw.bb340.i.i
    i8 -103, label %sw.bb345.i.i
    i8 -102, label %sw.bb350.i.i
    i8 -101, label %sw.bb355.i.i
    i8 -100, label %sw.bb360.i.i
    i8 -99, label %sw.bb365.i.i
    i8 -98, label %sw.bb370.i.i
    i8 -97, label %if.then44.i.sw.bb375.i.i_crit_edge
    i8 -95, label %if.then44.i.sw.bb375.i.i_crit_edge652
    i8 -93, label %if.then44.i.sw.bb375.i.i_crit_edge653
    i8 -91, label %if.then44.i.sw.bb375.i.i_crit_edge654
    i8 -89, label %if.then44.i.sw.bb375.i.i_crit_edge655
    i8 -96, label %if.then44.i.sw.bb389.i.i_crit_edge
    i8 -94, label %if.then44.i.sw.bb389.i.i_crit_edge656
    i8 -92, label %if.then44.i.sw.bb389.i.i_crit_edge657
    i8 -90, label %if.then44.i.sw.bb389.i.i_crit_edge658
    i8 -88, label %if.then44.i.sw.bb389.i.i_crit_edge659
    i8 -87, label %sw.bb398.i.i
    i8 -86, label %if.then44.i.sw.bb403.i.i_crit_edge
    i8 -85, label %if.then44.i.sw.bb403.i.i_crit_edge660
    i8 -84, label %if.then44.i.sw.bb403.i.i_crit_edge661
    i8 -83, label %if.then44.i.sw.bb403.i.i_crit_edge662
    i8 -82, label %sw.bb416.i.i
    i8 -81, label %sw.bb421.i.i
    i8 -80, label %sw.bb426.i.i
    i8 -79, label %sw.bb431.i.i
    i8 -78, label %sw.bb436.i.i
    i8 -77, label %sw.bb441.i.i
    i8 -76, label %sw.bb446.i.i
    i8 -75, label %sw.bb451.i.i
    i8 -74, label %sw.bb456.i.i
    i8 -73, label %sw.bb461.i.i
    i8 -72, label %sw.bb466.i.i
    i8 -71, label %sw.bb471.i.i
    i8 -70, label %sw.bb476.i.i
    i8 -69, label %sw.bb481.i.i
    i8 -68, label %sw.bb486.i.i
    i8 -67, label %sw.bb491.i.i
    i8 -66, label %sw.bb496.i.i
    i8 -65, label %sw.bb501.i.i
    i8 -64, label %sw.bb506.i.i
    i8 -63, label %sw.bb511.i.i
    i8 -62, label %sw.bb516.i.i
    i8 -61, label %if.then44.i.sw.bb521.i.i_crit_edge
    i8 -59, label %if.then44.i.sw.bb521.i.i_crit_edge663
    i8 -57, label %if.then44.i.sw.bb521.i.i_crit_edge664
    i8 -55, label %if.then44.i.sw.bb521.i.i_crit_edge665
    i8 -53, label %if.then44.i.sw.bb521.i.i_crit_edge666
    i8 -60, label %if.then44.i.sw.bb535.i.i_crit_edge
    i8 -58, label %if.then44.i.sw.bb535.i.i_crit_edge667
    i8 -56, label %if.then44.i.sw.bb535.i.i_crit_edge668
    i8 -54, label %if.then44.i.sw.bb535.i.i_crit_edge669
    i8 -52, label %if.then44.i.sw.bb535.i.i_crit_edge670
  ]

if.then44.i.sw.bb535.i.i_crit_edge670:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb535.i.i

if.then44.i.sw.bb535.i.i_crit_edge669:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb535.i.i

if.then44.i.sw.bb535.i.i_crit_edge668:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb535.i.i

if.then44.i.sw.bb535.i.i_crit_edge667:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb535.i.i

if.then44.i.sw.bb535.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb535.i.i

if.then44.i.sw.bb521.i.i_crit_edge666:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb521.i.i

if.then44.i.sw.bb521.i.i_crit_edge665:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb521.i.i

if.then44.i.sw.bb521.i.i_crit_edge664:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb521.i.i

if.then44.i.sw.bb521.i.i_crit_edge663:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb521.i.i

if.then44.i.sw.bb521.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb521.i.i

if.then44.i.sw.bb403.i.i_crit_edge662:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb403.i.i

if.then44.i.sw.bb403.i.i_crit_edge661:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb403.i.i

if.then44.i.sw.bb403.i.i_crit_edge660:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb403.i.i

if.then44.i.sw.bb403.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb403.i.i

if.then44.i.sw.bb389.i.i_crit_edge659:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb389.i.i

if.then44.i.sw.bb389.i.i_crit_edge658:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb389.i.i

if.then44.i.sw.bb389.i.i_crit_edge657:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb389.i.i

if.then44.i.sw.bb389.i.i_crit_edge656:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb389.i.i

if.then44.i.sw.bb389.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb389.i.i

if.then44.i.sw.bb375.i.i_crit_edge655:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb375.i.i

if.then44.i.sw.bb375.i.i_crit_edge654:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb375.i.i

if.then44.i.sw.bb375.i.i_crit_edge653:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb375.i.i

if.then44.i.sw.bb375.i.i_crit_edge652:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb375.i.i

if.then44.i.sw.bb375.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb375.i.i

if.then44.i.sw.bb331.i.i_crit_edge651:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb331.i.i

if.then44.i.sw.bb331.i.i_crit_edge650:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb331.i.i

if.then44.i.sw.bb331.i.i_crit_edge649:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb331.i.i

if.then44.i.sw.bb331.i.i_crit_edge648:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb331.i.i

if.then44.i.sw.bb331.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb331.i.i

if.then44.i.sw.bb317.i.i_crit_edge647:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb317.i.i

if.then44.i.sw.bb317.i.i_crit_edge646:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb317.i.i

if.then44.i.sw.bb317.i.i_crit_edge645:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb317.i.i

if.then44.i.sw.bb317.i.i_crit_edge644:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb317.i.i

if.then44.i.sw.bb317.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb317.i.i

if.then44.i.sw.bb293.i.i_crit_edge643:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb293.i.i

if.then44.i.sw.bb293.i.i_crit_edge642:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb293.i.i

if.then44.i.sw.bb293.i.i_crit_edge641:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb293.i.i

if.then44.i.sw.bb293.i.i_crit_edge640:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb293.i.i

if.then44.i.sw.bb293.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb293.i.i

if.then44.i.sw.bb279.i.i_crit_edge639:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb279.i.i

if.then44.i.sw.bb279.i.i_crit_edge638:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb279.i.i

if.then44.i.sw.bb279.i.i_crit_edge637:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb279.i.i

if.then44.i.sw.bb279.i.i_crit_edge636:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb279.i.i

if.then44.i.sw.bb279.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb279.i.i

if.then44.i.sw.bb270.i.i_crit_edge635:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb270.i.i

if.then44.i.sw.bb270.i.i_crit_edge634:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb270.i.i

if.then44.i.sw.bb270.i.i_crit_edge633:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb270.i.i

if.then44.i.sw.bb270.i.i_crit_edge632:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb270.i.i

if.then44.i.sw.bb270.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb270.i.i

if.then44.i.sw.bb256.i.i_crit_edge631:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb256.i.i

if.then44.i.sw.bb256.i.i_crit_edge630:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb256.i.i

if.then44.i.sw.bb256.i.i_crit_edge629:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb256.i.i

if.then44.i.sw.bb256.i.i_crit_edge628:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb256.i.i

if.then44.i.sw.bb256.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb256.i.i

if.then44.i.sw.bb204.i.i_crit_edge627:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb204.i.i

if.then44.i.sw.bb204.i.i_crit_edge626:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb204.i.i

if.then44.i.sw.bb204.i.i_crit_edge625:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb204.i.i

if.then44.i.sw.bb204.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb204.i.i

if.then44.i.if.end50.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then44.i.sw.bb189.i.i_crit_edge624:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb189.i.i

if.then44.i.sw.bb189.i.i_crit_edge623:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb189.i.i

if.then44.i.sw.bb189.i.i_crit_edge622:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb189.i.i

if.then44.i.sw.bb189.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb189.i.i

if.then44.i.sw.bb156.i.i_crit_edge621:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb156.i.i

if.then44.i.sw.bb156.i.i_crit_edge620:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb156.i.i

if.then44.i.sw.bb156.i.i_crit_edge619:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb156.i.i

if.then44.i.sw.bb156.i.i_crit_edge618:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb156.i.i

if.then44.i.sw.bb156.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb156.i.i

if.then44.i.sw.bb146.i.i_crit_edge617:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb146.i.i

if.then44.i.sw.bb146.i.i_crit_edge616:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb146.i.i

if.then44.i.sw.bb146.i.i_crit_edge615:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb146.i.i

if.then44.i.sw.bb146.i.i_crit_edge614:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb146.i.i

if.then44.i.sw.bb146.i.i_crit_edge:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb146.i.i

if.then44.i.for.inc.i_crit_edge:                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i161.i:                                     ; preds = %if.then44.i
  %112 = ptrtoint ptr %scsi_timeout_set.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %scsi_timeout_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i160.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i160.i, label %sw.bb.i161.i.for.inc.i_crit_edge, label %if.then.i162.i

sw.bb.i161.i.for.inc.i_crit_edge:                 ; preds = %sw.bb.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i162.i:                                   ; preds = %sw.bb.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb1.i164.i:                                    ; preds = %if.then44.i
  %115 = ptrtoint ptr %rt_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rt_tov_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool2.not.i163.i = icmp eq i8 %116, 0
  br i1 %tobool2.not.i163.i, label %sw.bb1.i164.i.for.inc.i_crit_edge, label %if.then3.i165.i

sw.bb1.i164.i.for.inc.i_crit_edge:                ; preds = %sw.bb1.i164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then3.i165.i:                                  ; preds = %sw.bb1.i164.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %rt_tov.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb6.i167.i:                                    ; preds = %if.then44.i
  %118 = ptrtoint ptr %ra_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ra_tov_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool7.not.i166.i = icmp eq i8 %119, 0
  br i1 %tobool7.not.i166.i, label %sw.bb6.i167.i.for.inc.i_crit_edge, label %if.then8.i168.i

sw.bb6.i167.i.for.inc.i_crit_edge:                ; preds = %sw.bb6.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then8.i168.i:                                  ; preds = %sw.bb6.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %ra_tov.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb11.i170.i:                                   ; preds = %if.then44.i
  %121 = ptrtoint ptr %ed_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ed_tov_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool12.not.i169.i = icmp eq i8 %122, 0
  br i1 %tobool12.not.i169.i, label %sw.bb11.i170.i.for.inc.i_crit_edge, label %if.then13.i171.i

sw.bb11.i170.i.for.inc.i_crit_edge:               ; preds = %sw.bb11.i170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then13.i171.i:                                 ; preds = %sw.bb11.i170.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %ed_tov.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb16.i173.i:                                   ; preds = %if.then44.i
  %124 = ptrtoint ptr %cr_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %cr_tov_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool17.not.i172.i = icmp eq i8 %125, 0
  br i1 %tobool17.not.i172.i, label %sw.bb16.i173.i.for.inc.i_crit_edge, label %if.then18.i174.i

sw.bb16.i173.i.for.inc.i_crit_edge:               ; preds = %sw.bb16.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then18.i174.i:                                 ; preds = %sw.bb16.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %cr_tov.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb21.i176.i:                                   ; preds = %if.then44.i
  %127 = ptrtoint ptr %boot_type_set.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %boot_type_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool22.not.i175.i = icmp eq i8 %128, 0
  br i1 %tobool22.not.i175.i, label %sw.bb21.i176.i.for.inc.i_crit_edge, label %if.then23.i177.i

sw.bb21.i176.i.for.inc.i_crit_edge:               ; preds = %sw.bb21.i176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then23.i177.i:                                 ; preds = %sw.bb21.i176.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %boot_type.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb26.i179.i:                                   ; preds = %if.then44.i
  %130 = ptrtoint ptr %npiv_state_set.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %npiv_state_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool27.not.i178.i = icmp eq i8 %131, 0
  br i1 %tobool27.not.i178.i, label %sw.bb26.i179.i.for.inc.i_crit_edge, label %if.then28.i180.i

sw.bb26.i179.i.for.inc.i_crit_edge:               ; preds = %sw.bb26.i179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then28.i180.i:                                 ; preds = %sw.bb26.i179.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %npiv_state.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb31.i182.i:                                   ; preds = %if.then44.i
  %133 = ptrtoint ptr %num_npiv_ids_set.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %num_npiv_ids_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool32.not.i181.i = icmp eq i8 %134, 0
  br i1 %tobool32.not.i181.i, label %sw.bb31.i182.i.for.inc.i_crit_edge, label %if.then33.i183.i

sw.bb31.i182.i.for.inc.i_crit_edge:               ; preds = %sw.bb31.i182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then33.i183.i:                                 ; preds = %sw.bb31.i182.i
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %num_npiv_ids.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb36.i185.i:                                   ; preds = %if.then44.i
  %136 = ptrtoint ptr %switch_name_set.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %switch_name_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool37.not.i184.i = icmp eq i8 %137, 0
  br i1 %tobool37.not.i184.i, label %sw.bb36.i185.i.for.inc.i_crit_edge, label %if.then38.i186.i

sw.bb36.i185.i.for.inc.i_crit_edge:               ; preds = %sw.bb36.i185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then38.i186.i:                                 ; preds = %sw.bb36.i185.i
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %switch_name.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb41.i188.i:                                   ; preds = %if.then44.i
  %139 = ptrtoint ptr %switch_portnum_set.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %switch_portnum_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool42.not.i187.i = icmp eq i8 %140, 0
  br i1 %tobool42.not.i187.i, label %sw.bb41.i188.i.for.inc.i_crit_edge, label %if.then43.i189.i

sw.bb41.i188.i.for.inc.i_crit_edge:               ; preds = %sw.bb41.i188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then43.i189.i:                                 ; preds = %sw.bb41.i188.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %switch_portnum.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb46.i191.i:                                   ; preds = %if.then44.i
  %142 = ptrtoint ptr %switch_portid_set.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %switch_portid_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool47.not.i190.i = icmp eq i8 %143, 0
  br i1 %tobool47.not.i190.i, label %sw.bb46.i191.i.for.inc.i_crit_edge, label %if.then48.i192.i

sw.bb46.i191.i.for.inc.i_crit_edge:               ; preds = %sw.bb46.i191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then48.i192.i:                                 ; preds = %sw.bb46.i191.i
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %switch_portid.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb51.i194.i:                                   ; preds = %if.then44.i
  %145 = ptrtoint ptr %vendor_name_set.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %vendor_name_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool52.not.i193.i = icmp eq i8 %146, 0
  br i1 %tobool52.not.i193.i, label %sw.bb51.i194.i.for.inc.i_crit_edge, label %if.then53.i195.i

sw.bb51.i194.i.for.inc.i_crit_edge:               ; preds = %sw.bb51.i194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then53.i195.i:                                 ; preds = %sw.bb51.i194.i
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %vendor_name.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb56.i197.i:                                   ; preds = %if.then44.i
  %148 = ptrtoint ptr %switch_model_set.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %switch_model_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool57.not.i196.i = icmp eq i8 %149, 0
  br i1 %tobool57.not.i196.i, label %sw.bb56.i197.i.for.inc.i_crit_edge, label %if.then58.i198.i

sw.bb56.i197.i.for.inc.i_crit_edge:               ; preds = %sw.bb56.i197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then58.i198.i:                                 ; preds = %sw.bb56.i197.i
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %switch_model.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb61.i200.i:                                   ; preds = %if.then44.i
  %151 = ptrtoint ptr %switch_fw_version_set.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %switch_fw_version_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool62.not.i199.i = icmp eq i8 %152, 0
  br i1 %tobool62.not.i199.i, label %sw.bb61.i200.i.for.inc.i_crit_edge, label %if.then63.i201.i

sw.bb61.i200.i.for.inc.i_crit_edge:               ; preds = %sw.bb61.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then63.i201.i:                                 ; preds = %sw.bb61.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %switch_fw_version.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb66.i203.i:                                   ; preds = %if.then44.i
  %154 = ptrtoint ptr %qos_pri_set.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %qos_pri_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool67.not.i202.i = icmp eq i8 %155, 0
  br i1 %tobool67.not.i202.i, label %sw.bb66.i203.i.for.inc.i_crit_edge, label %if.then68.i204.i

sw.bb66.i203.i.for.inc.i_crit_edge:               ; preds = %sw.bb66.i203.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then68.i204.i:                                 ; preds = %sw.bb66.i203.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %qos_pri.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb71.i.i:                                      ; preds = %if.then44.i
  %157 = ptrtoint ptr %port_alias_set.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %port_alias_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool72.not.i.i = icmp eq i8 %158, 0
  br i1 %tobool72.not.i.i, label %sw.bb71.i.i.for.inc.i_crit_edge, label %if.then73.i.i

sw.bb71.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then73.i.i:                                    ; preds = %sw.bb71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %port_alias.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb76.i.i:                                      ; preds = %if.then44.i
  %160 = ptrtoint ptr %port_state_set.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %port_state_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool77.not.i.i = icmp eq i8 %161, 0
  br i1 %tobool77.not.i.i, label %sw.bb76.i.i.for.inc.i_crit_edge, label %if.then78.i.i

sw.bb76.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then78.i.i:                                    ; preds = %sw.bb76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %port_state.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb81.i.i:                                      ; preds = %if.then44.i
  %163 = ptrtoint ptr %fip_tx_descr_size_set.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %fip_tx_descr_size_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool82.not.i.i = icmp eq i8 %164, 0
  br i1 %tobool82.not.i.i, label %sw.bb81.i.i.for.inc.i_crit_edge, label %if.then83.i.i

sw.bb81.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then83.i.i:                                    ; preds = %sw.bb81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %fip_tx_descr_size.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb86.i.i:                                      ; preds = %if.then44.i
  %166 = ptrtoint ptr %fip_rx_descr_size_set.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %fip_rx_descr_size_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool87.not.i.i = icmp eq i8 %167, 0
  br i1 %tobool87.not.i.i, label %sw.bb86.i.i.for.inc.i_crit_edge, label %if.then88.i.i

sw.bb86.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then88.i.i:                                    ; preds = %sw.bb86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %fip_rx_descr_size.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb91.i.i:                                      ; preds = %if.then44.i
  %169 = ptrtoint ptr %link_failures_set.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %link_failures_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool92.not.i.i = icmp eq i8 %170, 0
  br i1 %tobool92.not.i.i, label %sw.bb91.i.i.for.inc.i_crit_edge, label %if.then93.i.i

sw.bb91.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then93.i.i:                                    ; preds = %sw.bb91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %link_failures.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb96.i.i:                                      ; preds = %if.then44.i
  %172 = ptrtoint ptr %fcoe_boot_progress_set.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %fcoe_boot_progress_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool97.not.i.i = icmp eq i8 %173, 0
  br i1 %tobool97.not.i.i, label %sw.bb96.i.i.for.inc.i_crit_edge, label %if.then98.i.i

sw.bb96.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then98.i.i:                                    ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %fcoe_boot_progress.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb101.i.i:                                     ; preds = %if.then44.i
  %175 = ptrtoint ptr %rx_bcast_set.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %rx_bcast_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool102.not.i.i = icmp eq i8 %176, 0
  br i1 %tobool102.not.i.i, label %sw.bb101.i.i.for.inc.i_crit_edge, label %if.then103.i.i

sw.bb101.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then103.i.i:                                   ; preds = %sw.bb101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %rx_bcast.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb106.i.i:                                     ; preds = %if.then44.i
  %178 = ptrtoint ptr %tx_bcast_set.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %tx_bcast_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool107.not.i.i = icmp eq i8 %179, 0
  br i1 %tobool107.not.i.i, label %sw.bb106.i.i.for.inc.i_crit_edge, label %if.then108.i.i

sw.bb106.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then108.i.i:                                   ; preds = %sw.bb106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %tx_bcast.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb111.i.i:                                     ; preds = %if.then44.i
  %181 = ptrtoint ptr %fcoe_txq_depth_set.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %fcoe_txq_depth_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool112.not.i.i = icmp eq i8 %182, 0
  br i1 %tobool112.not.i.i, label %sw.bb111.i.i.for.inc.i_crit_edge, label %if.then113.i.i

sw.bb111.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb111.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then113.i.i:                                   ; preds = %sw.bb111.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %fcoe_txq_depth.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb116.i.i:                                     ; preds = %if.then44.i
  %184 = ptrtoint ptr %fcoe_rxq_depth_set.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %fcoe_rxq_depth_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool117.not.i.i = icmp eq i8 %185, 0
  br i1 %tobool117.not.i.i, label %sw.bb116.i.i.for.inc.i_crit_edge, label %if.then118.i.i

sw.bb116.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then118.i.i:                                   ; preds = %sw.bb116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %186 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %fcoe_rxq_depth.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb121.i.i:                                     ; preds = %if.then44.i
  %187 = ptrtoint ptr %fcoe_rx_frames_set.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %fcoe_rx_frames_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool122.not.i.i = icmp eq i8 %188, 0
  br i1 %tobool122.not.i.i, label %sw.bb121.i.i.for.inc.i_crit_edge, label %if.then123.i.i

sw.bb121.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then123.i.i:                                   ; preds = %sw.bb121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %189 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %fcoe_rx_frames.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb126.i.i:                                     ; preds = %if.then44.i
  %190 = ptrtoint ptr %fcoe_rx_bytes_set.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %fcoe_rx_bytes_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool127.not.i.i = icmp eq i8 %191, 0
  br i1 %tobool127.not.i.i, label %sw.bb126.i.i.for.inc.i_crit_edge, label %if.then128.i.i

sw.bb126.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then128.i.i:                                   ; preds = %sw.bb126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %fcoe_rx_bytes.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb131.i.i:                                     ; preds = %if.then44.i
  %193 = ptrtoint ptr %fcoe_tx_frames_set.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %fcoe_tx_frames_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool132.not.i.i = icmp eq i8 %194, 0
  br i1 %tobool132.not.i.i, label %sw.bb131.i.i.for.inc.i_crit_edge, label %if.then133.i.i

sw.bb131.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb131.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then133.i.i:                                   ; preds = %sw.bb131.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %fcoe_tx_frames.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb136.i.i:                                     ; preds = %if.then44.i
  %196 = ptrtoint ptr %fcoe_tx_bytes_set.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %fcoe_tx_bytes_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool137.not.i.i = icmp eq i8 %197, 0
  br i1 %tobool137.not.i.i, label %sw.bb136.i.i.for.inc.i_crit_edge, label %if.then138.i.i

sw.bb136.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb136.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then138.i.i:                                   ; preds = %sw.bb136.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %198 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %fcoe_tx_bytes.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb141.i.i:                                     ; preds = %if.then44.i
  %199 = ptrtoint ptr %crc_count_set.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %crc_count_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool142.not.i.i = icmp eq i8 %200, 0
  br i1 %tobool142.not.i.i, label %sw.bb141.i.i.for.inc.i_crit_edge, label %if.then143.i.i

sw.bb141.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb141.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then143.i.i:                                   ; preds = %sw.bb141.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %crc_count.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb146.i.i:                                     ; preds = %if.then44.i.sw.bb146.i.i_crit_edge, %if.then44.i.sw.bb146.i.i_crit_edge614, %if.then44.i.sw.bb146.i.i_crit_edge615, %if.then44.i.sw.bb146.i.i_crit_edge616, %if.then44.i.sw.bb146.i.i_crit_edge617
  %sub.i205.i = add nsw i8 %49, -86
  %div102910301064.i.i = lshr i8 %sub.i205.i, 1
  %div1029.zext.i.i = zext i8 %div102910301064.i.i to i32
  %arrayidx.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 61, i32 %div1029.zext.i.i
  %202 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool150.not.i.i = icmp eq i8 %203, 0
  br i1 %tobool150.not.i.i, label %sw.bb146.i.i.for.inc.i_crit_edge, label %if.then151.i.i

sw.bb146.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb146.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then151.i.i:                                   ; preds = %sw.bb146.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx153.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 60, i32 %div1029.zext.i.i
  %204 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %arrayidx153.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb156.i.i:                                     ; preds = %if.then44.i.sw.bb156.i.i_crit_edge, %if.then44.i.sw.bb156.i.i_crit_edge618, %if.then44.i.sw.bb156.i.i_crit_edge619, %if.then44.i.sw.bb156.i.i_crit_edge620, %if.then44.i.sw.bb156.i.i_crit_edge621
  %sub159.i.i = add nsw i8 %49, -87
  %div160103110321063.i.i = lshr i8 %sub159.i.i, 1
  %div1601031.zext.i.i = zext i8 %div160103110321063.i.i to i32
  %arrayidx163.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 62, i32 %div1601031.zext.i.i
  %205 = ptrtoint ptr %arrayidx163.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx163.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i.i.i = icmp eq i8 %206, 0
  br i1 %tobool.not.i.i.i, label %sw.bb156.i.i.for.inc.i_crit_edge, label %if.end.i.i.i

sw.bb156.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb156.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %sw.bb156.i.i
  %month.i.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 62, i32 %div1601031.zext.i.i, i32 1
  %207 = ptrtoint ptr %month.i.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %month.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %208)
  %cmp.i.i.i = icmp ugt i8 %208, 12
  br i1 %cmp.i.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.if.end4.i.i.i_crit_edge

if.end.i.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %209 = ptrtoint ptr %month.i.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %month.i.i.i, align 1
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.end.i.i.i.if.end4.i.i.i_crit_edge
  %day.i.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 62, i32 %div1601031.zext.i.i, i32 2
  %210 = ptrtoint ptr %day.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %day.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %211)
  %cmp6.i.i.i = icmp ugt i8 %211, 31
  br i1 %cmp6.i.i.i, label %if.then8.i.i.i, label %if.end4.i.i.i.if.end10.i.i.i_crit_edge

if.end4.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %212 = ptrtoint ptr %day.i.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %day.i.i.i, align 2
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end4.i.i.i.if.end10.i.i.i_crit_edge
  %hour.i.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 62, i32 %div1601031.zext.i.i, i32 3
  %213 = ptrtoint ptr %hour.i.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %hour.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %214)
  %cmp12.i.i.i = icmp ugt i8 %214, 23
  br i1 %cmp12.i.i.i, label %if.then14.i.i.i, label %if.end10.i.i.i.if.end16.i.i.i_crit_edge

if.end10.i.i.i.if.end16.i.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %215 = ptrtoint ptr %hour.i.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %hour.i.i.i, align 1
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then14.i.i.i, %if.end10.i.i.i.if.end16.i.i.i_crit_edge
  %min.i.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 62, i32 %div1601031.zext.i.i, i32 4
  %216 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %min.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %217)
  %cmp18.i.i.i = icmp ugt i8 %217, 59
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.end16.i.i.i.if.end22.i.i.i_crit_edge

if.end16.i.i.i.if.end22.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i.i

if.then20.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %hour.i.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %hour.i.i.i, align 1
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.then20.i.i.i, %if.end16.i.i.i.if.end22.i.i.i_crit_edge
  %msec.i.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 62, i32 %div1601031.zext.i.i, i32 5
  %219 = ptrtoint ptr %msec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %msec.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %220)
  %cmp24.i.i.i = icmp ugt i16 %220, 999
  br i1 %cmp24.i.i.i, label %if.then26.i.i.i, label %if.end22.i.i.i.if.end28.i.i.i_crit_edge

if.end22.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i.i

if.then26.i.i.i:                                  ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %msec.i.i.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %msec.i.i.i, align 2
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.then26.i.i.i, %if.end22.i.i.i.if.end28.i.i.i_crit_edge
  %usec.i.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 62, i32 %div1601031.zext.i.i, i32 6
  %222 = ptrtoint ptr %usec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %usec.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %223)
  %cmp30.i.i.i = icmp ugt i16 %223, 999
  br i1 %cmp30.i.i.i, label %if.then32.i.i.i, label %if.end28.i.i.i.if.end34.i.i.i_crit_edge

if.end28.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %224 = ptrtoint ptr %usec.i.i.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %usec.i.i.i, align 2
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.then32.i.i.i, %if.end28.i.i.i.if.end34.i.i.i_crit_edge
  %225 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %226 = ptrtoint ptr %month.i.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %month.i.i.i, align 1
  %conv38.i.i.i = zext i8 %227 to i32
  %228 = ptrtoint ptr %day.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %day.i.i.i, align 2
  %conv40.i.i.i = zext i8 %229 to i32
  %230 = ptrtoint ptr %hour.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %hour.i.i.i, align 1
  %conv42.i.i.i = zext i8 %231 to i32
  %232 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %min.i.i.i, align 2
  %conv44.i.i.i = zext i8 %233 to i32
  %234 = ptrtoint ptr %msec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %msec.i.i.i, align 2
  %conv46.i.i.i = zext i16 %235 to i32
  %236 = ptrtoint ptr %usec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %usec.i.i.i, align 2
  %conv48.i.i.i = zext i16 %237 to i32
  %call.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i1018.i.i, i32 noundef 14, ptr noundef nonnull @.str.22, i32 noundef %conv38.i.i.i, i32 noundef %conv40.i.i.i, i32 noundef %conv42.i.i.i, i32 noundef %conv44.i.i.i, i32 noundef %conv46.i.i.i, i32 noundef %conv48.i.i.i) #7
  %238 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %data.i1018.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb164.i.i:                                     ; preds = %if.then44.i
  %239 = ptrtoint ptr %losync_err_set.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %losync_err_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool165.not.i.i = icmp eq i8 %240, 0
  br i1 %tobool165.not.i.i, label %sw.bb164.i.i.for.inc.i_crit_edge, label %if.then166.i.i

sw.bb164.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then166.i.i:                                   ; preds = %sw.bb164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %241 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %losync_err.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb169.i.i:                                     ; preds = %if.then44.i
  %242 = ptrtoint ptr %losig_err_set.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %losig_err_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool170.not.i.i = icmp eq i8 %243, 0
  br i1 %tobool170.not.i.i, label %sw.bb169.i.i.for.inc.i_crit_edge, label %if.then171.i.i

sw.bb169.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb169.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then171.i.i:                                   ; preds = %sw.bb169.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %244 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %losig_err.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb174.i.i:                                     ; preds = %if.then44.i
  %245 = ptrtoint ptr %primtive_err_set.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %primtive_err_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool175.not.i.i = icmp eq i8 %246, 0
  br i1 %tobool175.not.i.i, label %sw.bb174.i.i.for.inc.i_crit_edge, label %if.then176.i.i

sw.bb174.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then176.i.i:                                   ; preds = %sw.bb174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %247 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %primtive_err.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb179.i.i:                                     ; preds = %if.then44.i
  %248 = ptrtoint ptr %disparity_err_set.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %disparity_err_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool180.not.i.i = icmp eq i8 %249, 0
  br i1 %tobool180.not.i.i, label %sw.bb179.i.i.for.inc.i_crit_edge, label %if.then181.i.i

sw.bb179.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb179.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then181.i.i:                                   ; preds = %sw.bb179.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %250 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %disparity_err.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb184.i.i:                                     ; preds = %if.then44.i
  %251 = ptrtoint ptr %code_violation_err_set.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %code_violation_err_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool185.not.i.i = icmp eq i8 %252, 0
  br i1 %tobool185.not.i.i, label %sw.bb184.i.i.for.inc.i_crit_edge, label %if.then186.i.i

sw.bb184.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then186.i.i:                                   ; preds = %sw.bb184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %253 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %code_violation_err.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb189.i.i:                                     ; preds = %if.then44.i.sw.bb189.i.i_crit_edge, %if.then44.i.sw.bb189.i.i_crit_edge622, %if.then44.i.sw.bb189.i.i_crit_edge623, %if.then44.i.sw.bb189.i.i_crit_edge624
  %sub192.i.i = add nsw i8 %49, -101
  %idxprom194.i.i = zext i8 %sub192.i.i to i32
  %arrayidx195.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 74, i32 %idxprom194.i.i
  %254 = ptrtoint ptr %arrayidx195.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx195.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool196.not.i.i = icmp eq i8 %255, 0
  br i1 %tobool196.not.i.i, label %sw.bb189.i.i.for.inc.i_crit_edge, label %if.then197.i.i

sw.bb189.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then197.i.i:                                   ; preds = %sw.bb189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx199.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 73, i32 %idxprom194.i.i
  %256 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %arrayidx199.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb204.i.i:                                     ; preds = %if.then44.i.sw.bb204.i.i_crit_edge, %if.then44.i.sw.bb204.i.i_crit_edge625, %if.then44.i.sw.bb204.i.i_crit_edge626, %if.then44.i.sw.bb204.i.i_crit_edge627
  %sub207.i.i = add nsw i8 %49, -106
  %idxprom209.i.i = zext i8 %sub207.i.i to i32
  %arrayidx210.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 77, i32 %idxprom209.i.i
  %257 = ptrtoint ptr %arrayidx210.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx210.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool211.not.i.i = icmp eq i8 %258, 0
  br i1 %tobool211.not.i.i, label %sw.bb204.i.i.for.inc.i_crit_edge, label %if.then212.i.i

sw.bb204.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then212.i.i:                                   ; preds = %sw.bb204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx214.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 76, i32 %idxprom209.i.i
  %259 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %arrayidx214.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb217.i.i:                                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

sw.bb219.i.i:                                     ; preds = %if.then44.i
  %260 = ptrtoint ptr %flogi_rjt_set.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %flogi_rjt_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool220.not.i.i = icmp eq i8 %261, 0
  br i1 %tobool220.not.i.i, label %sw.bb219.i.i.for.inc.i_crit_edge, label %if.then221.i.i

sw.bb219.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb219.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then221.i.i:                                   ; preds = %sw.bb219.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %flogi_rjt.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb224.i.i:                                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

sw.bb226.i.i:                                     ; preds = %if.then44.i
  %263 = ptrtoint ptr %fdiscs_set.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %fdiscs_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool227.not.i.i = icmp eq i8 %264, 0
  br i1 %tobool227.not.i.i, label %sw.bb226.i.i.for.inc.i_crit_edge, label %if.then228.i.i

sw.bb226.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb226.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then228.i.i:                                   ; preds = %sw.bb226.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %265 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %fdiscs.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb231.i.i:                                     ; preds = %if.then44.i
  %266 = ptrtoint ptr %fdisc_acc_set.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %fdisc_acc_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool232.not.i.i = icmp eq i8 %267, 0
  br i1 %tobool232.not.i.i, label %sw.bb231.i.i.for.inc.i_crit_edge, label %if.then233.i.i

sw.bb231.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb231.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then233.i.i:                                   ; preds = %sw.bb231.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %268 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %fdisc_acc.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb236.i.i:                                     ; preds = %if.then44.i
  %269 = ptrtoint ptr %fdisc_rjt_set.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %fdisc_rjt_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool237.not.i.i = icmp eq i8 %270, 0
  br i1 %tobool237.not.i.i, label %sw.bb236.i.i.for.inc.i_crit_edge, label %if.then238.i.i

sw.bb236.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb236.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then238.i.i:                                   ; preds = %sw.bb236.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %271 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %fdisc_rjt.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb241.i.i:                                     ; preds = %if.then44.i
  %272 = ptrtoint ptr %plogi_set.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %plogi_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool242.not.i.i = icmp eq i8 %273, 0
  br i1 %tobool242.not.i.i, label %sw.bb241.i.i.for.inc.i_crit_edge, label %if.then243.i.i

sw.bb241.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb241.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then243.i.i:                                   ; preds = %sw.bb241.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %plogi.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb246.i.i:                                     ; preds = %if.then44.i
  %275 = ptrtoint ptr %plogi_acc_set.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %plogi_acc_set.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool247.not.i.i = icmp eq i8 %276, 0
  br i1 %tobool247.not.i.i, label %sw.bb246.i.i.for.inc.i_crit_edge, label %if.then248.i.i

sw.bb246.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb246.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then248.i.i:                                   ; preds = %sw.bb246.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %277 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %plogi_acc.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb251.i.i:                                     ; preds = %if.then44.i
  %278 = ptrtoint ptr %plogi_rjt_set.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %plogi_rjt_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool252.not.i.i = icmp eq i8 %279, 0
  br i1 %tobool252.not.i.i, label %sw.bb251.i.i.for.inc.i_crit_edge, label %if.then253.i.i

sw.bb251.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb251.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then253.i.i:                                   ; preds = %sw.bb251.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %280 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %plogi_rjt.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb256.i.i:                                     ; preds = %if.then44.i.sw.bb256.i.i_crit_edge, %if.then44.i.sw.bb256.i.i_crit_edge628, %if.then44.i.sw.bb256.i.i_crit_edge629, %if.then44.i.sw.bb256.i.i_crit_edge630, %if.then44.i.sw.bb256.i.i_crit_edge631
  %sub259.i.i = add nsw i8 %49, -119
  %div260103310341062.i.i = lshr i8 %sub259.i.i, 1
  %div2601033.zext.i.i = zext i8 %div260103310341062.i.i to i32
  %arrayidx263.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 95, i32 %div2601033.zext.i.i
  %281 = ptrtoint ptr %arrayidx263.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx263.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool264.not.i.i = icmp eq i8 %282, 0
  br i1 %tobool264.not.i.i, label %sw.bb256.i.i.for.inc.i_crit_edge, label %if.then265.i.i

sw.bb256.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb256.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then265.i.i:                                   ; preds = %sw.bb256.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx267.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 94, i32 %div2601033.zext.i.i
  %283 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %arrayidx267.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb270.i.i:                                     ; preds = %if.then44.i.sw.bb270.i.i_crit_edge, %if.then44.i.sw.bb270.i.i_crit_edge632, %if.then44.i.sw.bb270.i.i_crit_edge633, %if.then44.i.sw.bb270.i.i_crit_edge634, %if.then44.i.sw.bb270.i.i_crit_edge635
  %sub273.i.i = add i8 %49, -120
  %div274103510361061.i.i = lshr i8 %sub273.i.i, 1
  %div2741035.zext.i.i = zext i8 %div274103510361061.i.i to i32
  %arrayidx277.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 96, i32 %div2741035.zext.i.i
  %284 = ptrtoint ptr %arrayidx277.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx277.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool.not.i849.i.i = icmp eq i8 %285, 0
  br i1 %tobool.not.i849.i.i, label %sw.bb270.i.i.for.inc.i_crit_edge, label %if.end.i852.i.i

sw.bb270.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb270.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i852.i.i:                                  ; preds = %sw.bb270.i.i
  %month.i850.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 96, i32 %div2741035.zext.i.i, i32 1
  %286 = ptrtoint ptr %month.i850.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %month.i850.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %287)
  %cmp.i851.i.i = icmp ugt i8 %287, 12
  br i1 %cmp.i851.i.i, label %if.then2.i853.i.i, label %if.end.i852.i.i.if.end4.i856.i.i_crit_edge

if.end.i852.i.i.if.end4.i856.i.i_crit_edge:       ; preds = %if.end.i852.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i856.i.i

if.then2.i853.i.i:                                ; preds = %if.end.i852.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %288 = ptrtoint ptr %month.i850.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 0, ptr %month.i850.i.i, align 1
  br label %if.end4.i856.i.i

if.end4.i856.i.i:                                 ; preds = %if.then2.i853.i.i, %if.end.i852.i.i.if.end4.i856.i.i_crit_edge
  %day.i854.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 96, i32 %div2741035.zext.i.i, i32 2
  %289 = ptrtoint ptr %day.i854.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %day.i854.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %290)
  %cmp6.i855.i.i = icmp ugt i8 %290, 31
  br i1 %cmp6.i855.i.i, label %if.then8.i857.i.i, label %if.end4.i856.i.i.if.end10.i860.i.i_crit_edge

if.end4.i856.i.i.if.end10.i860.i.i_crit_edge:     ; preds = %if.end4.i856.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i860.i.i

if.then8.i857.i.i:                                ; preds = %if.end4.i856.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %291 = ptrtoint ptr %day.i854.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %day.i854.i.i, align 2
  br label %if.end10.i860.i.i

if.end10.i860.i.i:                                ; preds = %if.then8.i857.i.i, %if.end4.i856.i.i.if.end10.i860.i.i_crit_edge
  %hour.i858.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 96, i32 %div2741035.zext.i.i, i32 3
  %292 = ptrtoint ptr %hour.i858.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %hour.i858.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %293)
  %cmp12.i859.i.i = icmp ugt i8 %293, 23
  br i1 %cmp12.i859.i.i, label %if.then14.i861.i.i, label %if.end10.i860.i.i.if.end16.i864.i.i_crit_edge

if.end10.i860.i.i.if.end16.i864.i.i_crit_edge:    ; preds = %if.end10.i860.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i864.i.i

if.then14.i861.i.i:                               ; preds = %if.end10.i860.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %294 = ptrtoint ptr %hour.i858.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %hour.i858.i.i, align 1
  br label %if.end16.i864.i.i

if.end16.i864.i.i:                                ; preds = %if.then14.i861.i.i, %if.end10.i860.i.i.if.end16.i864.i.i_crit_edge
  %min.i862.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 96, i32 %div2741035.zext.i.i, i32 4
  %295 = ptrtoint ptr %min.i862.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %min.i862.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %296)
  %cmp18.i863.i.i = icmp ugt i8 %296, 59
  br i1 %cmp18.i863.i.i, label %if.then20.i865.i.i, label %if.end16.i864.i.i.if.end22.i868.i.i_crit_edge

if.end16.i864.i.i.if.end22.i868.i.i_crit_edge:    ; preds = %if.end16.i864.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i868.i.i

if.then20.i865.i.i:                               ; preds = %if.end16.i864.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %297 = ptrtoint ptr %hour.i858.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 0, ptr %hour.i858.i.i, align 1
  br label %if.end22.i868.i.i

if.end22.i868.i.i:                                ; preds = %if.then20.i865.i.i, %if.end16.i864.i.i.if.end22.i868.i.i_crit_edge
  %msec.i866.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 96, i32 %div2741035.zext.i.i, i32 5
  %298 = ptrtoint ptr %msec.i866.i.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %msec.i866.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %299)
  %cmp24.i867.i.i = icmp ugt i16 %299, 999
  br i1 %cmp24.i867.i.i, label %if.then26.i869.i.i, label %if.end22.i868.i.i.if.end28.i872.i.i_crit_edge

if.end22.i868.i.i.if.end28.i872.i.i_crit_edge:    ; preds = %if.end22.i868.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i872.i.i

if.then26.i869.i.i:                               ; preds = %if.end22.i868.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %300 = ptrtoint ptr %msec.i866.i.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 0, ptr %msec.i866.i.i, align 2
  br label %if.end28.i872.i.i

if.end28.i872.i.i:                                ; preds = %if.then26.i869.i.i, %if.end22.i868.i.i.if.end28.i872.i.i_crit_edge
  %usec.i870.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 96, i32 %div2741035.zext.i.i, i32 6
  %301 = ptrtoint ptr %usec.i870.i.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %usec.i870.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %302)
  %cmp30.i871.i.i = icmp ugt i16 %302, 999
  br i1 %cmp30.i871.i.i, label %if.then32.i873.i.i, label %if.end28.i872.i.i.if.end34.i882.i.i_crit_edge

if.end28.i872.i.i.if.end34.i882.i.i_crit_edge:    ; preds = %if.end28.i872.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i882.i.i

if.then32.i873.i.i:                               ; preds = %if.end28.i872.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %303 = ptrtoint ptr %usec.i870.i.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 0, ptr %usec.i870.i.i, align 2
  br label %if.end34.i882.i.i

if.end34.i882.i.i:                                ; preds = %if.then32.i873.i.i, %if.end28.i872.i.i.if.end34.i882.i.i_crit_edge
  %304 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %305 = ptrtoint ptr %month.i850.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %month.i850.i.i, align 1
  %conv38.i875.i.i = zext i8 %306 to i32
  %307 = ptrtoint ptr %day.i854.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %day.i854.i.i, align 2
  %conv40.i876.i.i = zext i8 %308 to i32
  %309 = ptrtoint ptr %hour.i858.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %hour.i858.i.i, align 1
  %conv42.i877.i.i = zext i8 %310 to i32
  %311 = ptrtoint ptr %min.i862.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %min.i862.i.i, align 2
  %conv44.i878.i.i = zext i8 %312 to i32
  %313 = ptrtoint ptr %msec.i866.i.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %msec.i866.i.i, align 2
  %conv46.i879.i.i = zext i16 %314 to i32
  %315 = ptrtoint ptr %usec.i870.i.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %usec.i870.i.i, align 2
  %conv48.i880.i.i = zext i16 %316 to i32
  %call.i881.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i1018.i.i, i32 noundef 14, ptr noundef nonnull @.str.22, i32 noundef %conv38.i875.i.i, i32 noundef %conv40.i876.i.i, i32 noundef %conv42.i877.i.i, i32 noundef %conv44.i878.i.i, i32 noundef %conv46.i879.i.i, i32 noundef %conv48.i880.i.i) #7
  %317 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %data.i1018.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb279.i.i:                                     ; preds = %if.then44.i.sw.bb279.i.i_crit_edge, %if.then44.i.sw.bb279.i.i_crit_edge636, %if.then44.i.sw.bb279.i.i_crit_edge637, %if.then44.i.sw.bb279.i.i_crit_edge638, %if.then44.i.sw.bb279.i.i_crit_edge639
  %sub282.i.i = add nsw i8 %49, 127
  %div283103710381060.i.i = lshr i8 %sub282.i.i, 1
  %div2831037.zext.i.i = zext i8 %div283103710381060.i.i to i32
  %arrayidx286.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 98, i32 %div2831037.zext.i.i
  %318 = ptrtoint ptr %arrayidx286.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx286.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool287.not.i.i = icmp eq i8 %319, 0
  br i1 %tobool287.not.i.i, label %sw.bb279.i.i.for.inc.i_crit_edge, label %if.then288.i.i

sw.bb279.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb279.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then288.i.i:                                   ; preds = %sw.bb279.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx290.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 97, i32 %div2831037.zext.i.i
  %320 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %arrayidx290.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb293.i.i:                                     ; preds = %if.then44.i.sw.bb293.i.i_crit_edge, %if.then44.i.sw.bb293.i.i_crit_edge640, %if.then44.i.sw.bb293.i.i_crit_edge641, %if.then44.i.sw.bb293.i.i_crit_edge642, %if.then44.i.sw.bb293.i.i_crit_edge643
  %sub296.i.i = add nsw i8 %49, 126
  %div297103910401059.i.i = lshr i8 %sub296.i.i, 1
  %div2971039.zext.i.i = zext i8 %div297103910401059.i.i to i32
  %arrayidx300.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 99, i32 %div2971039.zext.i.i
  %321 = ptrtoint ptr %arrayidx300.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx300.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool.not.i885.i.i = icmp eq i8 %322, 0
  br i1 %tobool.not.i885.i.i, label %sw.bb293.i.i.for.inc.i_crit_edge, label %if.end.i888.i.i

sw.bb293.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb293.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i888.i.i:                                  ; preds = %sw.bb293.i.i
  %month.i886.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 99, i32 %div2971039.zext.i.i, i32 1
  %323 = ptrtoint ptr %month.i886.i.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %month.i886.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %324)
  %cmp.i887.i.i = icmp ugt i8 %324, 12
  br i1 %cmp.i887.i.i, label %if.then2.i889.i.i, label %if.end.i888.i.i.if.end4.i892.i.i_crit_edge

if.end.i888.i.i.if.end4.i892.i.i_crit_edge:       ; preds = %if.end.i888.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i892.i.i

if.then2.i889.i.i:                                ; preds = %if.end.i888.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %325 = ptrtoint ptr %month.i886.i.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 0, ptr %month.i886.i.i, align 1
  br label %if.end4.i892.i.i

if.end4.i892.i.i:                                 ; preds = %if.then2.i889.i.i, %if.end.i888.i.i.if.end4.i892.i.i_crit_edge
  %day.i890.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 99, i32 %div2971039.zext.i.i, i32 2
  %326 = ptrtoint ptr %day.i890.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %day.i890.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %327)
  %cmp6.i891.i.i = icmp ugt i8 %327, 31
  br i1 %cmp6.i891.i.i, label %if.then8.i893.i.i, label %if.end4.i892.i.i.if.end10.i896.i.i_crit_edge

if.end4.i892.i.i.if.end10.i896.i.i_crit_edge:     ; preds = %if.end4.i892.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i896.i.i

if.then8.i893.i.i:                                ; preds = %if.end4.i892.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %328 = ptrtoint ptr %day.i890.i.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 0, ptr %day.i890.i.i, align 2
  br label %if.end10.i896.i.i

if.end10.i896.i.i:                                ; preds = %if.then8.i893.i.i, %if.end4.i892.i.i.if.end10.i896.i.i_crit_edge
  %hour.i894.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 99, i32 %div2971039.zext.i.i, i32 3
  %329 = ptrtoint ptr %hour.i894.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %hour.i894.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %330)
  %cmp12.i895.i.i = icmp ugt i8 %330, 23
  br i1 %cmp12.i895.i.i, label %if.then14.i897.i.i, label %if.end10.i896.i.i.if.end16.i900.i.i_crit_edge

if.end10.i896.i.i.if.end16.i900.i.i_crit_edge:    ; preds = %if.end10.i896.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i900.i.i

if.then14.i897.i.i:                               ; preds = %if.end10.i896.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %331 = ptrtoint ptr %hour.i894.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %hour.i894.i.i, align 1
  br label %if.end16.i900.i.i

if.end16.i900.i.i:                                ; preds = %if.then14.i897.i.i, %if.end10.i896.i.i.if.end16.i900.i.i_crit_edge
  %min.i898.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 99, i32 %div2971039.zext.i.i, i32 4
  %332 = ptrtoint ptr %min.i898.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %min.i898.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %333)
  %cmp18.i899.i.i = icmp ugt i8 %333, 59
  br i1 %cmp18.i899.i.i, label %if.then20.i901.i.i, label %if.end16.i900.i.i.if.end22.i904.i.i_crit_edge

if.end16.i900.i.i.if.end22.i904.i.i_crit_edge:    ; preds = %if.end16.i900.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i904.i.i

if.then20.i901.i.i:                               ; preds = %if.end16.i900.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %334 = ptrtoint ptr %hour.i894.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 0, ptr %hour.i894.i.i, align 1
  br label %if.end22.i904.i.i

if.end22.i904.i.i:                                ; preds = %if.then20.i901.i.i, %if.end16.i900.i.i.if.end22.i904.i.i_crit_edge
  %msec.i902.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 99, i32 %div2971039.zext.i.i, i32 5
  %335 = ptrtoint ptr %msec.i902.i.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %msec.i902.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %336)
  %cmp24.i903.i.i = icmp ugt i16 %336, 999
  br i1 %cmp24.i903.i.i, label %if.then26.i905.i.i, label %if.end22.i904.i.i.if.end28.i908.i.i_crit_edge

if.end22.i904.i.i.if.end28.i908.i.i_crit_edge:    ; preds = %if.end22.i904.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i908.i.i

if.then26.i905.i.i:                               ; preds = %if.end22.i904.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %337 = ptrtoint ptr %msec.i902.i.i to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 0, ptr %msec.i902.i.i, align 2
  br label %if.end28.i908.i.i

if.end28.i908.i.i:                                ; preds = %if.then26.i905.i.i, %if.end22.i904.i.i.if.end28.i908.i.i_crit_edge
  %usec.i906.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 99, i32 %div2971039.zext.i.i, i32 6
  %338 = ptrtoint ptr %usec.i906.i.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %usec.i906.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %339)
  %cmp30.i907.i.i = icmp ugt i16 %339, 999
  br i1 %cmp30.i907.i.i, label %if.then32.i909.i.i, label %if.end28.i908.i.i.if.end34.i918.i.i_crit_edge

if.end28.i908.i.i.if.end34.i918.i.i_crit_edge:    ; preds = %if.end28.i908.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i918.i.i

if.then32.i909.i.i:                               ; preds = %if.end28.i908.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %340 = ptrtoint ptr %usec.i906.i.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 0, ptr %usec.i906.i.i, align 2
  br label %if.end34.i918.i.i

if.end34.i918.i.i:                                ; preds = %if.then32.i909.i.i, %if.end28.i908.i.i.if.end34.i918.i.i_crit_edge
  %341 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %342 = ptrtoint ptr %month.i886.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %month.i886.i.i, align 1
  %conv38.i911.i.i = zext i8 %343 to i32
  %344 = ptrtoint ptr %day.i890.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %day.i890.i.i, align 2
  %conv40.i912.i.i = zext i8 %345 to i32
  %346 = ptrtoint ptr %hour.i894.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %hour.i894.i.i, align 1
  %conv42.i913.i.i = zext i8 %347 to i32
  %348 = ptrtoint ptr %min.i898.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %min.i898.i.i, align 2
  %conv44.i914.i.i = zext i8 %349 to i32
  %350 = ptrtoint ptr %msec.i902.i.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %msec.i902.i.i, align 2
  %conv46.i915.i.i = zext i16 %351 to i32
  %352 = ptrtoint ptr %usec.i906.i.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %usec.i906.i.i, align 2
  %conv48.i916.i.i = zext i16 %353 to i32
  %call.i917.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i1018.i.i, i32 noundef 14, ptr noundef nonnull @.str.22, i32 noundef %conv38.i911.i.i, i32 noundef %conv40.i912.i.i, i32 noundef %conv42.i913.i.i, i32 noundef %conv44.i914.i.i, i32 noundef %conv46.i915.i.i, i32 noundef %conv48.i916.i.i) #7
  %354 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %data.i1018.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb302.i.i:                                     ; preds = %if.then44.i
  %355 = ptrtoint ptr %tx_plogos_set.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %tx_plogos_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool303.not.i.i = icmp eq i8 %356, 0
  br i1 %tobool303.not.i.i, label %sw.bb302.i.i.for.inc.i_crit_edge, label %if.then304.i.i

sw.bb302.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb302.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then304.i.i:                                   ; preds = %sw.bb302.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %357 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %tx_plogos.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb307.i.i:                                     ; preds = %if.then44.i
  %358 = ptrtoint ptr %plogo_acc_set.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %plogo_acc_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool308.not.i.i = icmp eq i8 %359, 0
  br i1 %tobool308.not.i.i, label %sw.bb307.i.i.for.inc.i_crit_edge, label %if.then309.i.i

sw.bb307.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb307.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then309.i.i:                                   ; preds = %sw.bb307.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %360 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %plogo_acc.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb312.i.i:                                     ; preds = %if.then44.i
  %361 = ptrtoint ptr %plogo_rjt_set.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %plogo_rjt_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool313.not.i.i = icmp eq i8 %362, 0
  br i1 %tobool313.not.i.i, label %sw.bb312.i.i.for.inc.i_crit_edge, label %if.then314.i.i

sw.bb312.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb312.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then314.i.i:                                   ; preds = %sw.bb312.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %363 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %plogo_rjt.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb317.i.i:                                     ; preds = %if.then44.i.sw.bb317.i.i_crit_edge, %if.then44.i.sw.bb317.i.i_crit_edge644, %if.then44.i.sw.bb317.i.i_crit_edge645, %if.then44.i.sw.bb317.i.i_crit_edge646, %if.then44.i.sw.bb317.i.i_crit_edge647
  %sub320.i.i = add nsw i8 %49, 114
  %div321104110421058.i.i = lshr i8 %sub320.i.i, 1
  %div3211041.zext.i.i = zext i8 %div321104110421058.i.i to i32
  %arrayidx324.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 107, i32 %div3211041.zext.i.i
  %364 = ptrtoint ptr %arrayidx324.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx324.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool325.not.i.i = icmp eq i8 %365, 0
  br i1 %tobool325.not.i.i, label %sw.bb317.i.i.for.inc.i_crit_edge, label %if.then326.i.i

sw.bb317.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb317.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then326.i.i:                                   ; preds = %sw.bb317.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx328.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 106, i32 %div3211041.zext.i.i
  %366 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %arrayidx328.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb331.i.i:                                     ; preds = %if.then44.i.sw.bb331.i.i_crit_edge, %if.then44.i.sw.bb331.i.i_crit_edge648, %if.then44.i.sw.bb331.i.i_crit_edge649, %if.then44.i.sw.bb331.i.i_crit_edge650, %if.then44.i.sw.bb331.i.i_crit_edge651
  %sub334.i.i = add nsw i8 %49, 113
  %div335104310441057.i.i = lshr i8 %sub334.i.i, 1
  %div3351043.zext.i.i = zext i8 %div335104310441057.i.i to i32
  %arrayidx338.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 108, i32 %div3351043.zext.i.i
  %367 = ptrtoint ptr %arrayidx338.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx338.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool.not.i921.i.i = icmp eq i8 %368, 0
  br i1 %tobool.not.i921.i.i, label %sw.bb331.i.i.for.inc.i_crit_edge, label %if.end.i924.i.i

sw.bb331.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb331.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i924.i.i:                                  ; preds = %sw.bb331.i.i
  %month.i922.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 108, i32 %div3351043.zext.i.i, i32 1
  %369 = ptrtoint ptr %month.i922.i.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %month.i922.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %370)
  %cmp.i923.i.i = icmp ugt i8 %370, 12
  br i1 %cmp.i923.i.i, label %if.then2.i925.i.i, label %if.end.i924.i.i.if.end4.i928.i.i_crit_edge

if.end.i924.i.i.if.end4.i928.i.i_crit_edge:       ; preds = %if.end.i924.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i928.i.i

if.then2.i925.i.i:                                ; preds = %if.end.i924.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %371 = ptrtoint ptr %month.i922.i.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %month.i922.i.i, align 1
  br label %if.end4.i928.i.i

if.end4.i928.i.i:                                 ; preds = %if.then2.i925.i.i, %if.end.i924.i.i.if.end4.i928.i.i_crit_edge
  %day.i926.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 108, i32 %div3351043.zext.i.i, i32 2
  %372 = ptrtoint ptr %day.i926.i.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %day.i926.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %373)
  %cmp6.i927.i.i = icmp ugt i8 %373, 31
  br i1 %cmp6.i927.i.i, label %if.then8.i929.i.i, label %if.end4.i928.i.i.if.end10.i932.i.i_crit_edge

if.end4.i928.i.i.if.end10.i932.i.i_crit_edge:     ; preds = %if.end4.i928.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i932.i.i

if.then8.i929.i.i:                                ; preds = %if.end4.i928.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %374 = ptrtoint ptr %day.i926.i.i to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 0, ptr %day.i926.i.i, align 2
  br label %if.end10.i932.i.i

if.end10.i932.i.i:                                ; preds = %if.then8.i929.i.i, %if.end4.i928.i.i.if.end10.i932.i.i_crit_edge
  %hour.i930.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 108, i32 %div3351043.zext.i.i, i32 3
  %375 = ptrtoint ptr %hour.i930.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %hour.i930.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %376)
  %cmp12.i931.i.i = icmp ugt i8 %376, 23
  br i1 %cmp12.i931.i.i, label %if.then14.i933.i.i, label %if.end10.i932.i.i.if.end16.i936.i.i_crit_edge

if.end10.i932.i.i.if.end16.i936.i.i_crit_edge:    ; preds = %if.end10.i932.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i936.i.i

if.then14.i933.i.i:                               ; preds = %if.end10.i932.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %377 = ptrtoint ptr %hour.i930.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 0, ptr %hour.i930.i.i, align 1
  br label %if.end16.i936.i.i

if.end16.i936.i.i:                                ; preds = %if.then14.i933.i.i, %if.end10.i932.i.i.if.end16.i936.i.i_crit_edge
  %min.i934.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 108, i32 %div3351043.zext.i.i, i32 4
  %378 = ptrtoint ptr %min.i934.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %min.i934.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %379)
  %cmp18.i935.i.i = icmp ugt i8 %379, 59
  br i1 %cmp18.i935.i.i, label %if.then20.i937.i.i, label %if.end16.i936.i.i.if.end22.i940.i.i_crit_edge

if.end16.i936.i.i.if.end22.i940.i.i_crit_edge:    ; preds = %if.end16.i936.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i940.i.i

if.then20.i937.i.i:                               ; preds = %if.end16.i936.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %380 = ptrtoint ptr %hour.i930.i.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %hour.i930.i.i, align 1
  br label %if.end22.i940.i.i

if.end22.i940.i.i:                                ; preds = %if.then20.i937.i.i, %if.end16.i936.i.i.if.end22.i940.i.i_crit_edge
  %msec.i938.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 108, i32 %div3351043.zext.i.i, i32 5
  %381 = ptrtoint ptr %msec.i938.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %msec.i938.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %382)
  %cmp24.i939.i.i = icmp ugt i16 %382, 999
  br i1 %cmp24.i939.i.i, label %if.then26.i941.i.i, label %if.end22.i940.i.i.if.end28.i944.i.i_crit_edge

if.end22.i940.i.i.if.end28.i944.i.i_crit_edge:    ; preds = %if.end22.i940.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i944.i.i

if.then26.i941.i.i:                               ; preds = %if.end22.i940.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %383 = ptrtoint ptr %msec.i938.i.i to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 0, ptr %msec.i938.i.i, align 2
  br label %if.end28.i944.i.i

if.end28.i944.i.i:                                ; preds = %if.then26.i941.i.i, %if.end22.i940.i.i.if.end28.i944.i.i_crit_edge
  %usec.i942.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 108, i32 %div3351043.zext.i.i, i32 6
  %384 = ptrtoint ptr %usec.i942.i.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %usec.i942.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %385)
  %cmp30.i943.i.i = icmp ugt i16 %385, 999
  br i1 %cmp30.i943.i.i, label %if.then32.i945.i.i, label %if.end28.i944.i.i.if.end34.i954.i.i_crit_edge

if.end28.i944.i.i.if.end34.i954.i.i_crit_edge:    ; preds = %if.end28.i944.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i954.i.i

if.then32.i945.i.i:                               ; preds = %if.end28.i944.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %386 = ptrtoint ptr %usec.i942.i.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 0, ptr %usec.i942.i.i, align 2
  br label %if.end34.i954.i.i

if.end34.i954.i.i:                                ; preds = %if.then32.i945.i.i, %if.end28.i944.i.i.if.end34.i954.i.i_crit_edge
  %387 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %388 = ptrtoint ptr %month.i922.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %month.i922.i.i, align 1
  %conv38.i947.i.i = zext i8 %389 to i32
  %390 = ptrtoint ptr %day.i926.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %day.i926.i.i, align 2
  %conv40.i948.i.i = zext i8 %391 to i32
  %392 = ptrtoint ptr %hour.i930.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %hour.i930.i.i, align 1
  %conv42.i949.i.i = zext i8 %393 to i32
  %394 = ptrtoint ptr %min.i934.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %min.i934.i.i, align 2
  %conv44.i950.i.i = zext i8 %395 to i32
  %396 = ptrtoint ptr %msec.i938.i.i to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %msec.i938.i.i, align 2
  %conv46.i951.i.i = zext i16 %397 to i32
  %398 = ptrtoint ptr %usec.i942.i.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %usec.i942.i.i, align 2
  %conv48.i952.i.i = zext i16 %399 to i32
  %call.i953.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i1018.i.i, i32 noundef 14, ptr noundef nonnull @.str.22, i32 noundef %conv38.i947.i.i, i32 noundef %conv40.i948.i.i, i32 noundef %conv42.i949.i.i, i32 noundef %conv44.i950.i.i, i32 noundef %conv46.i951.i.i, i32 noundef %conv48.i952.i.i) #7
  %400 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %data.i1018.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb340.i.i:                                     ; preds = %if.then44.i
  %401 = ptrtoint ptr %rx_logos_set.i.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %rx_logos_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool341.not.i.i = icmp eq i8 %402, 0
  br i1 %tobool341.not.i.i, label %sw.bb340.i.i.for.inc.i_crit_edge, label %if.then342.i.i

sw.bb340.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb340.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then342.i.i:                                   ; preds = %sw.bb340.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %403 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %rx_logos.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb345.i.i:                                     ; preds = %if.then44.i
  %404 = ptrtoint ptr %tx_accs_set.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %tx_accs_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %tobool346.not.i.i = icmp eq i8 %405, 0
  br i1 %tobool346.not.i.i, label %sw.bb345.i.i.for.inc.i_crit_edge, label %if.then347.i.i

sw.bb345.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb345.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then347.i.i:                                   ; preds = %sw.bb345.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %406 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %tx_accs.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb350.i.i:                                     ; preds = %if.then44.i
  %407 = ptrtoint ptr %tx_prlis_set.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %tx_prlis_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool351.not.i.i = icmp eq i8 %408, 0
  br i1 %tobool351.not.i.i, label %sw.bb350.i.i.for.inc.i_crit_edge, label %if.then352.i.i

sw.bb350.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb350.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then352.i.i:                                   ; preds = %sw.bb350.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %409 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %tx_prlis.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb355.i.i:                                     ; preds = %if.then44.i
  %410 = ptrtoint ptr %rx_accs_set.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %rx_accs_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %411)
  %tobool356.not.i.i = icmp eq i8 %411, 0
  br i1 %tobool356.not.i.i, label %sw.bb355.i.i.for.inc.i_crit_edge, label %if.then357.i.i

sw.bb355.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb355.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then357.i.i:                                   ; preds = %sw.bb355.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %412 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %rx_accs.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb360.i.i:                                     ; preds = %if.then44.i
  %413 = ptrtoint ptr %tx_abts_set.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %tx_abts_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %414)
  %tobool361.not.i.i = icmp eq i8 %414, 0
  br i1 %tobool361.not.i.i, label %sw.bb360.i.i.for.inc.i_crit_edge, label %if.then362.i.i

sw.bb360.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb360.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then362.i.i:                                   ; preds = %sw.bb360.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %415 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %tx_abts.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb365.i.i:                                     ; preds = %if.then44.i
  %416 = ptrtoint ptr %rx_abts_acc_set.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %rx_abts_acc_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool366.not.i.i = icmp eq i8 %417, 0
  br i1 %tobool366.not.i.i, label %sw.bb365.i.i.for.inc.i_crit_edge, label %if.then367.i.i

sw.bb365.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb365.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then367.i.i:                                   ; preds = %sw.bb365.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %418 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %rx_abts_acc.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb370.i.i:                                     ; preds = %if.then44.i
  %419 = ptrtoint ptr %rx_abts_rjt_set.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %rx_abts_rjt_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool371.not.i.i = icmp eq i8 %420, 0
  br i1 %tobool371.not.i.i, label %sw.bb370.i.i.for.inc.i_crit_edge, label %if.then372.i.i

sw.bb370.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb370.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then372.i.i:                                   ; preds = %sw.bb370.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %421 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %rx_abts_rjt.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb375.i.i:                                     ; preds = %if.then44.i.sw.bb375.i.i_crit_edge, %if.then44.i.sw.bb375.i.i_crit_edge652, %if.then44.i.sw.bb375.i.i_crit_edge653, %if.then44.i.sw.bb375.i.i_crit_edge654, %if.then44.i.sw.bb375.i.i_crit_edge655
  %sub378.i.i = add nsw i8 %49, 97
  %div379104510461056.i.i = lshr i8 %sub378.i.i, 1
  %div3791045.zext.i.i = zext i8 %div379104510461056.i.i to i32
  %arrayidx382.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 124, i32 %div3791045.zext.i.i
  %422 = ptrtoint ptr %arrayidx382.i.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %arrayidx382.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %423)
  %tobool383.not.i.i = icmp eq i8 %423, 0
  br i1 %tobool383.not.i.i, label %sw.bb375.i.i.for.inc.i_crit_edge, label %if.then384.i.i

sw.bb375.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb375.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then384.i.i:                                   ; preds = %sw.bb375.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx386.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 123, i32 %div3791045.zext.i.i
  %424 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %arrayidx386.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb389.i.i:                                     ; preds = %if.then44.i.sw.bb389.i.i_crit_edge, %if.then44.i.sw.bb389.i.i_crit_edge656, %if.then44.i.sw.bb389.i.i_crit_edge657, %if.then44.i.sw.bb389.i.i_crit_edge658, %if.then44.i.sw.bb389.i.i_crit_edge659
  %sub392.i.i = add nsw i8 %49, 96
  %div393104710481055.i.i = lshr i8 %sub392.i.i, 1
  %div3931047.zext.i.i = zext i8 %div393104710481055.i.i to i32
  %arrayidx396.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 125, i32 %div3931047.zext.i.i
  %425 = ptrtoint ptr %arrayidx396.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %arrayidx396.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i957.i.i = icmp eq i8 %426, 0
  br i1 %tobool.not.i957.i.i, label %sw.bb389.i.i.for.inc.i_crit_edge, label %if.end.i960.i.i

sw.bb389.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb389.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i960.i.i:                                  ; preds = %sw.bb389.i.i
  %month.i958.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 125, i32 %div3931047.zext.i.i, i32 1
  %427 = ptrtoint ptr %month.i958.i.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %month.i958.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %428)
  %cmp.i959.i.i = icmp ugt i8 %428, 12
  br i1 %cmp.i959.i.i, label %if.then2.i961.i.i, label %if.end.i960.i.i.if.end4.i964.i.i_crit_edge

if.end.i960.i.i.if.end4.i964.i.i_crit_edge:       ; preds = %if.end.i960.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i964.i.i

if.then2.i961.i.i:                                ; preds = %if.end.i960.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %429 = ptrtoint ptr %month.i958.i.i to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 0, ptr %month.i958.i.i, align 1
  br label %if.end4.i964.i.i

if.end4.i964.i.i:                                 ; preds = %if.then2.i961.i.i, %if.end.i960.i.i.if.end4.i964.i.i_crit_edge
  %day.i962.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 125, i32 %div3931047.zext.i.i, i32 2
  %430 = ptrtoint ptr %day.i962.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %day.i962.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %431)
  %cmp6.i963.i.i = icmp ugt i8 %431, 31
  br i1 %cmp6.i963.i.i, label %if.then8.i965.i.i, label %if.end4.i964.i.i.if.end10.i968.i.i_crit_edge

if.end4.i964.i.i.if.end10.i968.i.i_crit_edge:     ; preds = %if.end4.i964.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i968.i.i

if.then8.i965.i.i:                                ; preds = %if.end4.i964.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %432 = ptrtoint ptr %day.i962.i.i to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 0, ptr %day.i962.i.i, align 2
  br label %if.end10.i968.i.i

if.end10.i968.i.i:                                ; preds = %if.then8.i965.i.i, %if.end4.i964.i.i.if.end10.i968.i.i_crit_edge
  %hour.i966.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 125, i32 %div3931047.zext.i.i, i32 3
  %433 = ptrtoint ptr %hour.i966.i.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %hour.i966.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %434)
  %cmp12.i967.i.i = icmp ugt i8 %434, 23
  br i1 %cmp12.i967.i.i, label %if.then14.i969.i.i, label %if.end10.i968.i.i.if.end16.i972.i.i_crit_edge

if.end10.i968.i.i.if.end16.i972.i.i_crit_edge:    ; preds = %if.end10.i968.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i972.i.i

if.then14.i969.i.i:                               ; preds = %if.end10.i968.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %435 = ptrtoint ptr %hour.i966.i.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 0, ptr %hour.i966.i.i, align 1
  br label %if.end16.i972.i.i

if.end16.i972.i.i:                                ; preds = %if.then14.i969.i.i, %if.end10.i968.i.i.if.end16.i972.i.i_crit_edge
  %min.i970.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 125, i32 %div3931047.zext.i.i, i32 4
  %436 = ptrtoint ptr %min.i970.i.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %min.i970.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %437)
  %cmp18.i971.i.i = icmp ugt i8 %437, 59
  br i1 %cmp18.i971.i.i, label %if.then20.i973.i.i, label %if.end16.i972.i.i.if.end22.i976.i.i_crit_edge

if.end16.i972.i.i.if.end22.i976.i.i_crit_edge:    ; preds = %if.end16.i972.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i976.i.i

if.then20.i973.i.i:                               ; preds = %if.end16.i972.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %438 = ptrtoint ptr %hour.i966.i.i to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 0, ptr %hour.i966.i.i, align 1
  br label %if.end22.i976.i.i

if.end22.i976.i.i:                                ; preds = %if.then20.i973.i.i, %if.end16.i972.i.i.if.end22.i976.i.i_crit_edge
  %msec.i974.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 125, i32 %div3931047.zext.i.i, i32 5
  %439 = ptrtoint ptr %msec.i974.i.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %msec.i974.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %440)
  %cmp24.i975.i.i = icmp ugt i16 %440, 999
  br i1 %cmp24.i975.i.i, label %if.then26.i977.i.i, label %if.end22.i976.i.i.if.end28.i980.i.i_crit_edge

if.end22.i976.i.i.if.end28.i980.i.i_crit_edge:    ; preds = %if.end22.i976.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i980.i.i

if.then26.i977.i.i:                               ; preds = %if.end22.i976.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %441 = ptrtoint ptr %msec.i974.i.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 0, ptr %msec.i974.i.i, align 2
  br label %if.end28.i980.i.i

if.end28.i980.i.i:                                ; preds = %if.then26.i977.i.i, %if.end22.i976.i.i.if.end28.i980.i.i_crit_edge
  %usec.i978.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 125, i32 %div3931047.zext.i.i, i32 6
  %442 = ptrtoint ptr %usec.i978.i.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %usec.i978.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %443)
  %cmp30.i979.i.i = icmp ugt i16 %443, 999
  br i1 %cmp30.i979.i.i, label %if.then32.i981.i.i, label %if.end28.i980.i.i.if.end34.i990.i.i_crit_edge

if.end28.i980.i.i.if.end34.i990.i.i_crit_edge:    ; preds = %if.end28.i980.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i990.i.i

if.then32.i981.i.i:                               ; preds = %if.end28.i980.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %444 = ptrtoint ptr %usec.i978.i.i to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 0, ptr %usec.i978.i.i, align 2
  br label %if.end34.i990.i.i

if.end34.i990.i.i:                                ; preds = %if.then32.i981.i.i, %if.end28.i980.i.i.if.end34.i990.i.i_crit_edge
  %445 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %446 = ptrtoint ptr %month.i958.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %month.i958.i.i, align 1
  %conv38.i983.i.i = zext i8 %447 to i32
  %448 = ptrtoint ptr %day.i962.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %day.i962.i.i, align 2
  %conv40.i984.i.i = zext i8 %449 to i32
  %450 = ptrtoint ptr %hour.i966.i.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %hour.i966.i.i, align 1
  %conv42.i985.i.i = zext i8 %451 to i32
  %452 = ptrtoint ptr %min.i970.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %min.i970.i.i, align 2
  %conv44.i986.i.i = zext i8 %453 to i32
  %454 = ptrtoint ptr %msec.i974.i.i to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %msec.i974.i.i, align 2
  %conv46.i987.i.i = zext i16 %455 to i32
  %456 = ptrtoint ptr %usec.i978.i.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %usec.i978.i.i, align 2
  %conv48.i988.i.i = zext i16 %457 to i32
  %call.i989.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i1018.i.i, i32 noundef 14, ptr noundef nonnull @.str.22, i32 noundef %conv38.i983.i.i, i32 noundef %conv40.i984.i.i, i32 noundef %conv42.i985.i.i, i32 noundef %conv44.i986.i.i, i32 noundef %conv46.i987.i.i, i32 noundef %conv48.i988.i.i) #7
  %458 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr %data.i1018.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb398.i.i:                                     ; preds = %if.then44.i
  %459 = ptrtoint ptr %rx_rscn_set.i.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %rx_rscn_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %460)
  %tobool399.not.i.i = icmp eq i8 %460, 0
  br i1 %tobool399.not.i.i, label %sw.bb398.i.i.for.inc.i_crit_edge, label %if.then400.i.i

sw.bb398.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb398.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then400.i.i:                                   ; preds = %sw.bb398.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %461 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %rx_rscn.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb403.i.i:                                     ; preds = %if.then44.i.sw.bb403.i.i_crit_edge, %if.then44.i.sw.bb403.i.i_crit_edge660, %if.then44.i.sw.bb403.i.i_crit_edge661, %if.then44.i.sw.bb403.i.i_crit_edge662
  %sub406.i.i = add nsw i8 %49, 86
  %idxprom408.i.i = zext i8 %sub406.i.i to i32
  %arrayidx409.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 129, i32 %idxprom408.i.i
  %462 = ptrtoint ptr %arrayidx409.i.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx409.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %463)
  %tobool410.not.i.i = icmp eq i8 %463, 0
  br i1 %tobool410.not.i.i, label %sw.bb403.i.i.for.inc.i_crit_edge, label %if.then411.i.i

sw.bb403.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb403.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then411.i.i:                                   ; preds = %sw.bb403.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx413.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 128, i32 %idxprom408.i.i
  %464 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %arrayidx413.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb416.i.i:                                     ; preds = %if.then44.i
  %465 = ptrtoint ptr %tx_lun_rst_set.i.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %tx_lun_rst_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %466)
  %tobool417.not.i.i = icmp eq i8 %466, 0
  br i1 %tobool417.not.i.i, label %sw.bb416.i.i.for.inc.i_crit_edge, label %if.then418.i.i

sw.bb416.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb416.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then418.i.i:                                   ; preds = %sw.bb416.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %467 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %tx_lun_rst.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb421.i.i:                                     ; preds = %if.then44.i
  %468 = ptrtoint ptr %abort_task_sets_set.i.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %abort_task_sets_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool422.not.i.i = icmp eq i8 %469, 0
  br i1 %tobool422.not.i.i, label %sw.bb421.i.i.for.inc.i_crit_edge, label %if.then423.i.i

sw.bb421.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb421.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then423.i.i:                                   ; preds = %sw.bb421.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %470 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %abort_task_sets.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb426.i.i:                                     ; preds = %if.then44.i
  %471 = ptrtoint ptr %tx_tprlos_set.i.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %tx_tprlos_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %472)
  %tobool427.not.i.i = icmp eq i8 %472, 0
  br i1 %tobool427.not.i.i, label %sw.bb426.i.i.for.inc.i_crit_edge, label %if.then428.i.i

sw.bb426.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb426.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then428.i.i:                                   ; preds = %sw.bb426.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %473 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %tx_tprlos.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb431.i.i:                                     ; preds = %if.then44.i
  %474 = ptrtoint ptr %tx_nos_set.i.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %tx_nos_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %475)
  %tobool432.not.i.i = icmp eq i8 %475, 0
  br i1 %tobool432.not.i.i, label %sw.bb431.i.i.for.inc.i_crit_edge, label %if.then433.i.i

sw.bb431.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb431.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then433.i.i:                                   ; preds = %sw.bb431.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %476 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %tx_nos.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb436.i.i:                                     ; preds = %if.then44.i
  %477 = ptrtoint ptr %rx_nos_set.i.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %rx_nos_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %478)
  %tobool437.not.i.i = icmp eq i8 %478, 0
  br i1 %tobool437.not.i.i, label %sw.bb436.i.i.for.inc.i_crit_edge, label %if.then438.i.i

sw.bb436.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb436.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then438.i.i:                                   ; preds = %sw.bb436.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %479 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %rx_nos.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb441.i.i:                                     ; preds = %if.then44.i
  %480 = ptrtoint ptr %ols_set.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %ols_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %tobool442.not.i.i = icmp eq i8 %481, 0
  br i1 %tobool442.not.i.i, label %sw.bb441.i.i.for.inc.i_crit_edge, label %if.then443.i.i

sw.bb441.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb441.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then443.i.i:                                   ; preds = %sw.bb441.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %482 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr %ols.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb446.i.i:                                     ; preds = %if.then44.i
  %483 = ptrtoint ptr %lr_set.i.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %lr_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %484)
  %tobool447.not.i.i = icmp eq i8 %484, 0
  br i1 %tobool447.not.i.i, label %sw.bb446.i.i.for.inc.i_crit_edge, label %if.then448.i.i

sw.bb446.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb446.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then448.i.i:                                   ; preds = %sw.bb446.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %485 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %lr.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb451.i.i:                                     ; preds = %if.then44.i
  %486 = ptrtoint ptr %lrr_set.i.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %lrr_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %487)
  %tobool452.not.i.i = icmp eq i8 %487, 0
  br i1 %tobool452.not.i.i, label %sw.bb451.i.i.for.inc.i_crit_edge, label %if.then453.i.i

sw.bb451.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb451.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then453.i.i:                                   ; preds = %sw.bb451.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %488 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %lrr.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb456.i.i:                                     ; preds = %if.then44.i
  %489 = ptrtoint ptr %tx_lip_set.i.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %tx_lip_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %490)
  %tobool457.not.i.i = icmp eq i8 %490, 0
  br i1 %tobool457.not.i.i, label %sw.bb456.i.i.for.inc.i_crit_edge, label %if.then458.i.i

sw.bb456.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb456.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then458.i.i:                                   ; preds = %sw.bb456.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %491 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr %tx_lip.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb461.i.i:                                     ; preds = %if.then44.i
  %492 = ptrtoint ptr %rx_lip_set.i.i to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %rx_lip_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %493)
  %tobool462.not.i.i = icmp eq i8 %493, 0
  br i1 %tobool462.not.i.i, label %sw.bb461.i.i.for.inc.i_crit_edge, label %if.then463.i.i

sw.bb461.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb461.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then463.i.i:                                   ; preds = %sw.bb461.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %494 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr %rx_lip.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb466.i.i:                                     ; preds = %if.then44.i
  %495 = ptrtoint ptr %eofa_set.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %eofa_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool467.not.i.i = icmp eq i8 %496, 0
  br i1 %tobool467.not.i.i, label %sw.bb466.i.i.for.inc.i_crit_edge, label %if.then468.i.i

sw.bb466.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb466.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then468.i.i:                                   ; preds = %sw.bb466.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %497 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %eofa.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb471.i.i:                                     ; preds = %if.then44.i
  %498 = ptrtoint ptr %eofni_set.i.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %eofni_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %499)
  %tobool472.not.i.i = icmp eq i8 %499, 0
  br i1 %tobool472.not.i.i, label %sw.bb471.i.i.for.inc.i_crit_edge, label %if.then473.i.i

sw.bb471.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb471.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then473.i.i:                                   ; preds = %sw.bb471.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %500 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store ptr %eofni.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb476.i.i:                                     ; preds = %if.then44.i
  %501 = ptrtoint ptr %scsi_chks_set.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %scsi_chks_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %502)
  %tobool477.not.i.i = icmp eq i8 %502, 0
  br i1 %tobool477.not.i.i, label %sw.bb476.i.i.for.inc.i_crit_edge, label %if.then478.i.i

sw.bb476.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb476.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then478.i.i:                                   ; preds = %sw.bb476.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %503 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %scsi_chks.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb481.i.i:                                     ; preds = %if.then44.i
  %504 = ptrtoint ptr %scsi_cond_met_set.i.i to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %scsi_cond_met_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool482.not.i.i = icmp eq i8 %505, 0
  br i1 %tobool482.not.i.i, label %sw.bb481.i.i.for.inc.i_crit_edge, label %if.then483.i.i

sw.bb481.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb481.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then483.i.i:                                   ; preds = %sw.bb481.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %506 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr %scsi_cond_met.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb486.i.i:                                     ; preds = %if.then44.i
  %507 = ptrtoint ptr %scsi_busy_set.i.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %scsi_busy_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %508)
  %tobool487.not.i.i = icmp eq i8 %508, 0
  br i1 %tobool487.not.i.i, label %sw.bb486.i.i.for.inc.i_crit_edge, label %if.then488.i.i

sw.bb486.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb486.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then488.i.i:                                   ; preds = %sw.bb486.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %509 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %scsi_busy.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb491.i.i:                                     ; preds = %if.then44.i
  %510 = ptrtoint ptr %scsi_inter_set.i.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %scsi_inter_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %511)
  %tobool492.not.i.i = icmp eq i8 %511, 0
  br i1 %tobool492.not.i.i, label %sw.bb491.i.i.for.inc.i_crit_edge, label %if.then493.i.i

sw.bb491.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb491.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then493.i.i:                                   ; preds = %sw.bb491.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %512 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %512)
  store ptr %scsi_inter.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb496.i.i:                                     ; preds = %if.then44.i
  %513 = ptrtoint ptr %scsi_inter_cond_met_set.i.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %scsi_inter_cond_met_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %514)
  %tobool497.not.i.i = icmp eq i8 %514, 0
  br i1 %tobool497.not.i.i, label %sw.bb496.i.i.for.inc.i_crit_edge, label %if.then498.i.i

sw.bb496.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb496.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then498.i.i:                                   ; preds = %sw.bb496.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %515 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr %scsi_inter_cond_met.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb501.i.i:                                     ; preds = %if.then44.i
  %516 = ptrtoint ptr %scsi_rsv_conflicts_set.i.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %scsi_rsv_conflicts_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %517)
  %tobool502.not.i.i = icmp eq i8 %517, 0
  br i1 %tobool502.not.i.i, label %sw.bb501.i.i.for.inc.i_crit_edge, label %if.then503.i.i

sw.bb501.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb501.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then503.i.i:                                   ; preds = %sw.bb501.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %518 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store ptr %scsi_rsv_conflicts.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb506.i.i:                                     ; preds = %if.then44.i
  %519 = ptrtoint ptr %scsi_tsk_full_set.i.i to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %scsi_tsk_full_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %520)
  %tobool507.not.i.i = icmp eq i8 %520, 0
  br i1 %tobool507.not.i.i, label %sw.bb506.i.i.for.inc.i_crit_edge, label %if.then508.i.i

sw.bb506.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb506.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then508.i.i:                                   ; preds = %sw.bb506.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %521 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %scsi_tsk_full.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb511.i.i:                                     ; preds = %if.then44.i
  %522 = ptrtoint ptr %scsi_aca_active_set.i.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %scsi_aca_active_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %523)
  %tobool512.not.i.i = icmp eq i8 %523, 0
  br i1 %tobool512.not.i.i, label %sw.bb511.i.i.for.inc.i_crit_edge, label %if.then513.i.i

sw.bb511.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb511.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then513.i.i:                                   ; preds = %sw.bb511.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %524 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %524)
  store ptr %scsi_aca_active.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb516.i.i:                                     ; preds = %if.then44.i
  %525 = ptrtoint ptr %scsi_tsk_abort_set.i.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %scsi_tsk_abort_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %526)
  %tobool517.not.i.i = icmp eq i8 %526, 0
  br i1 %tobool517.not.i.i, label %sw.bb516.i.i.for.inc.i_crit_edge, label %if.then518.i.i

sw.bb516.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb516.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then518.i.i:                                   ; preds = %sw.bb516.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %527 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %scsi_tsk_abort.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb521.i.i:                                     ; preds = %if.then44.i.sw.bb521.i.i_crit_edge, %if.then44.i.sw.bb521.i.i_crit_edge663, %if.then44.i.sw.bb521.i.i_crit_edge664, %if.then44.i.sw.bb521.i.i_crit_edge665, %if.then44.i.sw.bb521.i.i_crit_edge666
  %sub524.i.i = add nsw i8 %49, 61
  %div525104910501054.i.i = lshr i8 %sub524.i.i, 1
  %div5251049.zext.i.i = zext i8 %div525104910501054.i.i to i32
  %arrayidx528.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 173, i32 %div5251049.zext.i.i
  %528 = ptrtoint ptr %arrayidx528.i.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %arrayidx528.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %529)
  %tobool529.not.i.i = icmp eq i8 %529, 0
  br i1 %tobool529.not.i.i, label %sw.bb521.i.i.for.inc.i_crit_edge, label %if.then530.i.i

sw.bb521.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb521.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then530.i.i:                                   ; preds = %sw.bb521.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx532.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 172, i32 %div5251049.zext.i.i
  %530 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store ptr %arrayidx532.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

sw.bb535.i.i:                                     ; preds = %if.then44.i.sw.bb535.i.i_crit_edge, %if.then44.i.sw.bb535.i.i_crit_edge667, %if.then44.i.sw.bb535.i.i_crit_edge668, %if.then44.i.sw.bb535.i.i_crit_edge669, %if.then44.i.sw.bb535.i.i_crit_edge670
  %sub538.i.i = add nsw i8 %49, 60
  %div539105110521053.i.i = lshr i8 %sub538.i.i, 1
  %div5391051.zext.i.i = zext i8 %div539105110521053.i.i to i32
  %arrayidx542.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 174, i32 %div5391051.zext.i.i
  %531 = ptrtoint ptr %arrayidx542.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %arrayidx542.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %532)
  %tobool.not.i993.i.i = icmp eq i8 %532, 0
  br i1 %tobool.not.i993.i.i, label %sw.bb535.i.i.for.inc.i_crit_edge, label %if.end.i996.i.i

sw.bb535.i.i.for.inc.i_crit_edge:                 ; preds = %sw.bb535.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i996.i.i:                                  ; preds = %sw.bb535.i.i
  %month.i994.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 174, i32 %div5391051.zext.i.i, i32 1
  %533 = ptrtoint ptr %month.i994.i.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %month.i994.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %534)
  %cmp.i995.i.i = icmp ugt i8 %534, 12
  br i1 %cmp.i995.i.i, label %if.then2.i997.i.i, label %if.end.i996.i.i.if.end4.i1000.i.i_crit_edge

if.end.i996.i.i.if.end4.i1000.i.i_crit_edge:      ; preds = %if.end.i996.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i1000.i.i

if.then2.i997.i.i:                                ; preds = %if.end.i996.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %535 = ptrtoint ptr %month.i994.i.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 0, ptr %month.i994.i.i, align 1
  br label %if.end4.i1000.i.i

if.end4.i1000.i.i:                                ; preds = %if.then2.i997.i.i, %if.end.i996.i.i.if.end4.i1000.i.i_crit_edge
  %day.i998.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 174, i32 %div5391051.zext.i.i, i32 2
  %536 = ptrtoint ptr %day.i998.i.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %day.i998.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %537)
  %cmp6.i999.i.i = icmp ugt i8 %537, 31
  br i1 %cmp6.i999.i.i, label %if.then8.i1001.i.i, label %if.end4.i1000.i.i.if.end10.i1004.i.i_crit_edge

if.end4.i1000.i.i.if.end10.i1004.i.i_crit_edge:   ; preds = %if.end4.i1000.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i1004.i.i

if.then8.i1001.i.i:                               ; preds = %if.end4.i1000.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %538 = ptrtoint ptr %day.i998.i.i to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %day.i998.i.i, align 2
  br label %if.end10.i1004.i.i

if.end10.i1004.i.i:                               ; preds = %if.then8.i1001.i.i, %if.end4.i1000.i.i.if.end10.i1004.i.i_crit_edge
  %hour.i1002.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 174, i32 %div5391051.zext.i.i, i32 3
  %539 = ptrtoint ptr %hour.i1002.i.i to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %hour.i1002.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %540)
  %cmp12.i1003.i.i = icmp ugt i8 %540, 23
  br i1 %cmp12.i1003.i.i, label %if.then14.i1005.i.i, label %if.end10.i1004.i.i.if.end16.i1008.i.i_crit_edge

if.end10.i1004.i.i.if.end16.i1008.i.i_crit_edge:  ; preds = %if.end10.i1004.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i1008.i.i

if.then14.i1005.i.i:                              ; preds = %if.end10.i1004.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %541 = ptrtoint ptr %hour.i1002.i.i to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 0, ptr %hour.i1002.i.i, align 1
  br label %if.end16.i1008.i.i

if.end16.i1008.i.i:                               ; preds = %if.then14.i1005.i.i, %if.end10.i1004.i.i.if.end16.i1008.i.i_crit_edge
  %min.i1006.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 174, i32 %div5391051.zext.i.i, i32 4
  %542 = ptrtoint ptr %min.i1006.i.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %min.i1006.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %543)
  %cmp18.i1007.i.i = icmp ugt i8 %543, 59
  br i1 %cmp18.i1007.i.i, label %if.then20.i1009.i.i, label %if.end16.i1008.i.i.if.end22.i1012.i.i_crit_edge

if.end16.i1008.i.i.if.end22.i1012.i.i_crit_edge:  ; preds = %if.end16.i1008.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i1012.i.i

if.then20.i1009.i.i:                              ; preds = %if.end16.i1008.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %544 = ptrtoint ptr %hour.i1002.i.i to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 0, ptr %hour.i1002.i.i, align 1
  br label %if.end22.i1012.i.i

if.end22.i1012.i.i:                               ; preds = %if.then20.i1009.i.i, %if.end16.i1008.i.i.if.end22.i1012.i.i_crit_edge
  %msec.i1010.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 174, i32 %div5391051.zext.i.i, i32 5
  %545 = ptrtoint ptr %msec.i1010.i.i to i32
  call void @__asan_load2_noabort(i32 %545)
  %546 = load i16, ptr %msec.i1010.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %546)
  %cmp24.i1011.i.i = icmp ugt i16 %546, 999
  br i1 %cmp24.i1011.i.i, label %if.then26.i1013.i.i, label %if.end22.i1012.i.i.if.end28.i1016.i.i_crit_edge

if.end22.i1012.i.i.if.end28.i1016.i.i_crit_edge:  ; preds = %if.end22.i1012.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i1016.i.i

if.then26.i1013.i.i:                              ; preds = %if.end22.i1012.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %547 = ptrtoint ptr %msec.i1010.i.i to i32
  call void @__asan_store2_noabort(i32 %547)
  store i16 0, ptr %msec.i1010.i.i, align 2
  br label %if.end28.i1016.i.i

if.end28.i1016.i.i:                               ; preds = %if.then26.i1013.i.i, %if.end22.i1012.i.i.if.end28.i1016.i.i_crit_edge
  %usec.i1014.i.i = getelementptr %struct.qed_mfw_tlv_fcoe, ptr %call.i, i32 0, i32 174, i32 %div5391051.zext.i.i, i32 6
  %548 = ptrtoint ptr %usec.i1014.i.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %usec.i1014.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %549)
  %cmp30.i1015.i.i = icmp ugt i16 %549, 999
  br i1 %cmp30.i1015.i.i, label %if.then32.i1017.i.i, label %if.end28.i1016.i.i.if.end34.i1026.i.i_crit_edge

if.end28.i1016.i.i.if.end34.i1026.i.i_crit_edge:  ; preds = %if.end28.i1016.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i1026.i.i

if.then32.i1017.i.i:                              ; preds = %if.end28.i1016.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %550 = ptrtoint ptr %usec.i1014.i.i to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 0, ptr %usec.i1014.i.i, align 2
  br label %if.end34.i1026.i.i

if.end34.i1026.i.i:                               ; preds = %if.then32.i1017.i.i, %if.end28.i1016.i.i.if.end34.i1026.i.i_crit_edge
  %551 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %552 = ptrtoint ptr %month.i994.i.i to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %month.i994.i.i, align 1
  %conv38.i1019.i.i = zext i8 %553 to i32
  %554 = ptrtoint ptr %day.i998.i.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %day.i998.i.i, align 2
  %conv40.i1020.i.i = zext i8 %555 to i32
  %556 = ptrtoint ptr %hour.i1002.i.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %hour.i1002.i.i, align 1
  %conv42.i1021.i.i = zext i8 %557 to i32
  %558 = ptrtoint ptr %min.i1006.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %min.i1006.i.i, align 2
  %conv44.i1022.i.i = zext i8 %559 to i32
  %560 = ptrtoint ptr %msec.i1010.i.i to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %msec.i1010.i.i, align 2
  %conv46.i1023.i.i = zext i16 %561 to i32
  %562 = ptrtoint ptr %usec.i1014.i.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %usec.i1014.i.i, align 2
  %conv48.i1024.i.i = zext i16 %563 to i32
  %call.i1025.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i1018.i.i, i32 noundef 14, ptr noundef nonnull @.str.22, i32 noundef %conv38.i1019.i.i, i32 noundef %conv40.i1020.i.i, i32 noundef %conv42.i1021.i.i, i32 noundef %conv44.i1022.i.i, i32 noundef %conv46.i1023.i.i, i32 noundef %conv48.i1024.i.i) #7
  %564 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %564)
  store ptr %data.i1018.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

if.else46.i:                                      ; preds = %do.end29.i
  %565 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %565, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %49, label %if.else46.i.for.inc.i_crit_edge [
    i8 37, label %sw.bb.i208.i
    i8 38, label %sw.bb1.i210.i
    i8 39, label %sw.bb6.i213.i
    i8 40, label %sw.bb11.i216.i
    i8 41, label %sw.bb16.i219.i
    i8 42, label %sw.bb21.i222.i
    i8 43, label %sw.bb26.i225.i
    i8 44, label %sw.bb31.i228.i
    i8 45, label %sw.bb36.i231.i
    i8 -51, label %sw.bb41.i234.i
    i8 -50, label %sw.bb46.i237.i
    i8 -49, label %sw.bb51.i241.i
    i8 -48, label %sw.bb56.i246.i
    i8 -47, label %sw.bb61.i251.i
    i8 -46, label %sw.bb66.i256.i
  ]

if.else46.i.for.inc.i_crit_edge:                  ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i208.i:                                     ; preds = %if.else46.i
  %566 = ptrtoint ptr %scsi_timeout_set.i.i to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %scsi_timeout_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %567)
  %tobool.not.i207.i = icmp eq i8 %567, 0
  br i1 %tobool.not.i207.i, label %sw.bb.i208.i.for.inc.i_crit_edge, label %sw.bb.i208.i.return.sink.split.i260.i_crit_edge

sw.bb.i208.i.return.sink.split.i260.i_crit_edge:  ; preds = %sw.bb.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb.i208.i.for.inc.i_crit_edge:                 ; preds = %sw.bb.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb1.i210.i:                                    ; preds = %if.else46.i
  %568 = ptrtoint ptr %header_digest_set.i.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %header_digest_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %569)
  %tobool2.not.i209.i = icmp eq i8 %569, 0
  br i1 %tobool2.not.i209.i, label %sw.bb1.i210.i.for.inc.i_crit_edge, label %sw.bb1.i210.i.return.sink.split.i260.i_crit_edge

sw.bb1.i210.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb1.i210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb1.i210.i.for.inc.i_crit_edge:                ; preds = %sw.bb1.i210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb6.i213.i:                                    ; preds = %if.else46.i
  %570 = ptrtoint ptr %data_digest_set.i.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %data_digest_set.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %571)
  %tobool7.not.i212.i = icmp eq i8 %571, 0
  br i1 %tobool7.not.i212.i, label %sw.bb6.i213.i.for.inc.i_crit_edge, label %sw.bb6.i213.i.return.sink.split.i260.i_crit_edge

sw.bb6.i213.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb6.i213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb6.i213.i.for.inc.i_crit_edge:                ; preds = %sw.bb6.i213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb11.i216.i:                                   ; preds = %if.else46.i
  %572 = ptrtoint ptr %prom_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %prom_mode.i.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %573)
  %tobool12.not.i215.i = icmp eq i8 %573, 0
  br i1 %tobool12.not.i215.i, label %sw.bb11.i216.i.for.inc.i_crit_edge, label %sw.bb11.i216.i.return.sink.split.i260.i_crit_edge

sw.bb11.i216.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb11.i216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb11.i216.i.for.inc.i_crit_edge:               ; preds = %sw.bb11.i216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb16.i219.i:                                   ; preds = %if.else46.i
  %574 = ptrtoint ptr %tx_descr_size.i.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %tx_descr_size.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %575)
  %tobool17.not.i218.i = icmp eq i8 %575, 0
  br i1 %tobool17.not.i218.i, label %sw.bb16.i219.i.for.inc.i_crit_edge, label %sw.bb16.i219.i.return.sink.split.i260.i_crit_edge

sw.bb16.i219.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb16.i219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb16.i219.i.for.inc.i_crit_edge:               ; preds = %sw.bb16.i219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb21.i222.i:                                   ; preds = %if.else46.i
  %576 = ptrtoint ptr %rx_descr_size.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %rx_descr_size.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %577)
  %tobool22.not.i221.i = icmp eq i8 %577, 0
  br i1 %tobool22.not.i221.i, label %sw.bb21.i222.i.for.inc.i_crit_edge, label %sw.bb21.i222.i.return.sink.split.i260.i_crit_edge

sw.bb21.i222.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb21.i222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb21.i222.i.for.inc.i_crit_edge:               ; preds = %sw.bb21.i222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb26.i225.i:                                   ; preds = %if.else46.i
  %578 = ptrtoint ptr %netq_count.i.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %netq_count.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %579)
  %tobool27.not.i224.i = icmp eq i8 %579, 0
  br i1 %tobool27.not.i224.i, label %sw.bb26.i225.i.for.inc.i_crit_edge, label %sw.bb26.i225.i.return.sink.split.i260.i_crit_edge

sw.bb26.i225.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb26.i225.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb26.i225.i.for.inc.i_crit_edge:               ; preds = %sw.bb26.i225.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb31.i228.i:                                   ; preds = %if.else46.i
  %580 = ptrtoint ptr %rx_desc_size_set.i.i to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %rx_desc_size_set.i.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %581)
  %tobool32.not.i227.i = icmp eq i8 %581, 0
  br i1 %tobool32.not.i227.i, label %sw.bb31.i228.i.for.inc.i_crit_edge, label %sw.bb31.i228.i.return.sink.split.i260.i_crit_edge

sw.bb31.i228.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb31.i228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb31.i228.i.for.inc.i_crit_edge:               ; preds = %sw.bb31.i228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb36.i231.i:                                   ; preds = %if.else46.i
  %582 = ptrtoint ptr %ed_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %ed_tov_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %583)
  %tobool37.not.i230.i = icmp eq i8 %583, 0
  br i1 %tobool37.not.i230.i, label %sw.bb36.i231.i.for.inc.i_crit_edge, label %sw.bb36.i231.i.return.sink.split.i260.i_crit_edge

sw.bb36.i231.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb36.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb36.i231.i.for.inc.i_crit_edge:               ; preds = %sw.bb36.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb41.i234.i:                                   ; preds = %if.else46.i
  %584 = ptrtoint ptr %cr_tov.i.i to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %cr_tov.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %tobool42.not.i233.i = icmp eq i8 %585, 0
  br i1 %tobool42.not.i233.i, label %sw.bb41.i234.i.for.inc.i_crit_edge, label %sw.bb41.i234.i.return.sink.split.i260.i_crit_edge

sw.bb41.i234.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb41.i234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb41.i234.i.for.inc.i_crit_edge:               ; preds = %sw.bb41.i234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb46.i237.i:                                   ; preds = %if.else46.i
  %586 = ptrtoint ptr %cr_tov_set.i.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %cr_tov_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %587)
  %tobool47.not.i236.i = icmp eq i8 %587, 0
  br i1 %tobool47.not.i236.i, label %sw.bb46.i237.i.for.inc.i_crit_edge, label %sw.bb46.i237.i.return.sink.split.i260.i_crit_edge

sw.bb46.i237.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb46.i237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb46.i237.i.for.inc.i_crit_edge:               ; preds = %sw.bb46.i237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb51.i241.i:                                   ; preds = %if.else46.i
  %588 = ptrtoint ptr %txqs_empty_set.i.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %txqs_empty_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %589)
  %tobool52.not.i240.i = icmp eq i8 %589, 0
  br i1 %tobool52.not.i240.i, label %sw.bb51.i241.i.for.inc.i_crit_edge, label %sw.bb51.i241.i.return.sink.split.i260.i_crit_edge

sw.bb51.i241.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb51.i241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb51.i241.i.for.inc.i_crit_edge:               ; preds = %sw.bb51.i241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb56.i246.i:                                   ; preds = %if.else46.i
  %590 = ptrtoint ptr %tx_frames_set.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %tx_frames_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %591)
  %tobool57.not.i245.i = icmp eq i8 %591, 0
  br i1 %tobool57.not.i245.i, label %sw.bb56.i246.i.for.inc.i_crit_edge, label %sw.bb56.i246.i.return.sink.split.i260.i_crit_edge

sw.bb56.i246.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb56.i246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb56.i246.i.for.inc.i_crit_edge:               ; preds = %sw.bb56.i246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb61.i251.i:                                   ; preds = %if.else46.i
  %592 = ptrtoint ptr %tx_bytes_set.i.i to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %tx_bytes_set.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %593)
  %tobool62.not.i250.i = icmp eq i8 %593, 0
  br i1 %tobool62.not.i250.i, label %sw.bb61.i251.i.for.inc.i_crit_edge, label %sw.bb61.i251.i.return.sink.split.i260.i_crit_edge

sw.bb61.i251.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb61.i251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb61.i251.i.for.inc.i_crit_edge:               ; preds = %sw.bb61.i251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb66.i256.i:                                   ; preds = %if.else46.i
  %594 = ptrtoint ptr %fip_tx_descr_size.i.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %fip_tx_descr_size.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %595)
  %tobool67.not.i255.i = icmp eq i8 %595, 0
  br i1 %tobool67.not.i255.i, label %sw.bb66.i256.i.for.inc.i_crit_edge, label %sw.bb66.i256.i.return.sink.split.i260.i_crit_edge

sw.bb66.i256.i.return.sink.split.i260.i_crit_edge: ; preds = %sw.bb66.i256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i260.i

sw.bb66.i256.i.for.inc.i_crit_edge:               ; preds = %sw.bb66.i256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

return.sink.split.i260.i:                         ; preds = %sw.bb66.i256.i.return.sink.split.i260.i_crit_edge, %sw.bb61.i251.i.return.sink.split.i260.i_crit_edge, %sw.bb56.i246.i.return.sink.split.i260.i_crit_edge, %sw.bb51.i241.i.return.sink.split.i260.i_crit_edge, %sw.bb46.i237.i.return.sink.split.i260.i_crit_edge, %sw.bb41.i234.i.return.sink.split.i260.i_crit_edge, %sw.bb36.i231.i.return.sink.split.i260.i_crit_edge, %sw.bb31.i228.i.return.sink.split.i260.i_crit_edge, %sw.bb26.i225.i.return.sink.split.i260.i_crit_edge, %sw.bb21.i222.i.return.sink.split.i260.i_crit_edge, %sw.bb16.i219.i.return.sink.split.i260.i_crit_edge, %sw.bb11.i216.i.return.sink.split.i260.i_crit_edge, %sw.bb6.i213.i.return.sink.split.i260.i_crit_edge, %sw.bb1.i210.i.return.sink.split.i260.i_crit_edge, %sw.bb.i208.i.return.sink.split.i260.i_crit_edge
  %tx_bytes.sink.i.i = phi ptr [ %call.i, %sw.bb.i208.i.return.sink.split.i260.i_crit_edge ], [ %lso_maxoff_size_set.i.i, %sw.bb1.i210.i.return.sink.split.i260.i_crit_edge ], [ %rt_tov.i.i, %sw.bb6.i213.i.return.sink.split.i260.i_crit_edge ], [ %lso_minseg_size_set.i.i, %sw.bb11.i216.i.return.sink.split.i260.i_crit_edge ], [ %rt_tov_set.i.i, %sw.bb16.i219.i.return.sink.split.i260.i_crit_edge ], [ %ra_tov.i.i, %sw.bb21.i222.i.return.sink.split.i260.i_crit_edge ], [ %ra_tov_set.i.i, %sw.bb26.i225.i.return.sink.split.i260.i_crit_edge ], [ %ed_tov.i.i, %sw.bb31.i228.i.return.sink.split.i260.i_crit_edge ], [ %boot_progress.i.i, %sw.bb36.i231.i.return.sink.split.i260.i_crit_edge ], [ %tx_desc_qdepth.i.i, %sw.bb41.i234.i.return.sink.split.i260.i_crit_edge ], [ %rx_desc_qdepth.i.i, %sw.bb46.i237.i.return.sink.split.i260.i_crit_edge ], [ %num_npiv_ids.i.i, %sw.bb51.i241.i.return.sink.split.i260.i_crit_edge ], [ %switch_portnum_set.i.i, %sw.bb56.i246.i.return.sink.split.i260.i_crit_edge ], [ %tx_bytes.i.i, %sw.bb61.i251.i.return.sink.split.i260.i_crit_edge ], [ %qos_pri.i.i, %sw.bb66.i256.i.return.sink.split.i260.i_crit_edge ]
  %retval.0.ph.i259.i = phi i32 [ 1, %sw.bb.i208.i.return.sink.split.i260.i_crit_edge ], [ 1, %sw.bb1.i210.i.return.sink.split.i260.i_crit_edge ], [ 1, %sw.bb6.i213.i.return.sink.split.i260.i_crit_edge ], [ 1, %sw.bb11.i216.i.return.sink.split.i260.i_crit_edge ], [ 2, %sw.bb16.i219.i.return.sink.split.i260.i_crit_edge ], [ 2, %sw.bb21.i222.i.return.sink.split.i260.i_crit_edge ], [ 2, %sw.bb26.i225.i.return.sink.split.i260.i_crit_edge ], [ 2, %sw.bb31.i228.i.return.sink.split.i260.i_crit_edge ], [ 1, %sw.bb36.i231.i.return.sink.split.i260.i_crit_edge ], [ 2, %sw.bb41.i234.i.return.sink.split.i260.i_crit_edge ], [ 2, %sw.bb46.i237.i.return.sink.split.i260.i_crit_edge ], [ 8, %sw.bb51.i241.i.return.sink.split.i260.i_crit_edge ], [ 8, %sw.bb56.i246.i.return.sink.split.i260.i_crit_edge ], [ 8, %sw.bb61.i251.i.return.sink.split.i260.i_crit_edge ], [ 8, %sw.bb66.i256.i.return.sink.split.i260.i_crit_edge ]
  %596 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr %tx_bytes.sink.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

if.end50.i:                                       ; preds = %sw.bb224.i.i, %sw.bb217.i.i, %if.then44.i.if.end50.i_crit_edge
  %flogi_rjt_tstamp.i.sink.i = phi ptr [ %flogi_rjt_tstamp.i.i, %sw.bb224.i.i ], [ %flogi_acc_tstamp.i.i, %sw.bb217.i.i ], [ %flogi_tstamp.i.i, %if.then44.i.if.end50.i_crit_edge ]
  %597 = ptrtoint ptr %flogi_rjt_tstamp.i.sink.i to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %flogi_rjt_tstamp.i.sink.i, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %598)
  %tobool.not.i382 = icmp eq i8 %598, 0
  br i1 %tobool.not.i382, label %if.end50.i.for.inc.i_crit_edge, label %if.end.i384

if.end50.i.for.inc.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i384:                                      ; preds = %if.end50.i
  %month.i = getelementptr inbounds %struct.qed_mfw_tlv_time, ptr %flogi_rjt_tstamp.i.sink.i, i32 0, i32 1
  %599 = ptrtoint ptr %month.i to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %month.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %600)
  %cmp.i383 = icmp ugt i8 %600, 12
  br i1 %cmp.i383, label %if.then2.i, label %if.end.i384.if.end4.i_crit_edge

if.end.i384.if.end4.i_crit_edge:                  ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #9
  %601 = ptrtoint ptr %month.i to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 0, ptr %month.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i384.if.end4.i_crit_edge
  %day.i = getelementptr inbounds %struct.qed_mfw_tlv_time, ptr %flogi_rjt_tstamp.i.sink.i, i32 0, i32 2
  %602 = ptrtoint ptr %day.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %day.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %603)
  %cmp6.i = icmp ugt i8 %603, 31
  br i1 %cmp6.i, label %if.then8.i, label %if.end4.i.if.end10.i_crit_edge

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %604 = ptrtoint ptr %day.i to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 0, ptr %day.i, align 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end4.i.if.end10.i_crit_edge
  %hour.i = getelementptr inbounds %struct.qed_mfw_tlv_time, ptr %flogi_rjt_tstamp.i.sink.i, i32 0, i32 3
  %605 = ptrtoint ptr %hour.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %hour.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %606)
  %cmp12.i = icmp ugt i8 %606, 23
  br i1 %cmp12.i, label %if.then14.i, label %if.end10.i.if.end16.i_crit_edge

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %607 = ptrtoint ptr %hour.i to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 0, ptr %hour.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end16.i_crit_edge
  %min.i = getelementptr inbounds %struct.qed_mfw_tlv_time, ptr %flogi_rjt_tstamp.i.sink.i, i32 0, i32 4
  %608 = ptrtoint ptr %min.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %min.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %609)
  %cmp18.i = icmp ugt i8 %609, 59
  br i1 %cmp18.i, label %if.then20.i, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %610 = ptrtoint ptr %hour.i to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 0, ptr %hour.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end22.i_crit_edge
  %msec.i = getelementptr inbounds %struct.qed_mfw_tlv_time, ptr %flogi_rjt_tstamp.i.sink.i, i32 0, i32 5
  %611 = ptrtoint ptr %msec.i to i32
  call void @__asan_load2_noabort(i32 %611)
  %612 = load i16, ptr %msec.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %612)
  %cmp24.i = icmp ugt i16 %612, 999
  br i1 %cmp24.i, label %if.then26.i, label %if.end22.i.if.end28.i_crit_edge

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %613 = ptrtoint ptr %msec.i to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 0, ptr %msec.i, align 2
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end28.i_crit_edge
  %usec.i = getelementptr inbounds %struct.qed_mfw_tlv_time, ptr %flogi_rjt_tstamp.i.sink.i, i32 0, i32 6
  %614 = ptrtoint ptr %usec.i to i32
  call void @__asan_load2_noabort(i32 %614)
  %615 = load i16, ptr %usec.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %615)
  %cmp30.i = icmp ugt i16 %615, 999
  br i1 %cmp30.i, label %if.then32.i, label %if.end28.i.qed_mfw_get_tlv_time_value.exit.thread_crit_edge

if.end28.i.qed_mfw_get_tlv_time_value.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_mfw_get_tlv_time_value.exit.thread

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %616 = ptrtoint ptr %usec.i to i32
  call void @__asan_store2_noabort(i32 %616)
  store i16 0, ptr %usec.i, align 2
  br label %qed_mfw_get_tlv_time_value.exit.thread

qed_mfw_get_tlv_time_value.exit.thread:           ; preds = %if.then32.i, %if.end28.i.qed_mfw_get_tlv_time_value.exit.thread_crit_edge
  %617 = call ptr @memset(ptr %data.i1018.i.i, i32 0, i32 14)
  %618 = ptrtoint ptr %month.i to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %month.i, align 1
  %conv38.i = zext i8 %619 to i32
  %620 = ptrtoint ptr %day.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %day.i, align 2
  %conv40.i = zext i8 %621 to i32
  %622 = ptrtoint ptr %hour.i to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %hour.i, align 1
  %conv42.i = zext i8 %623 to i32
  %624 = ptrtoint ptr %min.i to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %min.i, align 2
  %conv44.i = zext i8 %625 to i32
  %626 = ptrtoint ptr %msec.i to i32
  call void @__asan_load2_noabort(i32 %626)
  %627 = load i16, ptr %msec.i, align 2
  %conv46.i = zext i16 %627 to i32
  %628 = ptrtoint ptr %usec.i to i32
  call void @__asan_load2_noabort(i32 %628)
  %629 = load i16, ptr %usec.i, align 2
  %conv48.i = zext i16 %629 to i32
  %call.i385 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i1018.i.i, i32 noundef 14, ptr noundef nonnull @.str.22, i32 noundef %conv38.i, i32 noundef %conv40.i, i32 noundef %conv42.i, i32 noundef %conv44.i, i32 noundef %conv46.i, i32 noundef %conv48.i) #7
  %630 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %630)
  store ptr %data.i1018.i.i, ptr %buffer.i, align 4
  br label %if.then53.i

if.then53.i:                                      ; preds = %qed_mfw_get_tlv_time_value.exit.thread, %return.sink.split.i260.i, %if.end34.i1026.i.i, %if.then530.i.i, %if.then518.i.i, %if.then513.i.i, %if.then508.i.i, %if.then503.i.i, %if.then498.i.i, %if.then493.i.i, %if.then488.i.i, %if.then483.i.i, %if.then478.i.i, %if.then473.i.i, %if.then468.i.i, %if.then463.i.i, %if.then458.i.i, %if.then453.i.i, %if.then448.i.i, %if.then443.i.i, %if.then438.i.i, %if.then433.i.i, %if.then428.i.i, %if.then423.i.i, %if.then418.i.i, %if.then411.i.i, %if.then400.i.i, %if.end34.i990.i.i, %if.then384.i.i, %if.then372.i.i, %if.then367.i.i, %if.then362.i.i, %if.then357.i.i, %if.then352.i.i, %if.then347.i.i, %if.then342.i.i, %if.end34.i954.i.i, %if.then326.i.i, %if.then314.i.i, %if.then309.i.i, %if.then304.i.i, %if.end34.i918.i.i, %if.then288.i.i, %if.end34.i882.i.i, %if.then265.i.i, %if.then253.i.i, %if.then248.i.i, %if.then243.i.i, %if.then238.i.i, %if.then233.i.i, %if.then228.i.i, %if.then221.i.i, %if.then212.i.i, %if.then197.i.i, %if.then186.i.i, %if.then181.i.i, %if.then176.i.i, %if.then171.i.i, %if.then166.i.i, %if.end34.i.i.i, %if.then151.i.i, %if.then143.i.i, %if.then138.i.i, %if.then133.i.i, %if.then128.i.i, %if.then123.i.i, %if.then118.i.i, %if.then113.i.i, %if.then108.i.i, %if.then103.i.i, %if.then98.i.i, %if.then93.i.i, %if.then88.i.i, %if.then83.i.i, %if.then78.i.i, %if.then73.i.i, %if.then68.i204.i, %if.then63.i201.i, %if.then58.i198.i, %if.then53.i195.i, %if.then48.i192.i, %if.then43.i189.i, %if.then38.i186.i, %if.then33.i183.i, %if.then28.i180.i, %if.then23.i177.i, %if.then18.i174.i, %if.then13.i171.i, %if.then8.i168.i, %if.then3.i165.i, %if.then.i162.i, %return.sink.split.i159.i, %return.sink.split.i.i
  %len.0276.i = phi i32 [ %retval.0.ph.i259.i, %return.sink.split.i260.i ], [ 14, %if.end34.i1026.i.i ], [ 14, %if.end34.i990.i.i ], [ 14, %if.end34.i954.i.i ], [ 14, %if.end34.i918.i.i ], [ 14, %if.end34.i882.i.i ], [ 14, %if.end34.i.i.i ], [ 1, %if.then.i162.i ], [ 4, %if.then3.i165.i ], [ 4, %if.then8.i168.i ], [ 4, %if.then13.i171.i ], [ 4, %if.then18.i174.i ], [ 1, %if.then23.i177.i ], [ 1, %if.then28.i180.i ], [ 4, %if.then33.i183.i ], [ 8, %if.then38.i186.i ], [ 2, %if.then43.i189.i ], [ 3, %if.then48.i192.i ], [ 8, %if.then53.i195.i ], [ 8, %if.then58.i198.i ], [ 8, %if.then63.i201.i ], [ 1, %if.then68.i204.i ], [ 3, %if.then73.i.i ], [ 1, %if.then78.i.i ], [ 2, %if.then83.i.i ], [ 2, %if.then88.i.i ], [ 2, %if.then93.i.i ], [ 1, %if.then98.i.i ], [ 8, %if.then103.i.i ], [ 8, %if.then108.i.i ], [ 2, %if.then113.i.i ], [ 2, %if.then118.i.i ], [ 8, %if.then123.i.i ], [ 8, %if.then128.i.i ], [ 8, %if.then133.i.i ], [ 8, %if.then138.i.i ], [ 2, %if.then143.i.i ], [ 4, %if.then151.i.i ], [ 2, %if.then166.i.i ], [ 2, %if.then171.i.i ], [ 2, %if.then176.i.i ], [ 2, %if.then181.i.i ], [ 2, %if.then186.i.i ], [ 4, %if.then197.i.i ], [ 4, %if.then212.i.i ], [ 4, %if.then221.i.i ], [ 4, %if.then228.i.i ], [ 1, %if.then233.i.i ], [ 1, %if.then238.i.i ], [ 1, %if.then243.i.i ], [ 1, %if.then248.i.i ], [ 1, %if.then253.i.i ], [ 4, %if.then265.i.i ], [ 4, %if.then288.i.i ], [ 1, %if.then304.i.i ], [ 1, %if.then309.i.i ], [ 1, %if.then314.i.i ], [ 4, %if.then326.i.i ], [ 1, %if.then342.i.i ], [ 1, %if.then347.i.i ], [ 1, %if.then352.i.i ], [ 1, %if.then357.i.i ], [ 1, %if.then362.i.i ], [ 1, %if.then367.i.i ], [ 1, %if.then372.i.i ], [ 4, %if.then384.i.i ], [ 1, %if.then400.i.i ], [ 4, %if.then411.i.i ], [ 1, %if.then418.i.i ], [ 1, %if.then423.i.i ], [ 1, %if.then428.i.i ], [ 1, %if.then433.i.i ], [ 1, %if.then438.i.i ], [ 1, %if.then443.i.i ], [ 1, %if.then448.i.i ], [ 1, %if.then453.i.i ], [ 1, %if.then458.i.i ], [ 1, %if.then463.i.i ], [ 1, %if.then468.i.i ], [ 1, %if.then473.i.i ], [ 1, %if.then478.i.i ], [ 1, %if.then483.i.i ], [ 1, %if.then488.i.i ], [ 1, %if.then493.i.i ], [ 1, %if.then498.i.i ], [ 1, %if.then503.i.i ], [ 1, %if.then508.i.i ], [ 1, %if.then513.i.i ], [ 1, %if.then518.i.i ], [ 4, %if.then530.i.i ], [ %retval.0.ph.i.i, %return.sink.split.i159.i ], [ %retval.1.ph.i.i, %return.sink.split.i.i ], [ 14, %qed_mfw_get_tlv_time_value.exit.thread ]
  %conv55.i = zext i8 %51 to i32
  %mul.i = shl nuw nsw i32 %conv55.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0276.i, i32 %mul.i)
  %cmp56.i = icmp ugt i32 %len.0276.i, %mul.i
  br i1 %cmp56.i, label %do.end73.i, label %if.then53.i.if.end82.i_crit_edge, !prof !46

if.then53.i.if.end82.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i

do.end73.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1230, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %len.0276.i, i32 noundef %mul.i) #7
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end73.i, %if.then53.i.if.end82.i_crit_edge
  %631 = call i32 @llvm.umin.i32(i32 %len.0276.i, i32 %mul.i) #7
  %632 = or i8 %53, 1
  %633 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 %632, ptr %arrayidx8.i, align 1
  %add.ptr105.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %634 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %buffer.i, align 4
  %636 = call ptr @memcpy(ptr %add.ptr105.i, ptr %635, i32 %631)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end82.i, %if.end50.i.for.inc.i_crit_edge, %sw.bb66.i256.i.for.inc.i_crit_edge, %sw.bb61.i251.i.for.inc.i_crit_edge, %sw.bb56.i246.i.for.inc.i_crit_edge, %sw.bb51.i241.i.for.inc.i_crit_edge, %sw.bb46.i237.i.for.inc.i_crit_edge, %sw.bb41.i234.i.for.inc.i_crit_edge, %sw.bb36.i231.i.for.inc.i_crit_edge, %sw.bb31.i228.i.for.inc.i_crit_edge, %sw.bb26.i225.i.for.inc.i_crit_edge, %sw.bb21.i222.i.for.inc.i_crit_edge, %sw.bb16.i219.i.for.inc.i_crit_edge, %sw.bb11.i216.i.for.inc.i_crit_edge, %sw.bb6.i213.i.for.inc.i_crit_edge, %sw.bb1.i210.i.for.inc.i_crit_edge, %sw.bb.i208.i.for.inc.i_crit_edge, %if.else46.i.for.inc.i_crit_edge, %sw.bb535.i.i.for.inc.i_crit_edge, %sw.bb521.i.i.for.inc.i_crit_edge, %sw.bb516.i.i.for.inc.i_crit_edge, %sw.bb511.i.i.for.inc.i_crit_edge, %sw.bb506.i.i.for.inc.i_crit_edge, %sw.bb501.i.i.for.inc.i_crit_edge, %sw.bb496.i.i.for.inc.i_crit_edge, %sw.bb491.i.i.for.inc.i_crit_edge, %sw.bb486.i.i.for.inc.i_crit_edge, %sw.bb481.i.i.for.inc.i_crit_edge, %sw.bb476.i.i.for.inc.i_crit_edge, %sw.bb471.i.i.for.inc.i_crit_edge, %sw.bb466.i.i.for.inc.i_crit_edge, %sw.bb461.i.i.for.inc.i_crit_edge, %sw.bb456.i.i.for.inc.i_crit_edge, %sw.bb451.i.i.for.inc.i_crit_edge, %sw.bb446.i.i.for.inc.i_crit_edge, %sw.bb441.i.i.for.inc.i_crit_edge, %sw.bb436.i.i.for.inc.i_crit_edge, %sw.bb431.i.i.for.inc.i_crit_edge, %sw.bb426.i.i.for.inc.i_crit_edge, %sw.bb421.i.i.for.inc.i_crit_edge, %sw.bb416.i.i.for.inc.i_crit_edge, %sw.bb403.i.i.for.inc.i_crit_edge, %sw.bb398.i.i.for.inc.i_crit_edge, %sw.bb389.i.i.for.inc.i_crit_edge, %sw.bb375.i.i.for.inc.i_crit_edge, %sw.bb370.i.i.for.inc.i_crit_edge, %sw.bb365.i.i.for.inc.i_crit_edge, %sw.bb360.i.i.for.inc.i_crit_edge, %sw.bb355.i.i.for.inc.i_crit_edge, %sw.bb350.i.i.for.inc.i_crit_edge, %sw.bb345.i.i.for.inc.i_crit_edge, %sw.bb340.i.i.for.inc.i_crit_edge, %sw.bb331.i.i.for.inc.i_crit_edge, %sw.bb317.i.i.for.inc.i_crit_edge, %sw.bb312.i.i.for.inc.i_crit_edge, %sw.bb307.i.i.for.inc.i_crit_edge, %sw.bb302.i.i.for.inc.i_crit_edge, %sw.bb293.i.i.for.inc.i_crit_edge, %sw.bb279.i.i.for.inc.i_crit_edge, %sw.bb270.i.i.for.inc.i_crit_edge, %sw.bb256.i.i.for.inc.i_crit_edge, %sw.bb251.i.i.for.inc.i_crit_edge, %sw.bb246.i.i.for.inc.i_crit_edge, %sw.bb241.i.i.for.inc.i_crit_edge, %sw.bb236.i.i.for.inc.i_crit_edge, %sw.bb231.i.i.for.inc.i_crit_edge, %sw.bb226.i.i.for.inc.i_crit_edge, %sw.bb219.i.i.for.inc.i_crit_edge, %sw.bb204.i.i.for.inc.i_crit_edge, %sw.bb189.i.i.for.inc.i_crit_edge, %sw.bb184.i.i.for.inc.i_crit_edge, %sw.bb179.i.i.for.inc.i_crit_edge, %sw.bb174.i.i.for.inc.i_crit_edge, %sw.bb169.i.i.for.inc.i_crit_edge, %sw.bb164.i.i.for.inc.i_crit_edge, %sw.bb156.i.i.for.inc.i_crit_edge, %sw.bb146.i.i.for.inc.i_crit_edge, %sw.bb141.i.i.for.inc.i_crit_edge, %sw.bb136.i.i.for.inc.i_crit_edge, %sw.bb131.i.i.for.inc.i_crit_edge, %sw.bb126.i.i.for.inc.i_crit_edge, %sw.bb121.i.i.for.inc.i_crit_edge, %sw.bb116.i.i.for.inc.i_crit_edge, %sw.bb111.i.i.for.inc.i_crit_edge, %sw.bb106.i.i.for.inc.i_crit_edge, %sw.bb101.i.i.for.inc.i_crit_edge, %sw.bb96.i.i.for.inc.i_crit_edge, %sw.bb91.i.i.for.inc.i_crit_edge, %sw.bb86.i.i.for.inc.i_crit_edge, %sw.bb81.i.i.for.inc.i_crit_edge, %sw.bb76.i.i.for.inc.i_crit_edge, %sw.bb71.i.i.for.inc.i_crit_edge, %sw.bb66.i203.i.for.inc.i_crit_edge, %sw.bb61.i200.i.for.inc.i_crit_edge, %sw.bb56.i197.i.for.inc.i_crit_edge, %sw.bb51.i194.i.for.inc.i_crit_edge, %sw.bb46.i191.i.for.inc.i_crit_edge, %sw.bb41.i188.i.for.inc.i_crit_edge, %sw.bb36.i185.i.for.inc.i_crit_edge, %sw.bb31.i182.i.for.inc.i_crit_edge, %sw.bb26.i179.i.for.inc.i_crit_edge, %sw.bb21.i176.i.for.inc.i_crit_edge, %sw.bb16.i173.i.for.inc.i_crit_edge, %sw.bb11.i170.i.for.inc.i_crit_edge, %sw.bb6.i167.i.for.inc.i_crit_edge, %sw.bb1.i164.i.for.inc.i_crit_edge, %sw.bb.i161.i.for.inc.i_crit_edge, %if.then44.i.for.inc.i_crit_edge, %sw.bb66.i.i.for.inc.i_crit_edge, %sw.bb61.i.i.for.inc.i_crit_edge, %sw.bb56.i.i.for.inc.i_crit_edge, %sw.bb51.i.i.for.inc.i_crit_edge, %sw.bb46.i.i.for.inc.i_crit_edge, %sw.bb41.i157.i.for.inc.i_crit_edge, %sw.bb36.i154.i.for.inc.i_crit_edge, %sw.bb31.i151.i.for.inc.i_crit_edge, %sw.bb26.i148.i.for.inc.i_crit_edge, %sw.bb21.i.i.for.inc.i_crit_edge, %sw.bb16.i146.i.for.inc.i_crit_edge, %sw.bb11.i.i.for.inc.i_crit_edge, %sw.bb6.i.i.for.inc.i_crit_edge, %sw.bb1.i.i.for.inc.i_crit_edge, %sw.bb.i145.i.for.inc.i_crit_edge, %if.then38.i.for.inc.i_crit_edge, %sw.bb41.i.i.for.inc.i_crit_edge, %sw.bb36.i.i.for.inc.i_crit_edge, %sw.bb31.i.i.for.inc.i_crit_edge, %sw.bb26.i.i.for.inc.i_crit_edge, %sw.bb16.i.i.for.inc.i_crit_edge, %sw.bb.i.i.for.inc.i_crit_edge, %if.then33.i.for.inc.i_crit_edge
  %conv108.i = zext i8 %51 to i32
  %mul109.i = shl nuw nsw i32 %conv108.i, 2
  %add.i = add i32 %offset.0278.i, 4
  %add110.i = add i32 %add.i, %mul109.i
  %cmp.i = icmp ult i32 %add110.i, %call9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %qed_mfw_update_tlvs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

qed_mfw_update_tlvs.exit.thread:                  ; preds = %if.then3.i, %if.then278.qed_mfw_update_tlvs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buffer.i) #7
  br label %drv_done

qed_mfw_update_tlvs.exit:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @vfree(ptr noundef nonnull %call.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buffer.i) #7
  br label %for.inc284

for.inc284:                                       ; preds = %qed_mfw_update_tlvs.exit, %for.body273.for.inc284_crit_edge
  %shl286 = shl i8 %id.0408, 1
  %cmp271 = icmp ult i8 %shl286, 22
  br i1 %cmp271, label %for.inc284.for.body273_crit_edge, label %for.inc284.for.body292_crit_edge

for.inc284.for.body292_crit_edge:                 ; preds = %for.inc284
  br label %for.body292

for.inc284.for.body273_crit_edge:                 ; preds = %for.inc284
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body273

for.body292:                                      ; preds = %for.body292.for.body292_crit_edge, %for.inc284.for.body292_crit_edge
  %offset.2411 = phi i32 [ %add296, %for.body292.for.body292_crit_edge ], [ 0, %for.inc284.for.body292_crit_edge ]
  %arrayidx293 = getelementptr i8, ptr %call22, i32 %offset.2411
  %637 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_loadN_noabort(i32 %637, i32 4)
  %val.0.copyload311 = load i32, ptr %arrayidx293, align 1
  %add294 = add i32 %offset.2411, %call7
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add294, i32 noundef %val.0.copyload311) #7
  %add296 = add i32 %offset.2411, 4
  %cmp290 = icmp ult i32 %add296, %call9
  br i1 %cmp290, label %for.body292.for.body292_crit_edge, label %for.body292.drv_done_crit_edge

for.body292.drv_done_crit_edge:                   ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #9
  br label %drv_done

for.body292.for.body292_crit_edge:                ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body292

drv_done:                                         ; preds = %for.body292.drv_done_crit_edge, %qed_mfw_update_tlvs.exit.thread, %do.end39, %do.body25.drv_done_crit_edge, %do.end, %do.body.drv_done_crit_edge
  %p_mfw_buf.0 = phi ptr [ null, %do.end39 ], [ null, %do.body25.drv_done_crit_edge ], [ null, %do.end ], [ null, %do.body.drv_done_crit_edge ], [ %call22, %qed_mfw_update_tlvs.exit.thread ], [ %call22, %for.body292.drv_done_crit_edge ]
  %call298 = call i32 @qed_mcp_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3080192, i32 noundef 0, ptr noundef nonnull %resp, ptr noundef nonnull %param) #7
  call void @vfree(ptr noundef %p_mfw_buf.0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #7
  ret i32 %call298
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_cmd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mfw_fill_tlv_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1261, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_mfw_process_tlv_req._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_mfw_process_tlv_req._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1267, i32 3}
!9 = !{ptr @qed_mfw_process_tlv_req._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_mfw_process_tlv_req._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1290, i32 4}
!13 = !{ptr @qed_mfw_process_tlv_req._entry.7, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @qed_mfw_process_tlv_req._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1296, i32 3}
!17 = !{ptr @qed_mfw_process_tlv_req._entry.10, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @qed_mfw_process_tlv_req._entry_ptr.12, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1303, i32 3}
!21 = !{ptr @qed_mfw_process_tlv_req._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @qed_mfw_process_tlv_req._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1311, i32 3}
!25 = !{ptr @qed_mfw_process_tlv_req._entry.16, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @qed_mfw_process_tlv_req._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1206, i32 3}
!29 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @qed_mfw_update_tlvs._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @qed_mfw_update_tlvs._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 1228, i32 4}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mng_tlv.c", i32 432, i32 28}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i8 0, i8 2}
