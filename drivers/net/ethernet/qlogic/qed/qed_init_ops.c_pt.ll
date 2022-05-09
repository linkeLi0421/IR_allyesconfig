; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_init_ops.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_init_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.qed_dmae_params = type { i32, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_fw_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%union.init_op = type { %struct.init_raw_op }
%struct.init_raw_op = type { i32, i32 }
%struct.init_write_op = type { i32, %union.init_write_args }
%union.init_write_args = type { i32 }
%struct.init_op_array_params = type { i16, i16 }
%struct.init_read_op = type { i32, i32 }
%struct.init_if_mode_op = type { i32, i16, i16 }
%struct.init_if_phase_op = type { i32, i32 }
%struct.init_delay_op = type { i32, i32 }
%struct.init_callback_op = type { i32, i16, i16 }
%struct.bin_buffer_hdr = type { i32, i32 }

@iro_arr = internal constant { [213 x i32], [204 x i8] } { [213 x i32] [i32 0, i32 0, i32 524288, i32 17528, i32 8, i32 524288, i32 12936, i32 136, i32 8912896, i32 22696, i32 32, i32 2097152, i32 12680, i32 8, i32 524288, i32 2816, i32 8, i32 262144, i32 2688, i32 8, i32 262144, i32 0, i32 8, i32 131072, i32 128, i32 8, i32 262144, i32 132, i32 8, i32 131072, i32 22424, i32 4, i32 262144, i32 20048, i32 0, i32 7864320, i32 15936, i32 0, i32 7864320, i32 17664, i32 0, i32 7864320, i32 12816, i32 0, i32 7864320, i32 15184, i32 0, i32 7864320, i32 32600, i32 0, i32 7864320, i32 24536, i32 0, i32 524288, i32 28928, i32 0, i32 524288, i32 44832, i32 0, i32 524288, i32 17304, i32 0, i32 524288, i32 42400, i32 0, i32 524288, i32 48616, i32 0, i32 524288, i32 32, i32 4, i32 262144, i32 22152, i32 16, i32 1048576, i32 49680, i32 48, i32 3145728, i32 45320, i32 56, i32 3670016, i32 15648, i32 128, i32 4194304, i32 48992, i32 0, i32 262144, i32 17760, i32 262272, i32 262144, i32 504, i32 4, i32 262144, i32 15712, i32 128, i32 2097152, i32 35168, i32 64, i32 3145728, i32 59456, i32 96, i32 6291456, i32 18072, i32 128, i32 3670016, i32 67512, i32 192, i32 12582912, i32 504, i32 2, i32 131072, i32 41568, i32 0, i32 17301504, i32 41832, i32 8, i32 524288, i32 448, i32 8, i32 524288, i32 504, i32 8, i32 524288, i32 2752, i32 8, i32 524288, i32 9592, i32 8, i32 524288, i32 9464, i32 8, i32 524288, i32 640, i32 8, i32 524288, i32 1664, i32 524312, i32 524288, i32 2936, i32 524312, i32 131072, i32 50688, i32 88, i32 3932160, i32 73784, i32 32, i32 1048576, i32 72448, i32 72, i32 1572864, i32 38480, i32 80, i32 2097152, i32 35600, i32 64, i32 2621440, i32 71360, i32 24, i32 1048576, i32 51208, i32 72, i32 3670016, i32 71568, i32 32, i32 2097152, i32 18128, i32 128, i32 1048576, i32 13848, i32 16, i32 1048576, i32 43496, i32 8, i32 65536, i32 38816, i32 8, i32 65536, i32 72208, i32 8, i32 65536, i32 59896, i32 8, i32 65536, i32 75336, i32 8, i32 65536, i32 74184, i32 8, i32 65536, i32 44808, i32 48, i32 1048576, i32 55112, i32 40, i32 2621440, i32 40552, i32 24, i32 1572864, i32 40936, i32 8, i32 524288, i32 81576, i32 8, i32 524288, i32 77592, i32 24, i32 1572864, i32 57320, i32 5243528, i32 1048576, i32 78240, i32 312, i32 2621440], [204 x i8] zeroinitializer }, align 32
@qed_init_store_rt_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]Avoid storing %u in rt_data at index %u!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_init_store_rt_reg\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/qlogic/qed/qed_init_ops.c\00", [49 x i8] zeroinitializer }, align 32
@qed_init_store_rt_reg._entry_ptr = internal global ptr @qed_init_store_rt_reg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_init_store_rt_agg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[%s:%d(%s)]Avoid storing values in rt_data at indices %u-%u!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_init_store_rt_agg\00", [42 x i8] zeroinitializer }, align 32
@qed_init_store_rt_agg._entry_ptr = internal global ptr @qed_init_store_rt_agg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pxp_global_win = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 7170, i32 7296, i32 7424, i32 7425, i32 7426, i32 7552, i32 7553, i32 7554, i32 7680, i32 7681, i32 7808, i32 7936, i32 7176, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@qed_init_fw_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[%s:%d(%s)]Invalid fw data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_init_fw_data\00", [47 x i8] zeroinitializer }, align 32
@qed_init_fw_data._entry_ptr = internal global ptr @qed_init_fw_data._entry, section ".printk_index", align 4
@qed_init_cmd_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\015[%s:%d(%s)]Need to write to %08x for Wide-bus but DMAE isn't allowed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_init_cmd_wr\00", [16 x i8] zeroinitializer }, align 32
@qed_init_cmd_wr._entry_ptr = internal global ptr @qed_init_cmd_wr._entry, section ".printk_index", align 4
@qed_init_fill_dmae.zero_buffer = internal global { [8192 x i32], [8192 x i8] } zeroinitializer, align 32
@qed_init_cmd_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Failed to unzip dmae data\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_init_cmd_array\00", [45 x i8] zeroinitializer }, align 32
@qed_init_cmd_array._entry_ptr = internal global ptr @qed_init_cmd_array._entry, section ".printk_index", align 4
@qed_init_cmd_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[%s:%d(%s)]Invalid poll comparison type %08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_init_cmd_rd\00", [16 x i8] zeroinitializer }, align 32
@qed_init_cmd_rd._entry_ptr = internal global ptr @qed_init_cmd_rd._entry, section ".printk_index", align 4
@qed_init_cmd_rd._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013[%s:%d(%s)]Timeout when polling reg: 0x%08x [ Waiting-for: %08x Got: %08x (comparison %08x)]\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_init_cmd_rd._entry_ptr.16 = internal global ptr @qed_init_cmd_rd._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine_phase\00", [19 x i8] zeroinitializer }, align 32
@qed_init_cmd_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Unexpected init op callback ID %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_init_cmd_cb\00", [16 x i8] zeroinitializer }, align 32
@qed_init_cmd_cb._entry_ptr = internal global ptr @qed_init_cmd_cb._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"iro_arr\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 48, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 130, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 146, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"pxp_global_win\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 25, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 630, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 379, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"zero_buffer\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 268, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 332, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 456, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 470, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 486, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [50 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 489, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @qed_init_cmd_array._entry, ptr @qed_init_cmd_array._entry_ptr, ptr @qed_init_cmd_cb._entry, ptr @qed_init_cmd_cb._entry_ptr, ptr @qed_init_cmd_rd._entry, ptr @qed_init_cmd_rd._entry.14, ptr @qed_init_cmd_rd._entry_ptr, ptr @qed_init_cmd_rd._entry_ptr.16, ptr @qed_init_cmd_wr._entry, ptr @qed_init_cmd_wr._entry_ptr, ptr @qed_init_fw_data._entry, ptr @qed_init_fw_data._entry_ptr, ptr @qed_init_store_rt_agg._entry, ptr @qed_init_store_rt_agg._entry_ptr, ptr @qed_init_store_rt_reg._entry, ptr @qed_init_store_rt_reg._entry_ptr, ptr @iro_arr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pxp_global_win, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @qed_init_fill_dmae.zero_buffer, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iro_arr to i32), i32 852, i32 1056, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_store_rt_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_store_rt_agg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_global_win to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_fw_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_cmd_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_fill_dmae.zero_buffer to i32), i32 32768, i32 40960, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_cmd_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_cmd_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_cmd_rd._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_cmd_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qed_init_iro_array(ptr nocapture noundef writeonly %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iro_arr = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 31
  %0 = ptrtoint ptr %iro_arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iro_arr, ptr %iro_arr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %rt_offset, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 34983, i32 %rt_offset)
  %cmp = icmp ugt i32 %rt_offset, 34983
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull %spec.select, i32 noundef %val, i32 noundef %rt_offset) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rt_data = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18
  %0 = ptrtoint ptr %rt_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt_data, align 8
  %arrayidx = getelementptr i32, ptr %1, i32 %rt_offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %arrayidx, align 4
  %b_valid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %b_valid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_valid, align 4
  %arrayidx6 = getelementptr i8, ptr %4, i32 %rt_offset
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx6, align 1
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %rt_offset, ptr nocapture noundef readonly %p_val, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %rt_offset, -1
  %sub = add i32 %add, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 34983, i32 %sub)
  %cmp = icmp ugt i32 %sub, 34983
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp828.not = icmp ult i32 %size, 4
  br i1 %cmp828.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div27 = lshr i32 %size, 2
  %rt_data = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18
  %b_valid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18, i32 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 149, ptr noundef nonnull %spec.select, i32 noundef %rt_offset, i32 noundef %sub) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %p_val, i32 %i.029
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %rt_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt_data, align 8
  %add9 = add i32 %i.029, %rt_offset
  %arrayidx10 = getelementptr i32, ptr %3, i32 %add9
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %arrayidx10, align 4
  %5 = ptrtoint ptr %b_valid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_valid, align 4
  %arrayidx13 = getelementptr i8, ptr %6, i32 %add9
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx13, align 1
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %div27
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_alloc(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_data1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 34984, i32 noundef 3520, i32 noundef 4) #13
  %b_valid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %b_valid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i.i, ptr %b_valid, align 4
  %tobool3.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call1.i.i.i.i19 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 139936, i32 noundef 3520, i32 noundef 6) #13
  %5 = ptrtoint ptr %rt_data1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i.i.i19, ptr %rt_data1, align 4
  %tobool8.not = icmp eq ptr %call1.i.i.i.i19, null
  br i1 %tobool8.not, label %if.then9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %b_valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_valid, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %b_valid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %b_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_init_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_data = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18
  %0 = ptrtoint ptr %rt_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt_data, align 8
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %rt_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rt_data, align 8
  %b_valid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %b_valid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_valid, align 4
  tail call void @kfree(ptr noundef %4) #9
  %5 = ptrtoint ptr %b_valid to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %b_valid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_run(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %phase, i32 noundef %phase_id, i32 noundef %modes) local_unnamed_addr #1 align 64 {
