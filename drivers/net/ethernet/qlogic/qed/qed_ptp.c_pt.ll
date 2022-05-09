; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qed_eth_ptp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.qed_resc_unlock_params = type { i8, i8, i8 }
%struct.qed_resc_lock_params = type { i8, i8, i8, i16, i8, i8, i8 }

@qed_ptp_ops_pass = dso_local constant { %struct.qed_eth_ptp_ops, [36 x i8] } { %struct.qed_eth_ptp_ops { ptr @qed_ptp_hw_cfg_filters, ptr @qed_ptp_hw_read_rx_ts, ptr @qed_ptp_hw_read_tx_ts, ptr @qed_ptp_hw_read_cc, ptr @qed_ptp_hw_disable, ptr @qed_ptp_hw_adjfreq, ptr @qed_ptp_hw_enable }, [36 x i8] zeroinitializer }, align 32
@qed_ptp_hw_cfg_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Invalid PTP filter type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_ptp_hw_cfg_filters\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qlogic/qed/qed_ptp.c\00", [54 x i8] zeroinitializer }, align 32
@qed_ptp_hw_cfg_filters._entry_ptr = internal global ptr @qed_ptp_hw_cfg_filters._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_ptp_hw_read_rx_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Invalid Rx timestamp, buf_seqid = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_ptp_hw_read_rx_ts\00", [42 x i8] zeroinitializer }, align 32
@qed_ptp_hw_read_rx_ts._entry_ptr = internal global ptr @qed_ptp_hw_read_rx_ts._entry, section ".printk_index", align 4
@qed_ptp_hw_read_tx_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Invalid Tx timestamp, buf_seqid = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_ptp_hw_read_tx_ts\00", [42 x i8] zeroinitializer }, align 32
@qed_ptp_hw_read_tx_ts._entry_ptr = internal global ptr @qed_ptp_hw_read_tx_ts._entry, section ".printk_index", align 4
@qed_ptp_res_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]PF doesn't have lock ownership\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_ptp_res_unlock\00", [45 x i8] zeroinitializer }, align 32
@qed_ptp_res_unlock._entry_ptr = internal global ptr @qed_ptp_res_unlock._entry, section ".printk_index", align 4
@qed_ptp_res_unlock._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Failed to release the ptp resource lock\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_ptp_res_unlock._entry_ptr.12 = internal global ptr @qed_ptp_res_unlock._entry.10, section ".printk_index", align 4
@qed_ptp_hw_adjfreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Drift counter is not reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_ptp_hw_adjfreq\00", [45 x i8] zeroinitializer }, align 32
@qed_ptp_hw_adjfreq._entry_ptr = internal global ptr @qed_ptp_hw_adjfreq._entry, section ".printk_index", align 4
@qed_ptp_hw_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Failed to acquire PTT for PTP\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_ptp_hw_enable\00", [46 x i8] zeroinitializer }, align 32
@qed_ptp_hw_enable._entry_ptr = internal global ptr @qed_ptp_hw_enable._entry, section ".printk_index", align 4
@qed_ptp_hw_enable._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\015[%s:%d(%s)]Couldn't acquire the resource lock, skip ptp enable for this PF\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_ptp_hw_enable._entry_ptr.19 = internal global ptr @qed_ptp_hw_enable._entry.17, section ".printk_index", align 4
@qed_ptp_res_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.20, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_ptp_res_lock\00", [47 x i8] zeroinitializer }, align 32
@qed_ptp_res_lock._entry_ptr = internal global ptr @qed_ptp_res_lock._entry, section ".printk_index", align 4
@qed_ptp_res_lock._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Failed to acquire ptp resource lock\0A\00", [46 x i8] zeroinitializer }, align 32
@qed_ptp_res_lock._entry_ptr.23 = internal global ptr @qed_ptp_res_lock._entry.21, section ".printk_index", align 4
@switch.table.qed_ptp_hw_cfg_filters = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 16383, i32 15530, i32 16378, i32 16382, i32 16298, i32 16366, i32 15615, i32 16127, i32 15530, i32 16110], [56 x i8] zeroinitializer }, align 32
@switch.table.qed_ptp_hw_cfg_filters.24 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 7, i32 3, i32 3, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"qed_ptp_ops_pass\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 425, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 220, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 112, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 138, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 92, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 96, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 330, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 347, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 355, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 64, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [45 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_ptp.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 67, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [36 x i8] c"switch.table.qed_ptp_hw_cfg_filters\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [39 x i8] c"switch.table.qed_ptp_hw_cfg_filters.24\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @qed_ptp_hw_adjfreq._entry, ptr @qed_ptp_hw_adjfreq._entry_ptr, ptr @qed_ptp_hw_cfg_filters._entry, ptr @qed_ptp_hw_cfg_filters._entry_ptr, ptr @qed_ptp_hw_enable._entry, ptr @qed_ptp_hw_enable._entry.17, ptr @qed_ptp_hw_enable._entry_ptr, ptr @qed_ptp_hw_enable._entry_ptr.19, ptr @qed_ptp_hw_read_rx_ts._entry, ptr @qed_ptp_hw_read_rx_ts._entry_ptr, ptr @qed_ptp_hw_read_tx_ts._entry, ptr @qed_ptp_hw_read_tx_ts._entry_ptr, ptr @qed_ptp_res_lock._entry, ptr @qed_ptp_res_lock._entry.21, ptr @qed_ptp_res_lock._entry_ptr, ptr @qed_ptp_res_lock._entry_ptr.23, ptr @qed_ptp_res_unlock._entry, ptr @qed_ptp_res_unlock._entry.10, ptr @qed_ptp_res_unlock._entry_ptr, ptr @qed_ptp_res_unlock._entry_ptr.12, ptr @qed_ptp_ops_pass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @switch.table.qed_ptp_hw_cfg_filters, ptr @switch.table.qed_ptp_hw_cfg_filters.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_ops_pass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_hw_cfg_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_hw_read_rx_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_hw_read_tx_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_res_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_res_unlock._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_hw_adjfreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_hw_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_hw_enable._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_res_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptp_res_lock._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_ptp_hw_cfg_filters to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_ptp_hw_cfg_filters.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ptp_hw_cfg_filters(ptr noundef %cdev, i32 noundef %rx_type, i32 noundef %tx_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %rx_type)
  %0 = icmp ult i32 %rx_type, 10
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp ult i8 %2, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !59

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool13.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool13.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 220, ptr noundef nonnull %spec.select, i32 noundef %rx_type) #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %p_ptp_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 26
  %3 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_ptp_ptt, align 8
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.qed_ptp_hw_cfg_filters, i32 0, i32 %rx_type
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep50 = getelementptr inbounds [10 x i32], ptr @switch.table.qed_ptp_hw_cfg_filters.24, i32 0, i32 %rx_type
  %6 = ptrtoint ptr %switch.gep50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load51 = load i32, ptr %switch.gep50, align 4
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %4, i32 noundef 5249312, i32 noundef 1807) #5
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %4, i32 noundef 5249316, i32 noundef %switch.load) #5
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %4, i32 noundef 5249280, i32 noundef %switch.load51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_type)
  %cmp18 = icmp eq i32 %tx_type, 0
  %.enable_cfg.0 = select i1 %cmp18, i32 0, i32 %switch.load51
  %. = select i1 %cmp18, i32 2047, i32 1807
  %.rule_mask.0 = select i1 %cmp18, i32 16383, i32 %switch.load
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %4, i32 noundef 5249284, i32 noundef %.enable_cfg.0) #5
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %4, i32 noundef 5249320, i32 noundef %.) #5
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %4, i32 noundef 5249324, i32 noundef %.rule_mask.0) #5
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %4, i32 noundef 5249328, i32 noundef 65536) #5
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ptp_hw_read_rx_ts(ptr noundef %cdev, ptr nocapture noundef writeonly %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %p_ptp_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 26
  %0 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptp_ptt, align 8
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %timestamp, align 8
  %call = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249328) #5
  %and = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ult i8 %4, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !59

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 112, ptr noundef nonnull %spec.select, i32 noundef %call) #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249332) #5
  %call14 = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249336) #5
  %conv15 = zext i32 %call14 to i64
  %shl = shl nuw i64 %conv15, 32
  %conv16 = zext i32 %call13 to i64
  %or = or i64 %shl, %conv16
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or, ptr %timestamp, align 8
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249328, i32 noundef 65536) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ptp_hw_read_tx_ts(ptr noundef %cdev, ptr nocapture noundef writeonly %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %p_ptp_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 26
  %0 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptp_ptt, align 8
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %timestamp, align 8
  %call = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249352) #5
  %and = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %5 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_module, align 4
  %and2 = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !60

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 139, ptr noundef nonnull %spec.select, i32 noundef %call) #8
  br label %cleanup