entry:
  %offset.i84 = alloca i16, align 2
  %params.i.i = alloca %struct.qed_dmae_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %fw_data = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_data, align 8
  %init_ops_size = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %init_ops_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_ops_size, align 4
  %init_ops3 = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %init_ops3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_ops3, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 2848, i32 noundef 3) #13
  %unzip_buf = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 51
  %8 = ptrtoint ptr %unzip_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %unzip_buf, align 4
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup35_crit_edge, label %if.end

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5121.not = icmp eq i32 %5, 0
  br i1 %cmp5121.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase)
  %cmp = icmp ne i32 %phase, 0
  %dp_level.i94 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %name.i97 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase)
  %cmp24 = icmp eq i32 %phase, 0
  %rt_data.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18
  %b_valid.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 18, i32 1
  %9 = getelementptr inbounds i8, ptr %params.i.i, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmd_num.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %b_dmae.0.off0122 = phi i1 [ %cmp, %for.body.lr.ph ], [ %b_dmae.1.off0104, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %union.init_op, ptr %7, i32 %cmd_num.0123
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = lshr i32 %11, 24
  %and = and i32 %12, 15
  %13 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb11
    i32 4, label %cond.false19
    i32 5, label %sw.bb22
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %14 = call i32 @llvm.bswap.i32(i32 %11) #9
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i = icmp ne i32 %15, 0
  %16 = lshr i32 %14, 7
  %shl.i = and i32 %16, 33554428
  %args.i = getelementptr inbounds %struct.init_write_op, ptr %arrayidx, i32 0, i32 1
  %tobool.not.i = xor i1 %tobool.i, true
  %brmerge.i = or i1 %b_dmae.0.off0122, %tobool.not.i
  br i1 %brmerge.i, label %if.end17.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  %17 = ptrtoint ptr %dp_level.i94 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp.i = icmp ult i8 %18, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.for.end_crit_edge, !prof !59

do.body.i.for.end_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 381, ptr noundef nonnull %name.i97, i32 noundef %shl.i) #12
  br label %for.end

if.end17.i:                                       ; preds = %sw.bb
  %shr18.i = lshr i32 %14, 4
  %and19.i = and i32 %shr18.i, 7
  %19 = zext i32 %and19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and19.i, label %if.end17.i.for.inc_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb33.i
    i32 3, label %sw.bb37.i
  ]

if.end17.i.for.inc_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb.i:                                          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %args.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %shl.i, i32 noundef %22) #9
  br label %for.inc