if.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249356) #5
  %call16 = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249360) #5
  %conv17 = zext i32 %call16 to i64
  %shl = shl nuw i64 %conv17, 32
  %conv18 = zext i32 %call15 to i64
  %or = or i64 %shl, %conv18
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or, ptr %timestamp, align 8
  tail call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249352, i32 noundef 65536) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ptp_hw_read_cc(ptr noundef %cdev, ptr nocapture noundef writeonly %phc_cycles) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %p_ptp_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 26
  %0 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptp_ptt, align 8
  %call = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5277888) #5
  %call1 = tail call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5277892) #5
  %conv = zext i32 %call1 to i64
  %shl = shl nuw i64 %conv, 32
  %conv2 = zext i32 %call to i64
  %or = or i64 %shl, %conv2
  %2 = ptrtoint ptr %phc_cycles to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %or, ptr %phc_cycles, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ptp_hw_disable(ptr noundef %cdev) #0 align 64 {
entry:
  %params.i = alloca %struct.qed_resc_unlock_params, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %p_ptp_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 26
  %0 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptp_ptt, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %params.i) #5
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %params.i, align 1, !annotation !61
  %3 = getelementptr inbounds %struct.qed_resc_unlock_params, ptr %params.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !61
  %5 = getelementptr inbounds %struct.qed_resc_unlock_params, ptr %params.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !61
  %abs_pf_id.i.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 3
  %7 = ptrtoint ptr %abs_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %abs_pf_id.i.i, align 2
  %conv.i.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwfns, align 8
  %call.i.i = tail call i32 @qed_device_num_ports(ptr noundef %10) #5
  %rem.i.i = srem i32 %conv.i.i, %call.i.i
  %11 = and i32 %rem.i.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %switch.lookup, label %entry.qed_ptp_res_unlock.exit_crit_edge