sw.bb21.i:                                        ; preds = %if.end17.i
  %23 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %args.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %25)
  %cmp28.i = icmp ugt i32 %25, 63
  %or.cond.i = select i1 %b_dmae.0.off0122, i1 %cmp28.i, i1 false
  %or.cond75.i = select i1 %tobool.i, i1 true, i1 %or.cond.i
  br i1 %or.cond75.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i.i) #9
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 0, ptr %9, align 4
  %27 = call ptr @memset(ptr @qed_init_fill_dmae.zero_buffer, i32 0, i32 32768)
  %28 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %params.i.i, align 4
  %call.i.i = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef zext (i32 ptrtoint (ptr @qed_init_fill_dmae.zero_buffer to i32) to i64), i32 noundef %shl.i, i32 noundef %25, ptr noundef nonnull %params.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i) #9
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp1.not.i.i, label %if.else.i.for.inc_crit_edge, label %if.else.i.for.body.i.i_crit_edge

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  %addr.addr.02.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shl.i, %if.else.i.for.body.i.i_crit_edge ]
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %addr.addr.02.i.i, i32 noundef 0) #9
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %add.i.i = add i32 %addr.addr.02.i.i, 4
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %25
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.inc_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb33.i:                                        ; preds = %if.end17.i
  %29 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %args.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_hwfn, align 8
  %fw_data.i.i = getelementptr inbounds %struct.qed_dev, ptr %33, i32 0, i32 42
  %34 = ptrtoint ptr %fw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw_data.i.i, align 8
  %arr_data.i.i = getelementptr inbounds %struct.qed_fw_data, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %arr_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arr_data.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %37, i32 %31
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #9
  %and6.i.i = and i32 %40, 15
  %41 = zext i32 %and6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and6.i.i, label %sw.bb33.i.for.inc_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb26.i.i
    i32 0, label %sw.bb42.i.i
  ]

sw.bb33.i.for.inc_crit_edge:                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb.i.i:                                        ; preds = %sw.bb33.i
  %add.i76.i = add i32 %31, 1
  %shr7.i.i = lshr i32 %40, 4
  %42 = ptrtoint ptr %unzip_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %unzip_buf, align 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 32768)
  %arrayidx.i.i = getelementptr i32, ptr %37, i32 %add.i76.i
  %45 = load ptr, ptr %unzip_buf, align 4
  %call.i77.i = call i32 @qed_unzip_data(ptr noundef %p_hwfn, i32 noundef %shr7.i.i, ptr noundef %arrayidx.i.i, i32 noundef 32768, ptr noundef %45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool.not.i.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  %46 = ptrtoint ptr %unzip_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unzip_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i77.i)
  %cmp.i.i.i = icmp ugt i32 %call.i77.i, 15
  %48 = or i1 %tobool.i, %cmp.i.i.i
  %or.cond.i.i.i = and i1 %b_dmae.0.off0122, %48
  br i1 %or.cond.i.i.i, label %if.else.i.i.i, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %i.016.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl i32 %i.016.i.i.i, 2
  %add.i.i.i = add i32 %shl.i.i.i, %shl.i
  %arrayidx.i.i.i = getelementptr i32, ptr %47, i32 %i.016.i.i.i
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i.i.i, i32 noundef %50) #9
  %inc.i.i.i = add nuw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %call.i77.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.inc_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.for.inc_crit_edge:                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %47 to i32
  %conv.i.i.i = zext i32 %51 to i64
  %call.i.i.i = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv.i.i.i, i32 noundef %shl.i, i32 noundef %call.i77.i, ptr noundef null) #9
  br label %sw.epilog

do.body.i.i:                                      ; preds = %sw.bb.i.i
  %52 = ptrtoint ptr %dp_level.i94 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dp_level.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp.i.i = icmp ult i8 %53, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.for.end_crit_edge, !prof !59

do.body.i.i.for.end_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 332, ptr noundef nonnull %name.i97) #12
  br label %for.end

sw.bb26.i.i:                                      ; preds = %sw.bb33.i
  %shr29.i.i = lshr i32 %40, 4
  %and30.i.i = and i32 %shr29.i.i, 15
  %add33.i.i = add i32 %31, 1
  %add.ptr4.i.i.i = getelementptr i32, ptr %37, i32 %add33.i.i
  %54 = ptrtoint ptr %add.ptr4.i.i.i to i32
  %conv.i96.i.i = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %40)
  %cmp31122.not.i.i = icmp ult i32 %40, 256
  br i1 %cmp31122.not.i.i, label %sw.bb26.i.i.for.inc_crit_edge, label %for.body.lr.ph.i.i

sw.bb26.i.i.for.inc_crit_edge:                    ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.lr.ph.i.i:                               ; preds = %sw.bb26.i.i
  %shr27.i.i = lshr i32 %40, 8
  %or.cond.i86.i.i = and i1 %b_dmae.0.off0122, %tobool.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %cmp315.not.i87.i.i = icmp eq i32 %and30.i.i, 0
  %shl40.i.i = shl nuw nsw i32 %and30.i.i, 2
  br label %for.body.i78.i

for.body.i78.i:                                   ; preds = %for.inc.i.i.for.body.i78.i_crit_edge, %for.body.lr.ph.i.i
  %i.0125.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i79.i, %for.inc.i.i.for.body.i78.i_crit_edge ]
  %addr.0123.i.i = phi i32 [ %shl.i, %for.body.lr.ph.i.i ], [ %add41.i.i, %for.inc.i.i.for.body.i78.i_crit_edge ]
  br i1 %or.cond.i86.i.i, label %qed_init_array_dmae.exit100.i.i, label %if.then.i88.i.i

if.then.i88.i.i:                                  ; preds = %for.body.i78.i
  br i1 %cmp315.not.i87.i.i, label %if.then.i88.i.i.for.inc.i.i_crit_edge, label %if.then.i88.i.i.for.body.i95.i.i_crit_edge

if.then.i88.i.i.for.body.i95.i.i_crit_edge:       ; preds = %if.then.i88.i.i
  br label %for.body.i95.i.i

if.then.i88.i.i.for.inc.i.i_crit_edge:            ; preds = %if.then.i88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.body.i95.i.i:                                 ; preds = %for.body.i95.i.i.for.body.i95.i.i_crit_edge, %if.then.i88.i.i.for.body.i95.i.i_crit_edge
  %i.016.i89.i.i = phi i32 [ %inc.i93.i.i, %for.body.i95.i.i.for.body.i95.i.i_crit_edge ], [ 0, %if.then.i88.i.i.for.body.i95.i.i_crit_edge ]
  %shl.i90.i.i = shl i32 %i.016.i89.i.i, 2
  %add.i91.i.i = add nuw nsw i32 %shl.i90.i.i, %addr.0123.i.i
  %arrayidx.i92.i.i = getelementptr i32, ptr %add.ptr4.i.i.i, i32 %i.016.i89.i.i
  %55 = ptrtoint ptr %arrayidx.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i92.i.i, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i91.i.i, i32 noundef %56) #9
  %inc.i93.i.i = add nuw nsw i32 %i.016.i89.i.i, 1
  %exitcond.not.i94.i.i = icmp eq i32 %inc.i93.i.i, %and30.i.i
  br i1 %exitcond.not.i94.i.i, label %for.body.i95.i.i.for.inc.i.i_crit_edge, label %for.body.i95.i.i.for.body.i95.i.i_crit_edge

for.body.i95.i.i.for.body.i95.i.i_crit_edge:      ; preds = %for.body.i95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95.i.i

for.body.i95.i.i.for.inc.i.i_crit_edge:           ; preds = %for.body.i95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

qed_init_array_dmae.exit100.i.i:                  ; preds = %for.body.i78.i
  %call.i97.i.i = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv.i96.i.i, i32 noundef %addr.0123.i.i, i32 noundef %and30.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i.i)
  %tobool37.not.i.i = icmp eq i32 %call.i97.i.i, 0
  br i1 %tobool37.not.i.i, label %qed_init_array_dmae.exit100.i.i.for.inc.i.i_crit_edge, label %qed_init_array_dmae.exit100.i.i.for.end_crit_edge

qed_init_array_dmae.exit100.i.i.for.end_crit_edge: ; preds = %qed_init_array_dmae.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

qed_init_array_dmae.exit100.i.i.for.inc.i.i_crit_edge: ; preds = %qed_init_array_dmae.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %qed_init_array_dmae.exit100.i.i.for.inc.i.i_crit_edge, %for.body.i95.i.i.for.inc.i.i_crit_edge, %if.then.i88.i.i.for.inc.i.i_crit_edge
  %inc.i79.i = add nuw nsw i32 %i.0125.i.i, 1
  %add41.i.i = add nuw i32 %addr.0123.i.i, %shl40.i.i
  %exitcond.not.i80.i = icmp eq i32 %inc.i79.i, %shr27.i.i
  br i1 %exitcond.not.i80.i, label %for.inc.i.i.for.inc_crit_edge, label %for.inc.i.i.for.body.i78.i_crit_edge

for.inc.i.i.for.body.i78.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i78.i

for.inc.i.i.for.inc_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb42.i.i:                                      ; preds = %sw.bb33.i
  %shr43.i.i = lshr i32 %40, 4
  %add45.i.i = add i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %40)
  %cmp.i101.i.i = icmp ugt i32 %40, 255
  %57 = or i1 %tobool.i, %cmp.i101.i.i
  %or.cond.i102.i.i = and i1 %b_dmae.0.off0122, %57
  %add.ptr4.i103.i.i = getelementptr i32, ptr %37, i32 %add45.i.i
  br i1 %or.cond.i102.i.i, label %if.else.i115.i.i, label %if.then.i105.i.i

if.then.i105.i.i:                                 ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %40)
  %cmp315.not.i104.i.i = icmp ult i32 %40, 16
  br i1 %cmp315.not.i104.i.i, label %if.then.i105.i.i.for.inc_crit_edge, label %if.then.i105.i.i.for.body.i112.i.i_crit_edge

if.then.i105.i.i.for.body.i112.i.i_crit_edge:     ; preds = %if.then.i105.i.i
  br label %for.body.i112.i.i

if.then.i105.i.i.for.inc_crit_edge:               ; preds = %if.then.i105.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i112.i.i:                                ; preds = %for.body.i112.i.i.for.body.i112.i.i_crit_edge, %if.then.i105.i.i.for.body.i112.i.i_crit_edge
  %i.016.i106.i.i = phi i32 [ %inc.i110.i.i, %for.body.i112.i.i.for.body.i112.i.i_crit_edge ], [ 0, %if.then.i105.i.i.for.body.i112.i.i_crit_edge ]
  %shl.i107.i.i = shl i32 %i.016.i106.i.i, 2
  %add.i108.i.i = add nuw nsw i32 %shl.i107.i.i, %shl.i
  %arrayidx.i109.i.i = getelementptr i32, ptr %add.ptr4.i103.i.i, i32 %i.016.i106.i.i
  %58 = ptrtoint ptr %arrayidx.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i109.i.i, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i108.i.i, i32 noundef %59) #9
  %inc.i110.i.i = add nuw nsw i32 %i.016.i106.i.i, 1
  %exitcond.not.i111.i.i = icmp eq i32 %inc.i110.i.i, %shr43.i.i
  br i1 %exitcond.not.i111.i.i, label %for.body.i112.i.i.for.inc_crit_edge, label %for.body.i112.i.i.for.body.i112.i.i_crit_edge

for.body.i112.i.i.for.body.i112.i.i_crit_edge:    ; preds = %for.body.i112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i112.i.i

for.body.i112.i.i.for.inc_crit_edge:              ; preds = %for.body.i112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else.i115.i.i:                                 ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %add.ptr4.i103.i.i to i32
  %conv.i113.i.i = zext i32 %60 to i64
  %call.i114.i.i = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv.i113.i.i, i32 noundef %shl.i, i32 noundef %shr43.i.i, ptr noundef null) #9
  br label %sw.epilog

sw.bb37.i:                                        ; preds = %if.end17.i
  %offset.i = getelementptr inbounds %struct.init_op_array_params, ptr %args.i, i32 0, i32 1
  %61 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %offset.i, align 2
  %63 = call i16 @llvm.bswap.i16(i16 %62) #9
  %64 = ptrtoint ptr %args.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %args.i, align 4
  %66 = call i16 @llvm.bswap.i16(i16 %65) #9
  %67 = ptrtoint ptr %rt_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rt_data.i.i, align 8
  %idxprom.i.i = zext i16 %63 to i32
  %arrayidx.i81.i = getelementptr i32, ptr %68, i32 %idxprom.i.i
  %69 = ptrtoint ptr %b_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_valid.i.i, align 4
  %arrayidx3.i.i = getelementptr i8, ptr %70, i32 %idxprom.i.i
  %conv4.i.i = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp13.not.i.i = icmp eq i16 %65, 0
  br i1 %cmp13.not.i.i, label %sw.bb37.i.for.inc_crit_edge, label %sw.bb37.i.for.body.i83.i_crit_edge

sw.bb37.i.for.body.i83.i_crit_edge:               ; preds = %sw.bb37.i
  br label %for.body.i83.i

sw.bb37.i.for.inc_crit_edge:                      ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i83.i:                                   ; preds = %for.inc57.i.i.for.body.i83.i_crit_edge, %sw.bb37.i.for.body.i83.i_crit_edge
  %conv15.i.i = phi i32 [ %conv.i.i, %for.inc57.i.i.for.body.i83.i_crit_edge ], [ 0, %sw.bb37.i.for.body.i83.i_crit_edge ]
  %i.014.i.i = phi i16 [ %inc58.i.i, %for.inc57.i.i.for.body.i83.i_crit_edge ], [ 0, %sw.bb37.i.for.body.i83.i_crit_edge ]
  %arrayidx7.i.i = getelementptr i8, ptr %arrayidx3.i.i, i32 %conv15.i.i
  %71 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx7.i.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i82.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i82.i, label %for.body.i83.i.for.inc57.i.i_crit_edge, label %if.end.i.i