entry.qed_ptp_res_unlock.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %qed_ptp_res_unlock.exit

switch.lookup:                                    ; preds = %entry
  %switch.offset = add nuw nsw i32 %rem.i.i, 1
  call void @qed_mcp_resc_lock_default_init(ptr noundef null, ptr noundef nonnull %params.i, i32 noundef %switch.offset, i1 noundef zeroext true) #5
  %call1.i = call i32 @qed_mcp_resc_unlock(ptr noundef %hwfns, ptr noundef %1, ptr noundef nonnull %params.i) #5
  %13 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %do.body25.i [
    i32 -22, label %if.then3.i
    i32 0, label %switch.lookup.qed_ptp_res_unlock.exit_crit_edge
  ]

switch.lookup.qed_ptp_res_unlock.exit_crit_edge:  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %qed_ptp_res_unlock.exit

if.then3.i:                                       ; preds = %switch.lookup
  %14 = ptrtoint ptr %abs_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %abs_pf_id.i.i, align 2
  %16 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwfns, align 8
  %num_ports_in_engine.i = getelementptr inbounds %struct.qed_dev, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %num_ports_in_engine.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_ports_in_engine.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %19)
  %cmp5.i = icmp ult i8 %15, %19
  br i1 %cmp5.i, label %if.then3.i.qed_ptp_res_unlock.exit_crit_edge, label %do.body.i