for.body.i83.i.for.inc57.i.i_crit_edge:           ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57.i.i

if.end.i.i:                                       ; preds = %for.body.i83.i
  br i1 %tobool.i, label %for.cond16.preheader.i.i, label %if.then9.i.i

for.cond16.preheader.i.i:                         ; preds = %if.end.i.i
  %add191.i.i = add nuw nsw i32 %conv15.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add191.i.i, i32 %conv4.i.i)
  %cmp212.i.i = icmp ult i32 %add191.i.i, %conv4.i.i
  br i1 %cmp212.i.i, label %for.body23.i.preheader.i, label %for.cond16.preheader.i.i.for.end.i.i_crit_edge

for.cond16.preheader.i.i.for.end.i.i_crit_edge:   ; preds = %for.cond16.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body23.i.preheader.i:                         ; preds = %for.cond16.preheader.i.i
  %arrayidx27.i95.i = getelementptr i8, ptr %arrayidx3.i.i, i32 %add191.i.i
  %73 = ptrtoint ptr %arrayidx27.i95.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx27.i95.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool28.not.i96.i = icmp eq i8 %74, 0
  br i1 %tobool28.not.i96.i, label %for.body23.i.preheader.i.for.end.i.i_crit_edge, label %for.body23.i.preheader.i.for.cond16.i.i_crit_edge

for.body23.i.preheader.i.for.cond16.i.i_crit_edge: ; preds = %for.body23.i.preheader.i
  br label %for.cond16.i.i

for.body23.i.preheader.i.for.end.i.i_crit_edge:   ; preds = %for.body23.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i84.i = shl nuw nsw i32 %conv15.i.i, 2
  %add.i85.i = add nuw nsw i32 %shl.i84.i, %shl.i
  %arrayidx12.i.i = getelementptr i32, ptr %arrayidx.i81.i, i32 %conv15.i.i
  %75 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx12.i.i, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i85.i, i32 noundef %76) #9
  %77 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx7.i.i, align 1
  br label %for.inc57.i.i

for.cond16.i.i:                                   ; preds = %for.body23.i.i.for.cond16.i.i_crit_edge, %for.body23.i.preheader.i.for.cond16.i.i_crit_edge
  %segment.03.i97.i = phi i16 [ %inc.i86.i, %for.body23.i.i.for.cond16.i.i_crit_edge ], [ 1, %for.body23.i.preheader.i.for.cond16.i.i_crit_edge ]
  %inc.i86.i = add i16 %segment.03.i97.i, 1
  %conv18.i.i = zext i16 %inc.i86.i to i32
  %add19.i.i = add nuw nsw i32 %conv15.i.i, %conv18.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i, i32 %conv4.i.i)
  %cmp21.i.i = icmp ult i32 %add19.i.i, %conv4.i.i
  br i1 %cmp21.i.i, label %for.body23.i.i, label %for.cond16.i.i.for.end.i.i_crit_edge

for.cond16.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body23.i.i:                                   ; preds = %for.cond16.i.i
  %arrayidx27.i.i = getelementptr i8, ptr %arrayidx3.i.i, i32 %add19.i.i
  %78 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx27.i.i, align 1, !range !58
  %tobool28.not.i.i = icmp eq i8 %79, 0
  br i1 %tobool28.not.i.i, label %for.body23.i.i.for.end.i.i_crit_edge, label %for.body23.i.i.for.cond16.i.i_crit_edge

for.body23.i.i.for.cond16.i.i_crit_edge:          ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond16.i.i

for.body23.i.i.for.end.i.i_crit_edge:             ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body23.i.i.for.end.i.i_crit_edge, %for.cond16.i.i.for.end.i.i_crit_edge, %for.body23.i.preheader.i.for.end.i.i_crit_edge, %for.cond16.preheader.i.i.for.end.i.i_crit_edge
  %conv18.lcssa.i.i = phi i32 [ 1, %for.cond16.preheader.i.i.for.end.i.i_crit_edge ], [ 1, %for.body23.i.preheader.i.for.end.i.i_crit_edge ], [ %conv18.i.i, %for.cond16.i.i.for.end.i.i_crit_edge ], [ %conv18.i.i, %for.body23.i.i.for.end.i.i_crit_edge ]
  %add19.lcssa.i.i = phi i32 [ %add191.i.i, %for.cond16.preheader.i.i.for.end.i.i_crit_edge ], [ %add191.i.i, %for.body23.i.preheader.i.for.end.i.i_crit_edge ], [ %add19.i.i, %for.cond16.i.i.for.end.i.i_crit_edge ], [ %add19.i.i, %for.body23.i.i.for.end.i.i_crit_edge ]
  %add.ptr.i87.i = getelementptr i32, ptr %arrayidx.i81.i, i32 %conv15.i.i
  %80 = ptrtoint ptr %add.ptr.i87.i to i32
  %conv32.i.i = zext i32 %80 to i64
  %shl34.i.i = shl nuw nsw i32 %conv15.i.i, 2
  %add35.i.i = add nuw nsw i32 %shl34.i.i, %shl.i
  %call.i88.i = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv32.i.i, i32 noundef %add35.i.i, i32 noundef %conv18.lcssa.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool37.not.i89.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool37.not.i89.i, label %for.cond40.preheader.i.i, label %for.end.i.i.for.inc_crit_edge

for.end.i.i.for.inc_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond40.preheader.i.i:                         ; preds = %for.end.i.i
  %conv419.i.i = zext i16 %i.014.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.lcssa.i.i, i32 %conv419.i.i)
  %cmp4510.i.i = icmp ugt i32 %add19.lcssa.i.i, %conv419.i.i
  br i1 %cmp4510.i.i, label %for.cond40.preheader.i.i.for.body47.i.i_crit_edge, label %for.cond40.preheader.i.i.for.end52.i.i_crit_edge

for.cond40.preheader.i.i.for.end52.i.i_crit_edge: ; preds = %for.cond40.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i.i

for.cond40.preheader.i.i.for.body47.i.i_crit_edge: ; preds = %for.cond40.preheader.i.i
  br label %for.body47.i.i

for.body47.i.i:                                   ; preds = %for.body47.i.i.for.body47.i.i_crit_edge, %for.cond40.preheader.i.i.for.body47.i.i_crit_edge
  %conv4112.i.i = phi i32 [ %conv41.i.i, %for.body47.i.i.for.body47.i.i_crit_edge ], [ %conv419.i.i, %for.cond40.preheader.i.i.for.body47.i.i_crit_edge ]
  %j.011.i.i = phi i16 [ %inc51.i.i, %for.body47.i.i.for.body47.i.i_crit_edge ], [ %i.014.i.i, %for.cond40.preheader.i.i.for.body47.i.i_crit_edge ]
  %arrayidx49.i.i = getelementptr i8, ptr %arrayidx3.i.i, i32 %conv4112.i.i
  %81 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx49.i.i, align 1
  %inc51.i.i = add i16 %j.011.i.i, 1
  %conv41.i.i = zext i16 %inc51.i.i to i32
  %cmp45.i.i = icmp ugt i32 %add19.lcssa.i.i, %conv41.i.i
  br i1 %cmp45.i.i, label %for.body47.i.i.for.body47.i.i_crit_edge, label %for.body47.i.i.for.end52.i.i_crit_edge

for.body47.i.i.for.end52.i.i_crit_edge:           ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i.i

for.body47.i.i.for.body47.i.i_crit_edge:          ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47.i.i

for.end52.i.i:                                    ; preds = %for.body47.i.i.for.end52.i.i_crit_edge, %for.cond40.preheader.i.i.for.end52.i.i_crit_edge
  %conv56.i.i = trunc i32 %add19.lcssa.i.i to i16
  br label %for.inc57.i.i

for.inc57.i.i:                                    ; preds = %for.end52.i.i, %if.then9.i.i, %for.body.i83.i.for.inc57.i.i_crit_edge
  %i.1.i.i = phi i16 [ %conv56.i.i, %for.end52.i.i ], [ %i.014.i.i, %if.then9.i.i ], [ %i.014.i.i, %for.body.i83.i.for.inc57.i.i_crit_edge ]
  %inc58.i.i = add i16 %i.1.i.i, 1
  %conv.i.i = zext i16 %inc58.i.i to i32
  %cmp.i90.i = icmp ult i16 %inc58.i.i, %66
  br i1 %cmp.i90.i, label %for.inc57.i.i.for.body.i83.i_crit_edge, label %for.inc57.i.i.for.inc_crit_edge

for.inc57.i.i.for.inc_crit_edge:                  ; preds = %for.inc57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc57.i.i.for.body.i83.i_crit_edge:           ; preds = %for.inc57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i83.i

sw.bb8:                                           ; preds = %for.body
  %82 = call i32 @llvm.bswap.i32(i32 %11) #9
  %83 = lshr i32 %82, 7
  %shl.i80 = and i32 %83, 33554428
  %shr1.i = lshr i32 %82, 4
  %and2.i = and i32 %shr1.i, 15
  %call.i81 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %shl.i80) #9
  %84 = zext i32 %and2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and2.i, label %do.end.i83 [
    i32 0, label %sw.bb8.for.inc_crit_edge
    i32 1, label %sw.bb8.sw.epilog.i_crit_edge
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
  ]

sw.bb8.sw.epilog.i_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb8.for.inc_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb3.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end.i83:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx, align 4
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 457, ptr noundef nonnull %name.i97, i32 noundef %86) #12
  br label %for.inc

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb8.sw.epilog.i_crit_edge
  %comp_check.0.i = phi ptr [ @comp_and, %sw.bb4.i ], [ @comp_or, %sw.bb3.i ], [ @comp_eq, %sw.bb8.sw.epilog.i_crit_edge ]
  %expected_val.i = getelementptr inbounds %struct.init_read_op, ptr %arrayidx, i32 0, i32 1
  %87 = ptrtoint ptr %expected_val.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %expected_val.i, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88) #9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.false17.i.land.rhs.i_crit_edge, %sw.epilog.i
  %i.076.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i, %cond.false17.i.land.rhs.i_crit_edge ]
  %val.075.i = phi i32 [ %call.i81, %sw.epilog.i ], [ %call21.i, %cond.false17.i.land.rhs.i_crit_edge ]
  %call13.i = call zeroext i1 %comp_check.0.i(i32 noundef %val.075.i, i32 noundef %89) #9, !callees !60
  br i1 %call13.i, label %land.rhs.i.for.inc_crit_edge, label %cond.false17.i

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cond.false17.i:                                   ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 107374000) #9
  %call21.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %shl.i80) #9
  %inc.i = add nuw nsw i32 %i.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end27.i, label %cond.false17.i.land.rhs.i_crit_edge

cond.false17.i.land.rhs.i_crit_edge:              ; preds = %cond.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end27.i:                                       ; preds = %cond.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %expected_val.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %expected_val.i, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92) #9
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #9
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 473, ptr noundef nonnull %name.i97, i32 noundef %shl.i80, i32 noundef %93, i32 noundef %call21.i, i32 noundef %96) #12
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset.i84) #9
  %modes_buf_offset.i = getelementptr inbounds %struct.init_if_mode_op, ptr %arrayidx, i32 0, i32 2
  %97 = ptrtoint ptr %modes_buf_offset.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %modes_buf_offset.i, align 2
  %99 = call i16 @llvm.bswap.i16(i16 %98) #9
  %100 = ptrtoint ptr %offset.i84 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %offset.i84, align 2
  %call.i85 = call fastcc zeroext i8 @qed_init_cmd_mode_match(ptr noundef %p_hwfn, ptr noundef nonnull %offset.i84, i32 noundef %modes) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i85)
  %tobool.not.i86 = icmp eq i8 %call.i85, 0
  br i1 %tobool.not.i86, label %if.else.i87, label %sw.bb9.qed_init_cmd_mode.exit_crit_edge

sw.bb9.qed_init_cmd_mode.exit_crit_edge:          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_init_cmd_mode.exit

if.else.i87:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102) #9
  %shr.i = lshr i32 %103, 16
  br label %qed_init_cmd_mode.exit

qed_init_cmd_mode.exit:                           ; preds = %if.else.i87, %sw.bb9.qed_init_cmd_mode.exit_crit_edge
  %retval.0.i88 = phi i32 [ %shr.i, %if.else.i87 ], [ 0, %sw.bb9.qed_init_cmd_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.i84) #9
  %add = add i32 %retval.0.i88, %cmd_num.0123
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  %phase_data.i = getelementptr inbounds %struct.init_if_phase_op, ptr %arrayidx, i32 0, i32 1
  %104 = ptrtoint ptr %phase_data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %phase_data.i, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %105) #9
  %107 = call i32 @llvm.bswap.i32(i32 %11) #9
  %and.i = and i32 %106, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %phase)
  %cmp.i89 = icmp eq i32 %and.i, %phase
  br i1 %cmp.i89, label %land.lhs.true.i, label %sw.bb11.if.then.i_crit_edge

sw.bb11.if.then.i_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %sw.bb11
  %shr2.i = lshr i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr2.i)
  %cmp4.i = icmp eq i32 %shr2.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shr2.i, i32 %phase_id)
  %cmp7.i = icmp eq i32 %shr2.i, %phase_id
  %or.cond.i90 = or i1 %cmp4.i, %cmp7.i
  br i1 %or.cond.i90, label %land.lhs.true.i.qed_init_cmd_phase.exit_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.qed_init_cmd_phase.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_init_cmd_phase.exit

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %sw.bb11.if.then.i_crit_edge
  %shr8.i = lshr i32 %107, 16
  br label %qed_init_cmd_phase.exit