if.then3.i.qed_ptp_res_unlock.exit_crit_edge:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qed_ptp_res_unlock.exit

do.body.i:                                        ; preds = %if.then3.i
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %20 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp9.i = icmp ult i8 %21, 2
  br i1 %cmp9.i, label %do.end.i, label %do.body.i.qed_ptp_res_unlock.exit_crit_edge, !prof !59

do.body.i.qed_ptp_res_unlock.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qed_ptp_res_unlock.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 92, ptr noundef nonnull %name.i) #8
  br label %qed_ptp_res_unlock.exit

do.body25.i:                                      ; preds = %switch.lookup
  %dp_level26.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %22 = ptrtoint ptr %dp_level26.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp28.i = icmp ult i8 %23, 2
  br i1 %cmp28.i, label %do.end39.i, label %do.body25.i.qed_ptp_res_unlock.exit_crit_edge, !prof !59

do.body25.i.qed_ptp_res_unlock.exit_crit_edge:    ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qed_ptp_res_unlock.exit

do.end39.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  %name41.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 96, ptr noundef nonnull %name41.i) #8
  br label %qed_ptp_res_unlock.exit

qed_ptp_res_unlock.exit:                          ; preds = %do.end39.i, %do.body25.i.qed_ptp_res_unlock.exit_crit_edge, %do.end.i, %do.body.i.qed_ptp_res_unlock.exit_crit_edge, %if.then3.i.qed_ptp_res_unlock.exit_crit_edge, %switch.lookup.qed_ptp_res_unlock.exit_crit_edge, %entry.qed_ptp_res_unlock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %params.i) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249312, i32 noundef 2047) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249316, i32 noundef 16383) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249320, i32 noundef 2047) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249324, i32 noundef 16383) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249280, i32 noundef 0) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5249284, i32 noundef 0) #5
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef %1) #5
  %24 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %p_ptp_ptt, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ptp_hw_adjfreq(ptr noundef %cdev, i32 noundef %ppb) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %p_ptp_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 26
  %0 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptp_ptt, align 8
  %2 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %3 = and i32 %ppb, -2147483648
  %4 = xor i32 %3, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %entry
  %conv142 = zext i32 %2 to i64
  %mul19 = shl i32 %2, 4
  %conv20 = sext i32 %mul19 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then2
  %best_approx_dev.0148 = phi i64 [ 1, %if.then2 ], [ %best_approx_dev.1, %for.inc.for.body_crit_edge ]
  %best_dif.0147 = phi i64 [ %conv142, %if.then2 ], [ %best_dif.1, %for.inc.for.body_crit_edge ]
  %best_period.0.off0146 = phi i32 [ 0, %if.then2 ], [ %best_period.1.off0, %for.inc.for.body_crit_edge ]
  %val.0144 = phi i64 [ 7, %if.then2 ], [ %dec, %for.inc.for.body_crit_edge ]
  %best_val.0.off0143 = phi i32 [ 0, %if.then2 ], [ %best_val.1.off0, %for.inc.for.body_crit_edge ]
  %mul = mul nuw nsw i64 %val.0144, 1000000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #5
  %5 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i, align 4, !annotation !61
  %call.i = call i64 @div_s64_rem(i64 noundef %mul, i32 noundef %2, ptr noundef nonnull %remainder.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #5
  %sub5 = add i64 %call.i, -8
  %shr = ashr i64 %sub5, 4
  %6 = call i64 @llvm.smax.i64(i64 %shr, i64 1)
  %7 = call i64 @llvm.umin.i64(i64 %6, i64 268435454)
  %mul14 = shl nuw nsw i64 %7, 4
  %add = or i64 %mul14, 8
  %mul16 = mul nuw nsw i64 %add, %conv142
  %sub18 = sub i64 %mul16, %mul
  %add21 = add i64 %sub18, %conv20
  %8 = call i64 @llvm.abs.i64(i64 %sub18, i1 false)
  %9 = call i64 @llvm.abs.i64(i64 %add21, i1 false)
  %add32 = add nuw nsw i64 %mul14, 24
  %mul33 = mul i64 %8, %add32
  %mul34 = mul i64 %9, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %mul33, i64 %mul34)
  %cmp35 = icmp sgt i64 %mul33, %mul34
  %approx_dev.0 = select i1 %cmp35, i64 %add32, i64 %add
  %dif.1 = select i1 %cmp35, i64 %9, i64 %8
  %mul40 = mul i64 %approx_dev.0, %best_dif.0147
  %mul41 = mul i64 %dif.1, %best_approx_dev.0148
  call void @__sanitizer_cov_trace_cmp8(i64 %mul40, i64 %mul41)
  %cmp42 = icmp sgt i64 %mul40, %mul41
  br i1 %cmp42, label %if.then44, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t137 = trunc i64 %7 to i32
  %extract.t = zext i1 %cmp35 to i32
  %period.0.off0 = add nuw nsw i32 %extract.t, %extract.t137
  %extract.t133 = trunc i64 %val.0144 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %for.body.for.inc_crit_edge
  %best_val.1.off0 = phi i32 [ %extract.t133, %if.then44 ], [ %best_val.0.off0143, %for.body.for.inc_crit_edge ]
  %best_period.1.off0 = phi i32 [ %period.0.off0, %if.then44 ], [ %best_period.0.off0146, %for.body.for.inc_crit_edge ]
  %best_dif.1 = phi i64 [ %dif.1, %if.then44 ], [ %best_dif.0147, %for.body.for.inc_crit_edge ]
  %best_approx_dev.1 = phi i64 [ %approx_dev.0, %if.then44 ], [ %best_approx_dev.0148, %for.body.for.inc_crit_edge ]
  %dec = add nsw i64 %val.0144, -1
  %cmp3 = icmp ugt i64 %val.0144, 1
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo = shl i32 %best_val.1.off0, 28
  br label %if.end51

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp46 = icmp eq i32 %2, 1
  %. = select i1 %cmp46, i32 1073741824, i32 0
  %.140 = select i1 %cmp46, i32 249999999, i32 268435455
  br label %if.end51