qed_init_cmd_phase.exit:                          ; preds = %if.then.i, %land.lhs.true.i.qed_init_cmd_phase.exit_crit_edge
  %retval.0.i91 = phi i32 [ %shr8.i, %if.then.i ], [ 0, %land.lhs.true.i.qed_init_cmd_phase.exit_crit_edge ]
  %add13 = add i32 %retval.0.i91, %cmd_num.0123
  br label %for.inc

cond.false19:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %delay = getelementptr inbounds %struct.init_delay_op, ptr %arrayidx, i32 0, i32 1
  %108 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %111(i32 noundef %110) #9
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  %callback_id.i = getelementptr inbounds %struct.init_callback_op, ptr %arrayidx, i32 0, i32 1
  %112 = ptrtoint ptr %callback_id.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %callback_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cond13.i = icmp eq i16 %113, 0
  br i1 %cond13.i, label %sw.bb.i93, label %do.body.i96

sw.bb.i93:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  %call.i92 = call i32 @qed_dmae_sanity(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull @.str.17) #9
  br label %qed_init_cmd_cb.exit

do.body.i96:                                      ; preds = %sw.bb22
  %114 = ptrtoint ptr %dp_level.i94 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %dp_level.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %115)
  %cmp.i95 = icmp ult i8 %115, 3
  br i1 %cmp.i95, label %do.end.i98, label %do.body.i96.qed_init_cmd_cb.exit_crit_edge, !prof !59

do.body.i96.qed_init_cmd_cb.exit_crit_edge:       ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_init_cmd_cb.exit

do.end.i98:                                       ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i = zext i16 %113 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 490, ptr noundef nonnull %name.i97, i32 noundef %conv9.i) #12
  br label %qed_init_cmd_cb.exit

qed_init_cmd_cb.exit:                             ; preds = %do.end.i98, %do.body.i96.qed_init_cmd_cb.exit_crit_edge, %sw.bb.i93
  %retval.0.i99 = phi i32 [ %call.i92, %sw.bb.i93 ], [ -22, %do.end.i98 ], [ -22, %do.body.i96.qed_init_cmd_cb.exit_crit_edge ]
  br i1 %cmp24, label %land.lhs.true, label %qed_init_cmd_cb.exit.sw.epilog_crit_edge