if.end51:                                         ; preds = %if.else, %for.end
  %best_val.2.off0 = phi i32 [ %phi.bo, %for.end ], [ %., %if.else ]
  %best_period.2.off0 = phi i32 [ %best_period.1.off0, %for.end ], [ %.140, %if.else ]
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5277912, i32 noundef 1) #5
  %call59 = call i32 @qed_rd(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5277912) #5
  %and = and i32 %call59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.then60

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %10 = or i32 %best_val.2.off0, %4
  %conv58 = or i32 %10, %best_period.2.off0
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5277916, i32 noundef %conv58) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef %1, i32 noundef 5277912, i32 noundef 0) #5
  br label %cleanup

do.body:                                          ; preds = %if.end51
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp63 = icmp ult i8 %12, 2
  br i1 %cmp63, label %do.end, label %do.body.cleanup_crit_edge, !prof !59

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool69.not = icmp eq ptr %name, null
  %spec.select141 = select i1 %tobool69.not, ptr @.str.3, ptr %name
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 330, ptr noundef nonnull %spec.select141) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.then60
  %retval.0 = phi i32 [ 0, %if.then60 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ptp_hw_enable(ptr noundef %cdev) #0 align 64 {
entry:
  %params.i = alloca %struct.qed_resc_lock_params, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !59

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 347, ptr noundef nonnull %spec.select) #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  %p_ptp_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 26
  %2 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %p_ptp_ptt, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %params.i) #5
  %3 = call ptr @memset(ptr %params.i, i32 255, i32 10)
  %abs_pf_id.i.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 3
  %4 = ptrtoint ptr %abs_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_pf_id.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwfns, align 8
  %call.i.i = tail call i32 @qed_device_num_ports(ptr noundef %7) #5
  %rem.i.i = srem i32 %conv.i.i, %call.i.i
  %8 = and i32 %rem.i.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %switch.lookup, label %if.end12.do.body16_crit_edge

if.end12.do.body16_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

switch.lookup:                                    ; preds = %if.end12
  %switch.offset = add nuw nsw i32 %rem.i.i, 1
  call void @qed_mcp_resc_lock_default_init(ptr noundef nonnull %params.i, ptr noundef null, i32 noundef %switch.offset, i1 noundef zeroext true) #5
  %call1.i = call i32 @qed_mcp_resc_lock(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef nonnull %params.i) #5
  %10 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call1.i, label %switch.lookup.do.body16_crit_edge [
    i32 -22, label %if.then5.i
    i32 0, label %if.else25.i
  ]

switch.lookup.do.body16_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

if.then5.i:                                       ; preds = %switch.lookup
  %11 = ptrtoint ptr %abs_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %abs_pf_id.i.i, align 2
  %13 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwfns, align 8
  %num_ports_in_engine.i = getelementptr inbounds %struct.qed_dev, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %num_ports_in_engine.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_ports_in_engine.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %16)
  %cmp7.i = icmp ult i8 %12, %16
  br i1 %cmp7.i, label %if.then5.i.if.end46_crit_edge, label %do.body.i

if.then5.i.if.end46_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body.i:                                        ; preds = %if.then5.i
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %17 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp12.i = icmp ult i8 %18, 2
  br i1 %cmp12.i, label %do.end.i, label %do.body.i.do.body16_crit_edge, !prof !59

do.body.i.do.body16_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.20, i32 noundef 64, ptr noundef nonnull %name.i) #8
  br label %do.body16

if.else25.i:                                      ; preds = %switch.lookup
  %b_granted.i = getelementptr inbounds %struct.qed_resc_lock_params, ptr %params.i, i32 0, i32 5
  %19 = ptrtoint ptr %b_granted.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b_granted.i, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not.i = icmp eq i8 %20, 0
  br i1 %tobool26.not.i, label %do.body28.i, label %if.else25.i.if.end46_crit_edge

if.else25.i.if.end46_crit_edge:                   ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body28.i:                                      ; preds = %if.else25.i
  %dp_level29.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %21 = ptrtoint ptr %dp_level29.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp31.i = icmp ult i8 %22, 2
  br i1 %cmp31.i, label %do.end42.i, label %do.body28.i.do.body16_crit_edge, !prof !59

do.body28.i.do.body16_crit_edge:                  ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

do.end42.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #7
  %name44.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 67, ptr noundef nonnull %name44.i) #8
  br label %do.body16

do.body16:                                        ; preds = %do.end42.i, %do.body28.i.do.body16_crit_edge, %do.end.i, %do.body.i.do.body16_crit_edge, %switch.lookup.do.body16_crit_edge, %if.end12.do.body16_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end12.do.body16_crit_edge ], [ -16, %do.body28.i.do.body16_crit_edge ], [ -16, %do.end42.i ], [ -16, %do.body.i.do.body16_crit_edge ], [ -16, %do.end.i ], [ %call1.i, %switch.lookup.do.body16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %params.i) #5
  %dp_level17 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %23 = ptrtoint ptr %dp_level17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp_level17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp19 = icmp ult i8 %24, 2
  br i1 %cmp19, label %do.end30, label %do.body16.do.end44_crit_edge, !prof !59

do.body16.do.end44_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end44

do.end30:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %name32 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool34.not = icmp eq ptr %name32, null
  %spec.select138 = select i1 %tobool34.not, ptr @.str.3, ptr %name32
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 356, ptr noundef nonnull %spec.select138) #8
  br label %do.end44