qed_init_cmd_cb.exit.sw.epilog_crit_edge:         ; preds = %qed_init_cmd_cb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %qed_init_cmd_cb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %callback_id.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %callback_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %cmp25 = icmp eq i16 %117, 0
  %spec.select = select i1 %cmp25, i1 true, i1 %b_dmae.0.off0122
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true, %qed_init_cmd_cb.exit.sw.epilog_crit_edge, %if.else.i115.i.i, %if.else.i.i.i, %if.then30.i
  %b_dmae.1.off0 = phi i1 [ %b_dmae.0.off0122, %qed_init_cmd_cb.exit.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true ], [ %b_dmae.0.off0122, %if.then30.i ], [ true, %if.else.i.i.i ], [ true, %if.else.i115.i.i ]
  %rc.1 = phi i32 [ %retval.0.i99, %qed_init_cmd_cb.exit.sw.epilog_crit_edge ], [ %retval.0.i99, %land.lhs.true ], [ %call.i.i, %if.then30.i ], [ %call.i.i.i, %if.else.i.i.i ], [ %call.i114.i.i, %if.else.i115.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool29.not = icmp eq i32 %rc.1, 0
  br i1 %tobool29.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %cond.false19, %qed_init_cmd_phase.exit, %qed_init_cmd_mode.exit, %do.end27.i, %land.rhs.i.for.inc_crit_edge, %do.end.i83, %sw.bb8.for.inc_crit_edge, %for.inc57.i.i.for.inc_crit_edge, %for.end.i.i.for.inc_crit_edge, %sw.bb37.i.for.inc_crit_edge, %for.body.i112.i.i.for.inc_crit_edge, %if.then.i105.i.i.for.inc_crit_edge, %for.inc.i.i.for.inc_crit_edge, %sw.bb26.i.i.for.inc_crit_edge, %for.body.i.i.i.for.inc_crit_edge, %sw.bb33.i.for.inc_crit_edge, %for.body.i.i.for.inc_crit_edge, %if.else.i.for.inc_crit_edge, %sw.bb.i, %if.end17.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmd_num.1105 = phi i32 [ %cmd_num.0123, %sw.epilog.for.inc_crit_edge ], [ %cmd_num.0123, %do.end.i83 ], [ %cmd_num.0123, %sw.bb8.for.inc_crit_edge ], [ %cmd_num.0123, %sw.bb37.i.for.inc_crit_edge ], [ %cmd_num.0123, %if.then.i105.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %sw.bb26.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %sw.bb33.i.for.inc_crit_edge ], [ %cmd_num.0123, %if.else.i.for.inc_crit_edge ], [ %cmd_num.0123, %sw.bb.i ], [ %cmd_num.0123, %if.end17.i.for.inc_crit_edge ], [ %add, %qed_init_cmd_mode.exit ], [ %add13, %qed_init_cmd_phase.exit ], [ %cmd_num.0123, %cond.false19 ], [ %cmd_num.0123, %for.body.for.inc_crit_edge ], [ %cmd_num.0123, %do.end27.i ], [ %cmd_num.0123, %for.body.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %for.body.i.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %for.inc.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %for.body.i112.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %for.end.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %for.inc57.i.i.for.inc_crit_edge ], [ %cmd_num.0123, %land.rhs.i.for.inc_crit_edge ]
  %b_dmae.1.off0104 = phi i1 [ %b_dmae.1.off0, %sw.epilog.for.inc_crit_edge ], [ %b_dmae.0.off0122, %do.end.i83 ], [ %b_dmae.0.off0122, %sw.bb8.for.inc_crit_edge ], [ %b_dmae.0.off0122, %sw.bb37.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %if.then.i105.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %sw.bb26.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %sw.bb33.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %if.else.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %sw.bb.i ], [ %b_dmae.0.off0122, %if.end17.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %qed_init_cmd_mode.exit ], [ %b_dmae.0.off0122, %qed_init_cmd_phase.exit ], [ %b_dmae.0.off0122, %cond.false19 ], [ %b_dmae.0.off0122, %for.body.for.inc_crit_edge ], [ %b_dmae.0.off0122, %do.end27.i ], [ %b_dmae.0.off0122, %for.body.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %for.body.i.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %for.inc.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %for.body.i112.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %for.end.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %for.inc57.i.i.for.inc_crit_edge ], [ %b_dmae.0.off0122, %land.rhs.i.for.inc_crit_edge ]
  %inc = add i32 %cmd_num.1105, 1
  %cmp5 = icmp ult i32 %inc, %5
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge, %qed_init_array_dmae.exit100.i.i.for.end_crit_edge, %do.end.i.i, %do.body.i.i.for.end_crit_edge, %do.end.i, %do.body.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %rc.2 = phi i32 [ -22, %do.body.i.i.for.end_crit_edge ], [ -22, %do.end.i.i ], [ -22, %do.body.i.for.end_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end.for.end_crit_edge ], [ %call.i97.i.i, %qed_init_array_dmae.exit100.i.i.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %rc.1, %sw.epilog.for.end_crit_edge ]
  %118 = ptrtoint ptr %unzip_buf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %unzip_buf, align 4
  call void @kfree(ptr noundef %119) #9
  %120 = ptrtoint ptr %unzip_buf to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %unzip_buf, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %for.end, %entry.cleanup35_crit_edge
  %retval.0 = phi i32 [ %rc.2, %for.end ], [ -12, %entry.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_gtt_init(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = add nsw i32 %i.06, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %0)
  %tobool.not = icmp ult i32 %0, -13
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [19 x i32], ptr @pxp_global_win, i32 0, i32 %i.06
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regview, align 4
  %mul = shl nuw nsw i32 %i.06, 2
  %add = add nuw nsw i32 %mul, 512
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #9, !srcloc !62
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_fw_data(ptr noundef %cdev, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !59

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 630, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fw_data = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 42
  %2 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_data, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %3, align 4
  %arrayidx13 = getelementptr %struct.bin_buffer_hdr, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 4
  %add.ptr15 = getelementptr i8, ptr %data, i32 %8
  %init_ops = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %init_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr15, ptr %init_ops, align 4
  %arrayidx16 = getelementptr %struct.bin_buffer_hdr, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %add.ptr18 = getelementptr i8, ptr %data, i32 %11
  %arr_data = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %arr_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr18, ptr %arr_data, align 4
  %arrayidx19 = getelementptr %struct.bin_buffer_hdr, ptr %data, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx19, align 4
  %add.ptr21 = getelementptr i8, ptr %data, i32 %14
  %modes_tree_buf = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %modes_tree_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr21, ptr %modes_tree_buf, align 4
  %length = getelementptr %struct.bin_buffer_hdr, ptr %data, i32 1, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %div57 = lshr i32 %17, 3
  %init_ops_size = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %init_ops_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div57, ptr %init_ops_size, align 4
  %arrayidx23 = getelementptr %struct.bin_buffer_hdr, ptr %data, i32 5
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %add.ptr25 = getelementptr i8, ptr %data, i32 %20
  %fw_overlays = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %fw_overlays to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr25, ptr %fw_overlays, align 4
  %length27 = getelementptr %struct.bin_buffer_hdr, ptr %data, i32 5, i32 1
  %22 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length27, align 4
  %fw_overlays_len = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %fw_overlays_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fw_overlays_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dmae_host2grc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_unzip_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @comp_eq(i32 noundef %val, i32 noundef %expected_val) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %val, i32 %expected_val)
  %cmp = icmp eq i32 %val, %expected_val
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @comp_or(i32 noundef %val, i32 noundef %expected_val) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %expected_val, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp ne i32 %or, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @comp_and(i32 noundef %val, i32 noundef %expected_val) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %expected_val, %val
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %expected_val)
  %cmp = icmp eq i32 %and, %expected_val
  ret i1 %cmp
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @qed_init_cmd_mode_match(ptr noundef %p_hwfn, ptr noundef %p_offset, i32 noundef %modes) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse

tailrecurse:                                      ; preds = %sw.bb, %entry
  %accumulator.tr = phi i8 [ 0, %entry ], [ %11, %sw.bb ]
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %fw_data = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_data, align 8
  %modes_tree_buf2 = getelementptr inbounds %struct.qed_fw_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %modes_tree_buf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modes_tree_buf2, align 4
  %6 = ptrtoint ptr %p_offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %p_offset, align 2
  %inc = add i16 %7, 1
  store i16 %inc, ptr %p_offset, align 2
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr i8, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %9, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #11
  %11 = xor i8 %accumulator.tr, 1
  br label %tailrecurse

common.ret:                                       ; preds = %sw.default, %sw.bb11, %sw.bb5
  %common.ret.op = phi i8 [ %accumulator.ret.tr, %sw.bb5 ], [ %accumulator.ret.tr47, %sw.bb11 ], [ %accumulator.ret.tr48, %sw.default ]
  ret i8 %common.ret.op

sw.bb5:                                           ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc zeroext i8 @qed_init_cmd_mode_match(ptr noundef %p_hwfn, ptr noundef %p_offset, i32 noundef %modes)
  %call7 = tail call fastcc zeroext i8 @qed_init_cmd_mode_match(ptr noundef %p_hwfn, ptr noundef %p_offset, i32 noundef %modes)
  %or46 = or i8 %call7, %call6
  %accumulator.ret.tr = xor i8 %or46, %accumulator.tr
  br label %common.ret

sw.bb11:                                          ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call fastcc zeroext i8 @qed_init_cmd_mode_match(ptr noundef %p_hwfn, ptr noundef %p_offset, i32 noundef %modes)
  %call13 = tail call fastcc zeroext i8 @qed_init_cmd_mode_match(ptr noundef %p_hwfn, ptr noundef %p_offset, i32 noundef %modes)
  %and45 = and i8 %call13, %call12
  %accumulator.ret.tr47 = xor i8 %and45, %accumulator.tr
  br label %common.ret

sw.default:                                       ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i8 %9, -3
  %conv19 = zext i8 %sub to i32
  %shl = shl nuw i32 1, %conv19
  %and20 = and i32 %shl, %modes
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp ne i32 %and20, 0
  %conv21 = zext i1 %tobool.not to i8
  %accumulator.ret.tr48 = xor i8 %accumulator.tr, %conv21
  br label %common.ret
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dmae_sanity(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 130, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_init_store_rt_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_init_store_rt_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 146, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qed_init_store_rt_agg._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @qed_init_store_rt_agg._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 630, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qed_init_fw_data._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @qed_init_fw_data._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @iro_arr, !18, !"iro_arr", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 48, i32 18}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 379, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qed_init_cmd_wr._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qed_init_cmd_wr._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @qed_init_fill_dmae.zero_buffer, !25, !"zero_buffer", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 268, i32 13}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 332, i32 4}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qed_init_cmd_array._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @qed_init_cmd_array._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 456, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qed_init_cmd_rd._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @qed_init_cmd_rd._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 470, i32 3}
!38 = !{ptr @qed_init_cmd_rd._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qed_init_cmd_rd._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 486, i32 39}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 489, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @qed_init_cmd_cb._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @qed_init_cmd_cb._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @pxp_global_win, !48, !"pxp_global_win", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_ops.c", i32 25, i32 12}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{ptr @comp_and, ptr @comp_eq, ptr @comp_or}
!61 = !{i64 2157609909}
!62 = !{i64 700826}