do.end44:                                         ; preds = %do.end30, %do.body16.do.end44_crit_edge
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #5
  %25 = ptrtoint ptr %p_ptp_ptt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %p_ptp_ptt, align 8
  br label %cleanup

if.end46:                                         ; preds = %if.else25.i.if.end46_crit_edge, %if.then5.i.if.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %params.i) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249312, i32 noundef 2047) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249316, i32 noundef 16383) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249320, i32 noundef 2047) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249324, i32 noundef 16383) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249284, i32 noundef 7) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249280, i32 noundef 7) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5277808, i32 noundef 1) #5
  %26 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwfns, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp48 = icmp eq i32 %29, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end46
  %chip_rev = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %chip_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %31)
  %cmp52 = icmp eq i16 %31, 1
  br i1 %cmp52, label %if.then54, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5246208, i32 noundef 2) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %land.lhs.true.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %32 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hwfns, align 8
  %type57 = getelementptr inbounds %struct.qed_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %type57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp58 = icmp eq i32 %35, 1
  br i1 %cmp58, label %if.then60, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5279752, i32 noundef 2) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end55.if.end61_crit_edge
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5277864, i32 noundef 0) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5277868, i32 noundef 0) #5
  %36 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwfns, align 8
  %type63 = getelementptr inbounds %struct.qed_dev, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %type63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp64 = icmp eq i32 %39, 0
  br i1 %cmp64, label %land.lhs.true66, label %if.end61.if.end73_crit_edge

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

land.lhs.true66:                                  ; preds = %if.end61
  %chip_rev68 = getelementptr inbounds %struct.qed_dev, ptr %37, i32 0, i32 7
  %40 = ptrtoint ptr %chip_rev68 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %chip_rev68, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp70 = icmp eq i16 %41, 1
  br i1 %cmp70, label %if.then72, label %land.lhs.true66.if.end73_crit_edge

land.lhs.true66.if.end73_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then72:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5246208, i32 noundef 4) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %land.lhs.true66.if.end73_crit_edge, %if.end61.if.end73_crit_edge
  %42 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hwfns, align 8
  %type75 = getelementptr inbounds %struct.qed_dev, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %type75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp76 = icmp eq i32 %45, 1
  br i1 %cmp76, label %if.then78, label %if.end73.if.end79_crit_edge

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5279752, i32 noundef 4) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5279808, i32 noundef 1) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end73.if.end79_crit_edge
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5277916, i32 noundef 0) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5277912, i32 noundef 0) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249328, i32 noundef 65536) #5
  call void @qed_wr(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 5249352, i32 noundef 65536) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %do.end44, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end44 ], [ 0, %if.end79 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_mcp_resc_lock_default_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_resc_unlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_device_num_ports(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_resc_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @qed_ptp_ops_pass, !1, !"qed_ptp_ops_pass", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 425, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 220, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qed_ptp_hw_cfg_filters._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @qed_ptp_hw_cfg_filters._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 112, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qed_ptp_hw_read_rx_ts._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @qed_ptp_hw_read_rx_ts._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 138, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qed_ptp_hw_read_tx_ts._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @qed_ptp_hw_read_tx_ts._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 92, i32 4}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qed_ptp_res_unlock._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qed_ptp_res_unlock._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 96, i32 3}
!26 = !{ptr @qed_ptp_res_unlock._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qed_ptp_res_unlock._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 330, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qed_ptp_hw_adjfreq._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @qed_ptp_hw_adjfreq._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 347, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qed_ptp_hw_enable._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @qed_ptp_hw_enable._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 355, i32 3}
!40 = !{ptr @qed_ptp_hw_enable._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qed_ptp_hw_enable._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 64, i32 3}
!44 = !{ptr @qed_ptp_res_lock._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qed_ptp_res_lock._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ptp.c", i32 67, i32 3}
!48 = !{ptr @qed_ptp_res_lock._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qed_ptp_res_lock._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{!"auto-init"}
!62 = !{i8 0, i8 2}
